using Npgsql;
using S3M.ProjectWork.Data.ObjectModel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace S3M.ProjectWork.Data
{
    public class DataAccess
    {
        string connectionString;

        public DataAccess()
        {
            this.connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        }

        public IEnumerable<Statistics> GetGenericStats()
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT prog_lang, SUM(tweets) FROM stats_v2 GROUP BY prog_lang";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    NpgsqlDataReader reader = command.ExecuteReader();

                    List<Statistics> statistics = new List<Statistics>();

                    while (reader.Read())
                    {
                        Statistics statistic = new Statistics();

                        statistic.Prog_Lang = reader["prog_lang"] as string;
                        statistic.Tweets = Convert.ToInt32(reader["sum"]);
                        
                        statistics.Add(statistic);
                    }
                    return statistics;
                }
            }
        }
    }
}
