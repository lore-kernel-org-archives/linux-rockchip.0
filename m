Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2503C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 12:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZhMQ5p+WNak15qQSdioF+XFx/wdO0WkJczFvgrPeI4=; b=LOm+5sop4MT9i0
	qgVtGeoKQFxhlg96V/gB1MG7JKFKvoTEeiTi0udQvfGnDfHvgiqCPtJuHHSr6B3f+zAk8dnitNtyY
	Bdj6s/ck1pHScnrZPN3C3MNw+39IDMA1chzkvEJ1HjqyPYVGKs4Ftq/53NTmBgS2TyoitUmr3SPH1
	aTZA2WeY2UR7eQOKDIwhxTuqQ/oIf9uIGfSiPZaUOHBrtKDscEf5sxwMNCCKjM5PreYAZY43H8oHN
	e9U9Nw0MqsDAg8oH9vfW1svuKXag07W7wU6lHN6s72WGsUPLBvo1moD3NSvs8O1vwe6LNFwxpTXTg
	oU6ACMfiU/hTtyhg8isg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfN6-001BvK-2Z;
	Tue, 04 Apr 2023 12:02:44 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfN1-001Bt8-2p;
	Tue, 04 Apr 2023 12:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1680609751; bh=uVAMkMqMikWXIauVjMve6Gn4H0bTde07iBs06xjAvnU=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=0V074kW0++4v6ZNG2SqAZq7Z8PMfa8C6VJ8LSKbJWbRmQQNxQYsyRmrn3pqvdlWMR
	 v1U+SBhm+EfQt+sK9kwqvL6ocBi+02SSFW4IVDeQ3GYJtfY3YbYpFVcYA/H50DgSKq
	 jCLK/DFpFXaSuYmoN+lexTBMB8Y8wKNXSrIfFP10=
Date: Tue, 4 Apr 2023 14:02:31 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: Martijn Braam <martijn@brixit.nl>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
Message-ID: <20230404120231.2enpesad2lhde6sb@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Martijn Braam <martijn@brixit.nl>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <52d83a29-0f16-cd4c-9810-7c6bd497fe85@brixit.nl>
 <87ttxvdgb7.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ttxvdgb7.fsf@minerva.mail-host-address-is-not-set>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_050240_693305_01D0DF7E 
X-CRM114-Status: GOOD (  22.34  )
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

Hello,

On Tue, Apr 04, 2023 at 01:42:36PM +0200, Javier Martinez Canillas wrote:
> Martijn Braam <martijn@brixit.nl> writes:
> =

> > On 4/4/23 09:51, Heiko St=FCbner wrote:
> >> Hi,
> >>
> >> Am Montag, 3. April 2023, 19:59:37 CEST schrieb Javier Martinez Canill=
as:
> >>> This baud rate is set for the device by mainline u-boot and is also w=
hat
> >>> is set in the Pinebook Pro Device Tree, which is a device similar to =
the
> >>> PinePhone Pro but with a different form factor.
> >>>
> >>> Otherwise, the baud rate of the firmware and Linux don't match by def=
ault
> >>> and a 'console=3DttyS2,1500000n8' kernel command line parameter is re=
quired
> >>> to have proper output for both.
> >> The interesting question is always if this will break someone else's s=
etup.
> >> I've never really understood the strange setting of 1.5MBps, but on the
> >> other hand it _is_ a reality on most boards.
> >
> > It breaks my device test setup at least. The extra speed isn't worth th=
e =

> > hassle
> =

> More than the extra speed is to have consistency accross all the rockchip
> devices in upstream and also sync with mainline u-boot.
> =

> > of having a few devices at weird baudrates and the bootloader already
> > starts outputting debug logs at 115200 baud.
> >
> =

> And mine starts outputting at 1.5MBps :) I guess that there isn't a one
> size fits all, so the question is whether the bikeshed color is what was
> painted in all other rockchip boards or the one that Tow-Boot has chosen.

For what it's worth, levinboot also defaults to 1.5 Mbaud.

  https://gitlab.com/DeltaGem/levinboot/-/blob/release/rk3399/entry.S#L65
  https://gitlab.com/DeltaGem/levinboot/-/blob/release/configure.py#L67

And it's very nice anything above >115200 is not broken by bad HW design,
like on original Pinephone, so this higher speed actually works. ;)

kind regards,
	o.

> -- =

> Best regards,
> =

> Javier Martinez Canillas
> Core Platforms
> Red Hat
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
