Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19C89CC6B37
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 16:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yncGNsrKC9EV89SwtX2Mz74h/IpWvD6nUlR+dwsDzFk=; b=Bx86xXtDGy7Ow/
	dz6zEDElguh3oJy+cr6NmL+5D+VfId6hsoxiuqROT9Nvp39+Jtx8kjVzSBJuL2WdwmgOYCD4ERcS8
	r7Du9tUVBTZmMitphj1ZN6hrTNzZcmEmJ8kcpao+NPlmooKN5nynuXrzpS8rgjSbXMJIqM9SSemKT
	xR3bXfyFy5UGcNJmXOxUxalpHxJBQZ9caHVN1NCzx8BkuYrvEn0cYYGQ81Jl9bM/O6oEQ+W7m49LG
	B6gKEffpQ66LykeJ+DnaIYZSo8CnjXC/JQeCBRIJPJWBQUlijHUJFxPbyXO5LQgtNkygc5shkgU5i
	dvnjhh+WRyPK5nM4taVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH1wH-0000000FzB8-3TzG;
	Wed, 14 Oct 2026 16:34:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH1wF-0000000Fz71-1M4M;
	Wed, 14 Oct 2026 16:34:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC74A43E2C;
	Wed, 14 Oct 2026 16:34:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A20C2BCFA;
	Wed, 14 Oct 2026 16:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791995686;
	bh=d0+KUaLwT/Dk7ZkgV4daJOv/D8kFOZkamvSLINiAhJw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qFbX5nNMzLa1yn7qKbd3umcPSKrzUO8eY9bX+KmC4dUs/3RenZVKTRln+/PDYP8UF
	 9o2IUbTmZG0wJW+eZ4Mvda5UwJl4HLpzt+09gEmw+JP2QfEHltyc6hutDexSp/11Ot
	 kkJ6c91r6sEspyYl4nCEadwMAEyQfh3X08JLgTk3FAThGpeUVokzpM09lezUDBSgvY
	 wRV8tlpwy++YJRprRxJRmugyq8A/6z5SflkY34Q5qM0CX4dDvMqe6TVD/2zkblsrJn
	 1axwyDkOSe0hmsm5XPKkH+oIXACGm4A+jkUtZIapd1+VLPBIbR6WS30ltv4MrOmMg3
	 GRb38xuZOZpcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7745FCC6B1A;
	Wed, 14 Oct 2026 16:34:46 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Wed, 14 Oct 2026 18:33:03 +0200
Subject: [PATCH 3/9] arm64: dts: rockchip: rk3588s-nanopi: add voltage
 iio-hwmon device
MIME-Version: 1.0
Message-Id: <20261014-nanopi-m6-improvements-v1-3-e713f71eb4d3@gmail.com>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
In-Reply-To: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <diederik@cknow-tech.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791995685; l=1213;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=0FgBsPDSF/Ke2BFVA9LlVUDw3XaAvZxxd2wbi+fKjz4=;
 b=ELmy2+RH7U4BXzexGX41iowrehf66vJrLCX+8TFFN8FUsuvHdzFQ5iUh2XfXqy9/nTdXHPxM/
 LYIUg6huebvDi25rjXyKjfGXgb5qvb2In9NXxJPixfwbJSxZi+jPzaL
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

The NanoPi 6 series have a resistor divider on the main input supply to
support voltage measurements. Hook this up as a hwmon device so it is
possible to monitor the voltage.

Output from sensors on NanoPi-M6:
vdd_usbc_iio_hwmon-isa-0000
Adapter: ISA adapter
in1:     19.80 V

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
index 8c77ee71ebf8..a47677926a59 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
@@ -95,6 +95,19 @@ vcc5v0_host_20: regulator-vcc5v0-host-20 {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vdiv_vdd_usbc: voltage-divider-vdd-usbc {
+		compatible = "voltage-divider";
+		#io-channel-cells = <1>;
+		io-channels = <&saradc 2>;
+		output-ohms = <10000>;
+		full-ohms = <110000>;
+	};
+
+	vdd-usbc-iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&vdiv_vdd_usbc 0>;
+	};
 };
 
 &combphy0_ps {

-- 
2.56.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
