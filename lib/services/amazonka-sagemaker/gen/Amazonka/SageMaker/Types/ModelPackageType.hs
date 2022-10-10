{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SageMaker.Types.ModelPackageType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ModelPackageType
  ( ModelPackageType
      ( ..,
        ModelPackageType_Both,
        ModelPackageType_Unversioned,
        ModelPackageType_Versioned
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ModelPackageType = ModelPackageType'
  { fromModelPackageType ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern ModelPackageType_Both :: ModelPackageType
pattern ModelPackageType_Both = ModelPackageType' "Both"

pattern ModelPackageType_Unversioned :: ModelPackageType
pattern ModelPackageType_Unversioned = ModelPackageType' "Unversioned"

pattern ModelPackageType_Versioned :: ModelPackageType
pattern ModelPackageType_Versioned = ModelPackageType' "Versioned"

{-# COMPLETE
  ModelPackageType_Both,
  ModelPackageType_Unversioned,
  ModelPackageType_Versioned,
  ModelPackageType'
  #-}
