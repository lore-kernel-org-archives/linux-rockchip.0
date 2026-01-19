Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35E61C98315
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 01:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV1mR90DfjFMQvyZ+waZpTUJsXW7mDoaaWIywfNkRd8=; b=JG1AB2iyFxkiZg
	854DED1vkbh2vZy97xRfDNhsSpEfrn8YqRyGyW6qGPH+fymYvqHJt8ouLwFrwW1Eoi/Nj7lxqYhNf
	kPPt6NNZ46G0z3z3bzM2adqDvrHD9DESqYeWYLD6T2ij5MraEeL/WIok2RSgV+OAzdPI4DAMwxWMw
	r8gCpYs2hPewlCU43N+h1qxDQOWD0EeL1Jcq8EjlN+jdG81HLuQCqbDj55H6TiarlT44IMQ7Tkoie
	e7mIANFcuNrannb4ue365V+Hcw3AxrqUYFja8Mm2vVaMj8a5MKpkcYpZj3Kh3/z0iDenfJB+Os8Au
	lDscqXImZxdgbl/eocWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhdjG-00000001Db2-2W1l;
	Mon, 19 Jan 2026 01:06:50 +0000
Received: from mail-108-mta239.mxroute.com ([136.175.108.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhdjE-00000001DaJ-2lKt
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 01:06:49 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta239.mxroute.com (ZoneMTA) with ESMTPSA id 19bd3ca26450009140.003
 for <linux-rockchip@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Mon, 19 Jan 2026 01:06:39 +0000
X-Zone-Loop: 019eb35166c7fa8866f6151e52e2e82167ed3eaea8f4
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID; bh=icmFEkvGmO6/Ja++vZelqbWCf/Yf71OKFAdhqjynVoI=; b=lJO80M
	2eBX6QSmsSlEbBLrbF/bl1XOcdBXea0eFw6ShzyyRrrNTY2TJbReyMR4GSevV+uxjaQqQu6s4qvaP
	X3sLQs3Xt4yg8kbVtUEQfg9JspkYMYHTD4Q8DkMIxR221066qdqIfOxDPD7g9yfGFXXXXR/icLFJ6
	wVkcM7igI8GtQmBs3uGaB0U8PBd9q7YwOyz7Cba3B0YhP+7Ir+Z6yjQMN47kcoaUaECLIXFrQW3Py
	keYl+87qQmzUr6XAvyKoHrDzKXboFBdLtEFDIyJoUQNFhoPY14p5xbYW0GUzcj5JPa6tlhflJZo4b
	NBiD0XEDV1y3Ccv0jRm3KexzkPEA==;
From: Luis Garcia <git@luigi311.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Olivier Benjamin <olivier.benjamin@bootlin.com>,
	megi@xff.cz,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH v2] arm64: dts: rockchip: Fix imx258 variant on pinephone pro
Date: Sun, 18 Jan 2026 18:06:33 -0700
Message-ID: <20260119010633.3447863-1-git@luigi311.com>
In-Reply-To: <20260118214620.3319040-1-git@luigi311.com>
References: <20260118214620.3319040-1-git@luigi311.com>
MIME-Version: 1.0
X-Authenticated-Id: git@luigi311.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_170648_804008_5188543E 
X-CRM114-Status: GOOD (  10.85  )
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

imx258 had the driver updated a while back and it introduced
two variants, the imx258 and imx258-pdaf. The pinephone pro
is using the pdaf variant so this switches it to the correct
variant and eliminates the pdaf pixels from the sensor output
resulting in a much cleaner image.

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
