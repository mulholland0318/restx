package {package};

import com.google.common.collect.ImmutableSet;
import restx.factory.*;
import {componentFqcn};

@Machine
public class {machine} extends SingleNameFactoryMachine<{componentType}> {
    public static final Name<{componentType}> NAME = Name.of({componentType}.class, "{componentInjectionName}");

    public {machine}() {
        super(0, new StdMachineEngine(NAME, BoundlessComponentBox.FACTORY) {
{queriesDeclarations}

            @Override
            public BillOfMaterials getBillOfMaterial() {
                return new BillOfMaterials(ImmutableSet.<Factory.Query<?>>of(
{queries}
                ));
            }

            @Override
            protected {componentType} doNewComponent(SatisfiedBOM satisfiedBOM) {
                return new {componentType}(
{parameters}
                );
            }
        });
    }

}
