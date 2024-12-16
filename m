Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF853E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 11:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AW7FtUd7E/j+wVkZQPVWHc2eESq6eaODYKyoXbZIBbE=; b=U+OAYi7dWIhvoS
	TDVXYwtu18ZEu8vUX6t3+3H4gKR2HFSAZLO2fjOI0XV9KV/BIFHQeoVyoEx2+/xlrZ20i/Npo/zZ+
	WPiAH6UsfeddRLbYPXfAqSXJyDX9DUznOv0/8IgBFdncIZzlPonb43WK0fA4lmlnY4VX/o8fLgtTt
	TUXEaWbtAkNvvCrmgTamqUg//uH3gTeRG5lLWm90jidjOK3F3PYyTQNy/idvoVTqNh1p4LGF7Xcb9
	f+vF3BEwCM8ksPAH/ranUO6c03Vlustqjyi34/tGFQ0Zs6TRJCMrfIIQowLRL4sUBe+Aqy1eHPGxB
	VL+pxpDQHp+C7EBWmkkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K8-00000009pvi-3tAt;
	Mon, 16 Dec 2024 11:31:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K6-00000009pv2-414K
	for linux-rockchip@bombadil.infradead.org;
	Mon, 16 Dec 2024 11:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0ZbxmUyOSe4TuhpkGWt6BwFyjbeNPu0NGoORWBhkD28=; b=GhfMzfmNegc5VHRqzSVA1fSC8R
	54FY5SwtXGPKKN7F5D0KE8PuUV7elvIked+XocDeqVvPw37D3HBnwPltk2tJwzn02uNLp5mWB8pkO
	0JhYSwjdp+qTZddJdoiCQjxNReF/rlH729RZZR07BPJ26R5Tj70up7VMfcNfvsJntiwF5NA1nQ/Ft
	K3uG+Rizas3rXT/Dig/ExuOodAtHAVn5+BEzD+lnsqjpCLyqorkPMi43pXPwgvJ7nmF7p1saQDqFM
	i8ggTtoqYd/reu2EvBuT/6fp7/l230iCpEQx9HPFkZkamNj9nl8ejIekUDRKWN0qpXXZdU9z0LDy8
	zMGG1mfA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K1-0000000FtG5-1SxU
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 11:31:37 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxOS028690;
	Mon, 16 Dec 2024 20:31:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 07/12] arm64: dts: rockchip: Separate pinctrl for vcc_5v0 for Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:47 +0000
Message-ID: <20241216113052.15696-8-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216113052.15696-1-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_113134_062617_85041DC7 
X-CRM114-Status: UNSURE (   6.47  )
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

vcc_5v0 is used in many places, separate vcc_5v0_pwren_h from usb in
pinctrl. No functional change.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v5:
- Reword commit message
Changes in v4:
- none
Changes in v3:
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 1ba94396aab8..b632093183b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -446,7 +446,9 @@ usb_otg_pwren_h: usb-otg-pwren-h {
 		usb_wifi_pwr: usb-wifi-pwr {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+	};
 
+	vcc-5v0 {
 		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
