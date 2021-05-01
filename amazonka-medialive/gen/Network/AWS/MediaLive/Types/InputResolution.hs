{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputResolution
  ( InputResolution
      ( ..,
        InputResolution_HD,
        InputResolution_SD,
        InputResolution_UHD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input resolution based on lines of vertical resolution in the input; SD
-- is less than 720 lines, HD is 720 to 1080 lines, UHD is greater than
-- 1080 lines
newtype InputResolution = InputResolution'
  { fromInputResolution ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern InputResolution_HD :: InputResolution
pattern InputResolution_HD = InputResolution' "HD"

pattern InputResolution_SD :: InputResolution
pattern InputResolution_SD = InputResolution' "SD"

pattern InputResolution_UHD :: InputResolution
pattern InputResolution_UHD = InputResolution' "UHD"

{-# COMPLETE
  InputResolution_HD,
  InputResolution_SD,
  InputResolution_UHD,
  InputResolution'
  #-}