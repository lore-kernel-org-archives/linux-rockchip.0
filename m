Return-Path: <SRS0=vbLC=C2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECD3AC43461
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 15:04:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1A4F2220A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 15:04:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DRl/K0+B"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A1A4F2220A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fjtZbjm5cmpBK595mhD84pLF5cT3n9sK31hDxqSRUgM=; b=DRl/K0+BirrdkodN3WdHHjLWRx
	y/UDmOl8OjHZoNY310mKHnCEd/ZIZaIWJNs9SNnzPVKhX/XIsvjxPW2Vk0C90FddisRcE1yU2+K6Y
	D1i1p6wkaiAC/huhM/k0tvJYgoNoZcmd47WBGrH3BevrpNud5J/+jEey5XCNY595qZ+VER/XJIUpS
	yUPG+7FlNpSJm16FI5OdjUBY83wgNm9f9lsUt4dUbxsM1XfaBXM7W2+P1eXjdGFWklwYqEPc3Fuh8
	Z5PGr4kTazgTKqrJyLoJ9FO0LEsuEMp7ENpWClsW6WR/7lFn/pzlrBq7qD4TcEWS5ZsfH+XcOA7yY
	46PQZMUg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIvSR-0007eu-6u; Thu, 17 Sep 2020 15:04:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIvSO-0007eD-FK
 for linux-rockchip@lists.infradead.org; Thu, 17 Sep 2020 15:04:21 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec0015a4c2da98cf28d0.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:15a4:c2da:98cf:28d0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0926E29BFA0;
 Thu, 17 Sep 2020 16:04:18 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: MAINTAINERS: add documentation files for rkisp1
Date: Thu, 17 Sep 2020 17:04:08 +0200
Message-Id: <20200917150408.28333-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200917_110420_622115_0DE9B12A 
X-CRM114-Status: GOOD (  10.52  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the files:
Documentation/admin-guide/media/rkisp1.rst
Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst

to the Rockchip ISP driver entry in the MAINTAINERS file.

---
Note, the files were added in a separate patchset:
https://patchwork.kernel.org/cover/11720477/

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d3126fc2cca2..6eab39395682 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14886,6 +14886,8 @@ M:	Helen Koike <helen.koike@collabora.com>
 M:	Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
+F:	Documentation/admin-guide/media/rkisp1.rst
+F:	Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
 F:	drivers/staging/media/rkisp1/
 
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
