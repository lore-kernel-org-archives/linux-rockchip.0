Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EE3AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 17:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tgwt5ieK8IZEZG0s4sxC1/oNg73o920F+14mV6i34rw=; b=ZnFQXGUkmSestHiBlBg71p5uiB
	ZSVEiCpN51SEjFoSRS1oUrYBuus5RVn0wTqUQtxNj+ZBdbwqdbCMRnbofz6ATss2WskE0cBawGpWQ
	NJaE3AcxccmmyyQZo+hr791rRUwCDH6VkLaVxXEjojqKb/MteAKeIaIqI4wcJO5sUFGQe7W88wbMG
	ELmPPaiJ47vm7kHX1ecmRgkamGky15Gf9Uiu3oW2s0KwBS56JusWsvzDo1tHinfPUD/Ure6HUX3cZ
	rl4Bxka5o3zV2jNzLQWc4DvsZPEiOMmbEuFkyvLkQpfIgo6iN9fb9IiUo1wUW0NxQyRRzvpSHAZtP
	bcknCvGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbQNc-00Fzi5-4T; Mon, 04 Apr 2022 17:20:40 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbQNY-00FzgR-BN
 for linux-rockchip@lists.infradead.org; Mon, 04 Apr 2022 17:20:37 +0000
Received: by mail-pg1-x536.google.com with SMTP id c2so8862009pga.10
 for <linux-rockchip@lists.infradead.org>; Mon, 04 Apr 2022 10:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hJ8bbjWFJKjLu66jwXccFuALP/4fGo0kGnkSd+Oc2dM=;
 b=gT7JmKKPtC5bb7aW02zGlFlbOq2qYMtLpTeaNDwP8oJxKlpEq6HHzVJJb8Ql9VeSrg
 nBTknQJpidDl7HSvy3jFJTstwMh/K1G+H+5IAAxNrYKncecQcR7mhYsBGKmLQcBPzvw0
 xA+UkJlbohJaWxUMAVilVLqv8mmygao6QeCKEC+GjqOu+jda5o/ROaTRns5aFHUUmbe1
 AvWl8OogjmIdpAtND4C72NXmUjS2qYm1JxO0fZrS728772lAZk9OSbTko/hRgRKVeUKf
 LjXmMG8QvfKVkN9/UWbOALY80lxTKFUlu55b8N5fqD5JA6dCTS58g+MYUeRER+FkQJ1l
 9/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hJ8bbjWFJKjLu66jwXccFuALP/4fGo0kGnkSd+Oc2dM=;
 b=ZO4dJr18b9ryG+mDjZMS3QDrPQM6gpryNwif0jZy8Xnn44JF8pFS5oDKJhm5S9EFZL
 WkUNLnBhgVRrdqHyP1mLcZ0K0njJPT7ZDxxXjjwTU7f+noilJszlhtGhGomWnWE/T7R4
 wUJ1OeB/CEVFgxTVzzR//l++aPXzr6fF2lPNZS+Ph/6eA7R1E4sX5wz2kM8AiIuhclXw
 /qASvqLgaz1dbxOEkUErn1JPkyCDti8R+ZdMGl21wr/qUqeXgeUfnxy8XaiSSinDE0XP
 6iNUWK2RkbRyMgdvj1UDJC15xPCnsR0IWji8zb1fn6Y3heF9hMMXn0i6f0n9iwFd1IoL
 bjKA==
X-Gm-Message-State: AOAM5333fsRl4ztkfdAOc6vaf3aj+JFQUhSiCTRSdZ2N0CCwFX2Dq12Q
 xbSo7kRiFXtnENz/Qgb3ShwD0Q==
X-Google-Smtp-Source: ABdhPJy0T1LDIICCzyUvPFRaeCnlxx6MSrx04MSkZMmC5V1lnbZfDroyBvKkf2nhxU1uxIFeQ8tbuA==
X-Received: by 2002:a63:451b:0:b0:380:b9f8:13f4 with SMTP id
 s27-20020a63451b000000b00380b9f813f4mr753130pga.367.1649092831283; 
 Mon, 04 Apr 2022 10:20:31 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:737a:249f:720b:a0a2])
 by smtp.gmail.com with ESMTPSA id
 j8-20020a17090a060800b001c7936791d1sm74019pjj.7.2022.04.04.10.20.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Apr 2022 10:20:30 -0700 (PDT)
