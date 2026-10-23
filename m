Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DAB606A326
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 05:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4rBWF5Gf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=hfKwdDyR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=f+c/3/GReDv36HA0U0CXMNR+osevxVi9ujKqCXRDF/E=; b=4rBWF5GfOv1ok0asW1r8DrC1TB
	zO8Ll/UWjmEaDilYlwqZOVSaes5+VIsZ7lEowHb+ibKaxBWMWlF6afJmgVs5kwuDQpFHh+2zU5gVR
	K39CzS/j6apzWZqjmzUPzRPSQ/8FEfbtAH+qNdIMShmnQ2LKGrqbFVcfnprSIr7EMgLsbrVzvpExF
	16NZqd4a1GcvZbYqgBMEA7fjiwBj2Q3vHDGX9FOXYC4RmSG77TPbi5jkk0qyK9uOirLWzGUPcCdWt
	Pxs9siCOPBzd21CFzxwj0fMdvjS4DOfIp7kCVvdStOnYqKZV5Yh4GKdj6uMcJzJWZh5Vkm4VqO9Xi
	gvPjV1nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK7wo-0000000FWmq-0xKz;
	Fri, 23 Oct 2026 05:36:10 +0000
Received: from mail-dy2-x09.google.com ([2607:f8b0:4864:36::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK7wk-0000000FWjs-3KUo
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Oct 2026 05:36:07 +0000
Received: by mail-dy2-x09.google.com with SMTP id 5a478bee46e88-35adc681e1aso509474eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 22:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792733766; x=1793338566; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XWEwn6v/542iwfySD79nms5PIwynC+fVLbCD6LA4gYs=;
        b=hfKwdDyR6aermqhs/s5W0UL/Os4PdM68KWJHl238HifiGqYu33H1VN0Y+qXGivyfWG
         i6/IIGsCNkaw8Q1oveWmYWHrR2M61ryB7bz2jYH+/birXoBLwGBigNcftzYzhsrkt02G
         ndMUqNFij2rguyaNVCq0yftegYwVyD8Fk8j60/72paRs0oP4wCfN9V3ncIKZryQhNe2R
         NdiFshq5n/ZLkVhCZl9TQ17EBiNLgMhK2+grUwocMZSMDyNJtOUmkSgHTGaRwj1d87n4
         4B72jCflrRvNo8UN7g020bRUJCM1RSCoZoBtJz+n50RdiLKuORIZxZBQxsRuYWwGhNJK
         TXwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792733766; x=1793338566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=XWEwn6v/542iwfySD79nms5PIwynC+fVLbCD6LA4gYs=;
        b=N3Jqyu+bUtziCJizPclwQzunHo7H62f/UNDR69puq9dmt6wH4Q818dR/SSmJIePRAE
         D61nLwsE4ITnYnhSS5HqXjmMyXJutIUxiOiL0CvBI+65Botj3jNWYukxHD9L1uRbwaeY
         kWByTuXLFnsncUz8eCcr6ucBmE2NVONgxxHtpm/hd5CQDp3Oh1ldS0jKML680ghl8cKh
         XMyGmt1ZnAnibb7XDQ4+v2BmjfqU0FgcwCjoiBf+6a3TxdSdBGhCtxXS5dYvwUaVy5MD
         MWkeC6MVAzNdKRow8yFWE2XvRC2aMIc+jqd/HtLYTUjZqVqY0hobKphNev4T4DVLHCLZ
         tTHA==
X-Forwarded-Encrypted: i=1; AKwUvBz6/GbK8CGqv3U+Y8A1h6Q8C12uufaTQ6aiNYEO1YLOBoYdli87/dWKUNpdEos1qKl6ZvtZFtjKMcB5NwaRMQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKLPxxXQDkVIMlgEh1VBlodcROE4BscSqbw15mnSYMI8ziBG9mM
	2ld/y1QhW18iQwP7iRjMp1eKFerq4usiegZx1d2bPSwSvkNDzOxaUSNr
X-Gm-Gg: AYBFou2W/3h79z78ewWGB1GLvCgH8qkYi0AT6RzEFu0E5tWMRrGY8qNU7sIs+Fqn59v
	JowYuhhroYN2nR9i1iEvH/RTpJxMCVz4xR7nSNPNXujxonPXha4oEjf+uho2N5tY1f2G0O8VLuI
	RfRwdsmtjskQespFa1Eshi2tLR52Ox7KBEG562S46llpnOwyEFgJxSp7yYNqUgIp0mJfwC6OKfo
	XeJgFzJmuXUaRycyJuANe7wZ7vnOqso7aQY4wBWb05FkitCA/JcLymBaqRBqtyxip5xf44mTasN
	uDQldCAXWHF99G9M4XCDlTO5ViYIDsjfelI2oK5LbizGngTNKO44O2jB3fqHWQHv7bOVpxzKrSM
	zJK13izdGUh8LooS7HkE87WAJckPlFx3OtlWwTMyI2HqK+pouDDwBngSaoFLrH5tBoP3Q+y7a/S
	JcThlUIn7jRpaBCK6YQfgD2i7W3Vw+lXQ5ie4wuB+NfHZjsjqOyExhSYErjfTCzDXdGyCNfxDAv
	vGzJWj+xqk6qD3kHqxAnYEfwrg6+vIS1MEzpn37RcICfRDSiH120w==
X-Received: by 2002:a05:7022:b043:10b0:16e:6e3:9a9f with SMTP id a92af1059eb24-195a065903bmr2116014c88.34.1792733766053;
        Thu, 22 Oct 2026 22:36:06 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369d9c15883sm3542480eec.3.2026.10.22.22.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 22:36:05 -0700 (PDT)
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
Subject: [PATCH v12 2/3] arm64: dts: rockchip: rk3568-photonicat: add RGMII PHY LEDs
Date: Fri, 23 Oct 2026 13:35:47 +0800
Message-ID: <20261023053548.1595033-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261023053548.1595033-1-coiaprant@gmail.com>
References: <20261023053548.1595033-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_223606_854292_DA9DF746 
X-CRM114-Status: UNSURE (   9.58  )
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
