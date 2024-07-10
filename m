Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62875C3DA45
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 10:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=azFowD5r0jncTNKCrYzc2wFYHt3/SZ2OC/Cm9NyJrls=; b=4akQk2vXqGQV4HCV8nEjm7G7xy
	L3ZmvPwZ4pDU+DilBSTN9uFtlpA0tQG5HIKYhcW/8JMuMDlaIitbN+YIcr8lvwB6wmMfoHqfYD437
	kYifpHxv501ndSHJQwszlrU2hr/LDjY2CJzDGT7G6ne6DoDGfg++0PVjkF2yNZU9x6GsEHI/NP7bB
	jNmKNoQYkqbCl8UVZriKOlmTxc/gyH2cyljG5QWIzCvAWiz0FUp8R2h4GxUch7xXM410Iu9E/dL5L
	2DkfjQls25m7AWX71u60E6C5QR70GeitHKqFA8akmNI80eUTD8443V/VooZgS+LYYmXyLSnGK49Fb
	Tk0pQEhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRUxR-0000000AHQi-1E22;
	Wed, 10 Jul 2024 10:53:57 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRUxL-0000000AHOA-1oWE
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 10:53:55 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720608828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=hrZZahlO9mODR/RGTCTpadzOI8zSbHkN5HJudXp5+wA=;
	b=wR10+CUeh1G/YqcLWsWs+wu8dAlFiABJ1xFHvrmmtauBxH80hF3q9qbV2Qw+nA4KhPGJ+J
	YngWeC4gb+G39V1CgsdQMYE4uiC64h3LJVeunSvHiGQqAbDm4FxA77p8acz5hfFB2URao7
	CS9nbx0ryLQ2SXcOwsvMWElUjozNQ0Ai3Ke80htocg1UCId7fnRyEZG89COWtNR4qKpe49
	eyg1bIHH8KEEnmQ6U/yxPtT2yfAEyWIBm+qW5l59vmA69TUNjRoM8jCJYEQdwpL0OsGKnh
	CYnDgvzVJsAEVNpYV2IzZjgZjEh3+IrB+XEsvuId43mj0fs14+eXdwVHKWDXTA==
X-Envelope-To: p.puschmann@pironex.com
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org,
 Philipp Puschmann <p.puschmann@pironex.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi for
 RK356x
Date: Wed, 10 Jul 2024 12:53:36 +0200
Message-ID: <18705891.xBnrSCm06O@bagend>
Organization: Connecting Knowledge
In-Reply-To: <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_035351_946369_4DCF1675 
X-CRM114-Status: GOOD (  23.97  )
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
Content-Type: multipart/mixed; boundary="===============2511870054842357549=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2511870054842357549==
Content-Type: multipart/signed; boundary="nextPart2410067.Ga172O2onJ";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2410067.Ga172O2onJ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
Date: Wed, 10 Jul 2024 12:53:36 +0200
Message-ID: <18705891.xBnrSCm06O@bagend>
Organization: Connecting Knowledge
In-Reply-To: <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
MIME-Version: 1.0

Hi Philipp,

On Wednesday, 10 July 2024 12:20:20 CEST Philipp Puschmann wrote:
> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
> > On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
> >> DMA names are required by of_dma_request_slave_channel function that is
> >> called during uart probe. So to enable DMA for uarts add the names as in
> >> the RK3568 TRM.
> > 
> > Setting it on channels without flow control apparently causes issues. See
> > 
> > https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@
> > cknow.org/
> Ah is see. The only problem that i have is to enable/disable dmas by having
> or not having dma-names properties, where the latter case is followed by
> kernel error messages. That is very counterintuitive.

I forgot to link to my follow up patch where I added the property to
some other Pine64 devices and added a cover letter inviting others to
add it to other boards too if that seemed appropriate:
https://lore.kernel.org/linux-rockchip/20240705163004.29678-2-didi.debian@cknow.org/

Maybe this applies to 'your' board too?

> Maybe a explicit boolean like dma-broken would be better. That could be
> set on dtsi level as default and deleted on board dts if wanted.

That seems to invert the logic, which I believe was considered
the 'wrong' solution:

From https://lore.kernel.org/linux-rockchip/18284546.sWSEgdgrri@diego/
> > > Enabling dma globally can cause some interesting issues, 
> > > have you tested this fully?

Maybe there is a better solution; possibly others will respond too.

> With such a boolean we could also prevent the misleading
> "dma-names property of" error message and
> replace it with a hint that dma is disabled on purpose.

Given that you're now at least the 4th person trying this, I guess
a hint 'somewhere' would be beneficial.
I do not know if the error message itself would be considered misleading
and if something should be done about that.

Cheers,
  Diederik

> >> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
> >> ---
> >> 
> >>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
> >>  1 file changed, 10 insertions(+)
> >> 
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index
> >> d8543b5557ee..4ae40661ca6a
> >> 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
> >> 
> >>  		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
> >>  		clock-names = "baudclk", "apb_pclk";
> >>  		dmas = <&dmac0 0>, <&dmac0 1>;
> >> 
> >> +		dma-names = "tx", "rx";
> >> 
> >>  		pinctrl-0 = <&uart0_xfer>;
> >>  		pinctrl-names = "default";
> >>  		reg-io-width = <4>;
> >> 
> >> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
> >> 
> >>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
> >>  		clock-names = "baudclk", "apb_pclk";
> >>  		dmas = <&dmac0 2>, <&dmac0 3>;
> >> 
> >> +		dma-names = "tx", "rx";
> >> 
> >>  		pinctrl-0 = <&uart1m0_xfer>;
> >>  		pinctrl-names = "default";
> >>  		reg-io-width = <4>;
> >> 
> >> ...


--nextPart2410067.Ga172O2onJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZo5oMAAKCRDXblvOeH7b
bmGoAQC1Ou//DJUMV1dx5LWCq4RXL2V3lrMo06IwIqmJHTl4ZAD9HLVblwDEpbkp
vfPu47lbOfgXiCzgq5osIraQlnRkcw4=
=8R71
-----END PGP SIGNATURE-----

--nextPart2410067.Ga172O2onJ--





--===============2511870054842357549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2511870054842357549==--




