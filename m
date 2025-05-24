Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7668C54F2E
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 May 2025 06:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DGuQJ+pcNdESs7q9ekih5vs7JwyeqIEiLex0ML7mUJ8=; b=Cb/vJshTLWvyxQ
	PNt3KQtkpiblf2D1L3n/ixdPRRkrBZ8PfbBLIa6J7GpTz9Gz2C+anTyRrv8csGdQkrKJpwrF7Mskv
	f/l89pjFdu6471KhMzdSkxe1XMOmmyhK8V2yiNEvJWbRfZwEvXGLvVGho71oK+VyCcbWqoxSGEofz
	QbFNlcc0ua/W6MoOCQO7pfTn6h273xXPZW42vRrPijDGFluwL8Gd3qVJCUQTJmO5yH5x/jI2UuE8r
	ICjloXNvU/z73pxqqPxirWhmEDDfWaB1pJDGF55M2aF05ooyIos39rAkM6o7gvG5WxKxoKt755tUD
	4zu3+XT7hjbmM/0Oy7Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIicv-00000005OAH-1tlj;
	Sat, 24 May 2025 06:45:01 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIian-00000005Ntl-2gC0;
	Sat, 24 May 2025 06:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=ar
	CTxWkxoome3w7a3ccnEM8xcNeg4k8tZ3kNoscptrA=; b=cMe/ffu5PN+rSuxnd1
	+mF5AG+OJtHeItwHb1FSiW2GHfPM99zCChxW5HDZf0YnJAr0/I4Gxm4ONuRSDNja
	aZI2p957VVkEcXWzKCo1DfATx6jiTOYdQxBZNjyWkIb2pA99TLkISoJKr3fnI0M6
	ZAyiJbvWPgGamPmDpQ8GblA60=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wDnP5FQajFozJwcDg--.25687S2;
	Sat, 24 May 2025 14:42:28 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	jbx6244@gmail.com,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Add cd-gpios for sdcard detect on Cool Pi CM5
Date: Sat, 24 May 2025 14:42:12 +0800
Message-ID: <20250524064223.5741-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wDnP5FQajFozJwcDg--.25687S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruFWftw1UtFWkurykXryrZwb_yoWfCrb_t3
	W2ga1UJF4rJr9xG348ta4kGw43G34qkrn7Ww45ZF4kAF9xta9rJayrKaySqF1qkFy2kr4f
	JrWrXF18Gw1akjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRJrcfUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkApXXmgxZwZf6gAAse
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_234250_044358_F25949AC 
X-CRM114-Status: UNSURE (   7.69  )
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

cd-gpios is used for sdcard detects for sdmmc.

Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB")
Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
index cc37f082adea..b07543315f87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
@@ -321,6 +321,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
-- 
2.43.0

base-commit: 1800b5d1cbd1027cce0136267c2b703f81b0af42
branch: linux-rockchip-next


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
