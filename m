Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1FDBC5472E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 19:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+mIMy6GJgS/btU5zJEQB4bS7CXc6Td4PBwA9bzZsfNg=; b=iGySXUOZnthMGW/jIm4Pjs0oMp
	XbA5M2f3hdLxmMlzZIiinRNe9CRdC1/M4VbAclP5JJwIrnGZ5kW/BCrTwtV6E/QDb2VYKfXNLRfEm
	pGse2O5ZN00Cbtp3lR1dFB0d1iRxMnJSHVXYvI3TGY8IDZvM6SMlWCSvboLrOuMbZCPsSzAeqCoW9
	ClL1pXBf4DR6lpJaEN4OfJXm4aPFee25F37+P6BRu6vF/MQdbznlthka5vzXilkPYgHpysd3Z8M8y
	dzDUXcpPLR78HpA8UwRrWK90VcgLe62DlKdUPa5Q/W79zqRtWuFTgHLkA29szsTd+Sd2dDbA1NpGg
	Lp8d8IIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sifqZ-00000008Yq8-1dCo;
	Mon, 26 Aug 2024 19:57:51 +0000
Received: from out-171.mta0.migadu.com ([91.218.175.171])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sifpa-00000008Yga-3nIB
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 19:57:02 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1724702208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lSNB16YmTmGtSszFku9OEpzxCSlM3sSnGKMEEle5Jqc=;
	b=yMt3jDjCx/B0z6xC082cVw0HQY4Me/FagDvE50oGlZZXCMF5Jq6LNhf+2Qxm6GxDSPpGhy
	osQCkmyACysyLu+u650VEqjzcGGEzFWl7uD9cGiG2uKMLG+neaKZVbHPdqs4NgFfV9kN36
	F6RecMyRzzHf5tUuKzWLlXy6Zq2aaUrO4Nqz767HIHttvZPw1xfRvEvz1/LRgm5SKRKgW5
	e98Q7S61cpPqJ69fgCnm4wfemUXqHoZmqLDjo7EW4Gn5fu5LKSLz7FsFpc5L1IqLMoKSNw
	zVNkFcO6HzXLN8irNUWL94mMo90EcrTYmktZgOLYwgwJL0BRUy5LS22/0nNbVQ==
Date: Mon, 26 Aug 2024 21:56:34 +0200
Message-Id: <D3Q3WI8AHRJ1.3B8E985JAVVC2@cknow.org>
Cc: <airlied@gmail.com>, <alchark@gmail.com>, <andi.shyti@kernel.org>,
 <andyshrk@163.com>, <broonie@kernel.org>, <cl@rock-chips.com>,
 <conor+dt@kernel.org>, <daniel@ffwll.ch>, <devicetree@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <dsimic@manjaro.org>,
 <efectn@protonmail.com>, <finley.xiao@rock-chips.com>,
 <gregkh@linuxfoundation.org>, <heiko@sntech.de>, <honyuenkwun@gmail.com>,
 <jagan@edgeble.ai>, <jamie@jamieiles.com>, <jic23@kernel.org>,
 <jirislaby@kernel.org>, <jonas@kwiboo.se>, <jszhang@kernel.org>,
 <kernel@collabora.com>, <krzk+dt@kernel.org>, <lars@metafoo.de>,
 <lee@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-i2c@vger.kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-serial@vger.kernel.org>,
 <linux-spi@vger.kernel.org>, <linux-watchdog@vger.kernel.org>,
 <linux@roeck-us.net>, <maarten.lankhorst@linux.intel.com>,
 <macromorgan@hotmail.com>, <megi@xff.cz>, <michael.riesch@wolfvision.net>,
 <mripard@kernel.org>, <robh@kernel.org>, <tim@feathertop.org>,
 <tzimmermann@suse.de>, <ulf.hansson@linaro.org>, <wim@linux-watchdog.org>
Subject: Re: [PATCH v2 11/12] arm64: dts: rockchip: Add rk3576 SoC base DT
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Detlev Casanova" <detlev.casanova@collabora.com>, "Chukun Pan"
 <amadeus@jmu.edu.cn>
References: <23624422.6Emhk5qWAg@trenzalore>
 <20240825140824.200453-1-amadeus@jmu.edu.cn>
 <22403959.EfDdHjke4D@bootstrap>
In-Reply-To: <22403959.EfDdHjke4D@bootstrap>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_125651_152355_38AE7105 
X-CRM114-Status: GOOD (  16.53  )
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
Content-Type: multipart/mixed; boundary="===============5516544844804627891=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5516544844804627891==
Content-Type: multipart/signed;
 boundary=128cfb0fa1f91e2aae272ffecd950e1f386b558b6f3d91eca48fb6bdbb70;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--128cfb0fa1f91e2aae272ffecd950e1f386b558b6f3d91eca48fb6bdbb70
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Aug 26, 2024 at 8:28 PM CEST, Detlev Casanova wrote:
> On Sunday, 25 August 2024 10:08:24 EDT Chukun Pan wrote:
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> > > ...
> > > +		opp-1416000000 {
> > > +			opp-hz =3D /bits/ 64 <1416000000>;
> > > +			opp-microvolt =3D <725000 725000 950000>;
> > > +			opp-microvolt-L1 =3D <712500 712500 950000>;
> > > +			opp-microvolt-L2 =3D <700000 700000 950000>;
> > > +			opp-microvolt-L3 =3D <700000 700000 950000>;
> > > +			opp-microvolt-L4 =3D <700000 700000 950000>;
> > > +			opp-microvolt-L5 =3D <700000 700000 950000>;
> > > +			clock-latency-ns =3D <40000>;
> > > +		};
> > > ...
> >=20
> > I'm curious if these frequencies work properly. On the bsp kernel,
> > 'opp-microvolt-L<name>' is used by the PVTM driver, I don't know
> > if it works on the upstream kernel.
>
> Which seems to correspond to the set opp-hz value. As mentionned by Alexe=
y,=20
> the opp-microvolt-L.* values are not used by the driver.
>
> I also have not tested any cpufreq settings/driver on this board yet. I c=
an=20
> remove the opp-microvolt-L.* for now.

If you run this command on the upstream kernel:
``grep -r "opp-microvolt" arch/arm64/boot/dts/rockchip/``

you'll see it doesn't use the opp-microvolt-LN variants anywhere,
so this is indeed a downstream/BSP only thing.

--128cfb0fa1f91e2aae272ffecd950e1f386b558b6f3d91eca48fb6bdbb70
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZszd+QAKCRDXblvOeH7b
bsPMAP9CORw/HV6VNrTduOL78GjAIEpWxM/M9+0BOgYkBHnzpQEAjK8fuZpW3HrN
ri8LuinsuvlO+D0OMT9SEJJAE8prZQE=
=pQv4
-----END PGP SIGNATURE-----

--128cfb0fa1f91e2aae272ffecd950e1f386b558b6f3d91eca48fb6bdbb70--


--===============5516544844804627891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5516544844804627891==--

