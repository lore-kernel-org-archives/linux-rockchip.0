Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7ABCCA481
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 17:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zj/mzUmdvOIvf7a6Qb7IDSdrwB9fxNIXv9IVLUt8Fc=; b=tuBBAjbnR5Ey4c
	feeSoqI/D5RzL8X4BlRsIiC+qJ0gINmfDnbcYyuTnnVS8ghIZ/0Kzcd/HTugWHnbtLQ/QDXOXTc5n
	oyp0dUaQ/YcI9uMMQ3R9Id6bHulX66JbWojxIn/STqHnGM4VbIhvc7ozu0jI/QPe5OuaVGsFUftpo
	0dEuPj212YT3mQMdkEuhRjFSBqPhRIV8/Su+ToIDcEhU8VdkY+FmWWn8nFHKGqB0B6/gyptph4j/f
	7RphHZQJC5aPlAlyHLqsyuz12KTE7vOs/vieyT34fBfniju2UjVALbjdLnIbi9tKiPD672Lh7Db8n
	VQpjN22OrSGNtd4wZLOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDU-002Aba-88; Mon, 06 Jun 2022 17:08:36 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDO-002AYT-F4
	for linux-rockchip@lists.infradead.org; Mon, 06 Jun 2022 17:08:33 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout1.routing.net (Postfix) with ESMTP id 2A5993FFF0;
	Mon,  6 Jun 2022 17:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654535294;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G6mObrSdOwq0VvY7EOJPbzhP1qVMTYOa2gbT0X1xZX0=;
	b=AwomFCxk1089a0eA+7FDRFHaTDFT8ZcXx/ZSPP4+bdv3RYm1zVVqP3B5NqgDVQ/oHJ/fL+
	uWWZ06QKTjV8KL12Sq2DuEg2TMJUSZoilOnIM1MACQ4aEy2WQh7f3dACnFt4FYpoF+Raz4
	9KcCQacb+v990XynzmzKZ7PhThdnz30=
Received: from frank-G5.. (fttx-pool-217.61.151.134.bambit.de [217.61.151.134])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id B55131002CA;
	Mon,  6 Jun 2022 17:08:13 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 3/5] arm64: dts: rockchip: Enable HDMI audio on BPI R2 Pro
Date: Mon,  6 Jun 2022 19:08:01 +0200
Message-Id: <20220606170803.478082-4-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220606170803.478082-1-linux@fw-web.de>
References: <20220606170803.478082-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 3fae8dbd-ad76-4e8e-8b17-ce111ec43b74
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_100830_717786_2F8CA833 
X-CRM114-Status: UNSURE (   7.92  )
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

From: Frank Wunderlich <frank-w@public-files.de>

This enables the i2s0 controller and the hdmi-sound node on
the Bananapi R2 Pro single-board computer.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
this needs this patch/series (now yet applied in 5.19-rc1):
https://patchwork.kernel.org/project/linux-rockchip/patch/20211126122718.631506-2-frattaroli.nicolas@gmail.com/
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index eeaf02461f9b..57ddb7608976 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -204,6 +204,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -444,6 +448,11 @@ &i2c5 {
 	status = "disabled";
 };
 
+&i2s0_8ch {
+	/* hdmi sound */
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
