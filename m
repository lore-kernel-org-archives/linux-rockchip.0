Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3DE3C43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 17:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1jDtUkikQXWEXo5elyDN/pfjXHQGEXuqrVydJp5q0E=; b=koUQTO7HsyrSb1
	Z1WbRi/Md+YZ093C6mErRT5qKtHXe8wA71cAi7KhP+ePjrFbPPWrAfKP+MyDRCY9B72HwDl4jnuzE
	SMNGK5qXLsmwA53stXULncKej5hnn02hyfmyWrBPxmB7OiJD3Q9W09v98KTfXd2AMPjwK7BCdZFsm
	tmqcKUySoj9ETAN8rXdLBM8isPatF4K0cEYV+78DuNJt3yw7T9EOJ7fOg7fPuvzc+EAtq9CRQ8r80
	Yfn2YFzlHoYB/d7G8ReIoODWMu3LvCOqob6/WbaS369lSStgNo3rLaqjP2sp6kogAVyrSaxXBJDuc
	Dy4su7RlwA/8cOB82csg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDR-002Aaa-Ev; Mon, 06 Jun 2022 17:08:33 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDO-002AYh-DW
	for linux-rockchip@lists.infradead.org; Mon, 06 Jun 2022 17:08:31 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout4.routing.net (Postfix) with ESMTP id 0EAA710129B;
	Mon,  6 Jun 2022 17:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654535295;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Oo7wuHCaM7LObR3Luu8dCjyfSsvuTgkkbVEUGIl6ZLM=;
	b=RBEHtde08Hmxr2GKQ9qStzpA5WH2seuLg+uO1h34vG0z1rNwUTHo2lTzBcPCOGyCmjC9C3
	hHAkrMx9mREElrDJUUurhWHOyNMlCnUCYObFqssZqm8lRL6WadNzP4mE5KuxY4Zide49+q
	DIMoHRkMJ3ppwULyiLmsJuwEuMRLX/s=
Received: from frank-G5.. (fttx-pool-217.61.151.134.bambit.de [217.61.151.134])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id A22C01002CA;
	Mon,  6 Jun 2022 17:08:14 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 5/5] arm64: dts: rockchip: enable the gpu on BPI-R2-Pro
Date: Mon,  6 Jun 2022 19:08:03 +0200
Message-Id: <20220606170803.478082-6-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220606170803.478082-1-linux@fw-web.de>
References: <20220606170803.478082-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: cbd03c29-97ee-47dc-a203-7ff8203a3489
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_100830_671905_A3050886 
X-CRM114-Status: UNSURE (   7.63  )
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

Enable the GPU core on the Rockchip RK3568 BananaPi R2 Pro

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 75ddca1561e0..77cf6b435007 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -186,6 +186,11 @@ &gmac1m1_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
 	avdd-0v9-supply = <&vdda0v9_image>;
 	avdd-1v8-supply = <&vcca1v8_image>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