Date: Mon, 4 Apr 2022 10:20:23 -0700
From: Benson Leung <bleung@google.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 patchwork-bot+chrome-platform@kernel.org, lee.jones@linaro.org,
 robh+dt@kernel.org, bleung@chromium.org, groeck@chromium.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, dianders@chromium.org,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, pmalani@chromium.org
Subject: Re: [PATCH 0/4] mfd/pwm: dt-bindings: google,cros-ec: include
 generic pwm schema
Message-ID: <Ykso11bQLqJS1+jU@google.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <164909246180.14329.3397709419938843373.git-patchwork-notify@kernel.org>
 <2259298.ElGaqSPkdT@diego>
MIME-Version: 1.0
In-Reply-To: <2259298.ElGaqSPkdT@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_102036_437357_D2E1A708 
X-CRM114-Status: GOOD (  21.84  )
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
Content-Type: multipart/mixed; boundary="===============3836549229823835034=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3836549229823835034==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="I++PcjqoBe2chj7C"
Content-Disposition: inline


--I++PcjqoBe2chj7C
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Heiko,

On Mon, Apr 04, 2022 at 07:16:03PM +0200, Heiko St=FCbner wrote:
> Am Montag, 4. April 2022, 19:14:21 CEST schrieb patchwork-bot+chrome-plat=
form@kernel.org:
> > Hello:
> >=20
> > This series was applied to chrome-platform/linux.git (for-next)
> > by Heiko Stuebner <heiko@sntech.de>:
>=20
> does someone know what goes on here?
>=20
> I did apply only patch4 back in feburary and I definitly don't have any
> access to a chrome-platform tree ;-)
>=20

Sorry for the extra noise. It looks like patchwork-bot did this once I upda=
ted
chrome-platform's for-next branch to the newly created v5.18-rc1, which
contains this series now.

I'll look into quieting this in the future.

Benson

>=20
> Heiko
>=20
> > On Mon, 14 Feb 2022 09:19:12 +0100 you wrote:
> > > Hi,
> > >=20
> > > DTS patches are independent. Not tested, but I really hope no downstr=
eam kernel
> > > depends on pwm node naming... If it does, please change it to compati=
ble. :)
> > >=20
> > > Best regards,
> > > Krzysztof
> > >=20
> > > [...]
> >=20
> > Here is the summary with links:
> >   - [1/4] dt-bindings: pwm: google,cros-ec: include generic pwm schema
> >     https://git.kernel.org/chrome-platform/c/6b94ee669e8a
> >   - [2/4] arm64: dts: mt8183: align Google CROS EC PWM node name with d=
tschema
> >     (no matching commit)
> >   - [3/4] arm64: dts: qcom: align Google CROS EC PWM node name with dts=
chema
> >     https://git.kernel.org/chrome-platform/c/1e49defb8636
> >   - [4/4] arm64: dts: rk3399: align Google CROS EC PWM node name with d=
tschema
> >     https://git.kernel.org/chrome-platform/c/a0024f55eb5b
> >=20
> > You are awesome, thank you!
> >=20
>=20
>=20
>=20
>=20

--=20
Benson Leung
Staff Software Engineer
Chrome OS Kernel
Google Inc.
bleung@google.com
Chromium OS Project
bleung@chromium.org

--I++PcjqoBe2chj7C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCYkso1wAKCRBzbaomhzOw
wqOHAPoDrc7kOcLWzZJ2QaFbD5e9sHTDrFveD2rboH94WtDKdAEAwCFF72Jc2NWP
VqsIhq74lcj3+0HrIDsVeRyNJ3A5twM=
=TGfb
-----END PGP SIGNATURE-----

--I++PcjqoBe2chj7C--


--===============3836549229823835034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3836549229823835034==--

