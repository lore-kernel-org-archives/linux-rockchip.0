Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC7F6C3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 09:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FyJOnS4nppdhh0oSKiC4qaOMPxixE5EOoyY8ZsGG5Yk=; b=X099X6i5K6eBZwitNeVai0yyQL
	a7PRecIXtUOiqLre59xdVl5aRoEPyMLMOSqUX5mKHfd/MECkfK8lFd4P6j40o8x5psKT2GxSR1SFp
	SbP8xEFcOW9kwT8c2ptN03qq3/x0VA5TSKSEc15ShXQ38m5s8s6dlVc1VmAdhuF95eRqfV4PbFrbk
	A8G0GR0E6Xyi+hst78E31YuPM5KqW4eUi3HttAKHJitoPzSuodfCDxxFhuhIxCcKaEC17FwdhChe5
	iYy1Qngypg6+mdl0hEjPmrz7NYjBL8XjanlWjFrD6x58YEldIkbKSfnjv9UD3IC8Yo3A8KkSWKqxS
	jgLr2WzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQl5j-00000003NZt-49vB;
	Mon, 08 Jul 2024 09:55:27 +0000
Received: from out-183.mta1.migadu.com ([95.215.58.183])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQl5g-00000003NYc-0Yfw
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jul 2024 09:55:26 +0000
X-Envelope-To: dsimic@manjaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720432519;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cjnCm+A1AQKhSlebbiZ+51zEwllzLIagWOmtFkMnH/g=;
	b=JVNBFJHq3Pbn2ER6JmV40+gJ9qa21faOvfzSHBT7DVBzORDpyCmXzZKgWsVu4tYoyHEo9j
	Js2kxf/06JIXKTgaKAbDHjxZC1MiCWsF+pcFkVMzd1qtHZZEWY71chNKQC/SeKBNp0zPB7
	7kW3i80yULEbZlFZgsmJsxTcOrp0D4mMucVL9RJ3wk2Cl9jIDByyZv+pVURu7TMl+I1Ede
	fX+GEh/USyqlfCrkGjtl+9ZGckZublM5ottUQpijiBH8FHup2JgRNjwFTO59uh7k0Kzj1H
	KxotnPfFqX9s0ScuJJv8bx1DIzinmMMznIQIkcoAA8mRT32P8FyGnBlwo0oW7Q==
X-Envelope-To: heiko@sntech.de
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add avdd supplies to hdmi on rock64
Date: Mon, 08 Jul 2024 11:55:07 +0200
Message-ID: <6192146.IJkX0fH94T@bagend>
Organization: Connecting Knowledge
In-Reply-To: <31a86ec073e1de9e0241845f8783cd6b@manjaro.org>
References: <20240704191919.38856-1-didi.debian@cknow.org>
 <31a86ec073e1de9e0241845f8783cd6b@manjaro.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_025524_825481_46529A3B 
X-CRM114-Status: GOOD (  33.39  )
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
Content-Type: multipart/mixed; boundary="===============8757811308568649534=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8757811308568649534==
Content-Type: multipart/signed; boundary="nextPart1956357.2bgSXjE7Vb";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1956357.2bgSXjE7Vb
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Dragan Simic <dsimic@manjaro.org>
Date: Mon, 08 Jul 2024 11:55:07 +0200
Message-ID: <6192146.IJkX0fH94T@bagend>
Organization: Connecting Knowledge
In-Reply-To: <31a86ec073e1de9e0241845f8783cd6b@manjaro.org>
MIME-Version: 1.0

Hi Dragan,

