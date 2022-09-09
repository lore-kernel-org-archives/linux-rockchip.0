Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 903B9ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 19:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgBo7N9JBllYwLwRKLsZZX/Pf2RYdqNyDgqW+1A0qZ8=; b=HbIs2wY6X726bk
	HUDr5gAtHY+09MPsdsiDPdzV9sVCTsbEw22bwy92mXkS6TJjt1pm3Hdx/zWbfWYDXBO2YoxUPSib/
	NQJJKkQWu8lgyb1ldoVowsyz462rYl6jP1PE5wNvHQS3H0j1OaHLMnVPm4W+DCXuZTCdauW20CqH/
	tHGNetiKiNZMsACIbtkf+WzjCMvpBgYNCogPBrIErjhOLACf8O8bALbugImLa5AIyAksRfhbx3h35
	oogz1GT8tDVNFF61+qohWgdcaFVs3zG4l+paXhjisqj34hn6wmoMg860VGkz3Gbr1BDZ5Qq+U7IHp
	XmMe12j3Fj1r2NAb9BeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk35-002Cbt-26; Fri, 09 Sep 2022 19:52:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2l-002CNh-EZ; Fri, 09 Sep 2022 19:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=j3xtGKnJU9JHFkJh8elhuXTzqZp64s+wba+hJeN9Axo=; b=osEhHMpD3IEJJYb/VuTc9wppTx
	0NEPsLClnaOUeNVuvjDtmXrG7YuadoMYIEb0zuo2qs+Ms7okr1pwk4+cjrsY4jzcj+0+O1zREIPBr
	ap8d/QNoReaF5yVl8cgYW1DDepHB++4PspQGZlbHYgb1Fwtx5b+Eanb9LyMjBK0ZLQt2VXth54phz
	dqqI+88L3fB08hpjxF4eAXuShsVs7kTr6MDz+jN6w5XwYotdQv++xxXR5hHrWyu16ULQH4fg2KLYH
	eaKaE8EuGPlblFyRMttCxN4yIMpGLKCi82fwtS5dc3WW2FS4IOtYdQzPbbJLL+ylzK+Jmron2Orzz
	SMdZxYnQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2f-00DWYv-Ej; Fri, 09 Sep 2022 19:52:03 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 289Joxen025079;
	Sat, 10 Sep 2022 04:51:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 6/6] arm64: dts: rockchip: add avdd-0v9-supply and avdd-1v8-supply
Date: Fri,  9 Sep 2022 19:50:06 +0000
Message-Id: <20220909195006.127957-6-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220909195006.127957-1-naoki@radxa.com>
References: <20220909195006.127957-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_205157_998966_3C404751 
X-CRM114-Status: UNSURE (   7.46  )
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

this patch adds avdd-0v9-supply and avdd-1v8-supply to hdmi node for
Radxa ROCK 4 series.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 2 ++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index fdee9d7b2372..f9884902f874 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -175,6 +175,8 @@ &gpu {
 };
 
 &hdmi {
+	avdd-0v9-supply = <&vcc_0v9_s0>;
+	avdd-1v8-supply = <&vcc_1v8_s0>;
 	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_cec>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 485277f7ed17..645ced6617a6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -219,6 +219,8 @@ &gpu {
 };
 
 &hdmi {
+	avdd-0v9-supply = <&vcca0v9_hdmi>;
+	avdd-1v8-supply = <&vcca1v8_hdmi>;
 	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_cec>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
