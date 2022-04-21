Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A0B0C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQxWwW/d4S++c6Fv/SDN6sbqxRUPhsJM8ws1alxs3iY=; b=oZuzj3S59L/yPJ
	9ps6SUbZK2vqAEjlnBmhiMRBDC74aOP2UlRgN5c61mk3/RG0squSoX+TxSBvBEx5s/nGOj1EAY7UE
	vg6I406iWsOTaNngx+3lwQ0eA3qS8S8Jqu4htWJxNV2Ueg/hYDnbkoLRQuy8mW0C3d+w87ZOkViQR
	yy2dxtHqXnrGIZT1OBHlwHMmFCEdInnZNz6FM1muwvWpjf55roOB6DR/ylg3x3bkiGNyM0ayXf1Yh
	8PYRSK4WKbYBUDPXzD9XLottPy6DirPvugRMNMgD9gsTcs2/lyigNoyPD664P2mtyxjTowjqGFSmH
	uNqJepr63psLVAEpQkHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgSD-00FOKY-E4; Thu, 21 Apr 2022 23:43:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRt-00FNuQ-VT
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:43:00 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 22132102E;
 Fri, 22 Apr 2022 01:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584576;
 bh=X2XxoSDdVIy1hZmfB424smfLydORETeNUsbI6Dt/2Js=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rDRZvMCgAzRmdqzIwW9Jgbq6AgFrvwZzrzYltOsQrZ5uxjjTeboYc20sKEe7+USgX
 vu1f1qvaq7Aw4led0a0kFUuiNC7QJuHLVDVRGBVTl2lcDE5dAHae2CLCeJHDkit73k
 WVNHBNWaCXXEiDlTfwb34pdfIbFetKogBzTA7SyM=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 19/21] media: rkisp1: capture: Bypass the main device for
 handling querycap
Date: Fri, 22 Apr 2022 02:42:38 +0300
Message-Id: <20220421234240.1694-20-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164258_281000_8F2AFE2D 
X-CRM114-Status: UNSURE (   8.72  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

When handling querycap, the capture node would access the main rkisp1
device unnecessarily. Get the information from the most direct source.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index a7cf672457cd..94819e6c23e2 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1248,11 +1248,8 @@ static int rkisp1_g_fmt_vid_cap_mplane(struct file *file, void *fh,
 static int
 rkisp1_querycap(struct file *file, void *priv, struct v4l2_capability *cap)
 {
-	struct rkisp1_capture *cap_dev = video_drvdata(file);
-	struct rkisp1_device *rkisp1 = cap_dev->rkisp1;
-
-	strscpy(cap->driver, rkisp1->dev->driver->name, sizeof(cap->driver));
-	strscpy(cap->card, rkisp1->dev->driver->name, sizeof(cap->card));
+	strscpy(cap->driver, RKISP1_DRIVER_NAME, sizeof(cap->driver));
+	strscpy(cap->card, RKISP1_DRIVER_NAME, sizeof(cap->card));
 	strscpy(cap->bus_info, RKISP1_BUS_INFO, sizeof(cap->bus_info));
 
 	return 0;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
