Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF6DC9830E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 08:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gI1mmob5NaHRvZAwc+HspwJPcIHoLX9JA3kbjGFgW+Y=; b=j15tXYzT2AGvBe
	mw8I7aQdvD8digWFX3dmi30cXnGZJ327NeZEeB9LlVn9fz3z/e2boTcmj4ogRigs1Ny9oMT4EWNlS
	yZ/wU4q8PblkTwTeeMYoysO9S2johkmStWzwAN7QJkqVDryaC2qC9VzxolnVkP58XCCKJK+bCTCH6
	qb4rsjYPPrm6tJTE+crvdsx84TPPF/+adutt76hHaE7BQY0eGI09Aa3Hrks/Uq0hAJY65zOLnNk7a
	VAhfJ8BYgoR30hDHmfRn3xn5RAJsoBHxT4kmER6uFYzGxT4rWWzHqxkQI9BmL0t5vRkgDSUmS+3Jc
	77uPu30sAWEMdh+l+axw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA0ti-0000000CscJ-3WAt;
	Fri, 25 Sep 2026 08:03:10 +0000
Received: from mail-ej2-x29.google.com ([2a00:1450:4864:34::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA0tf-0000000CsZj-0meq
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Sep 2026 08:03:09 +0000
Received: by mail-ej2-x29.google.com with SMTP id a640c23a62f3a-c294af0caa8so79162666b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 01:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790323385; x=1790928185; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qpzCtQ/x5w6zYJCz6BFrhS+ES9WYNEAKtYj1bG27RGA=;
        b=wNG3MblYU+1nRpSbeez/KWTb65+wfBvI8zEOuZlJ46+km7WD+DLKoH+90hQ2ZJl55r
         7NO7YBOZTOn/k6GmDCFx97bu7bLQetugnSBQPzG3eJvFeK9izvJ5fmoxSBR5CXCJbhmd
         1pw3FP1v72FJTK0OIlRxrtx1OiZ1lAVAEkooKP3BSqHenZCSSA+1B3sGg9sHC03yoDdH
         5UPHJ9h/K0yIVhuHDW2ygmWdI4T3QbQGopqkVMnm6i9xpbRjzbsDW02mP2y2yEM6x6qk
         sWf5/QZdhwQAr9AdKUaLxMxfMbY0EJk3nbWfspMkg8k39tcTvUgHma3Y305uRklUfPd+
         aGEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790323385; x=1790928185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qpzCtQ/x5w6zYJCz6BFrhS+ES9WYNEAKtYj1bG27RGA=;
        b=YHBVqkOf1T2DZNuyl3e/pw//pcuOURgtk9wHht029whJgYBnuhKBV4xN2Y5cDoddKn
         Or6eESJYIYNkIAWJNzlhnIZvfdc19yXybKaVtooeRtE2rl7Wx+iOHJNKzJOxC9993h+B
         fMnX+EJSTNlMwg0HOP2TvdsAmvb7IEKpUBTx7PUyAJdHZXx/ZyH41ayt3qu+32+JUCvD
         3qInl09DslbLV7t6uVXM+Fxf0pCMT1nmacZZCLHUzAT4ZI2nkF3aQVsG/iIbWCcVoflC
         UPHJnaMbBiEJ4wX5wNgc8XKPjWvuo0917ZBnV9fWwo1PTIEAYfWHFCZQzWs8QrRiGzNR
         /6oQ==
X-Forwarded-Encrypted: i=1; AKwUvBwvbowT3jVy/HdraKH/Nd/AXdv8KvpQOqLL718ozOOsO8tnZ58EZ8hkrWsisOBR+55C2pWtrfAK5o1tRxudJg==@lists.infradead.org
X-Gm-Message-State: AFuF++n2CBHOqzWQrONdvZYdZtuFFNR61yeLrO1YOnyAneHUKDDUecA5
	W0F7KLb2fgRyTuBDXE+xW0QZphWqlHD3CcanZZuqKBzmvoAxBU+K18B57nKfX1O0lhs=
X-Gm-Gg: AYBFou2VLInCD+cX4pbxULsJjyyEHI0i/OzUcejMvDjYXT+gXP2C2KbkW5Zdw3ZYClO
	Jnn8CrnIXeOwS52+B5mw2YQTfB+lX5V3BVLuRh7IdtKsb+DzmZ+7EjxyuYUa+zca9nHgx834o93
	NBeDwUCqzfrMHMdts2FSj1fsj7TDzTYZ7NfAg/xR0pKUu70AAJ4VZfLqq2XgVX9MjHRM7MCzqbr
	oQgq/1TqNTnS6dBRb4ddjKZc1BLE068nBpjWbpHX+NhkzLKqrlT/qpaxei9T4NKO3eiJdku7PW0
	q0MQXPX3BV5447HybtZg8Y3loHI/SvWmecltStCj1URDJnhrmljPY3PNprp11/aYK33xiOv9U/f
	/b+WQSU9SnGGLkRJx4gXYJJAU8QPYcKskIMPGbafM+udL5+5rDMKpNEElZrotRgxt2S3EU17JAP
	nTkDRPxlpKmBm4UNR9mcrw76FXe3y3zQ3TyU1wrrHcRSVkSbxQDeClRdEKkc4eQf2nnQ9HZbpvu
	IVw9fDn3QhQ6TZakrlwxAgi3f2UcLXrSb0Ns5KMj9tbSSg=
X-Received: by 2002:a17:907:97cd:b0:c25:5d2:acf0 with SMTP id a640c23a62f3a-c2ac241f82emr459322566b.8.1790323384750;
        Fri, 25 Sep 2026 01:03:04 -0700 (PDT)
Received: from janlin-02.home.wermuth.pl (109-206-198-27.host.skynet.net.pl. [109.206.198.27])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2ae757b9c1sm76976966b.33.2026.09.25.01.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 01:03:04 -0700 (PDT)
From: Adam Wermuth <adam@wermuth.pl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Adam Wermuth <adam@wermuth.pl>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Add PWM fan to Radxa ROCK 3B
Date: Fri, 25 Sep 2026 10:02:57 +0200
Message-ID: <20260925080258.46489-2-adam@wermuth.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260925080258.46489-1-adam@wermuth.pl>
References: <20260925080258.46489-1-adam@wermuth.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_010307_239481_6F0E0540 
X-CRM114-Status: GOOD (  11.03  )
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

The ROCK 3B has a 2-pin fan header powered from vcc5v0_sys and
switched by a MOSFET driven from PWM8 (pwm8m0 pins). Enable the PWM
controller, describe the fan as a pwm-fan cooling device and add
active trip points to the CPU thermal zone:

 - 50 C: fan at 25%
 - 60 C: fan at 50-75%
 - 70 C: fan at 100%

each with 5 C hysteresis. The existing passive and critical trip
points are left unchanged.

Signed-off-by: Adam Wermuth <adam@wermuth.pl>
---
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 149a5306bb03..b9f09087b176 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -24,6 +24,14 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	fan: fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm8 0 10000 0>;
+		#cooling-cells = <2>;
+	};
+
 	hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -186,6 +194,45 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_fan0: cpu-fan0 {
+			hysteresis = <5000>;
+			temperature = <50000>;
+			type = "active";
+		};
+
+		cpu_fan1: cpu-fan1 {
+			hysteresis = <5000>;
+			temperature = <60000>;
+			type = "active";
+		};
+
+		cpu_fan2: cpu-fan2 {
+			hysteresis = <5000>;
+			temperature = <70000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map1 {
+			trip = <&cpu_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map2 {
+			trip = <&cpu_fan1>;
+			cooling-device = <&fan 2 3>;
+		};
+
+		map3 {
+			trip = <&cpu_fan2>;
+			cooling-device = <&fan 4 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
 	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
@@ -670,6 +717,10 @@ &pmu_io_domains {
 	status = "okay";
 };
 
+&pwm8 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
