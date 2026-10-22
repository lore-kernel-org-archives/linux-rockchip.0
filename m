Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6794D606A320
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 02:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YEvMd1NB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Z9xoFFTe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+c/3/GReDv36HA0U0CXMNR+osevxVi9ujKqCXRDF/E=; b=YEvMd1NBpnnUoU
	AWEmuYn2piMyeeVnZZpJD/2OUmfwGU20LjRz4wpjKKRS7SvvOjbmvsDycBLFs7rTnpSj0fCM3DAff
	xgNIKaOZN3jX5YQ4IFvPpzxr1Z1UH1thJLCWkl+J6eeYu+Wafy6G6AACwNISS4y01bmizVMYlwTzv
	T8pPK1vErw0CXmjN7qW/2gAnle5Kg0H771ozdyDUFtdMNHLKK7GoCUOUa1NU2dlcxZZPJLXxTMzWS
	Q7lu66XMjNtyqh8X20/DSdb2crWeHkbo7vx4nJAlbU29EXIOmCgLx/d5mr8zBe4TMPB4NKmFx1VFV
	ZWYRrbNAO0eutWLon5xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJj1I-0000000DFbI-2el6;
	Thu, 22 Oct 2026 02:59:08 +0000
Received: from mail-dy2-x08.google.com ([2607:f8b0:4864:36::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJj1F-0000000DFXz-05FS
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 02:59:06 +0000
Received: by mail-dy2-x08.google.com with SMTP id 5a478bee46e88-35e37b4a43cso210647eec.1
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2026 19:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792637944; x=1793242744; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XWEwn6v/542iwfySD79nms5PIwynC+fVLbCD6LA4gYs=;
        b=Z9xoFFTewkTLM22PFys8qpfH3+AC6YM5dK7jdAeiJlmA1zP13Cvi6T0IxDENTHUTQV
         Em/MF7/qrgtIi6dcDbDbOCccIi5gbxy13GoOCT9dJd5e10raP1/wp1TY/O79uoN2x7GV
         Z+nU0U0GTwyFI7FEGANEAUE8mVHoUAUMwUG5BscdyTsIJtN7B41UuoJz8AoRaibHYOcQ
         jx3UPNgwjV72QrNxOPMI7u6wzrzLOD81qNEUtS2iePOXXuHQMhpaaQBI6Sl99r0i/nkV
         pivrrixHwmGMYg7gwavvuK4hXOcEu3b1PlO9IzuKmLUcVc+/zKw+KfoKLnwNtt35rZix
         5xgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792637944; x=1793242744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=XWEwn6v/542iwfySD79nms5PIwynC+fVLbCD6LA4gYs=;
        b=X4byFRPt5DYrfb3nuL5AZtntLbl1Hfpp5AMQO+wq0AVFxHXdCANU67Cig8X1+DZsuq
         8Sw/OeES0MaWnIH8lur+N6PI2y+y1+wE/Uy77jlGpLPQlWs9zMMzD5iR3+FOy4ap8vpq
         1F0TAsu/AKt9AxQmshl/NRf0N80plH+50fQgKe6V2tj/3wMSpI/IcQfbjnUubqRGB2Ft
         L3cYe7ipN42/rbBGwaoHNJUMSl2slQdPS9/RHPTEiYI72Bhjer+Eb9TPYga7CaCpL11s
         fvA7iF3kQDPOMojiLoWVjatBNY0qJhP1b4wqy2rK7RIRzZTQG3J5F6dAYEN6MECKOEzk
         0erw==
X-Forwarded-Encrypted: i=1; AKwUvBzx+Gz0cBV1oByzJiA7W8H2XkHEm+rGlzODj6U7qPHjD9kMMSy/6v+EyN6XQp/iix0UgbsnwyYrVWi23HWiTg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKeXAvinScYxZVhZEnMPcZhd86XbTCXCy4jX1AMN2aIwbeT/l8G
	qLEXoxToSfx3DYYO8dNVd5EpJPi07p1SvVShg+P+8f/RD/2KZLHZIGrq
X-Gm-Gg: AYBFou2vBVVgZ9MflO4ePrBHFeoKXjwMCT/YwRzFmkZbgIWIFDMbAtle97WghBVZHC8
	SVfrZ9Q8n3wpL4IKfRF5WmWMXmvVFssj7pBm5I9e12VgQnu+NN1KR79fYuO6mpHbcMYLxfGo7vk
	5B5VKHjz0E++T3zK2CbbxT4FMHoC6BOWspyQfFchinjH6HZdoYMpEdw3pmjWuGWRzXZWIrsEPaD
	WLe/mNKunVPmAwbO0XApaa/l2xTO9rYBj/E9wslctXFHrpLV5uVAIf3RVw9bJmXavqd7ZpZNJZO
	VUR4Fh+megzDJmcZEL0cKHJEW1j5sMBlMHrFBBR/qv6gTCOQLzW8Fd3Wc6v9T0U8V2/lPYAD2mY
	iovnO1iPQ7O39CjvCoerDEx/EFlzHYjG7Wtx7MTBnrUoVjLM96xTXfCU2zumlN5s7PRKWKaAkl7
	OS6s3ccvVyi5aGMIY7Jyi7P6KF7L7pM8p+pDMRDYgbrOyjOHykY1udiFdO78Vu/cC6VEcKcJ/Gr
	FycOuJIKyzLs7mA578rQ+cvn8uz8AfYT9CrcuwFJuVHUuQkjxZUzw==
X-Received: by 2002:a05:7301:2b5:b0:358:c5c9:2661 with SMTP id 5a478bee46e88-368af4a36bcmr1633520eec.10.1792637944031;
        Wed, 21 Oct 2026 19:59:04 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36740cc8c6dsm13029572eec.12.2026.10.21.19.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2026 19:59:03 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v11 2/3] arm64: dts: rockchip: rk3568-photonicat: add RGMII PHY LEDs
Date: Thu, 22 Oct 2026 10:58:43 +0800
Message-ID: <20261022025844.150320-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261022025844.150320-1-coiaprant@gmail.com>
References: <20261022025844.150320-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_195905_708011_7ECF1661 
X-CRM114-Status: UNSURE (   9.98  )
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
index 58c1052ba8ef3..12ae9159bea87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
@@ -350,6 +351,25 @@ rgmii_phy: ethernet-phy@3 {
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
