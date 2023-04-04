Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51E19C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 12:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtdKaSDbJdar5pAAlV8TweT4fa537T7tzK8HkyBMCW8=; b=3bS0fzG24gFJ6p
	zR0CzrPlduESLu+c1cHTh8SpCNBmJw+/fEC/0weNAmRq9Je5tDSRoaZWBofFw582KPtQYKQoWqAcK
	WtMKAdYp7KkpH1wPZjgKstLuPgr1mFeUHw77DjD3GUGcpx+ycIcQmgHQXmofy0b6SWPZVhCnSMkKe
	nscF+cdfd8ygBqCQXUQK98PSsGbJE9bTLPDRS5Not2PS+wUHFi6C/xKo/wUWePI1sos/CvTeVCGql
	rwppn0/PZ/z9YjixAVP86PD+vW5mT0QHnHv7k7bs5IpmIR2j3M8ZfuAa8jxHH8oxfP6gIv/DhG8Gk
	RSKycLMOyHB7KA/Gd+xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfu9-001IUH-2C;
	Tue, 04 Apr 2023 12:36:53 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfu5-001ISY-0j;
	Tue, 04 Apr 2023 12:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1680611806; bh=5FjolS6OmiyNi3Dzbu2WcgmbPn9JvTWmxSdnDWKiKWQ=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=ekYLNbm4eIMpAS/2QpV2eXW1eLcINLpi0sYHFXrqmJpHL9JDeStckypjFhusNmFjO
	 dNaOyaUhPx5+HAEjMbueIreyWQd0chPLZtqnu2+pn0143cXUOJBiqKUo4HiG72zq1L
	 +VS4wNkcANEH1vpPfgM82qM9M91Qb1ThqqEn5oYI=
Date: Tue, 4 Apr 2023 14:36:46 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org,
	Javier Martinez Canillas <javierm@redhat.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Martijn Braam <martijn@brixit.nl>, Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
Message-ID: <20230404123646.5iiznbhnyoama5pp@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Javier Martinez Canillas <javierm@redhat.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Martijn Braam <martijn@brixit.nl>, Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3738011.44csPzL39Z@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_053649_716068_DBA9424A 
X-CRM114-Status: GOOD (  32.36  )
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

On Tue, Apr 04, 2023 at 09:51:11AM +0200, Heiko St=FCbner wrote:
> Hi,
> =

> Am Montag, 3. April 2023, 19:59:37 CEST schrieb Javier Martinez Canillas:
> > This baud rate is set for the device by mainline u-boot and is also what
> > is set in the Pinebook Pro Device Tree, which is a device similar to the
> > PinePhone Pro but with a different form factor.
> > =

> > Otherwise, the baud rate of the firmware and Linux don't match by defau=
lt
> > and a 'console=3DttyS2,1500000n8' kernel command line parameter is requ=
ired
> > to have proper output for both.
> =

> The interesting question is always if this will break someone else's setu=
p.
> I've never really understood the strange setting of 1.5MBps, but on the
> other hand it _is_ a reality on most boards.

Normal users of the phone probably run with UART console disabled, because
UART is muxed with audio jack output and to enable it they have to add
console=3DttyS2 to the kernel command line and flip a physical switch inside
the phone.

Fortunately, not sepcifying stdout-path baud rate in the options part
of the string, will make the serial driver probe for the baud rate from
the previous boot stage and make the user happy by keeping whatever was
already set in the bootloader.

  https://elixir.bootlin.com/linux/latest/source/drivers/tty/serial/8250/82=
50_port.c#L3496

So we can make the kernel just keep the baudrate setup from the previous
boot stage by:

	stdout-path =3D "serial2";

regards,
	o.

> Personally I don't care that much either way, but would like a comment
> from the other people working on that device - if possible.
> =

> I guess if we don't hear anything, I'll apply it nevertheless at some poi=
nt
> =

> =

> Heiko
> =

> =

> > Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> > ---
> > =

> > I tried to instead get rid of the baud rate altogether, as suggested by
> > Peter Robinson. AFAIU that should just pick whatever bad rate has been
> > using by the early console.
> > =

> > But neither using 'stdout-path =3D "serial2" nor 'stdout-path =3D &uart=
2'
> > worked for me.
> > =

> > In both cases I didn't have any output unless setting a baud rate using
> > the 'console=3D'param.
> > =

> >  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/ar=
ch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > index a0795a2b1cb1..6bbe65bd5bd4 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > @@ -26,7 +26,7 @@ aliases {
> >  	};
> >  =

> >  	chosen {
> > -		stdout-path =3D "serial2:115200n8";
> > +		stdout-path =3D "serial2:1500000n8";
> >  	};
> >  =

> >  	gpio-keys {
> > =

> > base-commit: 3adf89324a2b2a9dbc2c12d8895021e7e34e3346
> > =

> =

> =

> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
