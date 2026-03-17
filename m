Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D9BFED9FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 18:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofgVQvlvitI8kRyiU3Y3/XDRLnpzt61sPGlnkmIzJM0=; b=2pWUqMOnDFkId8
	PkdpaMyFFf+I5ky1bCu2Ipcw6A+7mPUyeWA2A9aHvSm5o7BWH7jMmfpS9/o9SAyNhKED+r9JEWK7A
	j2dYpcnnWvesc76CJAg6OSh+VeUxB6J46kDJBvaem7/d9ZS8anfXcKeY/1jt7D/L/U23NvYa3S9/G
	0xJrcH/HV+Yu93ru/RHtqL613VhDs6ID7o9kT1V7E3KLp1BxYBJFSSixjYQ+gD4iiwMzfe/wyKmb0
	1vTp/1stU8U5cZuiQV5i9jURboe92dy2jVOHXfFvBBNtQuPNwkCvoZsA2RgQFHhaKo5NBiFfTX6oH
	n6XJYZtcLqTo7ipdnH/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2YqA-000000071Ao-3EoM;
	Tue, 17 Mar 2026 18:08:26 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Yq6-0000000714v-2kSU
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 18:08:24 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-43b49819938so855342f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2026 11:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770901; x=1774375701; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zZzaejzhKh2/pl8uBJakl190/CtTYCUrflLlLKsisxI=;
        b=ynK/KZZcV5dJlCxO6Pl5SZ0vIdhUwtwiISJpW4ql7J28PBSPbSqUYhD3Aw1dUfsSN6
         G1Pr6LcfwLVwXNlQquj5suOCfN3Gcdo21OZi2yFTc2j6xxYu/LH5uwnfO7HZ925A2Eoe
         s82gPwYp1sYfboMONjS7+uSBSCx8/i6b4zyh5OU6Q+uejukGXLeznCfWkArCGYIb+MbN
         KFjy6o9JB1RHjXBzw+XXaeTN1AjbskjGgEFlVB78b3SCktlKZ6OoFRqJJw77CBIXpqM6
         r7DKwIFQFFQBoPsY3Q03B/dya2aP9wUQKVJkYYvPUelWzzbM61GGKVrzlt0ig4hhtK7Y
         DARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770901; x=1774375701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zZzaejzhKh2/pl8uBJakl190/CtTYCUrflLlLKsisxI=;
        b=RyLjWZRgHe6J6E2H8H9dTCjmKUS/zhifvXEkcQzgd4qyiZ3aY1ituYWBmdjQq8Me/P
         UGMic+chle8zmlOptfn69QeqxrA3NhOwczANsyJpOYVnxoNQ8DmbAbjRANEuajFx4OBW
         pe9gK3KxEspeVNWWWphYjHPdWMV6LZolja2cT/HUnukTvrX6sl4jRymP+vk+WpLKFkzO
         3eM7rIZPT2Ye/rSOieF+hAusiWwgTxsqcId+PxX5uO2ISFPYTV+xylVy4gKyC6KiATk3
         JA/TF1h2cPdeJCk5T1u/n47RCSTfjsdatqLkxf7XKGNCHZWNycRCpwfbnLWXNNDibF5P
         WMIg==
X-Forwarded-Encrypted: i=1; AJvYcCXhlZxY6XasXCjlLITkaK0/xBCZcumBWqnoZIETp36JBroZ20UylY+oo+LQyMH4hDn4rfTzXVlQkjJw38o54w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzaeeZOtRXfsxS5UVD15HAjHVshKa80k313s7U/5KWGN9KmNake
	0FetYMdEK4iUfmdEUsQaRu2LItfD1VPNG5FOUcpUf5zPqxN1bibwjv5bEviWHiWdbN7NoWBATOB
	uBcrYF+Y=
X-Gm-Gg: ATEYQzzJSeM2Lk3UFR3gFB1nK48x3DUFAFGGR7MFrQBDXOA8oHWdaHUKwG+rwLhWypf
	h02unfZ4rNIZEpmvSQ57yy7lqszeTME1YI/w2Y7ridIEl66mXsxqtFCxRTMfa6GDhkWcRRDPjlO
	wGe2YEMrS+qJIISn0CaRPWdFCVo1NsEAtBIOSD3u38aIiknDa/n+arzz62Lo+SA4dabBJyM6JxQ
	3p/Du9Y0P/kEvbbddtUTi0HZAspbRuEs22qswQ0sSgXpaY8Bs4xVJGyv1BBoTOmCMe3y87OnMiw
	K+9PAl8zloka0qhx0xaLyhG3Wn204G6zgvourfarkSud8jQEYHOa3Y1Yt8CnOovU8FtJDdGO6IP
	kZyhF3bbmnzTggBBTZAPBu9x/HrfsSUd2pTz+wmHt5Fu+mEpviQt028WQfKsb2Y4f3RNlFYAy7Y
	mTzKUNKYuFlTK8a6bSI+97duYiM9sInhm2x9Jaeeesu2gOuSeLs7r43qdtdTDbLA505u3/5xMfM
	6yWcSNIXpTe/gFP
X-Received: by 2002:a5d:5d13:0:b0:43b:45d1:f448 with SMTP id ffacd0b85a97d-43b527aa5bbmr374980f8f.14.1773770900811;
        Tue, 17 Mar 2026 11:08:20 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:20 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 17 Mar 2026 22:08:01 +0400
Subject: [PATCH v2 4/5] usb: typec: tcpci_rt1711h: Drop unnecessary
 VID/PID/DID checks
