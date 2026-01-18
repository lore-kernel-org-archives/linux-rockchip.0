Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7719AC98315
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jan 2026 21:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wg7+RqGZ+ohYdxpt3MFgezkSHuqi4TkPJvBA62S5vhI=; b=QCAekNdHtzKehO
	+3rbMagSk+7yNtcfJXzKxw5TruyrqOA4NrD2IE1kx9d9K9VR9WINwAoBSsqzq3oG8vNJkTc3pwirv
	oMoJIsOOVrZV59jw3x6uQ14xtMYJiXWLUY2VgdOEW8EgYMjYo3vU8rQTw0Zj8PwUGyud99a3sg6MA
	Tdhp8uTAxYs4GzGrHd7vzSIxBkledzoswuC+TK4U210Pt2i7WbKZ8oSWdUx6E0Ih2XnkgGNm7U5BX
	lz30Zblwk7V/vFKj3vll1qDpShHuzTeS7n3lpjtAC8fELOkMbgSCpDXeEritxOCEZ0oPkg209Ojc8
	C80uPEOFcQy5otKfV+kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhabt-000000012hf-2rFu;
	Sun, 18 Jan 2026 21:47:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhabs-000000012hK-1J13
	for linux-rockchip@bombadil.infradead.org;
	Sun, 18 Jan 2026 21:47:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gZU1jtVtFJTK/4HZ7m9UqvrG5eW6sMN+A91lkyu629Y=; b=pK6N5Xp2SVJqVW/pLqNfDGHOwk
	YI3McuGUkT7XAuMlV0MPGGYxxI0m9pD+Gz53gvhl0xAO3vg9oD8BKJazaphHDmcTEwXZbrS3BsOfL
	0gPTgkCFbSV7XRTW/0j8et3oVNHFFJAytHQJzhEeLhM+BicRJ46E9yD3nFcGbjNrVAK+CNssqxRTx
	qHWqkiB4Amp53fwTrn65nqK3MO1wVdytH/hS3EQ7A/Cb4xOWfB2VZFhhIozzDSJelTJgUe1mUa2HH
	1RTYVGJ4cZgDIca7UST0zoxf9DBUTIvwyOtlQzjskizbY0LsVinRfysuQsm8vymaqoPPA1jy+4dQf
	8U22ovww==;
Received: from mail-108-mta41.mxroute.com ([136.175.108.41])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhabl-0000000B6tc-2DyX
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Jan 2026 21:46:58 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta41.mxroute.com (ZoneMTA) with ESMTPSA id 19bd31326640009140.003
 for <linux-rockchip@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 18 Jan 2026 21:46:46 +0000
X-Zone-Loop: 8deea38c388eedab517b1670e699a48d2a582efeb8ec
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID; bh=gZU1jtVtFJTK/4HZ7m9UqvrG5eW6sMN+A91lkyu629Y=; b=uhfsA9
	1TzkNBb42KDAcZbV2+wbMPfLojTi6Xuyyr+3Nz6Sm891RP9bz9Q1dXSmMbGkb39IA+LxtT8//6uaj
	EfvHubv9eGhlK29ooa7dUtnmtBU6+VNjLQMZpjrJh1/A/f9igwIy11IW5GcpLUhMcF30JaLZ4h1VK
	mAbA2mEbNyjsQlidPkncxsI5JfG+FWPu8nylraVIETsrh3/DS5TwA9rOU7Fj59zTrN1++RcbGEjSk
	5x20UY4Uj4/fSDbD4LepeiO7o8pNQIOycBJfTUC+esXNko0wQXjv9N3fkfDRLAmm7AJLyDM480SaE
	L4+Y0rbWVcfXuM+SFZqKWIAbRE3w==;
From: Luis Garcia <git@luigi311.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Olivier Benjamin <olivier.benjamin@bootlin.com>,
	megi@xff.cz,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH 1/1] arm64: dts: rockchip: Fix imx258 variant on pinephone pro
Date: Sun, 18 Jan 2026 14:46:20 -0700
Message-ID: <20260118214620.3319040-2-git@luigi311.com>
In-Reply-To: <20260118214620.3319040-1-git@luigi311.com>
References: <20260118214620.3319040-1-git@luigi311.com>
MIME-Version: 1.0
X-Authenticated-Id: git@luigi311.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_214656_983055_2F7B6C06 
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

Fix the variant of the imx258 camera sensor on the pinephone pro

Signed-off-by: Luis Garcia <git@luigi311.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 2dca1dca20b8..fd6facf1da2b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -451,7 +451,7 @@ &i2c1 {
 	status = "okay";
 
 	wcam: camera@1a {
-		compatible = "sony,imx258";
+		compatible = "sony,imx258-pdaf";
 		reg = <0x1a>;
 		clocks = <&cru SCLK_CIF_OUT>; /* MIPI_MCLK0, derived from CIF_CLKO */
 		lens-focus = <&wcam_lens>;
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
