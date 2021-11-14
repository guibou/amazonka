{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.GroundStation.GetMissionProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a mission profile.
module Amazonka.GroundStation.GetMissionProfile
  ( -- * Creating a Request
    GetMissionProfile (..),
    newGetMissionProfile,

    -- * Request Lenses
    getMissionProfile_missionProfileId,

    -- * Destructuring the Response
    GetMissionProfileResponse (..),
    newGetMissionProfileResponse,

    -- * Response Lenses
    getMissionProfileResponse_missionProfileId,
    getMissionProfileResponse_missionProfileArn,
    getMissionProfileResponse_trackingConfigArn,
    getMissionProfileResponse_contactPrePassDurationSeconds,
    getMissionProfileResponse_contactPostPassDurationSeconds,
    getMissionProfileResponse_name,
    getMissionProfileResponse_dataflowEdges,
    getMissionProfileResponse_region,
    getMissionProfileResponse_minimumViableContactDurationSeconds,
    getMissionProfileResponse_tags,
    getMissionProfileResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GroundStation.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newGetMissionProfile' smart constructor.
data GetMissionProfile = GetMissionProfile'
  { -- | UUID of a mission profile.
    missionProfileId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMissionProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'missionProfileId', 'getMissionProfile_missionProfileId' - UUID of a mission profile.
newGetMissionProfile ::
  -- | 'missionProfileId'
  Prelude.Text ->
  GetMissionProfile
newGetMissionProfile pMissionProfileId_ =
  GetMissionProfile'
    { missionProfileId =
        pMissionProfileId_
    }

-- | UUID of a mission profile.
getMissionProfile_missionProfileId :: Lens.Lens' GetMissionProfile Prelude.Text
getMissionProfile_missionProfileId = Lens.lens (\GetMissionProfile' {missionProfileId} -> missionProfileId) (\s@GetMissionProfile' {} a -> s {missionProfileId = a} :: GetMissionProfile)

instance Core.AWSRequest GetMissionProfile where
  type
    AWSResponse GetMissionProfile =
      GetMissionProfileResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMissionProfileResponse'
            Prelude.<$> (x Core..?> "missionProfileId")
            Prelude.<*> (x Core..?> "missionProfileArn")
            Prelude.<*> (x Core..?> "trackingConfigArn")
            Prelude.<*> (x Core..?> "contactPrePassDurationSeconds")
            Prelude.<*> (x Core..?> "contactPostPassDurationSeconds")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "dataflowEdges" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "region")
            Prelude.<*> (x Core..?> "minimumViableContactDurationSeconds")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMissionProfile

instance Prelude.NFData GetMissionProfile

instance Core.ToHeaders GetMissionProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetMissionProfile where
  toPath GetMissionProfile' {..} =
    Prelude.mconcat
      ["/missionprofile/", Core.toBS missionProfileId]

instance Core.ToQuery GetMissionProfile where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newGetMissionProfileResponse' smart constructor.
data GetMissionProfileResponse = GetMissionProfileResponse'
  { -- | UUID of a mission profile.
    missionProfileId :: Prelude.Maybe Prelude.Text,
    -- | ARN of a mission profile.
    missionProfileArn :: Prelude.Maybe Prelude.Text,
    -- | ARN of a tracking @Config@.
    trackingConfigArn :: Prelude.Maybe Prelude.Text,
    -- | Amount of time prior to contact start you’d like to receive a CloudWatch
    -- event indicating an upcoming pass.
    contactPrePassDurationSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Amount of time after a contact ends that you’d like to receive a
    -- CloudWatch event indicating the pass has finished.
    contactPostPassDurationSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Name of a mission profile.
    name :: Prelude.Maybe Prelude.Text,
    -- | A list of lists of ARNs. Each list of ARNs is an edge, with a /from/
    -- @Config@ and a /to/ @Config@.
    dataflowEdges :: Prelude.Maybe [Prelude.NonEmpty Prelude.Text],
    -- | Region of a mission profile.
    region :: Prelude.Maybe Prelude.Text,
    -- | Smallest amount of time in seconds that you’d like to see for an
    -- available contact. AWS Ground Station will not present you with contacts
    -- shorter than this duration.
    minimumViableContactDurationSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Tags assigned to a mission profile.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMissionProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'missionProfileId', 'getMissionProfileResponse_missionProfileId' - UUID of a mission profile.
--
-- 'missionProfileArn', 'getMissionProfileResponse_missionProfileArn' - ARN of a mission profile.
--
-- 'trackingConfigArn', 'getMissionProfileResponse_trackingConfigArn' - ARN of a tracking @Config@.
--
-- 'contactPrePassDurationSeconds', 'getMissionProfileResponse_contactPrePassDurationSeconds' - Amount of time prior to contact start you’d like to receive a CloudWatch
-- event indicating an upcoming pass.
--
-- 'contactPostPassDurationSeconds', 'getMissionProfileResponse_contactPostPassDurationSeconds' - Amount of time after a contact ends that you’d like to receive a
-- CloudWatch event indicating the pass has finished.
--
-- 'name', 'getMissionProfileResponse_name' - Name of a mission profile.
--
-- 'dataflowEdges', 'getMissionProfileResponse_dataflowEdges' - A list of lists of ARNs. Each list of ARNs is an edge, with a /from/
-- @Config@ and a /to/ @Config@.
--
-- 'region', 'getMissionProfileResponse_region' - Region of a mission profile.
--
-- 'minimumViableContactDurationSeconds', 'getMissionProfileResponse_minimumViableContactDurationSeconds' - Smallest amount of time in seconds that you’d like to see for an
-- available contact. AWS Ground Station will not present you with contacts
-- shorter than this duration.
--
-- 'tags', 'getMissionProfileResponse_tags' - Tags assigned to a mission profile.
--
-- 'httpStatus', 'getMissionProfileResponse_httpStatus' - The response's http status code.
newGetMissionProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMissionProfileResponse
newGetMissionProfileResponse pHttpStatus_ =
  GetMissionProfileResponse'
    { missionProfileId =
        Prelude.Nothing,
      missionProfileArn = Prelude.Nothing,
      trackingConfigArn = Prelude.Nothing,
      contactPrePassDurationSeconds = Prelude.Nothing,
      contactPostPassDurationSeconds = Prelude.Nothing,
      name = Prelude.Nothing,
      dataflowEdges = Prelude.Nothing,
      region = Prelude.Nothing,
      minimumViableContactDurationSeconds =
        Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | UUID of a mission profile.
getMissionProfileResponse_missionProfileId :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe Prelude.Text)
getMissionProfileResponse_missionProfileId = Lens.lens (\GetMissionProfileResponse' {missionProfileId} -> missionProfileId) (\s@GetMissionProfileResponse' {} a -> s {missionProfileId = a} :: GetMissionProfileResponse)

-- | ARN of a mission profile.
getMissionProfileResponse_missionProfileArn :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe Prelude.Text)
getMissionProfileResponse_missionProfileArn = Lens.lens (\GetMissionProfileResponse' {missionProfileArn} -> missionProfileArn) (\s@GetMissionProfileResponse' {} a -> s {missionProfileArn = a} :: GetMissionProfileResponse)

-- | ARN of a tracking @Config@.
getMissionProfileResponse_trackingConfigArn :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe Prelude.Text)
getMissionProfileResponse_trackingConfigArn = Lens.lens (\GetMissionProfileResponse' {trackingConfigArn} -> trackingConfigArn) (\s@GetMissionProfileResponse' {} a -> s {trackingConfigArn = a} :: GetMissionProfileResponse)

-- | Amount of time prior to contact start you’d like to receive a CloudWatch
-- event indicating an upcoming pass.
getMissionProfileResponse_contactPrePassDurationSeconds :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe Prelude.Natural)
getMissionProfileResponse_contactPrePassDurationSeconds = Lens.lens (\GetMissionProfileResponse' {contactPrePassDurationSeconds} -> contactPrePassDurationSeconds) (\s@GetMissionProfileResponse' {} a -> s {contactPrePassDurationSeconds = a} :: GetMissionProfileResponse)

