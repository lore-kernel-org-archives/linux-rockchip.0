Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0510AC5516D
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 14:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lXMqaSTNBW57CrItONxMFuP8JUFkV2iThD9Dw/0/4c=; b=tojtmhDNIgac2X
	iqrQpROwDnyErzJU06jYqTRkXuy2w9H5qlG/IA1ulUr80HVn2Lie5sTbG1yNBBvJZ/Q2DGj5vQX2j
	sFg6RSp7eRo7JHJ6j7b2JcJDLJL1jTKeqA6PTxvN3mFitSvrl6HAurCMJzj5Epvs3z4NJHKR1zS4l
	lKIDj1GKtecu2qX+w1TGD4GfZ5tEmhyiKIUpu131DHWhD/agzNofhItFkq6cp7dhIAX8R/wrARYsq
	QUqV6ZZ5NudbzmUI88MyEl54EDbIShcKfeDchB52id79ksyq+Tq+HpfUSWWE2vdrWIEIs5nX+sMgp
	pmmofMR7Mb5lQGNFIwBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpoRx-0000000CmY1-2l4r;
	Fri, 31 Jul 2026 14:43:01 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpoRE-0000000Clb0-333T;
	Fri, 31 Jul 2026 14:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785508929;
	bh=xXEUBll9y6OuU/YT7UswjnBGnWHXZmw9kG8eQXnPYWI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XLA3w7EsLv1eu9smNNJYgjge7nU9o5A50HUxaNsZCwgrMx3mAvp8/rCw3hxU8WGAu
	 pm//pYgbgP/sImpcMJQ29bxCqFQNgCllems7uGnTnUZh6+zSblj2uNHMjvzmKKtGOW
	 Q+h7lCQbwQouX/BvHhDUomgyXxbynOum1w+OnajehkdGXQcfuMY2bpDyiFKvzrwlas
	 3zPey4wSqR/486gMst7e2DEYecyhCK4iaIcK339+0doUdUhWwmobljFTBgbTZ0ybIn
	 e8JPz8p4u77gj9NQvL0wia1N4aw9pZoio86DLiAI6GW0JzQtjAtNdbJeBhuWNPcz70
	 XUgJU++4DVE6Q==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A0A8317E0916;
	Fri, 31 Jul 2026 16:42:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 067C6480038; Fri, 31 Jul 2026 16:42:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 31 Jul 2026 16:42:12 +0200
Subject: [PATCH v8 07/21] drm/bridge: synopsys: dw-dp: Fix support for
 short I2C reads
MIME-Version: 1.0
Message-Id: <20260731-synopsys-dw-dp-improvements-v8-7-ac1e6a75782f@collabora.com>
References: <20260731-synopsys-dw-dp-improvements-v8-0-ac1e6a75782f@collabora.com>
In-Reply-To: <20260731-synopsys-dw-dp-improvements-v8-0-ac1e6a75782f@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1460;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=xXEUBll9y6OuU/YT7UswjnBGnWHXZmw9kG8eQXnPYWI=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpstEAQh2CtbiplgbxQz6tO/3/UYpXFPgoF1
 UXjkdynUMWlN4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqbLRAAAoJENju1/PI
 O/qayy0P/RpgiiOe96OD0ClUPwcrk8cEbEZs79HOcyfv5EdIxLptw1aqgzBHMUROMJ+Sc4SGPWu
 bGrzIT4zyoQDFmubk6rme/zStA/H41lGHcT5tyvV1wxGY+MoeFsN4SEwfGAfpt+2RvLOcalPt4Q
 nFlXx/ZtLb7ei2FlwyBqaom8slIGtkRrSrwtUWj5BsU95K0T0x4XKttlsqCTt5Y2LdSuhN9fzZ7
 qBmoYBDB7RauxdcQTF+djEOaIqLhLJbyl0eIh3BAtBP6lzV5zRNieOe5yLZJYOd/CgaXLZbS4eH
 1gDwGKUnWyLelj64PWNhqMvLRIC+YT6HIUEjLNItyLdGOAO/ZQEgA2dVSjzeqkU+sokmTbex6Q8
 TkOaptX1I+mIuNFtRAFDK4QmHQ0MS11pXQ1/ThS5qbuSv3rpnpv2QUxYTUOE+LDHvLJWwcSBO8N
 Y5V6e6bhlxJHuDMihr3PiHGUpFWeJTk/76F9fYAxorlAApW1kZkajgj7jANQe0I17SaXHTUAMw0
 Qtdq5jtzs3ypK1NXwB8n5F2X/wCOWKHBDHAUgvx4cUnnnztYZx30NzLI/jm5lYW8PjONPyXdUPM
 Tq6E2JcV199aRKGOWdlIH3mUe8O80It4JhP700qG3B0Y5lbdAK7WEj5keJpyEgpXtrriGJKigiD
 M58GeXDACH91sCnmqstIqGg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_074216_954264_736731CA 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Sashiko <sashiko-bot@kernel.org>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The transfer functions returns the amount of bytes read for
DP_AUX_I2C_READ. By returning -EBUSY for short reads, the caller has
less information available what is going wrong and possibly simply
resends the read request. On sinks not supporting long reads, this will
simply run into the same issue again.

Instead it makes more sense to return the data from the short read with
the length information, which allows drm_dp_i2c_do_msg() to read data in
smaller chunks and succeed in the end.

Due to lack of a sink, which only supports short reads, this change is
effectively untested.

Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 57b6a8fc98d0..760e1e0f8234 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -1513,7 +1513,7 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
 		if (msg->request & DP_AUX_I2C_READ) {
 			size_t count = FIELD_GET(AUX_BYTES_READ, value) - 1;
 
-			if (count != msg->size)
+			if (!count)
 				return -EBUSY;
 
 			ret = dw_dp_aux_read_data(dp, msg->buffer, count);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
