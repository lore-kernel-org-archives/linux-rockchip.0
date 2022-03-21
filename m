Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42F21C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 12:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SC+2W4Ra8IMgHUJGRiRKsAIJiyIA4+R16KupjBwbfs=; b=pqKlIoq0oA4zf4
	5NmiKuCa9/UCd/L3Cv4BRsfT9LhfcurNRn/fJWIoyNZzjupuwxWWLlQawUdSO7WgFUrr0U1a/o3D4
	nEoA9ONqBqTySwvYe438t58548DlmlzxLSJ1FEN64U7ecbzIhu6jJHnvW5ZA+OJqJLTPtsb0uJP2G
	+IaNrQKXvdpDoOZzRkbm10i3CsIoq+8GulG5lhLmSHIyFUVpV+/m210JZtVTI+PHFpTTkeKpvQknw
	KPeM14VY/WLHPKRrB6S44oNWU/f5WWbc7uAdscq6b5gLhhP7nyltjJLh9IGpXGACFXCF+kvte+526
	BmAVzQvVAkDcJtlX0Ffg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWHPF-007kFM-C8; Mon, 21 Mar 2022 12:45:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWHPD-007kEJ-BX
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 12:45:04 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B0E8B291;
 Mon, 21 Mar 2022 13:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647866699;
 bh=yS1QzM6s4PBHRa1ex3QcCA6Z3AeIgBWMyeQhgoR+a3g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VscxUJ7y2gvdiDGpV5o5yZegpA+TO7D8KpJVzqzOhdn7ER6eKqumFatDFKZ2ODe42
 AVwmNYqA/vdCt38c6GG2QWDMq6k6XbKkNZQ86/HZVuI2LXHpyDJEOXHDrces+tADYF
 dIwRGSbMo9YagYBD06CaCm8z8uBf5Z9IMLkNA6/o=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3.1 13/17] media: rkisp1: Compile debugfs support
 conditionally
Date: Mon, 21 Mar 2022 14:44:37 +0200
Message-Id: <20220321124437.12749-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220319163100.3083-14-laurent.pinchart@ideasonboard.com>
References: <20220319163100.3083-14-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_054503_592086_1F8AC6ED 
X-CRM114-Status: UNSURE (   9.63  )
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
Changes since v3:

- Fix double mention of rkisp1-debug.o in Makefile
---
 .../media/platform/rockchip/rkisp1/Makefile    | 18 ++++++++++--------
 .../platform/rockchip/rkisp1/rkisp1-common.h   |  9 +++++++++
 2 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/Makefile b/drivers/media/platform/rockchip/rkisp1/Makefile
index 1a39bdcc608e..f7543a82aa10 100644
--- a/drivers/media/platform/rockchip/rkisp1/Makefile
+++ b/drivers/media/platform/rockchip/rkisp1/Makefile
@@ -1,11 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0
 
+rockchip-isp1-y := rkisp1-capture.o \
+		   rkisp1-common.o \
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
