Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B458CD6E6B
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 22:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Y2iW3br1kY9SuebX6t/HnCys2/4qs41UnrdYdZikrk=; b=3hwaw5L7BxIR9q
	VUXLF7tSGffx5vK3M11pmtyKyOQ7Dar1A4dKEjrY2Sqt0EC/VKppk+izGJlwwNTfPWHMzPzwTHHKX
	ffxcC6bpMaBU8+Zcku2Sc/lP83aE/V/jjnm8B60o3w9KVD8vATPD49FHIDco3SgUmJ9bVYDonyn9c
	VLqVu7S3eH5SV6imV9LmNCSwxkZMpNWZtcts7mF0sXkwO0X4kzCj35NFC14VF84hTNDSwflKoyg9Z
	J3gksruxGB/2y/Lv8v/bYR8DBwJIX2ASI90PGLrd6bPJjKto95ZzP5C2JUIg1z63yNNjWRGj0Ht6g
	CDxQpCY6J38oSy9K+U8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUBO4-0000000ByeL-0Am9;
	Mon, 01 Jun 2026 22:45:36 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUBNp-0000000By91-0gIQ;
	Mon, 01 Jun 2026 22:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780353919;
	bh=CqrlMo21uLSDERPACdFjyTESttbjzijb5VGmtS4m04U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=K/6ZhbKWrrUNMfKwYutN3ZLitktfoN/XlhjVpSSZhj4MvVO9v6ejn3dW5XyGHPm9Y
	 9DlEZqyVLc5fNKvnyxRdn8JGDlbWIJl49jZijqF98dyY6EFrfOCmVGSffPie/j6QrX
	 1v6uRkB8//B18zL5fH5n3TtfqXO29TVfLiTFSZjghG/BKwqoE8hbcmufDHySlx07If
	 T69dNQioTui4NE1DtF829l5LF/999quy2CyDNd4+RB7XHguYshHPSkuPrSPsCN0bX4
	 ohsmrbYMz4WYgm0/hzeNL1slt41ZfjnAkrswOgHDjD8036q763WMSttmNKr3vV/Xxo
	 y/slxs7QKyMsQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 484AE17E0DE1;
	Tue,  2 Jun 2026 00:45:19 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 02 Jun 2026 01:44:12 +0300
Subject: [PATCH v7 12/30] drm/bridge: dw-hdmi-qp: Rate limit i2c read error
 messages
MIME-Version: 1.0
Message-Id: <20260602-dw-hdmi-qp-scramb-v7-12-445eb54ee1ed@collabora.com>
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_154521_401812_F462FB3B 
X-CRM114-Status: GOOD (  10.21  )
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

During EDID reads, repeated i2c errors can flood the kernel log:

[   25.361716] dwhdmiqp-rockchip fde80000.hdmi: i2c read error
[   25.363376] dwhdmiqp-rockchip fde80000.hdmi: i2c read error
...
[   25.368671] dwhdmiqp-rockchip fde80000.hdmi: i2c read error
[   25.369440] dwhdmiqp-rockchip fde80000.hdmi: failed to get edid

Switch to dev_err_ratelimited() in dw_hdmi_qp_i2c_read() to reduce log
spam while still reporting the condition.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 1c214a8e6dc2..b3318655ceab 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -561,7 +561,7 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 				dev_dbg_ratelimited(hdmi->dev,
 						    "i2c read timed out\n");
 			else
-				dev_err(hdmi->dev, "i2c read timed out\n");
+				dev_err_ratelimited(hdmi->dev, "i2c read timed out\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EAGAIN;
 		}
@@ -572,7 +572,7 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 				dev_dbg_ratelimited(hdmi->dev,
 						    "i2c read error\n");
 			else
-				dev_err(hdmi->dev, "i2c read error\n");
+				dev_err_ratelimited(hdmi->dev, "i2c read error\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EIO;
 		}

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
