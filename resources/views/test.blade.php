test member

    
<form id="frm-logout" action="{{ route('member.logout') }}" method="POST">
    {{ csrf_field() }}
    <input type="submit" name="submit" value="logout"/>
</form>