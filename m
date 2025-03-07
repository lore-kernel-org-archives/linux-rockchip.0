Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBEFAC282D0
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 09:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuF1gqgzfuQaLjg6dNV7slWdUqXKb69/j0juXu3R/+o=; b=e8uaswvclLHB+M
	DwHf03y5J7GQwo8V0kz6V3GKlWzodELGp6G6RHfQn3FxpEOqMy0E+BQmgq+tOzrZxTZrTpxAlcckX
	ZbzH3HPuq19uDm7jfPxt6fdFAOFwFqz9Yl/f88YT+qEUCX1sC8TIzEdUYQ7y7PaX3+F5vSy0owBpW
	3Pvda7EhjQM/xtVxO4353YgTu14AIlogQDX3bE16MYQJihww1tl2FJjNefhw51SEp+wdncynn85Dg
	gWkZ1PLYE+vmh8COjY1YLjwhT/ylGqMJbUwe9fJNiT5shUdA4Y4shQZyg/cDF4fiKBD6AurlEHTEr
	ZLoxr127QbaF8Dm3F6Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTtZ-0000000Dgqn-11gM;
	Fri, 07 Mar 2025 09:21:29 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTrv-0000000DgPh-0794
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 09:19:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741339175; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kd2PxLRyDbHiEsHU4i2pu2uulTUubchrEKAJv9Ql/9HjC8TZCGciBkngP5jmdGoFYbJMICoQZiUA/9AEQ6F05UscKLmmgL1o1VRIMu5ywlmy+iR6PgMKDOP9NP8rPDZyY/0X4zqsKYk3ftZ52OztECzhSMFZ0yQSqDYXJzC32AA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741339175; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/U61HHgit3TG325CG81jVLePHjTZCns1zkq/zcF+5IM=; 
	b=AI3a4cWZ3/EmRVHMZ3Uy2KimoiGjkNC1Uu7Uc4n8VVjZvmUeWbCGKBa9xI1vNpt4a62weqzUnnhUP2heIxhSFcLo5I6dkpN/cK/ytUYOBevOeKrU8HRK7Kl8taehUFvTmZRzUA81XYci1MyVxG9GePOhcrRbGKSuhxgKwqEhBh8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741339175;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=/U61HHgit3TG325CG81jVLePHjTZCns1zkq/zcF+5IM=;
	b=KSpoOqsKWm0EIVaANKirRhaJc4PtPKZB5jRk87SkXHUoy109PI6NKWxNKlTiPbq0
	cUHY5FLZSkHoVCImZvLQAExt4UcYwce4gVq92epySJGGuQGuCbQEjA9tHmMLjR7rvdJ
	egcyfmQxPFr4EgW3hi4tsElyn8TPkzc97iw7Nxi0=
Received: by mx.zohomail.com with SMTPS id 1741339174644626.3807889582921;
	Fri, 7 Mar 2025 01:19:34 -0800 (PST)
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
	Tim Surber <me@timsurber.de>
Subject: [PATCH v15 2/2] arm64: dts: rockchip: Enable HDMI receiver on rock-5b
Date: Fri,  7 Mar 2025 12:18:57 +0300
Message-ID: <20250307091857.646581-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250307091857.646581-1-dmitry.osipenko@collabora.com>
References: <20250307091857.646581-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_011947_127277_F238656F 
X-CRM114-Status: UNSURE (   9.03  )
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
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d597112f1d5b..54a59a691538 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -220,6 +220,17 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi_receiver_cma {
+	status = "okay";
+};
+
+&hdmi_receiver {
+	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_hpd>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &hdptxphy_hdmi0 {
 	status = "okay";
 };
@@ -377,6 +388,12 @@ &pcie3x4 {
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
