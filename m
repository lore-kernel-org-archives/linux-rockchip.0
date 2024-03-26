Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EDDEC54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxXLUtIQWo7DCpVpKuzZjcDPLBq0qC5OAIF8CxDN1nc=; b=I999/N0YpcKL4m
	ho/ELQR1vNfFSYB8tYb861+b2rG8HAwMq2g24EEJnfJkPm8+jDyuwhwol3pYW6Qa1MRy8C6Gb3mI1
	ceb9nM6YN/lZtbqBMK5R1K9KhpxvlvHZLlIMG31vJMR69EOBayr4UfV/bWwIDOphtLEUtSETJK/AH
	IbF55772FZYOIHmU24kjLxrsz3mMOez3+vmzOjdU1t47/uagKL/Vxio5cKcEvOdoHmKaBzI2v1ZRw
	9jkxCsWJ3HN2xK8i4LWHxLs6eYZO2LB3I1/Qs01NGFboW33O6QrZVqWBN2xzQVFdWY27SUHqxcAZy
	JUCA7zi/upCobFdaAbZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCYS-00000006Ajx-2qPD;
	Tue, 26 Mar 2024 19:33:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCYO-00000006AiV-1Ukp;
	Tue, 26 Mar 2024 19:33:50 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rpCYM-00076I-Oh; Tue, 26 Mar 2024 20:33:46 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: add wolfvision pf5 mainboard
Date: Tue, 26 Mar 2024 20:33:45 +0100
Message-ID: <2672576.Isy0gbHreE@diego>
In-Reply-To: <171148006579.3222626.4177463381080253015.robh@kernel.org>
References: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
 <171148006579.3222626.4177463381080253015.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_123348_531564_65680460 
X-CRM114-Status: GOOD (  25.92  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 26. M=E4rz 2024, 20:11:58 CET schrieb Rob Herring:
> =

> On Mon, 25 Mar 2024 15:22:30 +0100, Michael Riesch wrote:
> > Habidere,
> > =

> > This series adds the device tree for the WolfVision PF5 mainboard, which
> > serves as base for recent WolfVision products. It features the Rockchip
> > RK3568 and can be extended with several different extension boards.
> > =

> > The WolfVision PF5 IO Expander is one example of such an extension boar=
d.
> > The corresponding device tree overlay is also included in this series.
> > =

> > May this be the beginning of a beautiful friendship :-)
> > =

> > Looking forward to your comments!
> > =

> > Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> > ---
> > Michael Riesch (4):
> >       dt-bindings: add wolfvision vendor prefix
> >       dt-bindings: arm: rockchip: add wolfvision pf5 mainboard
> >       arm64: dts: rockchip: add wolfvision pf5 mainboard
> >       arm64: dts: rockchip: add wolfvision pf5 io expander board
> > =

> >  .../devicetree/bindings/arm/rockchip.yaml          |   5 +
> >  .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
> >  arch/arm64/boot/dts/rockchip/Makefile              |   2 +
> >  .../rk3568-wolfvision-pf5-io-expander.dtso         | 137 ++++++
> >  .../boot/dts/rockchip/rk3568-wolfvision-pf5.dts    | 528 +++++++++++++=
++++++++
> >  5 files changed, 674 insertions(+)
> > ---
> > base-commit: 4cece764965020c22cff7665b18a012006359095
> > change-id: 20240325-feature-wolfvision-pf5-5c1924c0389c
> > =

> > Best regards,
> > --
> > Michael Riesch <michael.riesch@wolfvision.net>
> > =

> > =

> > =

> =

> =

> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> =

> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> =

> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> =

>   pip3 install dtschema --upgrade
> =

> =

> New warnings running 'make CHECK_DTBS=3Dy rockchip/rk3568-wolfvision-pf5.=
dtb' for 20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net:
> =

> arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dtb: hdmi@fe0a0000: Un=
evaluated properties are not allowed ('#sound-dai-cells' was unexpected)
> 	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip=
,dw-hdmi.yaml#

just for the record, this is not the fault of the Wolfvision board,
but caused by an undocumented property in the core hdmi node.

I've prepared a fix for the binding in [0], but as Krzysztof noted,
this patch needs a v2 with a change.


Heiko



[0] https://lore.kernel.org/dri-devel/20240326172801.1163200-1-heiko@sntech=
.de/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
