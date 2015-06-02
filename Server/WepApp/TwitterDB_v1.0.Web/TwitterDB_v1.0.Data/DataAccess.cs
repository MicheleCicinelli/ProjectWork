using Npgsql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TwitterDB_v1._0.Data.ObjectModel;

namespace TwitterDB_v1._0.Data
{
    public class DataAccess
    {
        string connstring;

        public DataAccess()
        {
            this.connstring = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        }

        public IEnumerable<Stats> GetStatByYear(int year)
        {

            using (NpgsqlConnection connection = new NpgsqlConnection(connstring))
            {
                connection.Open();

                string query = @"SELECT * FROM stats_v2
                                WHERE year = %year";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    NpgsqlParameter sqlpar = new NpgsqlParameter("%year", year);
                    command.Parameters.Add(sqlpar);

                    NpgsqlDataReader reader = command.ExecuteReader();

                    List<Stats> result = new List<Stats>();

                    while (reader.Read())
                    {
                        Stats item = new Stats();

                        item.Nation = reader["nation"] as string;
                        item.Prog_lang = reader["prog_lang"] as string;
                        item.Tweets = (int)reader["tweets"];
                        item.Month = (int)reader["month"];


                        result.Add(item);

                    }

                    return result;
                }
            }

        }
    }
}
