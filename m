Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61194606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 12:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PqfmVKr2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=tdeecgNj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PMo31hzLVFORyTmaVlXnbEsjL5JxY2ldMqcA2flREbQ=; b=PqfmVKr2Dsbb+Xe+fM1AXY3+Ps
	WJdNMtqGHDwKHZiS/IV+EEcHB27VCjsBT7siBRtV34Q1SIQ8FDd6ThHnnOALNJaJYNRAnf6C5OOJz
	OhprCmWU71RYrOQpolJ4RRTQQb4Zr5AHIJK36WZhnl5emL57bOoJBf+e4xbUDaaTSdCMc2oFrZPH5
	wEs5KBPR9mTtxmGVuKPb/daliFmzR3zQCTq78Gq35KsbHNLnHLchC5jXK9u5RtxTW0/cc9k2lZC7p
	o5JKaHHg+M1V0iPtWkE0ZNT4zsiXOQcXcFviLgopRVBaq6XFmvxjwyR1QjlzT6U1tE+7DN+VMbN5A
	TkZm4ZZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUNnV-0000000Ey3Z-0zn8;
	Fri, 20 Nov 2026 12:32:57 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUNnR-0000000Ey2i-3OeE
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 12:32:55 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-490c3ae81d3so484310f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 04:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795177972; x=1795782772; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AJXcbffl1Kij/wVcnvrgEoCXcFbDtnBB4PE3lMLxAVw=;
        b=tdeecgNjNTgMuJkrYsporl6rhqbggD50HuVs3CcYIQLuarviux/vE/Sgt5UErYbLtS
         GYijxtd4BqYj99QHAyzjX7znoROD7bpZEaY+p9qGymY1OvvlziS0piGolfLJhsE3TIXz
         xLdSpxnX6J1AZyLFuMGxCX5GVpW58om204aOUyvnOmKcEKXj0r9VTDE3vTjpZbb90a3w
         Uof4BF4Kp/FIlXtssJ8lIJ2bzZEG3DIDq8R7CkIMf8n7AedaH57osKpx/U3J74ptgU7/
         HpI9x0G16lwe7fM3af5I3h3ilw7up/+r0k8+jVTmgIABXx9xGBmX1old43NJFHZePSod
         dBYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795177972; x=1795782772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=AJXcbffl1Kij/wVcnvrgEoCXcFbDtnBB4PE3lMLxAVw=;
        b=SU0bMKSate2XUkUMffHjOE4aEJh8SaWTmkui7eX+SbxYZhR2BvCNTeF1FbCG50RWGC
         GG/nZaw5RZz/2OlOv3PlfOn+Pm8+XvertLWzKBA96MQXwWLYPilBfPWqE8KM8qO/Ik0b
         YlGzeL/1tzEyP+zJ4z2ULOg+8gvR09jDtAg+aCxdEm8JNn1E1RU9/YN3oIBl6NqfmqUt
         JUnU6bYVIB63vFrM+sDu3tTWQMmSPP38ZCIb8WNKylDXcz8bRGHrmjpJrFm9nMG/PaA1
         X27bpqU/n4DxUCnC6hjP8mOUasp4PSG9gpw6M4QoOYKG3BJ8ih8/sDh/80J7Nng5mOE2
         AYeQ==
X-Forwarded-Encrypted: i=1; AL+hErF9T5DnZo/zRrG8UOgzEGFO7F/akYCoDoFn5CPChxmJybbRO2Tp/fvnFdcQt5OLKEmM3iSn9agchfMYxLstiA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/TIXBiGkjx1lstf/li7Y9CL/bfJPpoMQ7JWsrVxfHKYmf+d6fu
	QqI4VWRvPYmRSSnGnueGgAuuNYbZnLYEGPmlmcXI/t3538Eba3zcklmD
