<div class="collapse navbar-collapse">
    <ul class="nav navbar-nav navbar-right">
        <li>
            <a href="ShowUserController" class="dropdown-toggle" ><i class="ti-panel"></i>
                <p>View All Users</p>
            </a>
        </li>
        <li>
            <a href="new_admin.jsp" class="dropdown-toggle" ><i class="ti-panel"></i>
                <p>Add Admin</p>
            </a>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="ti-settings"></i>
                <p>${sessionScope.INFO.username}</p>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li><a href="ShowProfileController">Profile</a></li>
                <li><a href="change_password.jsp">Change Password</a></li>
                <li><a href="LogoutController">Log out</a></li>
            </ul>
        </li>
    </ul>
</div>
