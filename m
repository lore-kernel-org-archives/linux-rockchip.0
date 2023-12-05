Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92FACC46CA0
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 16:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAmXlslv3Dq0ShK31fN43WKRgjgFu/wGcusBk1IwYng=; b=LAxUINLy5ZcUbl
	tMdWAiN7yqTgGPuzlcwyrXCmbOUnK7fwkuBBSd9V2Y93dj8VA0gXRKgEb/S9MzPCYg0OdRsekTieq
	KLEgwRfd+gXFWUdKQBwSVorzFvtYHu4FS4KIaP3x6EniXDraby100AxcAi+F/LwSBssuDS9QP6bWh
	NRVj7Z0vkPvLyd1frDGB+0xaURhAOxBUfUdRm/SqxPSUXvn23rA1mNuXp9BjGZTXHHbuJeRInccnS
	kCc0K9ZHnC79DWmkmkEujKhFVRjH8JbGk80DiD63xnOM+0qGtDEyCt4MXyvVMRn4O4JkFLv+DCKM2
	4GwD0dPr1Z/Olfmw9D7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbP-007ugs-1Y;
	Tue, 05 Dec 2023 16:48:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbN-007ufa-1O;
	Tue, 05 Dec 2023 16:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TNN2It3uhksfjpWnPP7ToeTKzXeJp6KH/m0Rz39JWP0=; b=JEd2wLNrfLgc5kaUDEOaO6w0Xr
	jX//vPdmlfWlUUeyo5Lbi6aChqir4zUClRD8qmstkrgcT5w4k5Bz47c0FAYUUGqg3+9W9MA49WrFp
	WYK9gDmL9UoPe6wXpTQpWji0ZN7Ppz7m2BJ/+s3Zkhf0pIDTquwNia8Xxrvv97/eZV+8c5vR4aDHl
	vdigWc5AYuYRvw+Lu/lrCaE4uj36SqInjr9Q3lEBr6AY75ieuNabHAthWYz/0gWRSCFfbbjdD/Bal
	tEGZDB0aZjyBV67MjckQCO0vFIq7HLy8Lcko3MeUa8ZthdkZN32Fll5U1L7ax2r5A7NPLLzI+PRro
	QBkQpUfQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbI-004oHc-0J;
	Tue, 05 Dec 2023 16:48:50 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAYbF-00014D-O4; Tue, 05 Dec 2023 17:48:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	dsimic@manjaro.org,
	didi.debian@cknow.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: add rk3588 spi aliases to soc dtsi
Date: Tue,  5 Dec 2023 17:48:42 +0100
Message-Id: <20231205164842.556684-5-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205164842.556684-1-heiko@sntech.de>
References: <20231205164842.556684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_164848_307363_C643338B 
X-CRM114-Status: GOOD (  10.80  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The spi controllers on rk3588 are named spi0 - spi4. Board schematics
also use these exact numbers and we want those names to also reflect
in the OS devices because everything else would just cause confusion.
Userspace spi access is a thing afterall.

To prevent each board repeating their list of spi aliases, define them
in the soc dtsi, as previous Rockchip soc like the rk356x do already.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index a59407466746..7863aded672b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -43,6 +43,11 @@ aliases {
 		serial7 = &uart7;
 		serial8 = &uart8;
 		serial9 = &uart9;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi3 = &spi3;
+		spi4 = &spi4;
 	};
 
 	cpus {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
