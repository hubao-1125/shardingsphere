/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.shardingsphere.infra.metadata.user.yaml.swapper;

import org.apache.shardingsphere.infra.metadata.user.yaml.config.YamlUserConfiguration;
import org.apache.shardingsphere.infra.metadata.user.ShardingSphereUser;
import org.apache.shardingsphere.infra.yaml.config.swapper.YamlConfigurationSwapper;

import java.util.Objects;

/**
 * User YAML swapper.
 */
public final class UserYamlSwapper implements YamlConfigurationSwapper<YamlUserConfiguration, ShardingSphereUser> {

    @Override
    public YamlUserConfiguration swapToYamlConfiguration(final ShardingSphereUser data) {
        if (Objects.isNull(data)) {
            return null;
        }
        YamlUserConfiguration result = new YamlUserConfiguration();
        result.setUsername(data.getGrantee().getUsername());
        result.setHostname(data.getGrantee().getHostname());
        result.setPassword(data.getPassword());
        return result;
    }

    @Override
    public ShardingSphereUser swapToObject(final YamlUserConfiguration yamlConfig) {
        if (Objects.isNull(yamlConfig)) {
            return null;
        }
        return new ShardingSphereUser(yamlConfig.getUsername(), yamlConfig.getPassword(), null == yamlConfig.getHostname() ? "%" : yamlConfig.getHostname());
    }
}
