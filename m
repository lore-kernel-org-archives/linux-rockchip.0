Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5402C43217
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvSLhrPFmv4OFecgVrJ4H3+KYPUc46ano2dcm/by0uM=; b=2CuLWB0yaNZKxC
	ZjsX5X09/YJpCyAba5NpsjcG7LDm97fYNldp+K/WtMApT9cBiqPsHMFYozggAMZoYVR2dxnVZcVHa
	//z2k03hL5vYvr3o+u8enlfVod0m0zzFIMXdOMZ3YXiJv0xUS0VyJnnUOLZn3lv8o0uMJl1HZ0eh5
	ujEMT/1/c/Tr42sYhVdxKUbcfvXKiOImm48ZE8QDPj3jKyoF4lG5Dl3fstDz6UbC3YEycRBZUirVM
	y9ISnYh76JFKS8WT2mRAiLm4FV8eC2CBBCZATOTy/giA2j0FzJ8xlDsma9Z68pPLf4omnppyajjS5
	zCdB1siQggIzRURAleng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLcW-00ElNh-5Y; Tue, 26 Apr 2022 13:52:48 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njLZQ-00Ek4v-Ka; Tue, 26 Apr 2022 13:49:45 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout3.routing.net (Postfix) with ESMTP id 9AB776046E;
 Tue, 26 Apr 2022 13:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650980974;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9T6dfbFLzZWVvyVq0SMrDb0x/bFX4493F6lZIKD4BEA=;
 b=OXU/sxWXuSmpwGApm8WL8UWVW0Ylkm4b6uGIlOgLznGJkjdEf7iZ6FSy73KLWP11Ped9KD
 A7QpM75eZfHPjBbszJU8auHURDDMg6eKmhH24qbOWDiJPXAUd3sum4P5y9WRk+MytqVlu0
 pYEm+l7TIpM6Sr4VVbC6BybBtFBrkm0=
Received: from localhost.localdomain (fttx-pool-80.245.77.37.bambit.de
 [80.245.77.37])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id A01D936065C;
 Tue, 26 Apr 2022 13:49:33 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Sean Wang <sean.wang@mediatek.com>,
 Landen Chao <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: [RFC v1 1/3] net: dsa: mt753x: make reset optional
Date: Tue, 26 Apr 2022 15:49:22 +0200
Message-Id: <20220426134924.30372-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426134924.30372-1-linux@fw-web.de>
References: <20220426134924.30372-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 136ca4f9-f5c5-40e4-a2e3-6f99f2bf827a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_064936_883805_893068E0 
X-CRM114-Status: GOOD (  10.29  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Currently a reset line is required, but on BPI-R2-Pro board
this reset is shared with the gmac and prevents the switch to
be initialized because mdio is not ready fast enough after
the reset.

So make the reset optional to allow shared reset lines.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/net/dsa/mt7530.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
index 19f0035d4410..ccf4cb944167 100644
--- a/drivers/net/dsa/mt7530.c
+++ b/drivers/net/dsa/mt7530.c
@@ -2134,7 +2134,7 @@ mt7530_setup(struct dsa_switch *ds)
 		reset_control_assert(priv->rstc);
 		usleep_range(1000, 1100);
 		reset_control_deassert(priv->rstc);
-	} else {
+	} else if (priv->reset) {
 		gpiod_set_value_cansleep(priv->reset, 0);
 		usleep_range(1000, 1100);
 		gpiod_set_value_cansleep(priv->reset, 1);
@@ -2276,7 +2276,7 @@ mt7531_setup(struct dsa_switch *ds)
 		reset_control_assert(priv->rstc);
 		usleep_range(1000, 1100);
 		reset_control_deassert(priv->rstc);
-	} else {
+	} else if (priv->reset) {
 		gpiod_set_value_cansleep(priv->reset, 0);
 		usleep_range(1000, 1100);
 		gpiod_set_value_cansleep(priv->reset, 1);
@@ -3272,8 +3272,7 @@ mt7530_probe(struct mdio_device *mdiodev)
 		priv->reset = devm_gpiod_get_optional(&mdiodev->dev, "reset",
 						      GPIOD_OUT_LOW);
 		if (IS_ERR(priv->reset)) {
-			dev_err(&mdiodev->dev, "Couldn't get our reset line\n");
-			return PTR_ERR(priv->reset);
+			dev_warn(&mdiodev->dev, "Couldn't get our reset line\n");
 		}
 	}
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
