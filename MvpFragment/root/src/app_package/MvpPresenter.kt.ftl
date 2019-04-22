package ${packageName}


import ${packageName}.${ModelName}
import ${packageName}.${FragmentName}
import com.meipingmi.common.base.mvp.BaseNewPresenter
import javax.inject.Inject
import com.meipingmi.common.injector.scope.FragmentScope


@FragmentScope
class ${PresenterName} @Inject constructor(model : ${ModelName} , view :  ${FragmentName}) : BaseNewPresenter<${ModelName},${FragmentName}>(model,view)  {

	

    override fun onDataStart() {
    }

}