MIME-Version: 1.0
Message-Id: <20260317-husb311-v2-4-03c17c986abe@flipper.net>
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
In-Reply-To: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3767; i=alchark@flipper.net;
 h=from:subject:message-id; bh=adUNrc5DmhRHUleLGmdaxH9/D4sLCU6UUObKtpN1GPU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNEm7lq/wyh58vysd8teFvqaSX7aqZlhekVIp2SHw
 hzjoNeiHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEz1VmuGfxYZ97tT9/Pu1tP4ff9FTPE84X1lm3ofM82yYv76Y4acTR4jw5pHJ93
 58wTaY1/eUZrd5S50eEub3t7nTuf2MzMeNDBdxw8A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_110822_732221_71198F05 
X-CRM114-Status: GOOD (  15.07  )
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

Existing checks for VID/PID/DID in the driver are redundant since the
driver is already matched to the device via I2C device ID and OF
compatible strings, and they preclude the use of fallback compatibles.

Remove them to make the driver slimmer and adding new clones easier.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/usb/typec/tcpm/tcpci_rt1711h.c | 59 ++--------------------------------
 1 file changed, 2 insertions(+), 57 deletions(-)

diff --git a/drivers/usb/typec/tcpm/tcpci_rt1711h.c b/drivers/usb/typec/tcpm/tcpci_rt1711h.c
index 37cf55ad74f8..4b3e4e22a82e 100644
--- a/drivers/usb/typec/tcpm/tcpci_rt1711h.c
+++ b/drivers/usb/typec/tcpm/tcpci_rt1711h.c
@@ -18,13 +18,6 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 
-#define RT1711H_VID		0x29CF
-#define ET7304_VID		0x6DCF
-#define RT1711H_PID		0x1711
-#define RT1711H_DID		0x2171
-#define RT1715_DID		0x2173
-#define ET7304_DID		0x2173
-
 #define RT1711H_PHYCTRL1	0x80
 #define RT1711H_PHYCTRL2	0x81
 
@@ -57,8 +50,6 @@
 
 struct rt1711h_chip_info {
 	u32 rxdz_sel;
-	u16 vid;
-	u16 did;
 	bool enable_pd30_extended_message;
 };
 
@@ -304,35 +295,6 @@ static int rt1711h_sw_reset(struct rt1711h_chip *chip)
 	return 0;
 }
 
-static int rt1711h_check_revision(struct i2c_client *i2c, struct rt1711h_chip *chip)
-{
-	int ret;
-
-	ret = i2c_smbus_read_word_data(i2c, TCPC_VENDOR_ID);
-	if (ret < 0)
-		return ret;
-	if (ret != chip->info->vid) {
-		dev_err(&i2c->dev, "vid is not correct, 0x%04x\n", ret);
-		return -ENODEV;
-	}
-	ret = i2c_smbus_read_word_data(i2c, TCPC_PRODUCT_ID);
-	if (ret < 0)
-		return ret;
-	if (ret != RT1711H_PID) {
-		dev_err(&i2c->dev, "pid is not correct, 0x%04x\n", ret);
-		return -ENODEV;
-	}
-	ret = i2c_smbus_read_word_data(i2c, TCPC_BCD_DEV);
-	if (ret < 0)
-		return ret;
-	if (ret != chip->info->did) {
-		dev_err(&i2c->dev, "did is not correct, 0x%04x\n", ret);
-		return -ENODEV;
-	}
-	dev_dbg(&i2c->dev, "did is 0x%04x\n", ret);
-	return ret;
-}
-
 static int rt1711h_probe(struct i2c_client *client)
 {
 	int ret;
@@ -349,12 +311,6 @@ static int rt1711h_probe(struct i2c_client *client)
 
 	chip->info = i2c_get_match_data(client);
 
-	ret = rt1711h_check_revision(client, chip);
-	if (ret < 0) {
-		dev_err(&client->dev, "check vid/pid fail\n");
-		return ret;
-	}
-
 	chip->data.regmap = devm_regmap_init_i2c(client,
 						 &rt1711h_regmap_config);
 	if (IS_ERR(chip->data.regmap))
@@ -408,27 +364,16 @@ static void rt1711h_remove(struct i2c_client *client)
 	tcpci_unregister_port(chip->tcpci);
 }
 
-static const struct rt1711h_chip_info et7304 = {
-	.rxdz_sel = RT1711H_BMCIO_RXDZSEL,
-	.vid = ET7304_VID,
-	.did = ET7304_DID,
-	.enable_pd30_extended_message = true,
-};
-
 static const struct rt1711h_chip_info rt1711h = {
-	.vid = RT1711H_VID,
-	.did = RT1711H_DID,
 };
 
 static const struct rt1711h_chip_info rt1715 = {
 	.rxdz_sel = RT1711H_BMCIO_RXDZSEL,
-	.vid = RT1711H_VID,
-	.did = RT1715_DID,
 	.enable_pd30_extended_message = true,
 };
 
 static const struct i2c_device_id rt1711h_id[] = {
-	{ "et7304", (kernel_ulong_t)&et7304 },
+	{ "et7304", (kernel_ulong_t)&rt1715 },
 	{ "rt1711h", (kernel_ulong_t)&rt1711h },
 	{ "rt1715", (kernel_ulong_t)&rt1715 },
 	{}
@@ -436,7 +381,7 @@ static const struct i2c_device_id rt1711h_id[] = {
 MODULE_DEVICE_TABLE(i2c, rt1711h_id);
 
 static const struct of_device_id rt1711h_of_match[] = {
-	{ .compatible = "etekmicro,et7304", .data = &et7304 },
+	{ .compatible = "etekmicro,et7304", .data = &rt1715 },
 	{ .compatible = "richtek,rt1711h", .data = &rt1711h },
 	{ .compatible = "richtek,rt1715", .data = &rt1715 },
 	{}

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
