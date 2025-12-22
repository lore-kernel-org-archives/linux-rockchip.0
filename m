Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2153E6ADC5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 20:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jay0c7tzFBPnS5CNjVX63AGg1xVt2wbOYUvoZzwTk5g=; b=THt0MAFlLO4hLs
	Q2kl9ieL9dTRVMGPZ8Mr+y1D4YOdRazJ7UjazbYpb5S4jAdqB1BzUIycwVFQGM3fNJqquWbdHoESl
	7AzZDV78wPEdsKljOuSVRLPoWaWu2Uset2Wbdo4TJNk2aCRCeU3UxhAliCMPud65T9wmpmVHYOVb+
	arIqOXpDoREdWKta9QRZAuU3ofYsrJWyN6vwXi44OQKxC7DnNkRHlFoe3Omn0iBB3vUdv3mvEQy8e
	NuSBHImEY1giScKluwfHmjSFQH5/ayYpC1zEcaZ2YPlDNwcw7BYjJhNCkGWiZU7P0YofHYWTDUWBP
	7RjlHugRgRk81BmeJcCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmfO-0000000E9AN-3HKs;
	Mon, 22 Dec 2025 20:38:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmfM-0000000E99k-2xuw
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 20:38:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6BBBF408A8;
	Mon, 22 Dec 2025 20:38:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BB7DC4CEF1;
	Mon, 22 Dec 2025 20:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766435884;
	bh=UTYYzZeRaa3Nn7UveWqQ/IsQZ7Vog6LpCWp1SfFhYXw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tfyfl54peFOU5xH7PnoXeaj1xjaYIDHNRnzhCKkWT1lKZJ4OwchQJD8wlBbzNy6v/
	 lhd7SaTRat2v+Gqb3UhdHhd1qJliUWEmv2B+publBRQkbNopXtTsf4ifagWDuVFT01
	 FlWSH5XWr2lJOMfUhlAB7nsjuMv2vMMDYUy7/L46o3j5ukitFwZRKoFhiU+NOGyIH7
	 RSVxwpaIMoMukVH5XEIchqRcQtvCO52xx3nCypj03hi6cGjAQNs83HTzQ88HxfDLAT
	 xV3spGFSoYSuWSMIsmBQEwAu89E100EseXo9Qv3uQaDIOqet0wrn4mOKNXlsAlcDpy
	 57oSulRGFs0Dg==
From: "Rafael J. Wysocki" <rafael@kernel.org>
To: Linux PM <linux-pm@vger.kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Brian Norris <briannorris@chromium.org>,
 Dafna Hirschfeld <dafna@fastmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v1 05/23] media: rkisp1: Discard pm_runtime_put() return value
Date: Mon, 22 Dec 2025 21:01:55 +0100
Message-ID: <2356323.iZASKD2KPV@rafael.j.wysocki>
Organization: Linux Kernel Development
In-Reply-To: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_123804_778936_065E1EBB 
X-CRM114-Status: GOOD (  14.22  )
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

From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Printing error messages on pm_runtime_put() returning negative values
is not particularly useful.
 
Returning an error code from pm_runtime_put() merely means that it has
not queued up a work item to check whether or not the device can be
suspended and there are many perfectly valid situations in which that
can happen, like after writing "on" to the devices' runtime PM "control"
attribute in sysfs for one example.

Accordingly, update rkisp1_vb2_stop_streaming() to simply discard the
return value of pm_runtime_put().

This will facilitate a planned change of the pm_runtime_put() return
type to void in the future.

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---

This patch is part of a series, but it doesn't depend on anything else
in that series.  The last patch in the series depends on it.

It can be applied by itself and if you decide to do so, please let me
know.

Otherwise, an ACK or equivalent will be appreciated, but also the lack
of specific criticism will be eventually regarded as consent.

---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1123,7 +1123,6 @@ static void rkisp1_vb2_stop_streaming(st
 	struct rkisp1_capture *cap = queue->drv_priv;
 	struct rkisp1_vdev_node *node = &cap->vnode;
 	struct rkisp1_device *rkisp1 = cap->rkisp1;
-	int ret;
 
 	mutex_lock(&cap->rkisp1->stream_lock);
 
@@ -1132,9 +1131,7 @@ static void rkisp1_vb2_stop_streaming(st
 	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_ERROR);
 
 	v4l2_pipeline_pm_put(&node->vdev.entity);
-	ret = pm_runtime_put(rkisp1->dev);
-	if (ret < 0)
-		dev_err(rkisp1->dev, "power down failed error:%d\n", ret);
+	pm_runtime_put(rkisp1->dev);
 
 	rkisp1_dummy_buf_destroy(cap);
 




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
