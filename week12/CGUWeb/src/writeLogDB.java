

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class writeLogDB {
	private String logID;
	private String logDesc;
	private String url;
	private String driver;
	private String dbuser;
	private String dbPass;
	private Connection conn;
	public void setConn(Connection conn) {
		this.conn=conn;
	}
	public void setLogID(String logID) {
		this.logID=logID;
	}
	public void setLogDesc(String desc) {
		this.logDesc=desc;
	}
	public int ExecSQL() {
		String sql="insert into loghist values (uuid(),?,sysdate(),?)";
		PreparedStatement pst;
		int returnValue=0;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1,logID);
			pst.setString(2,logDesc);
			int upd=pst.executeUpdate();
			returnValue= upd;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return returnValue;	
	}	
}
