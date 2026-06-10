Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38CB8CD8CB2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 08:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPy15Il/s4d2eh/jntYeOSZCCqIXXGl4ApqXFICoNdU=; b=eC2Q24o9blyLK0
	AuMj8XzVzGaE7NziEpJu+yR7esFjOZKgceVLjLF+X3lLJF2Ds8fPcRIYpw0QPLk1MCtdZa0DgRvjs
	UGYoEqKcaNY2569U4TcaLHV2rp3b02kMe6+60B5kO38fbIlUvbIMM7Y2sOva//CDKyPpP1f9uPXMP
	mZ4jdp72NLUYCV+Vkct+W7RsCK/RxvdYMTfBYqtHCFLMaB+iskffnuRrO2E9Wh2EFHyGrNAtkJ+8n
	hzFVwkiqa9Jp2S7qcKSi9Vd/uaIZxVmciEL8bnX2o0f9VDQI1wIHt3IpkfjI3Zzu+PMdyeTIjowrZ
	hhtX0Ea2g9J+6Pjpn3pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXE4r-000000072GJ-2PwB;
	Wed, 10 Jun 2026 08:14:21 +0000
Received: from out-178.mta1.migadu.com ([95.215.58.178])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXE4p-000000072Ew-2rzc
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 08:14:21 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1781079257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O7Ptm6SPsVG8VTgTcEieeftVdkBihFqITk/E7N/gLcI=;
	b=I814W4Db1hH0tdqi5Rp4hZY3ua5uiZAf5+g46nVZGHyfME3gby6N7Ud9rX7owW3Z5VzyoO
	UvhmOR8ZIts/hRPiYQbrr6+gaoOheccoHHldzA/jA0xCPzQZ5mTH/zBHSDg5CAWuJYuFzf
	uU9tESCySXd2UVDoESOpu5I3PDPnzm3i0aA2R4+7aVcBa/NHerDMjOmgZJJflx1szfkg0m
	97uY3LuEUVfiNvOaPu/e9+SKvuYT1j1lBZ7rlrMjm2P8EvmqGR/nZqueboys/pbYYze/NO
	Ir3z0KICHEn18PGeFnrJk1ChI8Y7fe9tqQWNluHZI/6WMHtlu/YPrbCYK6HnKw==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Drop duplicate USB nodes on NanoPC-T6 LTS
Date: Wed, 10 Jun 2026 10:04:05 +0200
Message-ID: <20260610081400.758687-2-diederik@cknow-tech.com>
In-Reply-To: <20260610081400.758687-1-diederik@cknow-tech.com>
References: <20260610081400.758687-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_011419_867251_19ADCAB0 
X-CRM114-Status: UNSURE (   7.14  )
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

Several USB nodes were enabled/configured on the NanoPC-T6 LTS first. Then
those same nodes were enabled/configured in the NanoPC-T6 dtsi file, but
the ones in the LTS dts file were not removed, so do so now.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts  | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
index ff855064be08..0ee67ee24f3c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
@@ -38,23 +38,6 @@ usb20_host_pwren: usb20-host-pwren {
 	};
 };
 
-&u2phy1 {
-	status = "okay";
-};
-
-&u2phy1_otg {
-	status = "okay";
-};
-
 &u2phy2_host {
 	phy-supply = <&vcc5v0_usb20_host>;
 };
-
-&usbdp_phy1 {
-	status = "okay";
-};
-
-&usb_host1_xhci {
-	dr_mode = "host";
-	status = "okay";
-};
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
