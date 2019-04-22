package ${packageName};


import ${packageName}.${ModelName};
import ${packageName}.${ActivityName};
import com.meipingmi.common.base.mvp.BaseNewPresenter;
import javax.inject.Inject;
import com.meipingmi.common.injector.scope.ActivityScope;


@ActivityScope
public class ${PresenterName} extends BaseNewPresenter<${ModelName},${ActivityName}>  {

	
	@Inject
    public ${PresenterName}(${ModelName} model, ${ActivityName} mView) {
        super(model, mView);
    }

    @Override
    public void onDataStart() {

    }

}
