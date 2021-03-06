﻿using Npgsql;
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

        public IEnumerable<Statistics> GetYears()
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT year FROM stats_v2 GROUP BY year ORDER BY year ASC";

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

                        statistics.Add(statistic);
                    }
                    return statistics;
                }
            }
        }

        public IEnumerable<Statistics> GetMonths()
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT month FROM stats_v2 GROUP BY month ORDER BY month ASC";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    NpgsqlDataReader reader = command.ExecuteReader();

                    List<Statistics> statistics = new List<Statistics>();

                    while (reader.Read())
                    {
                        Statistics statistic = new Statistics();

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

                string query = "SELECT prog_lang, SUM(tweets) FROM stats_v2 WHERE nation = @nation GROUP BY prog_lang";

                Console.WriteLine(query);

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    command.Parameters.AddWithValue("@nation", nation);

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

                string query = @"SELECT nation, SUM(tweets) FROM stats_v2 WHERE prog_lang = @lang GROUP BY nation";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    command.Parameters.AddWithValue("@lang", lang);

                    NpgsqlDataReader reader = command.ExecuteReader();

                    List<Statistics> statistics = new List<Statistics>();

                    while (reader.Read())
                    {
                        Statistics statistic = new Statistics();

                        statistic.Nation = reader["nation"] as string;
                        statistic.Tweets = Convert.ToInt32(reader["sum"]);

                        statistics.Add(statistic);
                    }
                    return statistics;
                }
            }
        }

        public IEnumerable<Statistics> GetStatsByYearMonth(int year, int month)
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT prog_lang, SUM(tweets) FROM stats_v2 WHERE year = @year and month = @month GROUP BY prog_lang";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    command.Parameters.AddWithValue("@year", year);
                    command.Parameters.AddWithValue("@month", month);

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

        public IEnumerable<Statistics> GetStatsByYearLang(int year, string lang)
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                connection.Open();

                string query = @"SELECT month, SUM(tweets) FROM stats_v2 WHERE year = @year and prog_lang = @lang GROUP BY prog_lang, month ORDER BY month";

                using (NpgsqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;

                    command.Parameters.AddWithValue("@year", year);
                    command.Parameters.AddWithValue("@lang", lang);

                    NpgsqlDataReader reader = command.ExecuteReader();

                    List<Statistics> statistics = new List<Statistics>();

                    while (reader.Read())
                    {
                        Statistics statistic = new Statistics();

                        statistic.Month = Convert.ToInt32(reader["month"]);
                        statistic.Tweets = Convert.ToInt32(reader["sum"]);

                        statistics.Add(statistic);
                    }
                    return statistics;
                }
            }
        }
    }
}


