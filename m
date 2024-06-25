Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 613C3C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 08:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+fGPaeTuTQ7rmBhplkIGoZlz5EUSEqo8weAgktyVo0=; b=XgWn//KBy3Wi3b
	2s1GunFnxTLFFL/YPdO6A5gnLzal62wkwism85OtVpjx6V4O1Pm942R03y00CdsX00IlMX+tvP8lg
	H3EGzaydJsjXujFOkvUpuiydXVE5DJZo1NHAbKKuPb4iJTyUraXEcQMg2yEIrJe1AD1rA9eojApCm
	WCN4xBOgT80YbRjAgfNS27IGpRh6go2Dj6sUF+7OyvXnTAE4vX6EQnpH3o0XpsEBttWDssXfQUXK/
	wKB/TC+qeoCOjS+Z7Tor2YRdKaWYfIxOuVIp6bODgIwYCYYgRqgtLiM93fB+6EPGUUbP93807wnNI
	4P8nhuQQndNfc7vKdaiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM1V4-000000026LD-1ihM;
	Tue, 25 Jun 2024 08:26:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM1Uy-000000026Jg-1uom;
	Tue, 25 Jun 2024 08:25:57 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sM1Ug-0003AJ-5E; Tue, 25 Jun 2024 10:25:38 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 Jacobe Zang <jacobe.zang@wesion.com>
Cc: Nick Xie <nick@khadas.com>,
 "efectn@protonmail.com" <efectn@protonmail.com>,
 "jagan@edgeble.ai" <jagan@edgeble.ai>,
 "dsimic@manjaro.org" <dsimic@manjaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] arm64: dts: rockchip: Add USB-C to Khadas Edge 2
Date: Tue, 25 Jun 2024 10:25:37 +0200
Message-ID: <2403789.9XhxPE3A7Q@diego>
In-Reply-To: <TYZPR03MB700141F5448D61A000D588AB80D52@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240624083236.1401673-1-jacobe.zang@wesion.com>
 <6d8f80a0-d67a-416e-b395-7a33b539682e@kernel.org>
 <TYZPR03MB700141F5448D61A000D588AB80D52@TYZPR03MB7001.apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_012556_524998_73BD0350 
X-CRM114-Status: GOOD (  12.07  )
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

Am Dienstag, 25. Juni 2024, 09:53:45 CEST schrieb Jacobe Zang:
> > Was it disabled anywhere?
> 
> This patch aims to enable the DRD function of Type-C port. So need to enable in DTS.

> +       usbc0: usb-typec@22 {
> +               compatible = "fcs,fusb302";
> +               reg = <0x22>;
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <RK_PB5 IRQ_TYPE_LEVEL_LOW>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&usbc0_int>;
> +               vbus-supply = <&vbus5v0_typec>;
> +               status = "okay";

what Krzysztof means, is that the default for status is "okay". So for a
node you just added, you don't need a separate status="okay"

This is only needed if the node is added in a base dtsi (like soc
peripherals) which are then enabled on a per-board basis as needed.

So please just drop the status property from you fusb302 node.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