X-Gm-Gg: AZFdTZc6u2Sx7I/jkN4uA+5XxKKlsmrOlCRrXyA1XbGC3NE8szrDX2hCBEhm0u6MDoK
	joAwrTmNbQqbB4biKzO//UwkDvxEPRqBJ7+K5CLkRNKTzBuQYE0N/obtOrP3th5grhV1XQXa4WJ
	6RSYYOkm9m+aGDqvVZszF3lSQVGr/7vtL2thIs2toL4KP1xUmejfENIX3PrjPGox76vvdR2Mx5W
	gKBqTybs6MUOSS9Xz98g6bOB3G+bEVnwTaqY5VpAKB3RcR/tLEehopL1yIYeXrLNuJiEWQCap8l
	rdAINLsy6R+fETTgefnUd4MnaKhsxpt0AepmS2wWJvChE7reDxqJV8dnqRqWNgFLkt6Or9EaD7O
	2r+UpU79ciNJgxh4IYX7rtK7LtwVBu3jIc3bImqxX0T/tCaOfjwvy7IJ2v0+lYGbBT/kFma9glt
	+xfB2D4vIRpSRt+uYMs0LOjPo6e//cfhcFQ1YHTXvOTuQqFB6UB9Y7TRuJl+TTLb4ZbBGmS6O7G
	m6MPjzUofu6w88ge64IltUbeyHLZvxEZrRgJallfw0G/rM5I1QfyusXt1S6l4bWfjXj4VLzd5NM
	YoUqeJBRXK/VoVtbKBv3MxIhzSCqqT88kJn/kdnIo9dbGk50+WJjO4YzDcyx7YziR6MDqKpJbxx
	6
X-Received: by 2002:a05:6000:258a:b0:48e:720a:ccaf with SMTP id ffacd0b85a97d-4abaab633d2mr6296799f8f.5.1795177971631;
        Fri, 20 Nov 2026 04:32:51 -0800 (PST)
Received: from debian.tailb81abf.ts.net ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab69bf61ddsm4968496f8f.12.2026.11.20.04.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 04:32:51 -0800 (PST)
From: MidG971 <midgy971@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: rk3568-rock-3b: describe the Ethernet PHY LEDs
Date: Fri, 20 Nov 2026 13:32:50 +0100
Message-Id: <20261120123250.1417061-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20261120113555.1402132-1-midgy971@gmail.com>
References: <20261120113555.1402132-1-midgy971@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_043253_865359_F4D188AD 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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

From: Midgy BALON <midgy971@gmail.com>

The ROCK 3B RJ45 jack carries two LEDs wired to the RTL8211F PHY LED
pins.  Describe them in the PHY nodes' "leds" subnode (binding:
Documentation/devicetree/bindings/net/ethernet-phy.yaml) so that
PHYLIB_LEDS instantiates one LED classdev per pin; the RTL8211F
driver drives them in hardware via led_hw_control_set (e.g. the
netdev trigger with link / rx+tx modes: amber = link, green =
activity).

Tooling disclosure (per Documentation/process/generated-content.rst):
the DT hunks in this patch were drafted with AI assistance (Mistral
Vibe), then reviewed by the author and verified on a ROCK 3B board:
the two PHY LEDs appear as stmmac-*:amber:lan / stmmac-*:green:lan
LED classdevs and drive the RJ45 jack LEDs via the netdev trigger
(amber = link, green = rx/tx activity, HW-offloaded to the PHY).


Changes in v2:
- Fix leds subnode indentation (align with the enclosing PHY node)
  and add the blank line after reset-gpios, per the Sashiko AI review
  and Documentation/devicetree/bindings/dts-coding-style.rst.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 9eef59ef7d07..9303242d20cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -605,6 +607,23 @@ rgmii_phy0: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <50000>;
 		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@0 {
+				reg = <0>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+			};
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+			};
+		};
 	};
 };
 
@@ -615,6 +634,23 @@ rgmii_phy1: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <50000>;
 		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@0 {
+				reg = <0>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+			};
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+			};
+		};
 	};
 };
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
