Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA572D3B7F8
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 12:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuuiSGRNW4W4mfyZf06iCi7uRVcsjD8zp0LpUKPS++4=; b=JL6WY7S8juQLyq
	cZqIFEZanuO4TGe3WzEXj6+aPXQiLc3j1jxzY0z83pRTDx2SsWanX89iWtuAYjRxFhxp4H6pXaC4Y
	rhFPrzEZrIGNIcikwtLEoy//VHKyPaqCBPDAqWKoY/vxnn/+62nGu5jKzGwb3spXuFXbYoJ04Ivzm
	tLCu3U2j7nNvmYwhSUmaaDLDG0IshuiWirV00D0N+wd1Bht5ot4o39yZ0ht0JEuDS+v96DlFeI3At
	gUpWAr1AaE1LgAjsmmWXbTnhavENosPgKhOt2n8sHrK4PsVLjLDZ9RPgTNRCz8Rwo2/MiOBkra7uI
	lcToHNje1DD/VoMRR5ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSwso-0000000EFKq-2uQG;
	Tue, 09 Dec 2025 12:31:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSwsj-0000000EFHA-3sXQ;
	Tue, 09 Dec 2025 12:31:55 +0000
Received: from isaac-ThinkPad-T16-Gen-2.infra.iob (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4A876110;
	Tue,  9 Dec 2025 13:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1765283510;
	bh=j28mLh9q2tWJK/jNy6SAvZiExT86p8zYwA+dXzqMg/A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UC6XkpBcUdYSatNLI0/s6EEbyUbijDZ1iqX7vSVaYspUU952VshKv+MTI1TI6JvRf
	 GcbhAmRjH94ytPFuvJfgTe3CPK5RycuF2pVkzvZ4FFuWQcf+8qFi4eulGvDsUrhFJn
	 YruMcU09mcVe/mDRR7bCtVGXzCRykW/PFGXs0Qtk=
From: Isaac Scott <isaac.scott@ideasonboard.com>
To: dafna@fastmail.com
Cc: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Isaac Scott <isaac.scott@ideasonboard.com>
Subject: [RFC PATCH 1/6] media: rkisp1-resizer: Add YUV source formats to resizer
Date: Tue,  9 Dec 2025 12:31:31 +0000
Message-ID: <20251209123136.273938-2-isaac.scott@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209123136.273938-1-isaac.scott@ideasonboard.com>
References: <20251209123136.273938-1-isaac.scott@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_043154_099380_AE9F1C92 
X-CRM114-Status: UNSURE (   9.82  )
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

To be able to use YUV bypass, YUV formats need to be available on the
source pad of the rkisp1 resizer. Add them.

Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-resizer.c    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 8e6b753d3081..447adec8589b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -33,6 +33,22 @@ static const struct rkisp1_rsz_yuv_mbus_info rkisp1_rsz_yuv_src_formats[] = {
 		.hdiv		= 2,
 		.vdiv		= 2,
 	},
+	{
+		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8, /* YUV420 */
+		.hdiv		= 1,
+		.vdiv		= 1,
+	},
+	{
+		.mbus_code	= MEDIA_BUS_FMT_VYUY8_2X8, /* YUV420 */
+		.hdiv		= 1,
+		.vdiv		= 1,
+	},
+	{
+		.mbus_code	= MEDIA_BUS_FMT_UYVY8_2X8, /* YUV420 */
+		.hdiv		= 1,
+		.vdiv		= 1,
+	},
+
 };
 
 static const struct rkisp1_rsz_yuv_mbus_info *rkisp1_rsz_get_yuv_mbus_info(u32 mbus_code)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
