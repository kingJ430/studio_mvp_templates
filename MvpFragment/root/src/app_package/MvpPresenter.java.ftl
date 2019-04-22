package ${packageName};


import ${packageName}.${ModelName};
import ${packageName}.${FragmentName};
import com.meipingmi.common.base.mvp.BaseNewPresenter;
import javax.inject.Inject;
import com.meipingmi.common.injector.scope.FragmentScope;


@FragmentScope
public class ${PresenterName} extends BaseNewPresenter<${ModelName},${FragmentName}>  {

	
	@Inject
    public ${PresenterName}(${ModelName} model, ${FragmentName} mView) {
        super(model, mView);
    }

    @Override
    public void onDataStart() {

    }

}