-- | Amount of time after a contact ends that you’d like to receive a
-- CloudWatch event indicating the pass has finished.
getMissionProfileResponse_contactPostPassDurationSeconds :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe Prelude.Natural)
getMissionProfileResponse_contactPostPassDurationSeconds = Lens.lens (\GetMissionProfileResponse' {contactPostPassDurationSeconds} -> contactPostPassDurationSeconds) (\s@GetMissionProfileResponse' {} a -> s {contactPostPassDurationSeconds = a} :: GetMissionProfileResponse)

-- | Name of a mission profile.
getMissionProfileResponse_name :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe Prelude.Text)
getMissionProfileResponse_name = Lens.lens (\GetMissionProfileResponse' {name} -> name) (\s@GetMissionProfileResponse' {} a -> s {name = a} :: GetMissionProfileResponse)

-- | A list of lists of ARNs. Each list of ARNs is an edge, with a /from/
-- @Config@ and a /to/ @Config@.
getMissionProfileResponse_dataflowEdges :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe [Prelude.NonEmpty Prelude.Text])
getMissionProfileResponse_dataflowEdges = Lens.lens (\GetMissionProfileResponse' {dataflowEdges} -> dataflowEdges) (\s@GetMissionProfileResponse' {} a -> s {dataflowEdges = a} :: GetMissionProfileResponse) Prelude.. Lens.mapping Lens.coerced

-- | Region of a mission profile.
getMissionProfileResponse_region :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe Prelude.Text)
getMissionProfileResponse_region = Lens.lens (\GetMissionProfileResponse' {region} -> region) (\s@GetMissionProfileResponse' {} a -> s {region = a} :: GetMissionProfileResponse)

-- | Smallest amount of time in seconds that you’d like to see for an
-- available contact. AWS Ground Station will not present you with contacts
-- shorter than this duration.
getMissionProfileResponse_minimumViableContactDurationSeconds :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe Prelude.Natural)
getMissionProfileResponse_minimumViableContactDurationSeconds = Lens.lens (\GetMissionProfileResponse' {minimumViableContactDurationSeconds} -> minimumViableContactDurationSeconds) (\s@GetMissionProfileResponse' {} a -> s {minimumViableContactDurationSeconds = a} :: GetMissionProfileResponse)

-- | Tags assigned to a mission profile.
getMissionProfileResponse_tags :: Lens.Lens' GetMissionProfileResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getMissionProfileResponse_tags = Lens.lens (\GetMissionProfileResponse' {tags} -> tags) (\s@GetMissionProfileResponse' {} a -> s {tags = a} :: GetMissionProfileResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getMissionProfileResponse_httpStatus :: Lens.Lens' GetMissionProfileResponse Prelude.Int
getMissionProfileResponse_httpStatus = Lens.lens (\GetMissionProfileResponse' {httpStatus} -> httpStatus) (\s@GetMissionProfileResponse' {} a -> s {httpStatus = a} :: GetMissionProfileResponse)

instance Prelude.NFData GetMissionProfileResponse