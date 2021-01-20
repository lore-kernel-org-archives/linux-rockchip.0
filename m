Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B258C433E9
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A948E23358
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A948E23358
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W3FK25IdBPToPemLQ/S5v4qPgHBSLo5JethX+nOJV6s=; b=1ahkGZCIs+tz2vD4ISWeBnTCGn
	/Mq6vp0zD2tJwoXe5QxKRgmltEEGO8LfdzT+nTsb18g69FmoOJ1MYgiJOEBgxwFcO4I/nHqpgMHOi
	zbqYf7hnMgh0ZvnnGhohc4dT22iHESydVgyedQXV/jkRKCiwXPBDUoA5rEgEdxLfiTOz9oW54ms/w
	mlEeHWLo4hHW3QqEDRRf/HqIlWXUzCYAOsmX8FNEbTfcWgUhkfdLq27Cr2IqiqbO+Ln4aLUddeSsd
	ft+Sg0+iTcmnENp5Jeg+spM1ZeR+NxGLp2fnnP20P8uzNIJ+FqzB5vSC3lgffHXv5oGI7uMqD3trC
	0OckpI2Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2GbR-0004za-93; Wed, 20 Jan 2021 16:45:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2GbL-0004ve-QF
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 16:45:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 48FA41F44FC0
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, heiko.stuebner@theobroma-systems.com,
 heiko@sntech.de
Subject: [PATCH v7 3/5] media: rockchip: rkisp1: reduce number of histogram
 grid elements in uapi
Date: Wed, 20 Jan 2021 17:44:44 +0100
Message-Id: <20210120164446.1220-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_114459_962439_EB7BB4E1 
X-CRM114-Status: GOOD (  11.13  )
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

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The uapi right now specifies an array size of 28 but the actual number
of elements is only 25 with the last 3 being unused.

Reduce the array size to the correct number of elements and change
the params code to iterate the array 25 times.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 3 ++-
 include/uapi/linux/rkisp1-config.h                     | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 6af4d551ffb5..021939466b24 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -589,7 +589,6 @@ static void rkisp1_hst_config(struct rkisp1_params *params,
 		RKISP1_CIF_ISP_HIST_WEIGHT_22TO03,
 		RKISP1_CIF_ISP_HIST_WEIGHT_13TO43,
 		RKISP1_CIF_ISP_HIST_WEIGHT_04TO34,
-		RKISP1_CIF_ISP_HIST_WEIGHT_44,
 	};
 	const u8 *weight;
 	unsigned int i;
@@ -622,6 +621,8 @@ static void rkisp1_hst_config(struct rkisp1_params *params,
 							    weight[2],
 							    weight[3]),
 				 hist_weight_regs[i]);
+
+	rkisp1_write(params->rkisp1, weight[0] & 0x1F, RKISP1_CIF_ISP_HIST_WEIGHT_44);
 }
 
 static void
diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index f75f8d698fb4..0da07cd1ceeb 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -102,8 +102,7 @@
 /*
  * Histogram calculation
  */
-/* Last 3 values unused. */
-#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28
+#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 25
 
 /*
  * Defect Pixel Cluster Correction
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
