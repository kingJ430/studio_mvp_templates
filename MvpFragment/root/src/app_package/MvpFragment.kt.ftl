package ${packageName}

import com.meipingmi.common.base.mvp.BaseNewMvpFragment
import ${packageName}.${PresenterName}


class ${FragmentName} : BaseNewMvpFragment<${PresenterName}>() {


    override fun getLayoutId() = R.layout.${fragment_layout}
		
	
    override fun initView(view : View) {
        super.initView(view)
    }


    override fun  initData() {
        super.initData();
        
    }
		
}
