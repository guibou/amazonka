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
-- Module      : Amazonka.IoTSiteWise.CreateProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a project in the specified portal.
module Amazonka.IoTSiteWise.CreateProject
  ( -- * Creating a Request
    CreateProject (..),
    newCreateProject,

    -- * Request Lenses
    createProject_clientToken,
    createProject_projectDescription,
    createProject_tags,
    createProject_portalId,
    createProject_projectName,

    -- * Destructuring the Response
    CreateProjectResponse (..),
    newCreateProjectResponse,

    -- * Response Lenses
    createProjectResponse_httpStatus,
    createProjectResponse_projectId,
    createProjectResponse_projectArn,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTSiteWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateProject' smart constructor.
data CreateProject = CreateProject'
  { -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | A description for the project.
    projectDescription :: Prelude.Maybe Prelude.Text,
    -- | A list of key-value pairs that contain metadata for the project. For
    -- more information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
    -- in the /IoT SiteWise User Guide/.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The ID of the portal in which to create the project.
    portalId :: Prelude.Text,
    -- | A friendly name for the project.
    projectName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProject' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createProject_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'projectDescription', 'createProject_projectDescription' - A description for the project.
--
-- 'tags', 'createProject_tags' - A list of key-value pairs that contain metadata for the project. For
-- more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
-- in the /IoT SiteWise User Guide/.
--
-- 'portalId', 'createProject_portalId' - The ID of the portal in which to create the project.
--
-- 'projectName', 'createProject_projectName' - A friendly name for the project.
newCreateProject ::
  -- | 'portalId'
  Prelude.Text ->
  -- | 'projectName'
  Prelude.Text ->
  CreateProject
newCreateProject pPortalId_ pProjectName_ =
  CreateProject'
    { clientToken = Prelude.Nothing,
      projectDescription = Prelude.Nothing,
      tags = Prelude.Nothing,
      portalId = pPortalId_,
      projectName = pProjectName_
    }

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
createProject_clientToken :: Lens.Lens' CreateProject (Prelude.Maybe Prelude.Text)
createProject_clientToken = Lens.lens (\CreateProject' {clientToken} -> clientToken) (\s@CreateProject' {} a -> s {clientToken = a} :: CreateProject)

-- | A description for the project.
createProject_projectDescription :: Lens.Lens' CreateProject (Prelude.Maybe Prelude.Text)
createProject_projectDescription = Lens.lens (\CreateProject' {projectDescription} -> projectDescription) (\s@CreateProject' {} a -> s {projectDescription = a} :: CreateProject)

-- | A list of key-value pairs that contain metadata for the project. For
-- more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
-- in the /IoT SiteWise User Guide/.
createProject_tags :: Lens.Lens' CreateProject (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createProject_tags = Lens.lens (\CreateProject' {tags} -> tags) (\s@CreateProject' {} a -> s {tags = a} :: CreateProject) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the portal in which to create the project.
createProject_portalId :: Lens.Lens' CreateProject Prelude.Text
createProject_portalId = Lens.lens (\CreateProject' {portalId} -> portalId) (\s@CreateProject' {} a -> s {portalId = a} :: CreateProject)

-- | A friendly name for the project.
createProject_projectName :: Lens.Lens' CreateProject Prelude.Text
createProject_projectName = Lens.lens (\CreateProject' {projectName} -> projectName) (\s@CreateProject' {} a -> s {projectName = a} :: CreateProject)

instance Core.AWSRequest CreateProject where
  type
    AWSResponse CreateProject =
      CreateProjectResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateProjectResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "projectId")
            Prelude.<*> (x Core..:> "projectArn")
      )

instance Prelude.Hashable CreateProject

instance Prelude.NFData CreateProject

instance Core.ToHeaders CreateProject where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateProject where
  toJSON CreateProject' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            ("projectDescription" Core..=)
              Prelude.<$> projectDescription,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("portalId" Core..= portalId),
            Prelude.Just ("projectName" Core..= projectName)
          ]
      )

instance Core.ToPath CreateProject where
  toPath = Prelude.const "/projects"

instance Core.ToQuery CreateProject where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateProjectResponse' smart constructor.
data CreateProjectResponse = CreateProjectResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ID of the project.
    projectId :: Prelude.Text,
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the project, which has the following format.
    --
    -- @arn:${Partition}:iotsitewise:${Region}:${Account}:project\/${ProjectId}@
    projectArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProjectResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createProjectResponse_httpStatus' - The response's http status code.
--
-- 'projectId', 'createProjectResponse_projectId' - The ID of the project.
--
-- 'projectArn', 'createProjectResponse_projectArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the project, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:project\/${ProjectId}@
newCreateProjectResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'projectId'
  Prelude.Text ->
  -- | 'projectArn'
  Prelude.Text ->
  CreateProjectResponse
newCreateProjectResponse
  pHttpStatus_
  pProjectId_
  pProjectArn_ =
    CreateProjectResponse'
      { httpStatus = pHttpStatus_,
        projectId = pProjectId_,
        projectArn = pProjectArn_
      }

-- | The response's http status code.
createProjectResponse_httpStatus :: Lens.Lens' CreateProjectResponse Prelude.Int
createProjectResponse_httpStatus = Lens.lens (\CreateProjectResponse' {httpStatus} -> httpStatus) (\s@CreateProjectResponse' {} a -> s {httpStatus = a} :: CreateProjectResponse)

-- | The ID of the project.
createProjectResponse_projectId :: Lens.Lens' CreateProjectResponse Prelude.Text
createProjectResponse_projectId = Lens.lens (\CreateProjectResponse' {projectId} -> projectId) (\s@CreateProjectResponse' {} a -> s {projectId = a} :: CreateProjectResponse)

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the project, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:project\/${ProjectId}@
createProjectResponse_projectArn :: Lens.Lens' CreateProjectResponse Prelude.Text
createProjectResponse_projectArn = Lens.lens (\CreateProjectResponse' {projectArn} -> projectArn) (\s@CreateProjectResponse' {} a -> s {projectArn = a} :: CreateProjectResponse)

instance Prelude.NFData CreateProjectResponse