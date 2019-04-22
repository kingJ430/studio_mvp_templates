package ${packageName}


import ${packageName}.${ModelName}
import ${packageName}.${ActivityName}
import com.meipingmi.common.base.mvp.BaseNewPresenter
import javax.inject.Inject
import com.meipingmi.common.injector.scope.ActivityScope


@ActivityScope
class ${PresenterName} @Inject constructor(model : ${ModelName} , view :  ${ActivityName}) : BaseNewPresenter<${ModelName},${ActivityName}>(model,view)  {

	

    override fun onDataStart() {
    }

}
