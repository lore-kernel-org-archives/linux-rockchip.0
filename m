Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1CD7C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 17:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Gr3O6P9oWjOK8CksGuZRamONE7WGYi33Ft63MwYr7s=; b=rSBiWpdaL7MwYD
	v/gWNWP+Vinh5NpcGGH4fAhygsT7tgcoi/ibfp1JYwBUWN8Dui0gHsHycg1MHbT9RJLbLeFOIKPjE
	sPkh2VBq9Kq6pWABfpYNuLK5KqqaSqV7a6vnSzwoW1fIsDOJ/YC7wYCjPHW4h2c3iaEKD+LkkewiL
	ZqoQO40SNOxhPBia7jp6obpDJB8s3UkwbKBXhcISuYjpUAW6FeI/R/4riGVdalHtX9UqE/UN6Y00m
	1YWlsO1EBMetb+PbyCsCmiRIZaopiYltBWirvomCQeWYkcfHs/rzpTdE4xbKOWj1g3VNoa6Dv2xYC
	R/EEr/5cw08BsQUgiBxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjkbw-002P9n-17;
	Tue, 04 Apr 2023 17:38:24 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjkbq-002P78-0Z;
	Tue, 04 Apr 2023 17:38:19 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A41E066031A5;
	Tue,  4 Apr 2023 18:38:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680629896;
	bh=cdstoqxPWhvdMsWzWtAKva88nlEDFRiEFVi8qwXMjAU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nYFqgjzbtVADmMDipQDLIWdBpljOVNzX7Fk98T1+e8lpapf8vF8wgOiigtzGypbV+
	 SlM2wdOdpVb8aMPc9oZJns3JnBAHe3ZCSSnawHxALbmqOq3mkzadja0aPv0mknHq++
	 YXSie0py3d+cawXuTN1FONSHJ9/ltew/qNAkIyOSl5mReTuM7h1dawamDx2l01Ssj9
	 wD8UPnjraiSuud/1diImJTIamTnnViCHsCriBoFxWZrJ/JdOv9hJYXUPpTZ2jRIDB9
	 /ppbe6PYMYJXe7uY0WEiSgFzVBQf7+ze5vEHDnUFzvqbOf8bMH1UZqlE2jfs5bHWM0
	 i7HLrgnj27xyA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
Date: Tue,  4 Apr 2023 20:38:07 +0300
Message-Id: <20230404173807.490520-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
References: <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_103818_355009_ACA8374C 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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

Add the necessary DT changes for the Rock 5B board to enable support for
the PWM controlled heat sink fan.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Christopher Obbard <chris.obbard@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 95805cb0adfa..bd74d9da2c17 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -17,6 +17,14 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 95 145 195 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm1 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -27,6 +35,10 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 	};
 };
 
+&pwm1 {
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
