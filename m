Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63C12C021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 18:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQTrQU7VALdaX2i9UeMKDSDNDiElyJrheBVNVHKw6+8=; b=wyqjpm1qPF2NL9
	O36pRfHgy4a3FH39yVCKTz58E+qr+Y4Iqn/Fdsp93uy3DpVyADxYIgLk9aQaX8YlM599+IX+gK1vm
	+6S++8y+9GObjuRHyRXVRCSzk8JTFayg/lTIXYcbyZa49wmA2aAH8Rga4FlrBdJpmDJF2i0GSqPG8
	Eq+Wf+47itgUtFc5d2ffOOlgD5zdN3THu2SH4EfajZkBmP5DgWRvxOcqagsAgv9bTV3wd4stSYkOs
	RgHz2F2795LxYbGrtKyLKp4oul/DuoryVT3pGvXbuCgSKpWFDGiMFVtGYNn2ZcEn/yOGt4UYcoqpQ
	bzeQka/alKDNRdzSYQnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmzxV-0000000117U-28Nd;
	Tue, 25 Feb 2025 18:47:09 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmzjD-00000000x26-2vUK
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 18:32:25 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740508332; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RuhktljU+w3T1menTimfqEv4LjtcShzJxdwE/ONwS15YoFPCHoJcIyeX0B4Q0ulFXZbD2i6XNXbtGR9i3dnBLpvvTpuKXoG2AI/2TpXuuUQeHZAyqkh0vKz64OayuVjFRyseYYuiS15qT3BI6tdV/DwYmj3CZgg2gjhS7l+OaEU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740508332; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/JMA7VJYsngtKi9ltZZXsV2uv0aQI0PgrBwadMgnHyg=; 
	b=apLzDDF9vWnqVu5Oz1v87frhUGg8+7BsHP8pKdY5vpRi6sivtN282AITKnS4rleYJErKSYiDJobYQxPlUodwlAv4mXsr9JA3SB1O8QjUE0jfkAaL1fMixLzScichYoBIuhTpyZZ+TyAhNKesX7BMvtPH/RyKwY745Qhjabo4mJo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740508332;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=/JMA7VJYsngtKi9ltZZXsV2uv0aQI0PgrBwadMgnHyg=;
	b=XSk+zH2CLA/adOIBMkB07ZZELgr8e48AMY2SAplqOvMS5Mo/yL7A7KQKgQQBj6cr
	7y2xsJ0LSk50OpFZjAjoplgEkYKvt0CoE9HX/MaEGGRln08eiFvA51SWECCGBqFsLH3
	ab12Z8ZWvYpy+CMp64YJvnPH6Gnq5RNcpZFfWT6E=
Received: by mx.zohomail.com with SMTPS id 1740508329085468.10604499185;
	Tue, 25 Feb 2025 10:32:09 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH v10 5/6] arm64: dts: rockchip: Enable HDMI receiver on rock-5b
Date: Tue, 25 Feb 2025 21:30:57 +0300
Message-ID: <20250225183058.607047-6-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_103223_797997_CF349861 
X-CRM114-Status: UNSURE (   9.38  )
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

From: Sebastian Reichel <sebastian.reichel@collabora.com>

The Rock 5B has a Micro HDMI port, which can be used for receiving
HDMI data. This enables support for it.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d597112f1d5b..377824e69e20 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -220,6 +220,18 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi_receiver_cma {
+	status = "okay";
+};
+
+&hdmi_receiver {
+	status = "okay";
+	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_hpd>;
+	pinctrl-names = "default";
+	memory-region = <&hdmi_receiver_cma>;
+};
+
 &hdptxphy_hdmi0 {
 	status = "okay";
 };
@@ -377,6 +389,12 @@ &pcie3x4 {
 };
 
 &pinctrl {
+	hdmirx {
+		hdmirx_hpd: hdmirx-5v-detection {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
