using ClaimAPI.Data;
using ClaimAPI.Models;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
using System.Security.Claims;

namespace ClaimAPI.Services
{
    public interface ICRUD<T>
    {
        Tuple<string, List<T>> GetData(int id);
        string AddData(T t);
        string UpdateData(T t);
        Tuple<string, T> GetSingleData(int id);
       
    }
    public interface IEntity

    {
        Tuple<string, List<Entity>> GetEntity(int RoleId);
        Tuple<string, List<UserEntity>> GetUser();

    }
    public class UserService : ICRUD<UserVm>,IEntity
    {
        public ApplicationDbContext DbContext { get; }
        public UserService(ApplicationDbContext dbContext)
        {
            DbContext = dbContext;
        }
        public string AddData(UserVm t)
        {
           string message = string.Empty;
                try
                {
                    using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                    {
                        command.CommandText = "USP_Manage_User";
                        command.CommandType = CommandType.StoredProcedure;

                        var parameter = new SqlParameter();

                        parameter = new SqlParameter();
                        parameter.ParameterName = "@Action";
                        parameter.SqlValue = "create";
                        parameter.SqlDbType = SqlDbType.VarChar;
                        parameter.Direction = ParameterDirection.Input;
                        command.Parameters.Add(parameter);

                        parameter = new SqlParameter();
                        parameter.ParameterName = "@Nm";
                        parameter.SqlValue = t.UserName;
                        parameter.SqlDbType = SqlDbType.VarChar;
                        parameter.Direction = ParameterDirection.Input;
                        command.Parameters.Add(parameter);

                        parameter = new SqlParameter();
                        parameter.ParameterName = "@Email";
                        parameter.SqlValue = t.Email;
                        parameter.SqlDbType = SqlDbType.VarChar;
                        parameter.Direction = ParameterDirection.Input;
                        command.Parameters.Add(parameter);

                        parameter = new SqlParameter();
                        parameter.ParameterName = "@Mobile";
                        parameter.SqlValue = t.Mobile;
                        parameter.SqlDbType = SqlDbType.VarChar;
                        parameter.Direction = ParameterDirection.Input;
                        command.Parameters.Add(parameter);

                        parameter = new SqlParameter();
                        parameter.ParameterName = "@Password";
                        parameter.SqlValue =t.Password;
                        parameter.SqlDbType = SqlDbType.VarChar;
                        parameter.Direction = ParameterDirection.Input;
                        command.Parameters.Add(parameter);

                        parameter = new SqlParameter();
                        parameter.ParameterName = "@Manager";
                        parameter.SqlValue = t.ManagerId;
                        parameter.SqlDbType = SqlDbType.Int;
                        parameter.Direction = ParameterDirection.Input;
                        command.Parameters.Add(parameter);

                        parameter = new SqlParameter();
                        parameter.ParameterName = "@Status";
                        parameter.SqlValue = t.Status;
                        parameter.SqlDbType = SqlDbType.TinyInt;
                        parameter.Direction = ParameterDirection.Input;
                        command.Parameters.Add(parameter);

                        DbContext.Database.OpenConnection();
                        var result = command.ExecuteScalar();
                      
                    }
                }
                catch (SqlException ex)
                {
                    message = ex.Message;
                }
                catch (Exception ex)
                {
                    message = ex.Message;
                }
                return message;
            
        }

        public Tuple<string, List<UserVm>> GetData(int id)
        {
       
            string message = string.Empty;
            List<UserVm> lstUserVm = new List<UserVm>();

            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "USP_Manage_User";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Action";
                    parameter.SqlValue = "getall";
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Id";
                    parameter.SqlValue = id;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteReader();
                    while (result.Read())
                    {
                        UserVm objUserVm = new UserVm();
                        objUserVm.UserName = result["nm"].ToString();
                        objUserVm.Id = result["id"].ToString();
                        objUserVm.Email = result["Email"].ToString();
                        objUserVm.Mobile = result["Mobile"].ToString();
                        objUserVm.ManagerName = result["Manager"].ToString();
                        objUserVm.Status = result["Status"].ToString();
                        lstUserVm.Add(objUserVm);
                    }
                    DbContext.Database.CloseConnection();
                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return new Tuple<string, List<UserVm>>(message,lstUserVm);
        
    }
        public Tuple<string, List<UserEntity>> GetUser()
        {
       
            string message = string.Empty;
            List<UserEntity> lstUserVm = new List<UserEntity>();

            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "USP_GET_USERS";
                    command.CommandType = CommandType.StoredProcedure;

                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteReader();
                    while (result.Read())
                    {
                        UserEntity objUserVm = new UserEntity();
                        objUserVm.Name = result["Nm"].ToString();
                        objUserVm.Id = Convert.ToInt32(result["Id"]);
                        objUserVm.Role = result["Role"].ToString();
                        
                        lstUserVm.Add(objUserVm);
                    }
                    DbContext.Database.CloseConnection();
                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return new Tuple<string, List<UserEntity>>(message,lstUserVm);
        
    }

        public Tuple<string, UserVm> GetSingleData(int id)
        {

            string message = string.Empty;
            UserVm objUserVm = new UserVm();

            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "USP_Manage_User";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Action";
                    parameter.SqlValue = "get";
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);
                       
                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Id";
                    parameter.SqlValue = id;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);


                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteReader();
                    while (result.Read())
                    {
                      
                        objUserVm.UserName = result["nm"].ToString();
                        objUserVm.Id = result["id"].ToString();
                        objUserVm.Email = result["Email"].ToString();
                        objUserVm.Mobile = result["Mobile"].ToString();
                        objUserVm.ManagerId = result["Manager_Id"].ToString();
                        objUserVm.Status = result["Status"].ToString();
                      
                    }
                    DbContext.Database.CloseConnection();
                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return new Tuple<string, UserVm>(message, objUserVm);

        }

        public string UpdateData(UserVm t)
        {
            string message = string.Empty;
            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "USP_Manage_User";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Action";
                    parameter.SqlValue = "update";
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Id";
                    parameter.SqlValue =t.Id;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Nm";
                    parameter.SqlValue = t.UserName;
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Email";
                    parameter.SqlValue = t.Email;
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Mobile";
                    parameter.SqlValue = t.Mobile;
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    
                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Manager";
                    parameter.SqlValue = t.ManagerId;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Status";
                    parameter.SqlValue = t.Status;
                    parameter.SqlDbType = SqlDbType.TinyInt;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteScalar();

                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return message;
        }

        public Tuple<string, List<Entity>> GetEntity(int RoleId)
        {
            string message = string.Empty;
            List<Entity> lstEntity = new List<Entity>();

            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "usp_get_user_by_role_id";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@role_id";
                    parameter.SqlValue = RoleId;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);


                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteReader();
                    while (result.Read())
                    {
                        Entity objEntity = new Entity();
                        objEntity.Id = Convert.ToInt32(result["Id"]);
                        objEntity.Name = result["Nm"].ToString();

                        lstEntity.Add(objEntity);
                    }
                    DbContext.Database.CloseConnection();
                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return new Tuple<string, List<Entity>>(message, lstEntity);
        
        }
    }
}
