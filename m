Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3718ACF0421
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nftlg6UVnKRxHs8OTNkMvPCcPXyf5Lkqxc8ewORDoQ4=; b=QSWJtTtbh3hYJc
	h9gT+XK8NKsKaHNTj6jEQFaCmMrQYWqxM3tGp3Y/gzRVhlZpf9hq95kkH3BwlObG1JPbi8gQs+unl
	FHrKT8pz3FQ4Pqo4pSFpXjNusTDEVpC3vYqp9Dsjk7duLOA3J06krp++LD6knJerdT/QHpvMJhxzm
	VzF3L97oSUxhidV/hfPp2nHaAsddPqRwm2jZx3JrpvfeWjZE8+gx63l5mQ6n5WU3ZXCMdP1x8SkSc
	o+jIchvMenbFOjS/VafnRLECYQXDIHGOJgtT+RH3Pv/wj8TYT1AxJQHnSMtLEdm7PaIRpCXXlAGUi
	p+S++IviCF1us4zg7zUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syH8q-000000076QZ-0xqq;
	Tue, 08 Oct 2024 20:49:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH0G-000000075IW-1JnC;
	Tue, 08 Oct 2024 20:40:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=a8vwVyS29rOLWb4fTtAHqldYQww/UW84ULndF4f+v14=; b=GZsUGU49LeV3TzcJF9i3z9CzHt
	P97xFVzm6yG9aLOqtsgaK8LDNGjUDmSwVVPK77Fx/YnPHeIsFY5BFHuiidKMVDmqN2UVrei+zboxl
	n8K+CON0/4Ku/NRW344LFtXsmhv+6LpTGJfDw9n+feAeXrqqwMmH5SD9E8D4ZA7PpUC8nQuOSvKrn
	BltjPV0iIIfxcO0df/1l0nKUFI/nctske7SIbmL/5OTIofts8WWzQoDFEUdguxdclbiMhCTzcATHs
	ec3pbzukRAq6I6d8ZTcgu0RyFyOGq2bdGAumWnPTNW0r6mvLlnuOW6JrRh0mnH7+eHsEeRN6x7Znh
	7kZEX11g==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH06-00000004geo-3LyC;
	Tue, 08 Oct 2024 20:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a8vwVyS29rOLWb4fTtAHqldYQww/UW84ULndF4f+v14=; b=dmAdLIz2XoO9eTTfpODgOR3J9I
	LUwukipOXckhy0cbfKUF7OkXYm51EZap+kxUx5we10CXlFrWU/7h8KvqQDZoWT9TUGtocA2t/St+p
	yJb4QTfxMmucSoZhfNI3L4DQFFkjNHakPECIirua6+QS2EmIcn8U4Q95xTu8E1aOwhJwvTThdHEdn
	W8UzHlXHLio5/3VhdprthvYrXPZVMdIJD8F0y8yvDajh02C2qykevskc0GRLa24ellBjScvu3Z/zI
	gP7v00pt275dInHrMorPd3xiIFBYcrj5lFt2ZFQeA3iwgdCdhvu6i9ldhX0CQYcYYvAR70qmsou8i
	ronxEveQ==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzy-0007ua-GD; Tue, 08 Oct 2024 22:40:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH v2 08/14] arm64: dts: rockchip: remove num-slots property from rk3328-nanopi-r2s-plus
Date: Tue,  8 Oct 2024 22:39:34 +0200
Message-ID: <20241008203940.2573684-9-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_214015_113828_1361DB80 
X-CRM114-Status: GOOD (  10.71  )
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

num-slots was not part of the dw-mmc binding and the last slipage of
one of them seeping in from the vendor kernel was removed way back in
2017. Somehow the nanopi-r2s-plus managed to smuggle another on in the
kernel, so remove that as well.

Fixes: b8c028782922 ("arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus")
Cc: Sergey Bostandzhyan <jin@mediatomb.cc>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
index 3093f607f282..4b9ced67742d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
@@ -24,7 +24,6 @@ &emmc {
 	disable-wp;
 	mmc-hs200-1_8v;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