On Sunday, 7 July 2024 23:23:30 CEST Dragan Simic wrote:
> On 2024-07-04 21:18, Diederik de Haas wrote:
> > Pine64's Rock64 was missing the avdd supply properties on the hdmi
> > node,
> > 
> > causing the following warnings:
> >   dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using
> > dummy regulator
> > 
> >   dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using
> > dummy regulator
> > 
> > In the Rock64 Schematic document version 2.0 those supplies are marked
> > as DVIDEO_AVDD_1V0 and DVIDEO_AVDD_1V8 respectively, but in version 3.0
> > those are named HDMI_AVDD_1V0 and HDMI_AVDD_1V8, which is a bit
> > clearer.
> > In both versions those are connected to LDO3 and LDO1 respectively.
> > 
> > While the DeviceTree property is named 'avdd-0v9-supply' the
> > 
> > 'rockchip,dw-hdmi.yaml' binding document notes the following:
> >   A 0.9V supply that powers up the SoC internal circuitry. The actual
> >   pin name varies between the different SoCs and is usually
> >   HDMI_TX_AVDD_0V9 or sometimes HDMI_AVDD_1V0.
> > 
> > So the 'vdd_10' reference is not an error.
> > 
> > Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> 
> Already verified the above-quoted statement from the .yaml binding
> in the RK3328 and RK3399 datasheets.  Thus, hoping that you agree
> with the first line:
> 
> Helped-by: Dragan Simic <dsimic@manjaro.org>

While you helped me in several areas (understanding 'things') and I think 
proper attribution is very important, in this case it would be incorrect IMO.
I was helped by Heiko's (big) hint in their counter-proposal (which does 
deserve a Helped-by tag), from that point on, it was all my own work.

After Heiko's counter-proposal I had found the regulator I needed to 
reference. I then resolved the DVIDEO vs HDMI remark by looking at v2 and v3 
of the Schematic document. Which left 1 thing to resolve ...

On Thursday, 4 July 2024 12:34:18 CEST Diederik de Haas wrote:
> I do wonder about 0.9V vs 1.0V, but I'll bug someone else about that ;-)

I did mean you with that, but in the end I did resolve it myself.
I found the 'note' in the binding document and when I then found "min: 0.9; 
typical: 1.0; max: 1.1" in para 3.2 (page 36) of the RK3328 Datasheet, I felt 
I had resolved that issue sufficiently as well and was confident enough to sent 
the patch out (without sending you a RFC patch first).

> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Thanks :-)

> I'd also suggest that a brief comment is added to rk3328-rock64.dts,
> right above the "avdd-0v9-supply = <&vdd_10>;" line.  Perhaps something
> 
> like this:
> > +	/*
> > +	 * RK3328 requires 1.0 V on HDMI_AVDD_1V0, which is HDMI_AVDD_0V9
> > +	 * and requires 0.9 V on other Rockchip SoCs
> > +	 */

The binding doc mention this: "The actual pin name varies between the different 
SoCs and is *usually* HDMI_TX_AVDD_0V9" (emphasis mine)

So that comment would make stronger claims then is present in the binding 
document and also uses a different pin name. I also don't think it's useful to 
mention what other SoCs (or boards) use in the rk3328-rock64.dts.

While I fully agree that the apparent discrepancy should be documented, I 
choose to do that in the commit message and I don't see a value to repeat that 
in the dts file itself.
When I see something which looks 'odd', I'd then use `git blame` to find the 
commit which set that and then I'd see the commit message which explains it.

Cheers,
  Diederik

> > ---
> > 
> >  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > index 229fe9da9c2d..90fef766f3ae 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > @@ -154,6 +154,8 @@ &gmac2io {
> > 
> >  };
> >  
> >  &hdmi {
> > 
> > +	avdd-0v9-supply = <&vdd_10>;
> > +	avdd-1v8-supply = <&vcc_18>;
> > 
> >  	status = "okay";
> >  
> >  };


--nextPart1956357.2bgSXjE7Vb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZou3ewAKCRDXblvOeH7b
bu/3AP9TQM1mQsEoqJqSom8M1e3rf8ToWgUhxPpYuMl55Ln75wEArqjMHD7tyD7c
pxrGaVKXX2ipEbZAKEdU6/IEucgV+wQ=
=9qS7
-----END PGP SIGNATURE-----

--nextPart1956357.2bgSXjE7Vb--





--===============8757811308568649534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8757811308568649534==--




