Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC35BC433E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78B6123358
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 78B6123358
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qoTwDu+wEQhkK8oPZ9Noygd/foFwGwHwZ1Xbwu4Uu0w=; b=khdYA5txThRhNJXF5M7eoRtM6a
	yOCTSQuWmrXHS5Gd3zAFyS98GJSbId7s1rTkgpYc7QvuzFgtiMe0LviOkUBIywH40gB/LXL2O/Wg1
	AElS0yQG+HPAq1jTBI9ZnBSbiOogxXGeaj4sqHLf3ef2q1k/M1qRK3Yirso9BRTWQkXzqzTsI2UFN
	aiaoi9vmqCoHOCfnlxZznsfaP8PnnQZAjYHnW+G9xv9Zw34qkKvlVeZwC+vAZIkLsX/nlrSdUIJQB
	D5U69kijpneYgRetLbBQeUKbEOLWwr0/k9V/rZBZuHe2G7dhyFfr/QHMttDcAyVKqaUVRK4YxP6+C
	mR155dcQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2GbQ-0004zA-9n; Wed, 20 Jan 2021 16:45:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2GbL-0004vO-QC
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 16:45:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 3E1631F44FA7
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, heiko.stuebner@theobroma-systems.com,
 heiko@sntech.de
Subject: [PATCH v7 1/5] media: rkisp1: uapi: change hist_bins array type from
 __u16 to __u32
Date: Wed, 20 Jan 2021 17:44:42 +0100
Message-Id: <20210120164446.1220-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_114459_962762_74003D92 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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

Each entry in the array is a 20 bits value composed of 16
bits unsigned integer and 4 bits fractional part. So the
type should change to __u32.
In addition add a documentation of how the measurements
are done.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 include/uapi/linux/rkisp1-config.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 6e449e784260..f75f8d698fb4 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -844,13 +844,17 @@ struct rkisp1_cif_isp_af_stat {
 /**
  * struct rkisp1_cif_isp_hist_stat - statistics histogram data
  *
- * @hist_bins: measured bin counters
+ * @hist_bins: measured bin counters. Each bin is a 20 bits unsigned fixed point type.
+ *	       Bits 0-4 are the fractional part and bits 5-19 are the integer part.
  *
- * Measurement window divided into 25 sub-windows, set
- * with ISP_HIST_XXX
+ * The window of the measurements area is divided to 5x5 sub-windows. The histogram
+ * is then computed for each sub-window independently and the final result is a weighted
+ * average of the histogram measurements on all sub-windows.
+ * The window of the measurements area and the weight of each sub-window are configurable
+ * using struct @rkisp1_cif_isp_hst_config.
  */
 struct rkisp1_cif_isp_hist_stat {
-	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
+	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
 };
 
 /**
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
