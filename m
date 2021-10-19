Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547B3C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 12:29:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 270F761057
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 12:29:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 270F761057
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w/GRMvTWDMX6pmxGDcvp5FH5U4kcTsNHQL9Wd4hL/sk=; b=R1TbREk2Es7Co8lvxm262Z4+QT
	kSI+PkSRUO71QdqBb5haeEqiVypH2ayLSflWiA2ti0MRrydjYrPN6s05cJMCKvrB/TvtqQ2vuA/Jv
	gSS7stO/VaALBhl77VYkoueDBbMSKoDJWmue0fkpt8rNtesTjPXCjVjemd9O2d26sjsjzqKdQXh9n
	Yt7B5OZvWywyv/Ik/irYZkVzIlW34ami8CkDg0TtmYr77yM3B/8gB6SB6TYfURPXlnXio1+7zUEQt
	OKdiOYcwyKc1bWQAvms1/r4XuxbOV9m9lE0wvBHpzqrz5QeB0pH2Gs9RtsLeyI2td9cHG67IoUR34
	0cURQ6dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcoFG-001C78-WE; Tue, 19 Oct 2021 12:29:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mco4v-0017rS-LW; Tue, 19 Oct 2021 12:18:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 54C9260F25;
 Tue, 19 Oct 2021 12:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634645928;
 bh=wCIcwvoJd4spptMcCYgIR/4TmnYg3S+BO2UT5K4fWVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jHSmWihieDaIN0Y1fAWtFmHjpDnSCIBT8+OEcb73Knw3qKdyO944Pr6qFFqYoTjZP
 yMlJG/hvF46TMZ7mR6SYVS5uF6twMhjS59qUXUeAisw8BN87u70aE1WsloxTSgQ0NL
 Ll/T/PH8mZ3ksXpZ5ILuxdBtuEZCSioCQW9iFBOk/OZYJV6arAhL2vp+rJqcQwgn3Z
 Q1M9/e2y0AF9D5osSbB5HwM5/SNQNg9idJFxBdcPFbqCfarbvu5RVFvI+M+vDBAhBP
 mgxeFy5cvWIZbg1vNZLPH/3CEfLBo/kotmQcHc8Ff9WDGWklH9I3E6dHmga27s5UAu
 cRUZJHH14Rn+g==
Date: Tue, 19 Oct 2021 13:18:45 +0100
From: Mark Brown <broonie@kernel.org>
To: sugar zhang <sugar.zhang@rock-chips.com>
Cc: John Keeping <john@metanate.com>, alsa-devel@alsa-project.org,
 Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH] ASoC: rockchip: =?utf-8?Q?use_?=
 =?utf-8?B?Z2VuZXJpYyBETUEgZW5naW5lIGNvbmZpZ3VyYXRpb27jgJDor7fms6jmhI8=?=
 =?utf-8?B?77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytzdWdhci56aGFu?=
 =?utf-8?B?Zz1yb2NrLWNoaXBzLmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
Message-ID: <YW63pduAGW01PUoj@sirena.org.uk>
References: <20211018114844.1746351-1-john@metanate.com>
 <YW1svMVSgBJygfpV@sirena.org.uk>
 <a5eebd60-da6f-cc56-b1fe-221dc827e097@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <a5eebd60-da6f-cc56-b1fe-221dc827e097@rock-chips.com>
X-Cookie: I program, therefore I am.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_051849_762123_CAAE3B6F 
X-CRM114-Status: GOOD (  11.19  )
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
Content-Type: multipart/mixed; boundary="===============0245467237383166077=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0245467237383166077==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ezt81brnuxSWZqCl"
Content-Disposition: inline


--Ezt81brnuxSWZqCl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 19, 2021 at 10:11:27AM +0800, sugar zhang wrote:
> Hi Mark, John,
>=20
> Actually, I have submit patch[1] to do the same thing a few weeks ago, and
> explain the original purpose.
>=20
> [1] https://x-lore.kernel.org/linux-rockchip/1632792957-80428-1-git-send-=
email-sugar.zhang@rock-chips.com/

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

Please don't top post, reply in line with needed context.  This allows
readers to readily follow the flow of conversation and understand what
you are talking about and also helps ensure that everything in the
discussion is being addressed.

--Ezt81brnuxSWZqCl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFut6QACgkQJNaLcl1U
h9DB9gf/RZVy+523LzSVJYBk9szCLUA5EDcqjGgHOk+IVjtaKqN33yr/3aY9haqa
GhliGqlmI4kGCJIOQkLQdzuPbR06KSjhRDO1F++YxSs4oteFXmoIHBU3JW839lVW
9tkKxnRt14oMuvg2OB4mTrY8WaXNZB00fM7xI42I8YvO1vmUvxqxu4iSdVcfbrsW
Eoj+XlvwnNyesulfY6u28ZHq4m6nM+DeJ/2A68ilyYo/2EzIoqsp2aG31Q/thm8u
fFOyaLekuQc7WndqoWjnA0u0fwzChlrbJLteFSELnfWvYHA3Ca0ASAly7GvVoIbl
n6DJt1BkDmUvqn3B3Hv9kT+2s7UK2g==
=8z1n
-----END PGP SIGNATURE-----

--Ezt81brnuxSWZqCl--


--===============0245467237383166077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0245467237383166077==--

