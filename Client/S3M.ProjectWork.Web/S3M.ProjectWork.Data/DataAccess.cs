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

        public IEnumerable<Statistics> GetNations()
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT nation_eng_lang FROM nations ORDER BY nation_eng_lang ASC";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    NpgsqlDataReader reader = command.ExecuteReader();

                    List<Statistics> statistics = new List<Statistics>();

                    while (reader.Read())
                    {
                        Statistics statistic = new Statistics();

                        statistic.Nation = reader["nation_eng_lang"] as string;

                        statistics.Add(statistic);
                    }
                    return statistics;
                }
            }
        }

        public IEnumerable<Statistics> GetProgLangs()
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT prog_lang FROM programming_languages ORDER BY prog_lang ASC";

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

                        statistics.Add(statistic);
                    }
                    return statistics;
                }
            }
        }

        public IEnumerable<Statistics> GetYearAndMonth()
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT year, month FROM stats_v2 GROUP BY year, month ORDER BY year, month ASC";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    NpgsqlDataReader reader = command.ExecuteReader();

                    List<Statistics> statistics = new List<Statistics>();

                    while (reader.Read())
                    {
                        Statistics statistic = new Statistics();

                        statistic.Year = Convert.ToInt32(reader["year"]);
                        statistic.Month = Convert.ToInt32(reader["month"]);

                        statistics.Add(statistic);
                    }
                    return statistics;
                }
            }
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

        public IEnumerable<Statistics> GetGenericStatsByNations(string nation)
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT prog_lang, SUM(tweets) FROM stats_v2 WHERE nation = '%nation' GROUP BY prog_lang";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    NpgsqlParameter param = new NpgsqlParameter("%nation", nation);
                    command.Parameters.Add(param);

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

        public IEnumerable<Statistics> GetGenericStatsByLang(string lang)
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT nation, SUM(tweets) FROM stats_v2 WHERE prog_lang = '%lang' GROUP BY nation";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    NpgsqlParameter param = new NpgsqlParameter("%lang", lang);
                    command.Parameters.Add(param);

                    NpgsqlDataReader reader = command.ExecuteReader();

                    List<Statistics> statistics = new List<Statistics>();

                    while (reader.Read())
                    {
                        Statistics statistic = new Statistics();

                        statistic.Prog_Lang = reader["nation"] as string;
                        statistic.Tweets = Convert.ToInt32(reader["sum"]);

                        statistics.Add(statistic);
                    }
                    return statistics;
                }
            }
        }

        public IEnumerable<Statistics> GetGenericStatsByPeriod(int year, int month)
        {
            return null;
        }
    }
}

