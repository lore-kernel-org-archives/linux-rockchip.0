Return-Path: <SRS0=XIeQ=IO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 118C7C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 19:39:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A43A364E07
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 19:39:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A43A364E07
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ucw.cz
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BLFGZE3+peQDrzc0bVynRcdNwqYQ6lkT/SKwogrh0d8=; b=P1P6P6v6Eat/RKot9DxEFhfr+
	I5UKqzqVeBnARPwLhKX5FgBIqloOL5ucnvbYapvr9tgi4BJoII/svMNf1f2sg2Lm+KAepQdlRPDc0
	HIovTerpXy6hScB1o8+eCQp0BdN5uWV/Yy9mA0swK41sZzM62/ODY5ZwBw6dd2Zi4Vswm5IxWnygQ
	PM0D49eoZ/QDWDWBfKMrBTvcRaYRPDk/Is71J8/jCzZUbt9ooIB04p5rszfSX3kLP5f6fqv+giYOr
	aSeJwkNRIMSW+jmYu9EMFTvuzwvF6GMt2x2+7QkrUah68X2iSmKTWKFNrtqgtsXfjsa36EW57ZBdM
	Khvq7Mshg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMFWq-001jgk-AT; Tue, 16 Mar 2021 19:38:56 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMFWd-001jfN-7W; Tue, 16 Mar 2021 19:38:45 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id C00841C0B93; Tue, 16 Mar 2021 20:38:39 +0100 (CET)
Date: Tue, 16 Mar 2021 20:38:39 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Marty Jones <mj8263788@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
Message-ID: <20210316193839.GA28184@duo.ucw.cz>
References: <CAMuHMdWYrS=YT7F7erM-e6xhDME4judx-T7rdFGi7CpW1_iqkg@mail.gmail.com>
 <20210316150033.15987-1-cnsztl@gmail.com>
 <CAMuHMdU+agaOdf4hQhn5JQDHCbuWm3dETJu01baxfDAY=nikow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdU+agaOdf4hQhn5JQDHCbuWm3dETJu01baxfDAY=nikow@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_193843_532507_DDDD9412 
X-CRM114-Status: GOOD (  19.01  )
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
Content-Type: multipart/mixed; boundary="===============8764837507291031364=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8764837507291031364==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue 2021-03-16 16:34:50, Geert Uytterhoeven wrote:
> Hi Tianling,
>=20
> CC Jacek, Pavel
>=20
> On Tue, Mar 16, 2021 at 4:00 PM Tianling Shen <cnsztl@gmail.com> wrote:
> > On 2021-03-16 02:23 Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > Personally, I'm not so fond of the <foo>-%u node names, and prefer
> > > <foo>-<function>.  With the former, it's way too easy to have a silent
> > > override in your .dts(i) stack.
> > > Cfr. commit 45f5d5a9e34d3fe4 ("arm64: dts: renesas: r8a77995: draak:
> > > Fix backlight regulator name")
> >
> > How about using `lan-led`, `sys-led` and `wan-led` here?
>=20
> Documentation/devicetree/bindings/leds/leds-gpio.yaml says "led-%u"
> is the preferred form, but that anything containing "led" as a substring
> is accepted.  So I'd go for "led-lan" etc.
>=20
> BTW, you can validate your DTB against the leds-gpio DT bindings
> by running:
>=20
>     make dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/leds/leds-gpio.yaml
>=20
> Background info for CCed parties:
>
https://lore.kernel.org/linux-arm-kernel/20210316150033.15987-1-cnsztl@gmai=
l.com/

I don't care much either way, lan-0 is okay as is lan-led.

but...

+			label =3D "nanopi-r4s:green:lan";
+			label =3D "nanopi-r4s:red:sys";
+			label =3D "nanopi-r4s:green:wan";


It would be good to have common labels, that means LED_FUNCTION_LAN,
LED_FUNCTION_WAN, and figuring out something better than "sys",
possibly LED_FUNCTION_FAULT?

Thanks,
								Pavel

--=20
http://www.livejournal.com/~pavelmachek

--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCYFEJPwAKCRAw5/Bqldv6
8oJXAKCPwj7rucsgGyf7XZK9sfEne3jGTQCgqNLsTvXmKfFgv9fd007fRTCH1mM=
=HMgP
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--


--===============8764837507291031364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8764837507291031364==--

