Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F16DAD2D8F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 10:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSjbFlomvX3aXiJ4YrIp5uCmhOkgEx8wyk7je8dhzfs=; b=QmFowtf3puJ/TL
	vXJfECh8SpMEZU6WZkpU6xyrla8HUDSAloFNue+STxSU343uISkwYg17m+wSV8pf583qMtZCYOHe/
	5X5nMZAb/MRIZuKNwOlnKL/HytFBbr5sW160BU0jVlb3Fm8XShCmm99QUQN/zcvb1phtalIjKA5vM
	Vwjj2m446qgLvl+elKDXXYRPOsUFOnM3AVjqF73GzPv54RDLZWtLmek+XcyVpnn6wfIfgfjyUXgN3
	Bj/jPADZ1Ta0xtU7NK1rspDT8cfBVdCQe+OmKUSybfa/5Uraso/i/gLNhGic/VIBPpnB5QZmhJ+i3
	tzdD7/fvUY3tp0pjpBwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkgZ8-0000000E5Wx-3UV8;
	Tue, 27 Jan 2026 10:44:58 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkgZ2-0000000E5NS-2L6a;
	Tue, 27 Jan 2026 10:44:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769510690;
	bh=qYSt9bUzQj5PyLabpQbUCQOve2lblO05FC7MGh9qImw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NJW/8eJ/0fjsVjkD9hNxyNMHFzxPA7QiELRnVSJ/tBEgwal3OLvg5UWufex+uMvmy
	 +A+jaYPaDN4FDmi9ILRED9athTHjU4tOhmVaQgeJOtqLYmERrmyK7RGVQw3zsHGzUr
	 wmo3j+GKT3H2AUHuQHHRGs3vcq2ipDGPhyU8/2SrB48dGXXbZBj7GX806vR8GNDE3J
	 Cy0s3W4BQN9k8y1e+XBul4S8QX+9gLLESWvuTh/VMA1vMwlQ2e59IRibNpe5zw46/e
	 ou/ERa3qbe2Loa9C2GUFQDmS1OdQnnVWyDY29Nt86Gd73Izcplr0mM3HpKPoD2trJX
	 WyZwxbkw0mung==
Received: from vignesh-thinkpad.. (unknown [171.76.81.211])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3A56917E0DB7;
	Tue, 27 Jan 2026 11:44:46 +0100 (CET)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.fornazier@gmail.com,
	airlied@gmail.com,
	simona.vetter@ffwll.ch,
	dmitry.baryshkov@oss.qualcomm.com,
	lumag@kernel.org,
	robdclark@gmail.com,
	robin.clark@oss.qualcomm.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	valentine.burley@collabora.com,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 7/7] drm/ci: disable rebase when pulling *-external-fixes
Date: Tue, 27 Jan 2026 16:14:02 +0530
Message-ID: <20260127104406.200505-8-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127104406.200505-1-vignesh.raman@collabora.com>
References: <20260127104406.200505-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_024454_509183_796BBF63 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CI jobs were rebasing the branch-under-test onto *-external-fixes,
causing conflicts.

Remove the global pull.rebase setting and disable rebase when pulling
*-external-fixes so they are merged instead.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---
 drivers/gpu/drm/ci/build.sh | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/ci/build.sh b/drivers/gpu/drm/ci/build.sh
index 5485ea756382..d00d549cbd9c 100644
--- a/drivers/gpu/drm/ci/build.sh
+++ b/drivers/gpu/drm/ci/build.sh
@@ -3,9 +3,6 @@
 
 set -ex
 
-# Clean up stale rebases that GitLab might not have removed when reusing a checkout dir
-rm -rf .git/rebase-apply
-
 . .gitlab-ci/container/container_pre_build.sh
 
 # libssl-dev was uninstalled because it was considered an ephemeral package
@@ -62,25 +59,24 @@ export PATH=$NEWPATH:$PATH
 
 git config --global user.email "fdo@example.com"
 git config --global user.name "freedesktop.org CI"
-git config --global pull.rebase true
 
 # cleanup git state on the worker
-rm -rf .git/rebase-merge
+rm -rf .git/rebase-merge .git/rebase-apply
 
 # Try to merge fixes from target repo
 if [ "$(git ls-remote --exit-code --heads ${UPSTREAM_REPO} ${TARGET_BRANCH}-external-fixes)" ]; then
-    git pull ${UPSTREAM_REPO} ${TARGET_BRANCH}-external-fixes
+    git pull --no-rebase ${UPSTREAM_REPO} ${TARGET_BRANCH}-external-fixes
 fi
 
 # Try to merge fixes from local repo if this isn't a merge request
 # otherwise try merging the fixes from the merge target
 if [ -z "$CI_MERGE_REQUEST_PROJECT_PATH" ]; then
     if [ "$(git ls-remote --exit-code --heads origin ${TARGET_BRANCH}-external-fixes)" ]; then
-        git pull origin ${TARGET_BRANCH}-external-fixes
+        git pull --no-rebase origin ${TARGET_BRANCH}-external-fixes
     fi
 else
     if [ "$(git ls-remote --exit-code --heads ${CI_MERGE_REQUEST_PROJECT_URL} ${CI_MERGE_REQUEST_TARGET_BRANCH_NAME}-external-fixes)" ]; then
-        git pull ${CI_MERGE_REQUEST_PROJECT_URL} ${CI_MERGE_REQUEST_TARGET_BRANCH_NAME}-external-fixes
+        git pull --no-rebase ${CI_MERGE_REQUEST_PROJECT_URL} ${CI_MERGE_REQUEST_TARGET_BRANCH_NAME}-external-fixes
     fi
 fi
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
