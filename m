Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD5BBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 17:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEHRTeV7dpbU0d4WJ058DfCVubQ5ssf+Ba2EDz2yV1w=; b=e7XVH5Yrv8VZvs
	3CUTSatiGsMg7FXs5Vm952KcaTCrIoYkj/H1h5dXiTTDNJxgVITPVgp1Sc3rEzMqVF0E5z1pzhORI
	gOmKrakt47IKkiOcVvt0MU+ONAXFUYRF01kVeqj7gQ//lmN7ltuE/U/ncbDAe/9VFq096sLDT3Kdj
	9CxMLJj7fHEYtYvNZWrZOWTlEDdw72ysJf4WEhcIIyJShju6szaLSmnKZXgZVeX9SOIRwbORAVF+s
	AJyBTy+4GiVZ8PKAqyzbXBd3J6UVkG+xeG96EFO1mrnBdUdkFHuBWwYRFYB9H56J7+P15FX4yY69T
	EKgSzRsv3HoJ3WI9KGkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQBfA-00BIbv-41; Fri, 04 Mar 2022 17:24:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQBap-00BFhN-NL
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 17:19:54 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D9EAF1027;
 Fri,  4 Mar 2022 18:19:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646414390;
 bh=vkcss5sWKQIu90Ea0+JY+IY38PUEMtBAw7K4gtJuE90=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cGAOOLgCZfK8hvXIg8f0erUvSpfU4mdE+QZTuIPSIEQA+yf5xPfnVtcThPwt0oTn7
 nT+HPziUDSPmmIA5CzCe7KNWBImJUV3kpv9OWaRWRqJw58QAvH6R8wpT4zdY9pd9w7
 yh5SuRf5PGQwsJVFNImHRrD/FUdU58B7WIpomB9c=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 13/17] media: rkisp1: Compile debugfs support conditionally
Date: Fri,  4 Mar 2022 19:19:21 +0200
Message-Id: <20220304171925.1592-14-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_091951_938654_AB34B584 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When CONFIG_DEBUGFS is disabled, there's no need to compile the debugfs
support in. Make it conditional.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/Makefile   | 19 +++++++++++--------
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  9 +++++++++
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/Makefile b/drivers/media/platform/rockchip/rkisp1/Makefile
index 1a39bdcc608e..c39ab7010c66 100644
--- a/drivers/media/platform/rockchip/rkisp1/Makefile
+++ b/drivers/media/platform/rockchip/rkisp1/Makefile
@@ -1,11 +1,14 @@
 # SPDX-License-Identifier: GPL-2.0
 
+rockchip-isp1-y := rkisp1-capture.o \
+		   rkisp1-common.o \
+		   rkisp1-debug.o \
+		   rkisp1-dev.o \
+		   rkisp1-isp.o \
+		   rkisp1-resizer.o \
+		   rkisp1-stats.o \
+		   rkisp1-params.o
+
+rockchip-isp1-$(CONFIG_DEBUG_FS) += rkisp1-debug.o
+
 obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
-rockchip-isp1-objs += 	rkisp1-capture.o \
-			rkisp1-common.o \
-			rkisp1-debug.o \
-			rkisp1-dev.o \
-			rkisp1-isp.o \
-			rkisp1-resizer.o \
-			rkisp1-stats.o \
-			rkisp1-params.o
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 07a92ed8bdc8..a7ffe2830fa8 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -518,7 +518,16 @@ void rkisp1_stats_unregister(struct rkisp1_device *rkisp1);
 int rkisp1_params_register(struct rkisp1_device *rkisp1);
 void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
 
+#if IS_ENABLED(CONFIG_DEBUG_FS)
 void rkisp1_debug_init(struct rkisp1_device *rkisp1);
 void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1);
+#else
+static inline void rkisp1_debug_init(struct rkisp1_device *rkisp1)
+{
+}
+static inline void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
+{
+}
+#endif
 
 #endif /* _RKISP1_COMMON_H */
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
