Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F37C47DDF
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 12:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5l8QeTceDKfjVdMLPRmcCp8yhSi33LCb/uAh7qsQUes=; b=UDm/2rnHxXTO0L
	yQayC7LHL6H6Jj1z1o6GsDMC4nPVnW8NUyxAmeuznsE1LoSy7XGIC7UL2uU6ofEj5XhX/MMBatudg
	aOLTNdxmbyaiixP2iDIsPabqwUi9iUqk/z9gWd6Pkwm7/8HKSHwAZKtOgWPVrPH1v4+iYGY0G4ot7
	PfCAh+V91HovyTUe3Lft6X9GMUC2bmuy0ADL1gPexfsmht1YZuKLVnqoSd0KLu/9sLAJmkzJAqzlj
	avvGrRJTCuGG1qZziSMIpVY3m83EiDREZcqUlepym8jzCEth06X7Cz4qG2fvnEeqyj8bf+fGrpiU9
	RHvVoW8Nf+L0HpyrBTZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVvD-00000007hjB-469a;
	Thu, 01 Feb 2024 12:11:59 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVv9-00000007hf1-01v7;
	Thu, 01 Feb 2024 12:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=pnMdN
	pfxgQzJxgzSTVf6q0src2GgoFnb5r6Fx+QgrFU=; b=CcXxQEh1Rvn0yiDz9E0yG
	XOqHrohCI1RVzLiagB5PSx54jTsUXhE/yF2FO1Av18HFyrhVJ4gdyh1bgjacSSdg
	oXMVZA76uk9WgFNe5OAwpNOb/AaYHhXr178SG8YKY7LIrtY+Ac8mD2r2ckPzf9xs
	EyCMtjQuA+UFz///vAPSc0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g1-0 (Coremail) with SMTP id _____wDX_35birtlKEO5AA--.30092S4;
	Thu, 01 Feb 2024 20:11:14 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host regulator for Cool Pi CM5 EVB
Date: Thu,  1 Feb 2024 20:11:05 +0800
Message-Id: <20240201121106.1471301-3-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240201121106.1471301-1-andyshrk@163.com>
References: <20240201121106.1471301-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDX_35birtlKEO5AA--.30092S4
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFyDXFykWw4DKFy8JrykGrg_yoW8GFWfpw
	nxurZrJr1fuFWUt3yqg3Z7Krn8Cw4kJ3ZxurykJr1rKr12qFnrtFn3uF1fAFZ8J3Z2yan0
	kF98Zry7JFyqvFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zi3CztUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAZ3XmVOCDrNgAAAsT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_041155_465751_4E37D710 
X-CRM114-Status: GOOD (  10.76  )
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

According to the schematic, USB20 HOST0 and HOST1 each have their own
independent power supply, but these two regulators controlled by a
same GPIO, so give it a more appropriate name.

Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB")
Signed-off-by: Andy Yan <andyshrk@163.com>
---

Changes in v2:
- Add two lable for this regulator

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
index 1b5681fe0471..9c0f408ef339 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
@@ -84,7 +84,7 @@ vcc3v3_lcd: vcc3v3-lcd-regulator {
 		vin-supply = <&vcc3v3_sys>;
 	};
 
-	vcc5v0_usb30_host: vcc5v0-usb30-host-regulator {
+	vcc5v0_usb_host1: vcc5v0_usb_host2: vcc5v0-usb-host-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_host";
 		regulator-boot-on;
@@ -200,12 +200,12 @@ &u2phy3 {
 };
 
 &u2phy2_host {
-	phy-supply = <&vcc5v0_usb30_host>;
+	phy-supply = <&vcc5v0_usb_host1>;
 	status = "okay";
 };
 
 &u2phy3_host {
-	phy-supply = <&vcc5v0_usb30_host>;
+	phy-supply = <&vcc5v0_usb_host2>;
 	status = "okay";
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
