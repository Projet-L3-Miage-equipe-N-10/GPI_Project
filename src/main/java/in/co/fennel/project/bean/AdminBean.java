package in.co.fennel.project.bean;

import java.sql.Timestamp;
import java.util.Date;

/**
 * User JavaBean encapsulates TimeTable attributes

 */
public class AdminBean extends BaseBean {

	
	/**
	 * First Name of User
	 */
	private String firstName;
	/**
	 * Last Name of User
	 */
	private String lastName;
	/**
	 * Login of User
	 */
	private String login;
	/**
	 * Password of User
	 */
	private String password;
	/**
	 * Confirm Password of User
	 */
	private String confirmPassword;
	/**
	 * Date of Birth of User
	 */
	
	private long roleId;
	
	

	/**
	 * accessor
	 */

	/**
	 * @return FirstName Of User
	 */

	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param FirstName
	 *            To set User FirstName
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return LastName Of User
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param LastName
	 *            To set User LastName
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return Login id Of User
	 */
	public String getLogin() {
		return login;
	}

	/**
	 * @param Login
	 *            Id To set User Login ID
	 */
	public void setLogin(String login) {
		this.login = login;
	}

	/**
	 * @return Password Of User
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param Password
	 *            To set User Password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return Confirm Password Of User
	 */
	public String getConfirmPassword() {
		return confirmPassword;
	}

	/**
	 * @param Confirm
	 *            PAssword To set User Confirm Password
	 */
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	

	

	/**
	 * @return ROle Id Of User
	 */
	public long getRoleId() {
		return roleId;
	}

	/**
	 * @param Role
	 *            Id To set User ROle Id
	 */
	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}

	


	public String getKey() {
		return id + "";
	}

	public String getValue() {

		return firstName + " " + lastName;
	}
}
