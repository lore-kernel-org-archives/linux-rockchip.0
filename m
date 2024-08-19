Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 081F4C5320E
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 13:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QGAPErk9GNgvPfio/Xn/z4Wkbd/ASN631tOR5ggChmI=; b=IXeplYAI3wE4brJV/TxapR7s5G
	HgfS+Prd1px08Aj2G6j09bfOy/A71OvxE3wgy4xwpj10thvXqEMyII1lGwP5MUpkMorQPOjqTEHnt
	u14kuYycrm5rD6rrplXDDvvnileNgXzZVrzZ3WeAh2S3iCtf09EwkL8html21PJwcJMoIDWxpeIa3
	bp4FoDiK1HKr5c6Z4W8xZ1A0Tnxg3xGZIqKCvptdVU1H9yrg5SRK6ouPMOPb/sYxuh2JuFZvDqeJd
	8KU/DPdLAX9zS8AoPK+SmjqPYD71kxAOSEoh3Q+F1yXu9T/GD22QuCkuS+dLZiMFmz/LAD3nNHrd0
	LPb2CMKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg2Wt-00000001dOA-1nw0;
	Mon, 19 Aug 2024 13:34:39 +0000
Received: from out-171.mta1.migadu.com ([95.215.58.171])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg2Vi-00000001czG-2hKs
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Aug 2024 13:33:29 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1724074402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mUcz58dl6COkNRjXiS+XwoZIpjirix2gMX2fsFCVwqc=;
	b=ljkVb+lTjdnqwLJrKao3uSZiJ5UsRjbEoSgjD8lP0CE2ae3ASMI3BPgcebBDyt7VyscRJS
	ycmtkDoUGtdj8BblhOwd3lny3sKz1P/wK9MZ8c9S7nDEuBGCG63Zh8F30JMULw4QNSEIx/
	6bU2giLnAuNEy5Z1orKiH1iquaECTqX5kLv3KB2BjfT92JBHXofm3w4U57/oeq95UAslL3
	I5NkSlxcg9/xouNExxDHcqzerrtAVEzjhnC9h0jfgHQi3c2DWB9GRu8agOgphE3y7lhtly
	oBeE3ybeLJqZwhFlowQHbKVKOkeAP7BeNrgPuSsxOjfnrkpJtOmHNjR5s/SirA==
Date: Mon, 19 Aug 2024 15:33:12 +0200
Message-Id: <D3JXD607339U.2F1IAKUSM59UP@cknow.org>
Cc: "linux-arm-kernel" <linux-arm-kernel@lists.infradead.org>, "Linux Kernel
 Mailing List" <linux-kernel@vger.kernel.org>, "Mark Brown"
 <broonie@kernel.org>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Vicente Bergas" <vicencb@gmail.com>, "Huang-Huang Bao" <i@eh5.me>,
 "Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 <linux-spi@vger.kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Linus
 Walleij" <linus.walleij@linaro.org>, "Sasha Levin" <sashal@kernel.org>
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com> <CAAMcf8DZu4B2AN+=8xP3wuknqUtD-e-v+Ej31=08ibPfyL+dGw@mail.gmail.com> <CAAMcf8A59MqhZEswC5VmKZyThG7oG=ztEYd_yfuOwvGTvKzMow@mail.gmail.com> <CAAMcf8Ctr9rOZ2oOzk48haakJOO2bzyNURb2oZTRxJ3tnafXUA@mail.gmail.com>
In-Reply-To: <CAAMcf8Ctr9rOZ2oOzk48haakJOO2bzyNURb2oZTRxJ3tnafXUA@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_063327_320136_837C56C5 
X-CRM114-Status: GOOD (  16.88  )
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
Content-Type: multipart/mixed; boundary="===============1264068653783034485=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1264068653783034485==
Content-Type: multipart/signed;
 boundary=7d622726182a96d2bf0672ce2e9576632d95c43943cc86cf0e8f4ee1b5f3;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--7d622726182a96d2bf0672ce2e9576632d95c43943cc86cf0e8f4ee1b5f3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Aug 19, 2024 at 3:14 PM CEST, Vicente Bergas wrote:
> On Mon, Aug 19, 2024 at 2:49 PM Vicente Bergas <vicencb@gmail.com> wrote:
> > On Mon, Aug 19, 2024 at 4:12 AM Vicente Bergas <vicencb@gmail.com> wrote:
> > > > i am a user of the CONFIG_SPI_SPIDEV device.
> > > > It stopped working between 6.8 and 6.10.5.
> > > > The SPI bus itself reports no errors to userspace, but no devices
> > > > appear connected to the bus.
> > > > The platform used is RK3328.
> > > > The only spi-related message in dmesg is:
> > > > rockchip-spi ff190000.spi: Runtime PM usage count underflow!

FWIW: I've seen this issue as well.

> > Added:
> > Huang-Huang Bao <i@eh5.me>
> > Linus Walleij <linus.walleij@linaro.org>
> > Sasha Levin <sashal@kernel.org>
> >
> > The first offending commit is:
> > 29d8101fb9442544077e68e27839a1979f85633d pinctrl: rockchip: fix pinmux
> > bits for RK3328 GPIO2-B pins
> >
> > I've also tested 6.10.6 with it reverted (and
> > 456447ff1fe3c28e2fd7b57a79650f62245c6428 and
> > 7127c68c76f120367b9a5053f524df0b603d4a48 as dependencies) and SPI
> > works fine.
>
> Sorry for the noise:
> reverting only 29d8101fb9442544077e68e27839a1979f85633d makes it work on 6.10.6.
> Ignore what i said about 456447ff1fe3c28e2fd7b57a79650f62245c6428 and
> 7127c68c76f120367b9a5053f524df0b603d4a48.

Please try if unreverting that commit and adding the following:
https://lore.kernel.org/linux-rockchip/20240709105428.1176375-1-i@eh5.me/

fixes the issue as well.

--7d622726182a96d2bf0672ce2e9576632d95c43943cc86cf0e8f4ee1b5f3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZsNJmwAKCRDXblvOeH7b
bhyQAP92MFS0tEffPQaPvXYIqpxKxcuOQKgtci09ZuJAZ8cHcAD8CHTgUDgpnM8L
KrOfRzWCigYY3k5CT8KNO6/JOHeTUQ0=
=ku1k
-----END PGP SIGNATURE-----

--7d622726182a96d2bf0672ce2e9576632d95c43943cc86cf0e8f4ee1b5f3--


--===============1264068653783034485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1264068653783034485==--

