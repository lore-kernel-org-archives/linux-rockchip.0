Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DC7CD2444F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 23:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfqaQL5BMZOq/Xj/0q5+nMoVxsuXQy47BMizPFtqp+E=; b=rbNXu7z4PmGL5m
	uSYTPv5kSdgIXgpJh6O30BWdfJ3aFcW0LNnccH5o9n/tqYvv3SW379VyfryqiF01M0oMRP6e3bRtL
	1G9vsQPmq5tp2FFWXfphFxH7uM5y/Dj0E2cGJfM6SpaUvLwwszEpj5D2k6hhtLa/h7xQyhMqY5fbT
	s33NhDLBEzbhFhZwrfEc4xns2vNm0P6ItgpACOmaLoqigQYhM78xgyHkkxRGcZoYneo3fq4Kce9Ir
	HRkToN5z+PWLji6PBmlTX6Q4j29TfxW5/kEh5DXLyHs8xeIUuCgAFe1ax+QD3ssusm3j3dpxxdKK+
	AcceeM/DpBk1GojEWluw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sz2A8-0000000EcHq-35BX;
	Thu, 10 Oct 2024 23:01:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syzlF-0000000EGOH-3Y8s;
	Thu, 10 Oct 2024 20:27:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Go6/Rxw5ULvp3qmcx0fF/STMX2ar8olqgjRJbUbDDyg=; b=kW/HUU/cDFp1FkijOAX7m7LuUJ
	4VN/atXy4M2/v0mXCFiv3JY3jrWol7ibOyQn+ISfCC/Fvlo4cLwRDXNEscw0MFpxJILDXvSoVdvN+
	GBi0Ddq8iHwUSp9BOGLIoo5id6XNgCyJGl6ROhfa9BJM7o7UQL3b+lIYRyO0G7knS65P2C1KSe6eC
	8K7ZLnOhuPEFHlG8J7lmXV3Xpo89Kn8ZmpP/AudbF4dADx1Q77vRkNhJDFJ+IdEYjf8+ztc7uSKFG
	x/lMoTaYUtzeIbqx78F/XAdH/0MflFYHLDDjBHnlUqIpb1nxHYVD8jaaW8W+hw/x8QRslV5nz0EaO
	R38zJ5dA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syzlE-0000lb-Bz; Thu, 10 Oct 2024 22:27:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 00/14] Fixing some dtbscheck warnings
Date: Thu, 10 Oct 2024 22:27:45 +0200
Message-ID: <172859192264.2746127.9464366808978431094.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_132749_905359_42E87133 
X-CRM114-Status: GOOD (  12.60  )
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

On Tue, 8 Oct 2024 22:39:26 +0200, Heiko Stuebner wrote:
> Fixing dtbs-check warnings should be declared addictive, one starts
> with one warning, then another one and then it's oh, I'll just fix
> this "last" one over and over ;-)
> 
> We still have more, if others want to play too :-D .
> 
> changes in v2:
> - more fixes
> - use more appropriate txco clk for brcm bluetooth
> 
> [...]

Applied, thanks!

[01/14] arm64: dts: rockchip: fix i2c2 pinctrl-names property on anbernic-rg353p/v
        commit: f94b934336e30cebae75d4fbe04a2109a3c8fdec
[02/14] arm64: dts: rockchip: Drop regulator-init-microvolt from two boards
        commit: 98c3f4a2d61a29a53244ce45e50655140bd47afb
[03/14] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
        commit: 2fa98dcc8d3ea2ebbd9e6be778f8bb19231c28be
[04/14] arm64: dts: rockchip: Fix bluetooth properties on Rock960 boards
        commit: ea74528aaea5a1dfc8e3de09ef2af37530eca526
[05/14] arm64: dts: rockchip: Remove undocumented supports-emmc property
        commit: 1b670212ee3dd9d14c6d39a042dfe4ae79b49b4e
[06/14] arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma boards
        commit: 5ed96580568c4f79a0aff11a67f10b3e9229ba86

        I've limited the commit to only lion now. Both Puma and Ringneck
        loose their #cooling-cells property in the i2c-mux-conversion for
        6.13 already and the undocumented property is in the boards so
        long already, that it didn't make sense to cause extra merge
        conflicts for this.

[07/14] arm64: dts: rockchip: Fix LED triggers on rk3308-roc-cc
        commit: 3a53a7187f41ec3db12cf4c2cb0db4ba87c2f3a1
[08/14] arm64: dts: rockchip: remove num-slots property from rk3328-nanopi-r2s-plus
        commit: b1f8d3b81d9289e171141a7120093ddefe7bd2f4
[09/14] arm64: dts: rockchip: Remove 'enable-active-low' from two boards
        commit: f4d29bebaa6118c1e51e8f1c21ce2b34f43e1479
[10/14] arm64: dts: rockchip: remove orphaned pinctrl-names from pinephone pro
        commit: 8fb9f4ee733c50cc9b6dce2313d1948d6229e804
[11/14] ARM: dts: rockchip: fix rk3036 acodec node
        commit: d015181e18070dc53c2dfdcfaa7441567cc990f1
[12/14] ARM: dts: rockchip: drop grf reference from rk3036 hdmi
        commit: a30ef8fa0e6d70fcf7e933a876a05bc9ca101472
[13/14] ARM: dts: rockchip: Fix the spi controller on rk3036
        commit: 34387c259d42c7e62aa046ffb982c710c8971418
[14/14] ARM: dts: rockchip: Fix the realtek audio codec on rk3036-kylin
        commit: 9f03220ac5717d19d71ae21c9020e4dd56f1efa7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
