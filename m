Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C4B606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 16:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=URUU3ITY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zI8cJXWL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6TUDSJSttHNYSI53llrI7gtTTuJpAjiFpatNJ7KjcZo=; b=URUU3ITYavw+47F9O7/8pQl5QJ
	MVDVATrg8ctCLZkLJbHFJAi03uusbymvrHYVHWTIDkr6e/SqKyOdnF0v2MwgGP5RNDvW6f7N9Cw1s
	k3ZXpoUNbx28+jyJlohjiLzbOGyJW/Nk+SX42n3eMnQdRY8kxR6iPxEYJlZZ/hHVW8WyOfYnObmiF
	XlHZ6jOMM5qMkNs4MNQjGIHnCAKw1nJvw3AF+bTnW0WDX4kfPDUuo5uUqCoorB37It0NcF08v83Sx
	3lvTizp8UYiN48ptZ+LSdt1R8iaVg0xDTQX0TmakWnET+kdt6v+Y1x86I7wh4l37GtBs9vgOenLmV
	SiEDS1zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXN6-00000004HFV-3qfr;
	Mon, 23 Nov 2026 16:58:28 +0000
Received: from mail-dy2-x0b.google.com ([2607:f8b0:4864:36::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXMe-00000004H8b-3LSs
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 16:58:04 +0000
Received: by mail-dy2-x0b.google.com with SMTP id 5a478bee46e88-386a9d47d97so219930eec.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 08:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795453080; x=1796057880; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KrFGWAp7BWRf3gdxkQzLizSlPFj0AMgOjQiOaX8cNIY=;
        b=zI8cJXWLgOvuoPXKS7zBNrDPaz5/THuW2ZBzVlHVQiK5IQVGAMuJQoQVknOh2GrkXl
         e96S69z/aXaW/1N+1vCScSEInP9o4/B60wwAci8bFDTnnwHeKVQL987Dk7uxLC8kCZSf
         QFHTzmB8t+ADnEzPhUUuawqNU5GpGDJfyQahNttAai00im5tqypdo6qpJIftxfj+HbVc
         OzJG2OaUKF7hHjdompc0gltByvAAd+16HzIupjiirWgSHK+NPZraLfxT2Vqf0241yzMu
         vd0xNkICJ0nnZYucAS6V9aS1148Tz5g7jSc22hFYy/tjtfGdhG21etHW8Ah3imoxseJW
         /31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795453080; x=1796057880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KrFGWAp7BWRf3gdxkQzLizSlPFj0AMgOjQiOaX8cNIY=;
        b=QmOPfl2ERjC3fwPe9NBqWLYwvmml6oq6MgvBBFsxOO0RaFRlgbZpThZ8aNaqHXkJJQ
         F5ld4rHrOn5XJxxb1s8FPVEQJo78TMkKQ0EHq05lyS2CiJUdRaQQJ9CgozqRI7oAy+qm
         DTrEQJbQKHQQhWHlWgm6wwE1oMAErPQDlIdpgY95iUh5zkMhzDlO3QyIQD8sx6JKbfEb
         vzSvFL1zX0ZLE/YOEOzrvX9PfhXbVV59AzG1/5GBiWH9kleqap047q6fa3tbhkvOzjax
         bQv/U1YM3pLdWBiv5PBjK/BQGPYPoB5toY/YvV5/5Vg0rFMxtQuQudu3CZ5M3YyE45DS
         ss6A==
X-Forwarded-Encrypted: i=1; AL+hErFPc0fZgvQjPIJhOKq4ify7Pi/bumWFF0AvVn1M3YdpTM4+F5s56UYeGtxi39E9oggjrDU9yd03A2NUHHK6Tg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/uwwwYii/2j6sEF5m/nwI6lpz8RTME0qQTo6imieYvtDjECbAX
	v6XMeZHm+FIPfyamRJ7sFe/BVgmaYCmYOJLfQT3/Nk1XYh+5A2Ni/uEb
X-Gm-Gg: AZFdTZepqnVWqGcNThqevc97c///QymnzuDJlH5VdPweE1RJIDqIDqp1h5ey/jyQk+g
	6agh2JKHvEapWtkCkTCNES6QA7ltRTt+gLCeUwqXax3wo2/QZ7BSazq2cyJEwzSZ+V4zt4ext00
	4jmqsl6Pvu0Y5ytWV45/RiqIUF07nLwZzIo8cGqXui/5enNWS98SPEPyXn2jDe6k7Y2C9wLyJtJ
	DvXnb5xIF6a34vLy37lH384bu2Ej4v3kfPrCsFxCpCdKtFcylqE6DSNGRw+6SeEiGjOULNu0UQG
	7pSUAXIcWfE/5yaPRAy3CfYeT+gVs2jQHXV0+MLnPQzMULevqp2al2NoNM5TVWwd8+YV2mhLjA5
	7FjX+sofVt8CBzIW8a+LD1o6EmIF/bKU9+oEJ1IdGohGu2bvhJD68KqFNEk5kwtqW15Y5C28LrO
	nM8mf9CywofpsTb26Yr8KsoFmb6BkSo6b2mNwigTpI8kxPSwKt99Z9sRNxKzOG8nxNnAHnHu0Y6
	uiV77dhX93zbJho5/RTA+COaUY6pmepJYnw5ANVQXOa5Q3frUupzpetUYLCFy9qwj4OY//KWkgM
	fPnrcCkm2wCEqMrB/E5FkY/ii3TUUNEV4on3EnMnrFQfoLfejmuJfWD3/hjlcU2NI5ZRcE10BHI
	Rg/ZP
X-Received: by 2002:a05:7300:339a:b0:36a:18e2:64c with SMTP id 5a478bee46e88-3856fd5bf6bmr12682498eec.11.1795453080055;
        Mon, 23 Nov 2026 08:58:00 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aa203267sm13315280eec.0.2026.11.23.08.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 08:57:59 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v13 2/3] arm64: dts: rockchip: rk3568-photonicat: add RGMII PHY LEDs
Date: Tue, 24 Nov 2026 00:57:02 +0800
Message-ID: <20261123165703.667564-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261123165703.667564-1-coiaprant@gmail.com>
References: <20261123165703.667564-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_085802_050712_54D94596 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Motorcomm YT8521SC RGMII PHY on the Ariaboard Photonicat has two
front-panel LEDs wired to it. Describe them in the device tree so that
userspace can control and monitor them through the LED class.

Both LEDs use the "keep" default state, so the PHY's built-in LED
behaviour is preserved until userspace overrides the trigger.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 983cf3d0a135..3cc05f08f429 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
@@ -391,6 +392,25 @@ rgmii_phy: ethernet-phy@3 {
 		reset-gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
 		rx-internal-delay-ps = <1500>;
 		tx-internal-delay-ps = <1500>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+		};
 	};
 };
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
