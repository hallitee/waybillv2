            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="{{ route('home') }}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> Waybill<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{ route('waybill.create') }}">Create New Waybill</a>
                                </li>
                                <li>
                                    <a href="#">Receive Waybill<span class="fa arrow"></span></a>
									 <ul class="nav nav-third-level">
											<li>
											<a href="{{ route('waybill.receive',['a'=>'transfer']) }}">Transfer</a>
											</li>		
											<li>
											<a href="{{ route('waybill.receive', ['a'=>'loan']) }}">Loan</a>
											</li>	
											<li>
											<a href="{{ route('waybill.receive',['a'=>'repair']) }}">Repairs</a>
											</li>												
									 </ul>
                                </li>								
                                <li>
                                    <a href="{{ route('waybill.print') }}">Print Waybill</a>
                                </li>
                                <li>
                                    <a href="{{ route('waybill.search') }}">Find Item/Waybill </a>
                                </li>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                         <li>
                            <a href="#"><i class="fa fa-edit fa-tasks"></i> Reports<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{ route('waybill.create') }}">Transfers<span class="fa arrow"></span></a>
																		 <ul class="nav nav-third-level">
											<li>
											<a href="{{ route('waybill.reports',['type'=>'transfer','status'=>'OPEN']) }}">Pending</a>
											</li>		
											<li>
											<a href="{{ route('waybill.reports', ['type'=>'transfer', 'status'=>'CLOSED']) }}">Completed</a>
											</li>												
									 </ul>
                                </li>
                                <li>
                                    <a href="#">Loan<span class="fa arrow"></span></a>
									 <ul class="nav nav-third-level">
											<li>
											<a href="{{ route('waybill.reports',['type'=>'loan','status'=>'OPEN']) }}">Pending</a>
											</li>		
											<li>
											<a href="{{ route('waybill.reports', ['type'=>'loan', 'status'=>'CLOSED']) }}">Completed</a>
											</li>												
									 </ul>
                                </li>								
                                <li>
                                    <a href="{{ route('waybill.print') }}">Repairs<span class="fa arrow"></span></a>
																		 <ul class="nav nav-third-level">
											<li>
											<a href="{{ route('waybill.reports',['type'=>'repair','status'=>'OPEN']) }}">Pending</a>
											</li>		
											<li>
											<a href="{{ route('waybill.reports', ['type'=>'repair', 'status'=>'CLOSED']) }}">Completed</a>
											</li>												
									 </ul>
                                </li>
                                <li>
                                    <a href="{{ route('waybill.reports', ['type'=>'promo', 'status'=>'CLOSED']) }}">Promo</a>

                                </li>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>                      
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->