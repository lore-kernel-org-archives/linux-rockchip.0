Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24617C52D6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 14:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sl9rOe+FWDSOnPp/GCJbiRRuN/JK6uHpTf8OaN9LIq4=; b=k/9PMFCxaEFg0sWb2PNs9Tnyn/
	iLHHQlaIAxLPozCUNlPiMtXz6g8Y8yZYngN53VMeZwZra9l3O23DG5gVgJDBRafb6U8punI4+KW/U
	s0OV0RmNPHbg4gvmqS7h0OnxKICYFqdnTDAgjIB1UFaBJP/frfU33DapqAR5b7Wiid9xsMh6ml8gU
	RoAEzh+CxTZxdJNsyGIphAQBrtPnforELH2P+iw5rR20S0Mp6JyH3J8pnlCdpXwHVfRhiS+MqtRMg
	hrnvcl+vq3jNx1E/stC2jkCCaim637wOj82oBSIsbQoC3cXxkHbEX+8hKr/k/7am9daD+aWexxo2n
	1wh1Cx3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg3kE-00000001pYY-3Fnd;
	Mon, 19 Aug 2024 14:52:30 +0000
Received: from out-188.mta1.migadu.com ([2001:41d0:203:375::bc])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg3jM-00000001pLh-1X5Z
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Aug 2024 14:51:39 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1724079092;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=anC9TSfJ9atzD1KEU7o2hISDrSWZyCtUZv3frTZMXYA=;
	b=kE/tizXzU0003+6EVOibXXnk/fULdkZnyJkdCAsb0BEllVv27hciztIMtxAm8rCn+68e31
	nAfAJo7rRN5E2o/HS0s4WUWhV6FN5mRxRrXOPC/lIbkTqIgMaHjsB2s0ch+z0r/eOEbe1d
	jRuP2L2tVqHAMphAvt1uMVOv6RRnBpoTiVk8TyZrdI9efwa9GWUEt7sPcyWQmZ/fCri1Iy
	4fRTDTiPUHxUbDlI4KRX38Ca2RuMqvEuQYP3nH0P78Ea/01OEG2irjw11Ybq27XgMpZ8MT
	Tr3o/48WZeV14Bz+4QpokbDhBT7NMa9u6SBj1UP1IivRbmBF2RfETbCjzTRqdw==
Date: Mon, 19 Aug 2024 16:51:21 +0200
Message-Id: <D3JZ0ZQ0BF6A.1J4UHWMDS3JWJ@cknow.org>
Cc: "Huang-Huang Bao" <i@eh5.me>, "Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, <linux-spi@vger.kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Linus Walleij" <linus.walleij@linaro.org>,
 "Sasha Levin" <sashal@kernel.org>, "linux-arm-kernel"
 <linux-arm-kernel@lists.infradead.org>, "Linux Kernel Mailing List"
 <linux-kernel@vger.kernel.org>, "Mark Brown" <broonie@kernel.org>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Vicente Bergas" <vicencb@gmail.com>
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com> <CAAMcf8DZu4B2AN+=8xP3wuknqUtD-e-v+Ej31=08ibPfyL+dGw@mail.gmail.com> <CAAMcf8A59MqhZEswC5VmKZyThG7oG=ztEYd_yfuOwvGTvKzMow@mail.gmail.com> <CAAMcf8Ctr9rOZ2oOzk48haakJOO2bzyNURb2oZTRxJ3tnafXUA@mail.gmail.com> <D3JXD607339U.2F1IAKUSM59UP@cknow.org> <CAAMcf8BAiva1GB_1AoVH-Nq8sp81KdtVe=rUMVjV2ZxCiM4NAg@mail.gmail.com>
In-Reply-To: <CAAMcf8BAiva1GB_1AoVH-Nq8sp81KdtVe=rUMVjV2ZxCiM4NAg@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_075136_642444_AF89E2D0 
X-CRM114-Status: GOOD (  17.22  )
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
Content-Type: multipart/mixed; boundary="===============3964478635869659852=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3964478635869659852==
Content-Type: multipart/signed;
 boundary=96437a84d4599b1620474bb25d7caa8cc60be0169b1ebc5c8503e60b90be;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--96437a84d4599b1620474bb25d7caa8cc60be0169b1ebc5c8503e60b90be
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Aug 19, 2024 at 4:37 PM CEST, Vicente Bergas wrote:
> On Mon, Aug 19, 2024 at 3:33 PM Diederik de Haas <didi.debian@cknow.org> wrote:
> > On Mon Aug 19, 2024 at 3:14 PM CEST, Vicente Bergas wrote:
> > > On Mon, Aug 19, 2024 at 2:49 PM Vicente Bergas <vicencb@gmail.com> wrote:
> > > > Added:
> > > > Huang-Huang Bao <i@eh5.me>
> > > > Linus Walleij <linus.walleij@linaro.org>
> > > > Sasha Levin <sashal@kernel.org>
> > > >
> > > > The first offending commit is:
> > > > 29d8101fb9442544077e68e27839a1979f85633d pinctrl: rockchip: fix pinmux
> > > > bits for RK3328 GPIO2-B pins
> > > >
> > > > I've also tested 6.10.6 with it reverted (and
> > > > 456447ff1fe3c28e2fd7b57a79650f62245c6428 and
> > > > 7127c68c76f120367b9a5053f524df0b603d4a48 as dependencies) and SPI
> > > > works fine.
> > >
> > > Sorry for the noise:
> > > reverting only 29d8101fb9442544077e68e27839a1979f85633d makes it work on 6.10.6.
> > > Ignore what i said about 456447ff1fe3c28e2fd7b57a79650f62245c6428 and
> > > 7127c68c76f120367b9a5053f524df0b603d4a48.
> >
> > Please try if unreverting that commit and adding the following:
> > https://lore.kernel.org/linux-rockchip/20240709105428.1176375-1-i@eh5.me/
> >
> > fixes the issue as well.
>
> I confirm that 6.10.6 without any reverts plus
> 20240709105428.1176375-1-i@eh5.me also fixes the issue.

It would be great if that patch got accepted to fix the breakage,
including on a number of stable kernel versions.

--96437a84d4599b1620474bb25d7caa8cc60be0169b1ebc5c8503e60b90be
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZsNb7QAKCRDXblvOeH7b
bpLRAP43HO7c7+6ex8WcGcQs/3phh9JuAbc0tAVVI5tGO48g0QEAmeA/twUmoTUL
4Ieigmn/2Uv+eIsvOtIabv01dKjoyAA=
=P5nK
-----END PGP SIGNATURE-----

--96437a84d4599b1620474bb25d7caa8cc60be0169b1ebc5c8503e60b90be--


--===============3964478635869659852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3964478635869659852==--

