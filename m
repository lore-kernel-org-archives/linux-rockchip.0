Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 683C4C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 08:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9rpBb0h42i4SRz5ZvwnPG7UKluCiogNq9yMwwHYAkw=; b=0JQ6TCtldecV7R
	74/U5EP6lwcqK3aYjUAWg54dM2UKamWL7SC5eqsUSuhsjmjtMzOC6je9mhv4VyODeEqANM+ARFBdD
	+MP3L11vazUWVBLGigVLrI9Zkx9+DH7o5VaNGtGZCf6jfBgRDFuiIq6OUO/ycvfsYs2aQbjPEzvJU
	OaGAMz+4Z2TkGRYfyr7YXxG4WO44OYXfh/RzOXWUDK7GU3Xk+Xg6gqJGK4vyiVezBTq1/BpOD8VCX
	aEgckkU9vUnwgwZJLxFBngMAOP02zZp8PUexQOUd4GGVvSp0op6+AMh6zrcjt3I2kffSMrAMmty1d
	/TEmZn65c6A682HhcklA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp4a-0000000CewU-0OU1;
	Mon, 22 Apr 2024 08:30:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp4W-0000000CevN-1QpG;
	Mon, 22 Apr 2024 08:30:45 +0000
Received: from i5e861d85.versanet.de ([94.134.29.133] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ryp4H-0000f8-Cv; Mon, 22 Apr 2024 10:30:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH 0/2] Add support for the dual-role dwc3 controllers on
 rk3588-tiger
Date: Mon, 22 Apr 2024 09:43:12 +0200
Message-ID: <2108948.KlZ2vcFHjT@diego>
In-Reply-To: <171356537191.48026.7238978785873260892.robh@kernel.org>
References: <20240418210332.2394871-1-heiko@sntech.de>
 <171356537191.48026.7238978785873260892.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_013044_417393_CEFADD0D 
X-CRM114-Status: GOOD (  23.64  )
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

Hi Rob,

Am Samstag, 20. April 2024, 00:24:23 CEST schrieb Rob Herring:
> On Thu, 18 Apr 2024 23:03:30 +0200, Heiko Stuebner wrote:
> > A comment fix and then the addition of the nodes for the dwc3 controllers
> > using the newly merged usbdp phys.
> > 
> > Heiko Stuebner (2):
> >   arm64: dts: rockchip: fix comment for upper usb3 port
> >   arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou
> > 
> >  .../boot/dts/rockchip/rk3588-tiger-haikou.dts | 60 ++++++++++++++++++-
> >  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 15 +++++
> >  2 files changed, 74 insertions(+), 1 deletion(-)
> > 
> > --
> > 2.39.2
> > 
> > 
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3588-tiger-haikou.dtb' for 20240418210332.2394871-1-heiko@sntech.de:
> 
> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /extcon-usb3: failed to match any schema with compatible: ['linux,extcon-usb-gpio']

This follows the txt-binding from
	https://www.kernel.org/doc/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
so in mainline there is no yaml binding yet for the usb-id-extcon.

Though I did find a still pending yaml conversion for it in
	https://lore.kernel.org/linux-arm-kernel/20240215093214.796821-1-alexander.stein@ew.tq-group.com/T/

Though not sure what the holdup is there as it got a Review from you?
Can you just pick this for the main dt-tree?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
