Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED4ACDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSLq6KemwBbgEfQMT/J63UImdz6AwQ5mdJ7mIn2acEg=; b=DDOSIt4tNcZdn4
	yzr1VH7h9605QwIY8NFhdIcB2lVGtD18LaVMLWZ4JIpJq3/ZFFMpV0jRpJVsMxvFurSuC2apRmKWM
	fs31/DwGBnHb+GYs5W806+BsbQNASsnKOSFOl/L7Ta9zySx7Yi8indL+VRMAv10JmhsrF+8ik/WWd
	ivgIcjXC6jVhqvleqfSTaCHalLO+r9ooAcY9V86NcIqC8pNw8wYp1kzwiykTrx3FBcsJgwEgd6iSk
	zvrtyNujiF9WpXzSxYtL5r4gnDcqYT3BwyaK83BphBHfBkWhBMcg8XN51LevtBCCh0nv1IOP9Quts
	UnhdcbQVEZ8ZNM2LPYXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrGe4-003L9Y-12;
	Fri, 13 Oct 2023 11:47:56 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrGe0-003L7N-2F;
	Fri, 13 Oct 2023 11:47:54 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:c2e1:3bb7:ed5c:6a0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A2AC1660735A;
	Fri, 13 Oct 2023 12:47:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697197667;
	bh=7wBhq8J/K/1bY+rvYJYJn0dZJWPNRTfsi3k23DiS4JQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=auERhDk/wHm2olVXfZGaBS+q8f0ICzVsMWGOl9LcOlyjS57+Jb/4c2IDhiOxPygoW
	 CWvBv3s7DV+bskN7fNyogAYvIn3RYndPReHhslD84IAO7P5A3aH22BgZB0ZQIhZoOc
	 TD+nfHK/evLVd7o3yflCbfuUALEFcMPTI+9y6oBk2zKicEmiNJ6ISYTE/E0rK78k+S
	 1jOT+e29BeOLL5zqBoquBPwyzDOWVfO2OCTpRDO3Ru0kqDvxe+pX4u9mBr+dxTdVts
	 erM4OfVptiTR+Y2Y3rnLGYnoSQcaeAV2/Qm174hNNXTDtVFeUezgliteiAo4JM88UZ
	 1yMSKDJABKlvw==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] arm64: dts: rockchip: Add i2s0-2ch-bus-bclk-off pins to RK3399
Date: Fri, 13 Oct 2023 12:47:26 +0100
Message-ID: <20231013114737.494410-2-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231013114737.494410-1-chris.obbard@collabora.com>
References: <20231013114737.494410-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_044752_911845_C91855AA 
X-CRM114-Status: GOOD (  11.20  )
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

Commit 0efaf8078393 ("arm64: dts: rockchip: add i2s0-2ch-bus pins on
rk3399") introduced a pinctl for i2s0 in two-channel mode. Commit
91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch on rk3399")
modified i2s0 to switch the corresponding pins off when idle.

Although an idle pinctrl node was added for i2s0 in 8-channel mode, a
similar idle pinctrl node for i2s0 in 2-channel mode was not added. Add
it.

Fixes: 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch on rk3399")
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9da0b6d77c8d2..5bc2d4faeea6d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2457,6 +2457,16 @@ i2s0_2ch_bus: i2s0-2ch-bus {
 					<4 RK_PA0 1 &pcfg_pull_none>;
 			};
 
+			i2s0_2ch_bus_bclk_off: i2s0-2ch-bus-bclk-off {
+				rockchip,pins =
+					<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>,
+					<3 RK_PD1 1 &pcfg_pull_none>,
+					<3 RK_PD2 1 &pcfg_pull_none>,
+					<3 RK_PD3 1 &pcfg_pull_none>,
+					<3 RK_PD7 1 &pcfg_pull_none>,
+					<4 RK_PA0 1 &pcfg_pull_none>;
+			};
+
 			i2s0_8ch_bus: i2s0-8ch-bus {
 				rockchip,pins =
 					<3 RK_PD0 1 &pcfg_pull_none>,
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
