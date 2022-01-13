import { Link } from "react-router-dom";

function NavBar({ user, setUser }) {
  // Handle Function for logout click in navbar
  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser("");
      }
    });
  }

  return (
    <nav>
      {/* Change this link to homepage after it's built */}
      <Link className="logo" to="/">
        SAFELY
      </Link>
      <br />
      <ul id="menuList">
        <li>
          <Link to="/sites">TESTING LOCATIONS</Link>
        </li>
        <li>
          <Link to="/tests">TESTS</Link>
        </li>

        <li id="user_name">Hello, {user.full_name}</li>
        <li>
          <Link onClick={handleLogoutClick} className="logout">
            LOGOUT
          </Link>
        </li>
      </ul>
    </nav>
  );
}
export default NavBar;
