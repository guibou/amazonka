{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ElasticBeanstalk.Types.OptionSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticBeanstalk.Types.OptionSpecification where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A specification identifying an individual configuration option.
--
-- /See:/ 'newOptionSpecification' smart constructor.
data OptionSpecification = OptionSpecification'
  { -- | The name of the configuration option.
    optionName :: Prelude.Maybe Prelude.Text,
    -- | A unique resource name for a time-based scaling configuration option.
    resourceName :: Prelude.Maybe Prelude.Text,
    -- | A unique namespace identifying the option\'s associated AWS resource.
    namespace :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OptionSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'optionName', 'optionSpecification_optionName' - The name of the configuration option.
--
-- 'resourceName', 'optionSpecification_resourceName' - A unique resource name for a time-based scaling configuration option.
--
-- 'namespace', 'optionSpecification_namespace' - A unique namespace identifying the option\'s associated AWS resource.
newOptionSpecification ::
  OptionSpecification
newOptionSpecification =
  OptionSpecification'
    { optionName = Prelude.Nothing,
      resourceName = Prelude.Nothing,
      namespace = Prelude.Nothing
    }

-- | The name of the configuration option.
optionSpecification_optionName :: Lens.Lens' OptionSpecification (Prelude.Maybe Prelude.Text)
optionSpecification_optionName = Lens.lens (\OptionSpecification' {optionName} -> optionName) (\s@OptionSpecification' {} a -> s {optionName = a} :: OptionSpecification)

-- | A unique resource name for a time-based scaling configuration option.
optionSpecification_resourceName :: Lens.Lens' OptionSpecification (Prelude.Maybe Prelude.Text)
optionSpecification_resourceName = Lens.lens (\OptionSpecification' {resourceName} -> resourceName) (\s@OptionSpecification' {} a -> s {resourceName = a} :: OptionSpecification)

-- | A unique namespace identifying the option\'s associated AWS resource.
optionSpecification_namespace :: Lens.Lens' OptionSpecification (Prelude.Maybe Prelude.Text)
optionSpecification_namespace = Lens.lens (\OptionSpecification' {namespace} -> namespace) (\s@OptionSpecification' {} a -> s {namespace = a} :: OptionSpecification)

instance Prelude.Hashable OptionSpecification

instance Prelude.NFData OptionSpecification

instance Core.ToQuery OptionSpecification where
  toQuery OptionSpecification' {..} =
    Prelude.mconcat
      [ "OptionName" Core.=: optionName,
        "ResourceName" Core.=: resourceName,
        "Namespace" Core.=: namespace
      ]