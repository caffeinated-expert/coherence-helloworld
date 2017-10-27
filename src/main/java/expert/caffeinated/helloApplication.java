package expert.caffeinated;

import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;

public class helloApplication extends Application<helloConfiguration> {

    public static void main(final String[] args) throws Exception {
        new helloApplication().run(args);
    }

    @Override
    public String getName() {
        return "hello";
    }

    @Override
    public void initialize(final Bootstrap<helloConfiguration> bootstrap) {
        // TODO: application initialization
    }

    @Override
    public void run(final helloConfiguration configuration,
                    final Environment environment) {
        // TODO: implement application
    }

}
