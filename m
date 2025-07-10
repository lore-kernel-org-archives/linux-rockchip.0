Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AC38C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 16:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKk57ZYk7DQWcxuTbDjwItgi07dUC9qBLFYFcgZK4Hs=; b=pgJxovQdq2Gbxh
	JOV3xjBP65Q2cKdIKRUJ8KMrJPYci+6Lp1TUGqwR+Vyqk8SYaxO4fr4bt+x3VTritF7y8cZaglI5u
	NszEI+2WM+7MFDWTr3xiBftBwvb99ce++XDmK5bnm7VyvvdOYsoR+boSpgk6DnNHkzQ9b8xYyJXsn
	48SzUwADxZrIFlgeqpOd9N/cfoumJQKBeLK+DXEHNm5LUh5cFLLUi0YkaL1TpFuD6z8PWxLFOqUpm
	IyJwCZQyovSg8DdzvcOeGX1i0nSSaoLnp2CoQZxf+qSYKDnqZZyNhCCBI+FzV7xXp/TXSRbKnqjbr
	avWv0selizK2xrNym15Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZu7F-0000000CPfk-44bh;
	Thu, 10 Jul 2025 16:27:21 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZrho-0000000C1MM-0zVR;
	Thu, 10 Jul 2025 13:52:57 +0000
Received: from [192.168.0.172] (mob-5-90-137-205.net.vodafone.it [5.90.137.205])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 37689F09;
	Thu, 10 Jul 2025 15:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1752155546;
	bh=BFyCUyrT0Ujus6OGYnAmCl/GqNuIEDJQSk8MQCzrzmo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LqZyDWIcNX9ZTUOAqZt5qLdSc6rAHXA0r/sXWI+UFLMcc1XyFQ0Nwb2SEUP1OTQyU
	 Mku/vBgAukLGRW2RW737mST0vNwG67/mVw5wFnq4lqZs+I6Yk7IhbSZcMrkymjf8Yq
	 Qe/SkN3x6Ad5c5T0MTKUVcMh+QSBT0Dm3z94WTMU=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Thu, 10 Jul 2025 15:52:17 +0200
Subject: [PATCH v2 8/8] media: Documentation: kapi: Add v4l2 extensible
 parameters
MIME-Version: 1.0
Message-Id: <20250710-extensible-parameters-validation-v2-8-7ec8918ec443@ideasonboard.com>
References: <20250710-extensible-parameters-validation-v2-0-7ec8918ec443@ideasonboard.com>
In-Reply-To: <20250710-extensible-parameters-validation-v2-0-7ec8918ec443@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Keke Li <keke.li@amlogic.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dan Scally <dan.scally@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1789;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=BFyCUyrT0Ujus6OGYnAmCl/GqNuIEDJQSk8MQCzrzmo=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBob8Wr/aGoNxfRR23l/5wD6G+4Ew6/K9t5x5Sg+
 B6olFD0u9iJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaG/FqwAKCRByNAaPFqFW
 POXRD/49NlvFZ6WTfiz+ALosMbcBtZbO6d5YqWv4nL2Qi8LyLr3DiZHDkp/5jcMXK0pHje+MLhA
 ysf7/JN8fPywWY1ohWQVBHu/fi+Tp2pxvyqwtWuBzMvlzhrNuWY4dvYNP7B6ky/x5ODC9KUBchK
 d9SbeHLZDmrjA9fYXc6LcsfL818nZLr0uKwXu88/MQcEpsd7LpS93bc7mQmFsOeoeKpcfxPEMvz
 7AydmBMNNbLXAYkA2VaH08JnYRYItZkVAaV4l2CCmz0vGOOuzKxE4HCxD1fto6fpuUki1fUfEkd
 UIIZGF9rraSYDL5Wne2SLSqHU8Ua466saP20Ce8x6Ku1LSooHSaSQhvqrfyh+A32Z+9/93RSs2m
 3qjhnbt+vWcwL2qDthAJgRlWPeEGXkZh5NLepB2h9fk+or2kzXjoxBg2uTylc7F0cYqxszEqC1X
 MeN4CwhirXktF/mPVGtuilS7nCX6shSwdkf8gizycuBmopC4JL0i7UEwNqzqreE5wdmh5b3t2lm
 B/FUL+jjRypcThyaWy4JBKtgq2LU5XeNKizk9gGjalZmNZCtdsXcrYSoyLYLeCvPoNM+ktEAhE6
 xC2/IdvtHLKV+smY4h60iT509i6nSJ6aKrxazY+fvSWZiaCVJxsy+phwljEz2eeoHwnbiSikz6D
 OjqYPjLOGjdCOBA==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_065256_411291_205E3F50 
X-CRM114-Status: GOOD (  11.31  )
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

Add to the driver-api documentation the v4l2-params.h types and
helpers documentation.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 Documentation/driver-api/media/v4l2-core.rst   | 1 +
 Documentation/driver-api/media/v4l2-params.rst | 5 +++++
 MAINTAINERS                                    | 1 +
 3 files changed, 7 insertions(+)

diff --git a/Documentation/driver-api/media/v4l2-core.rst b/Documentation/driver-api/media/v4l2-core.rst
index ad987c34ad2a8460bb95e97adc4d850d624e0b81..2d7793298c6a2046bdd59b185a411e092b659d52 100644
--- a/Documentation/driver-api/media/v4l2-core.rst
+++ b/Documentation/driver-api/media/v4l2-core.rst
@@ -27,3 +27,4 @@ Video4Linux devices
     v4l2-common
     v4l2-tveeprom
     v4l2-jpeg
+    v4l2-params
diff --git a/Documentation/driver-api/media/v4l2-params.rst b/Documentation/driver-api/media/v4l2-params.rst
new file mode 100644
index 0000000000000000000000000000000000000000..8d2a5f004d21dfc3a81255cabbc6b7cce588db71
--- /dev/null
+++ b/Documentation/driver-api/media/v4l2-params.rst
@@ -0,0 +1,5 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+V4L2 extensible parameters kAPI
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+.. kernel-doc:: include/media/v4l2-params.h
diff --git a/MAINTAINERS b/MAINTAINERS
index 3d9a8e06c59eb08360d1e8eea85e450a15ee95af..f03c10092a891a06052484b691409f0c459de87d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25972,6 +25972,7 @@ V4L2 EXTENSIBLE PARAMETERS FORMAT
 M:	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
+F:	Documentation/driver-api/media/v4l2-params.rst
 F:	Documentation/userspace-api/media/v4l/extensible-parameters.rst
 F:	drivers/media/v4l2-core/v4l2-params.c
 F:	include/media/v4l2-params.h

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
