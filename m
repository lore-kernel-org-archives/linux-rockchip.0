Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 956B6C561E6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 08:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZFCtGcsL8OJ0ZZSIB9zq7Uz25YLToP5sAIPxs0wOVM=; b=NdgaXy0sI+ku1V
	YcwBRMcpXTP4gRGBBV6t9w8NmHQ52Ugi8xc+/T6phRqwCegUtbQcRrDcLOvqvDH7eifpaOOtU+PmS
	TX75WGZ3GSGJkGPzlIbpec2aV9/lCej/qDZem8tUt7Macqo/V2XioW7lSZyulMDAeOHWR5bfn1OOD
	t6EwjVkXuLoF9QciC4pbODZ8ahspdqGczsfKu8iyTVVLy5yOnV/boBK406QohE3OCNCMDDBiFM4ZH
	+4RMGX79NcFVDo1KtlPHkLyb0mqqkdqbpiMO0t2N9mguLMZxxCjkGy3px7z7gpwFWWLPqq6EScnhW
	BHvszoiaRtksnXdmNp9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrALB-00000001Iwq-0JYm;
	Tue, 04 Aug 2026 08:17:37 +0000
Received: from mail-m60246.netease.com ([210.79.60.246])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrAL7-00000001IsX-3xh9;
	Tue, 04 Aug 2026 08:17:35 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 48b4ffedc;
	Tue, 4 Aug 2026 16:17:27 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v2 03/10] drm/bridge: analogix_dp: Add IRQF_ONESHOT and simplify IRQ handling
Date: Tue,  4 Aug 2026 16:17:10 +0800
Message-Id: <20260804081717.741404-4-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260804081717.741404-1-damon.ding@rock-chips.com>
References: <20260804081717.741404-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9fcbd95bcb03a8kunma7b8cbe762b08a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGkJIVh9CT0MfQh4dHh8aH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=AJ68viMFBWXHxnjGTpoaeHbV7UH+To0yZHQkuIi2zsNchT/UmmiTJ1GDwIZYD03Jnq+zFQVW3M2aCgFS1hncqlC/JqqXa8vmw5RtkyqizLA8Wv/BS2eJ8u/QN0D++8gil8tiBGoW4oecZs7+bH2LtMcjyRCssLrWQuOsUNY8EE4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=jE0sGXJbI2reJDuV1UC0Tv41kr0JIA5TRuBvGefwpJk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_011734_204281_08E37B0A 
X-CRM114-Status: GOOD (  12.56  )
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

The threaded IRQ is requested without IRQF_ONESHOT, allowing hardirq to
preempt the threaded handler. This creates a read-modify-write race on
HPD interrupt mask registers between the hardirq mute and thread unmute
operations.

Add IRQF_ONESHOT to keep the IRQ line masked during thread execution,
which eliminates the race and makes the per-event mute/unmute calls in
hardirq and thread handlers redundant. Move interrupt status clearing
to the beginning of the threaded handler, before
drm_helper_hpd_irq_event(), to avoid losing events that arrive during
the event handling.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../gpu/drm/bridge/analogix/analogix_dp_core.c  | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 7ef8ef812b55..4fe248e66515 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -707,10 +707,8 @@ static irqreturn_t analogix_dp_hardirq(int irq, void *arg)
 	u32 irq_type;
 
 	irq_type = analogix_dp_get_irq_type(dp);
-	if (irq_type) {
-		analogix_dp_mute_hpd_interrupt(dp);
+	if (irq_type)
 		ret = IRQ_WAKE_THREAD;
-	}
 
 	return ret;
 }
@@ -721,6 +719,9 @@ static irqreturn_t analogix_dp_irq_thread(int irq, void *arg)
 	u32 irq_type;
 
 	irq_type = analogix_dp_get_irq_type(dp);
+	if (irq_type)
+		analogix_dp_clear_hotplug_interrupts(dp);
+
 	if (irq_type & DP_IRQ_TYPE_HP_CABLE_IN ||
 	    irq_type & DP_IRQ_TYPE_HP_CABLE_OUT) {
 		dev_dbg(dp->dev, "Detected cable status changed!\n");
@@ -728,11 +729,6 @@ static irqreturn_t analogix_dp_irq_thread(int irq, void *arg)
 			drm_helper_hpd_irq_event(dp->drm_dev);
 	}
 
-	if (irq_type) {
-		analogix_dp_clear_hotplug_interrupts(dp);
-		analogix_dp_unmute_hpd_interrupt(dp);
-	}
-
 	return IRQ_HANDLED;
 }
 
@@ -1403,10 +1399,11 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 		 * that we can get the current state of the GPIO.
 		 */
 		dp->irq = gpiod_to_irq(dp->hpd_gpiod);
-		irq_flags = IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_NO_AUTOEN;
+		irq_flags = IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_NO_AUTOEN |
+			    IRQF_ONESHOT;
 	} else {
 		dp->irq = platform_get_irq(pdev, 0);
-		irq_flags = IRQF_NO_AUTOEN;
+		irq_flags = IRQF_NO_AUTOEN | IRQF_ONESHOT;
 	}
 
 	if (dp->irq == -ENXIO) {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
