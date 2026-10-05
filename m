Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 005EECA5FFC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 00:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUpBEtWT1OhuN1cPXKebvQiQ5uWXFr4M0InURtrlN0Y=; b=qIqfIQlRU9v3fK
	7UOLzP+0M6ZErlrnRpwB4HbfZWbnWjbUWQanCvgOQDbOwW2hWRH7hXkGfUcoIfOEfmXC37WEGVeZi
	K0xa5t83wK9lhPY/YJvgoa6NsrmArbgKBPwluqNYipn3nwB7IOLH38VLjp+f9kwIR50UwzeGNWo6i
	jvYDywxd39g2i4sOQz675pTSZ4eOdO9LRtxc+7o7skWlsGwJbbLtLgszILs4hd4/BmMFQAQIqLqRf
	bxD1c5TK0E/yVQg20SFsj+zRNJ/rt/T3W+bjfey6Q4rctSFG01yNtWshGlxWXoiOgPbqVKz5PZ/F9
	nCsWlMnT24QCcOj3VRVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjF-0000000FVxz-3qrL;
	Mon, 05 Oct 2026 00:38:53 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjC-0000000FVw1-1tJr;
	Mon, 05 Oct 2026 00:38:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1791160726;
	bh=Y//2B/y9c1+PInn0UoaxR3RF1A8oIriYQhCokHi1XEY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CCmzHR+yJ2n9MfkF6irj3PEzCxGhZVSFlwYI2AQkvKjrwLouXDfGrhZGq3lsYYEK+
	 A23AXoSYEQyhuA9dZXxxSXxhKUCuveL8IiykwAf2OJt6f7TjpUF5yPaCUdil0ttKHC
	 8Ueus4zQpjw2RsOloQ0p9aQNifkQ5Hx9gZBIEvbta5VxnPJKlQwy1rUAbomEsV3Ba5
	 onPISy+IE4LkSaIg7J3G7MRiUgysvDWC7dVwg3fU+TShuR3txzeK3u0aQPjq1uWGQQ
	 6vEHSwys18RpuLf7X/naMEdD9DzDscPhE8YCxlYM7yxGj7h42sK1nOIYzrHSI8eShi
	 xBnFGj75JInKg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3FF2017E04B7;
	Mon, 05 Oct 2026 02:38:46 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 05 Oct 2026 03:38:02 +0300
Subject: [PATCH v12 01/16] drm/bridge: dw-hdmi-qp: Demote i2c bus error
 messages to debug level
MIME-Version: 1.0
Message-Id: <20261005-dw-hdmi-qp-scramb-v12-1-195157ba0b40@collabora.com>
References: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
In-Reply-To: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Algea Cao <algea.cao@rock-chips.com>, Daniel Stone <daniels@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_173850_665539_4EE7DFBA 
X-CRM114-Status: GOOD (  11.71  )
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

A NACK or timeout on the DDC bus is a normal condition when the sink is
absent or unpowered.  Some displays keep HPD asserted and the EDID
EEPROM readable while in standby, but leave the SCDC slave unpowered.
This results in i2c-related error messages on every boot during
scrambling setup, even though the condition is handled gracefully and
the SCDC configuration is restored on the next hotplug event.

Log the i2c bus level failures with dev_dbg_ratelimited() instead,
matching the silent behaviour of the non-QP dw-hdmi i2c bus algorithm.
The DDC users already report failures at the appropriate level, e.g. the
SCDC helpers via drm_scdc_dbg().  This also makes the no-hpd special
casing of the read path messages redundant, so drop it.

Reported-by: Diederik de Haas <diederik@cknow-tech.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index c9568aea98dc..9abcea92b720 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -350,22 +350,14 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 
 		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
 		if (!stat) {
-			if (hdmi->no_hpd)
-				dev_dbg_ratelimited(hdmi->dev,
-						    "i2c read timed out\n");
-			else
-				dev_err(hdmi->dev, "i2c read timed out\n");
+			dev_dbg_ratelimited(hdmi->dev, "i2c read timed out\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EAGAIN;
 		}
 
 		/* Check for error condition on the bus */
 		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
-			if (hdmi->no_hpd)
-				dev_dbg_ratelimited(hdmi->dev,
-						    "i2c read error\n");
-			else
-				dev_err(hdmi->dev, "i2c read error\n");
+			dev_dbg_ratelimited(hdmi->dev, "i2c read error\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EIO;
 		}
@@ -404,14 +396,14 @@ static int dw_hdmi_qp_i2c_write(struct dw_hdmi_qp *hdmi,
 
 		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
 		if (!stat) {
-			dev_err(hdmi->dev, "i2c write time out!\n");
+			dev_dbg_ratelimited(hdmi->dev, "i2c write time out!\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EAGAIN;
 		}
 
 		/* Check for error condition on the bus */
 		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
-			dev_err(hdmi->dev, "i2c write nack!\n");
+			dev_dbg_ratelimited(hdmi->dev, "i2c write nack!\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EIO;
 		}

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
