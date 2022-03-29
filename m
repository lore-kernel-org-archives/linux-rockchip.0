Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC814C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 09:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35IXeA1USfOUzDwWb5Nnwa1DA22ZEo9WP2dfOS0bU3Q=; b=ONhJcH2OUjJ1nC
	6XtAFbO7vha/GY/B3VnNayvnpUwBMKQYw/CeBmxkkUbfjZvpIPBRC7hh/6UWkW6FXWUyVY3blmoaR
	w1H411YBxDUCpeFKQZZpH0ca4MDbqv46S+LoTyUuvX1u59M+kyxkDMbUcFuSsN9HqF7o9dcjYZPeu
	7taJhZ2E4LzXsyuzd+izCuK+0PUURE1hUOMdmgXu6jFFWuKLXE/IJLfKEjwIb1xYnHgw8IJ5q8iTW
	wn9R5nhtAwDk9Wl8D8qZPM7TESF9dszj6aSCdgNGuzpq4Mjv118buaqZtHDWOjtsVwT/kRUnYSzDq
	+lN9qzEDF8Q2DegVZC2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ81O-00BeOM-D2; Tue, 29 Mar 2022 09:20:14 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ80p-00BeBl-Tf; Tue, 29 Mar 2022 09:19:44 +0000
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 17680240012;
 Tue, 29 Mar 2022 09:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1648545573;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4OYEQcpxV5ZoCImFdldnCROqjeYEuOqk5lTqs4xQNOw=;
 b=E0C2ytxPlV1W+Oe2MExHPN7L1HAoV5OikaBi/U7DewsMCqNtbPDqkZmi2EkEtqy1h9eSgE
 iiefcHj+RmgZ+f+Nhg1dBvgQLIyFkVMlqvsI0mQLoe4LXrWKzoi2/xC4DJe0nxuepZkThU
 FRyNwSRBCCVeRjb5oEYt0caD6HgzFm/e5R4zbhwmHQOWSB6a/GJnngaEUVODgCoYqdO+7g
 DcfNnSRhpGEP/dmCe7VL2vFiRtpk1xrIevN5WpjBBTppF28IllsoBjw5Ux75BSFoUNa40U
 iEy83TwJxTr5nOyIxsdHupHOzrfEzXzdR3N0Ts3ALvlLshPNCnGr1VoMVatfnA==
Date: Tue, 29 Mar 2022 11:19:30 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>
Cc: Ansuel Smith <ansuelsmth@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com,
 linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org,
 linux-tegra@vger.kernel.org, linux-oxnas@groups.io,
 linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Message-ID: <YkLPIgwClJAUc1Uf@piout.net>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <YkG2RPrtPaBNXb7a@latitude>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkG2RPrtPaBNXb7a@latitude>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_021940_535640_D2942877 
X-CRM114-Status: GOOD (  18.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi,

On 28/03/2022 15:21:08+0200, Jonathan Neusch=E4fer wrote:
> On Mon, Mar 28, 2022 at 02:09:14AM +0200, Ansuel Smith wrote:
> >  create mode 100644 arch/arm/boot/dts/freescale/Makefile
> =

> Freescale has been part of NXP for a while, so it might make sense to
> merge the freescale and nxp directories. I can't speak for
> NXP-the-company, so that's just my view as a bystander.
> =


Maybe we should wait for the market consolidation to end so we can put
all the files in a single subfolder?

this would save us from all the bikeshedding ;)

> >  create mode 100644 arch/arm/boot/dts/kirkwood/Makefile
> =

> The Kirkwood family should probably be sorted into Marvell.
> =

> >  create mode 100644 arch/arm/boot/dts/layerscape/Makefile
> >  rename arch/arm/boot/dts/{ =3D> layerscape}/ls1021a-moxa-uc-8410a.dts =
(100%)
> >  rename arch/arm/boot/dts/{ =3D> layerscape}/ls1021a-qds.dts (100%)
> >  rename arch/arm/boot/dts/{ =3D> layerscape}/ls1021a-tsn.dts (100%)
> >  rename arch/arm/boot/dts/{ =3D> layerscape}/ls1021a-twr.dts (100%)
> >  rename arch/arm/boot/dts/{ =3D> layerscape}/ls1021a.dtsi (100%)
> =

> The Layerscape family is part of Freescale/NXP.
> =

> >  create mode 120000 arch/arm/boot/dts/nxp/armv7-m.dtsi
> =

> armv7-m.dtsi is a bit confusing, because it contains a few devices at
> fixed addresses, so it looks vendor-specific at a first glance into the
> file. However, if it is actually as vendor-neutral as the name implies,
> I think it should live dts/ directly, rather than in vendor
> subdirectories.
> =

> >  rename arch/arm/boot/dts/{ =3D> nxp}/lpc18xx.dtsi (100%)
> =

> Here we have the NXP LPCxxxx family, which is AFAIK unrelated to the
> i.MX family (and thus the bulk of the Freescale legacy).
> =

> >  create mode 100644 arch/arm/boot/dts/vybrid/Makefile
> =

> Vybrid is another chip family of NXP, with a good deal of Freescale
> legacy in it as evidenced by the "fsl," prefix in the devicetrees.
> =

> =

> =

> Thanks,
> Jonathan



> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


-- =

Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
