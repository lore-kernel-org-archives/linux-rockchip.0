Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A0B8C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 15:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eKyxHbc5cLIINV1oLIuokfVlaiDiTgMQD9w+XqlNd/w=; b=oFilefDguLAFKM7hk56gfCsQQS
	S6+lHm5QEf7cJSNxoNlo9iLY4mTbwRpmGmUwH1Yi1LiSKpmsZ5XKcYuimHFBUlUw3Hszvh2dk3taC
	e/D/QqpDi9HFVZ6Z8X3nigmgUs9u5Xc3GiEZowb0EYmwu1E6AR/insSjtK7MGkXJNUgjXymqW++Za
	Wx1pvVWBsq+tp62+uQz3uKj5qgirP40LP19Calj8+xgx4SiOmST/kpz0Okpc78tpaOJbTnybGA2+2
	1Kzo/E1I7ey85RxtCeYWRcx8DXQoX08XQDM4ma1nvd5JO/kWc6dVEVs7gE1bN/A4vr1xFxLBR6QiF
	azjJL/jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohutf-001MtD-5p; Mon, 10 Oct 2022 15:40:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohutT-001Mqt-Ul; Mon, 10 Oct 2022 15:40:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8454C60F99;
	Mon, 10 Oct 2022 15:40:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A231C433C1;
	Mon, 10 Oct 2022 15:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665416436;
	bh=u81HyZi81ObKBDqZ7yaeKaqvbUgBi3fhElyhdvpLRPQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oGl8MHulktg/+c1soT4EDA076cciFI4SFZy51EIBm8hjq+AJvc46iRDz7RhK9U1QZ
	 OB8zXPvPqaqWvJ8SDV6fZha+jNV+9D/XUUSWDSIg89FDPDOOr5RmGM2FumwkYhDjeN
	 Q8F9kxI7oyTtbMz/vtymfw3zplHyFi+cs9fD7GFo6oui9xT2xidhhNX9YbiFyeeekd
	 dh6udjILxylzzzUtLki7FOu6GluIv1RwslaVpwJZviZVyuOti9hlBY6VLS2FCa3d7m
	 vmH8ZJZaZ2p3hhPhnGx19qBuz4TW5CHZv+7x4jP2+hbcJOo2azGrRnHOVxSNLPEH5q
	 sTP4MD/Imw4sw==
Date: Mon, 10 Oct 2022 16:40:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Cc: Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	kernelci-results@groups.io, bot@kernelci.org, gtucker@collabora.com,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Naresh Kamboju <naresh.kamboju@linaro.org>,
	Linux Kernel Functional Testing <lkft@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: next/master bisection: baseline.login on rk3328-rock64
Message-ID: <Y0Q87tddypPtzZB3@sirena.org.uk>
References: <634095b3.a70a0220.ad568.42a8@mx.google.com>
 <Y0QNSx+ZgqKSvPOC@sirena.org.uk>
 <20221010145010.ibodo56smlokfouu@houat>
MIME-Version: 1.0
In-Reply-To: <20221010145010.ibodo56smlokfouu@houat>
X-Cookie: This sentence no verb.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_084040_052674_EE679E94 
X-CRM114-Status: GOOD (  19.42  )
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
Content-Type: multipart/mixed; boundary="===============0549009171291212938=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0549009171291212938==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3kVr78dl4QxJzwCb"
Content-Disposition: inline


--3kVr78dl4QxJzwCb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 10, 2022 at 04:50:10PM +0200, Maxime Ripard wrote:
> On Mon, Oct 10, 2022 at 01:17:15PM +0100, Mark Brown wrote:
> > On Fri, Oct 07, 2022 at 02:10:11PM -0700, KernelCI bot wrote:

> > The KernelCI bisection bot found a boot problem on today's -next=20
> > on rk3328-rock64 with a defconfig plus debug fragments triggered by
> > cb1b1dd96241f ("clk: Set req_rate on reparenting").  The log doesn't

> Thanks for the report

> It might be related to https://lore.kernel.org/linux-clk/0acc7217-762c-7c=
0d-45a0-55c384824ce4@samsung.com/

> I've sent a series that might address this issue:

> https://lore.kernel.org/linux-clk/20221010-rpi-clk-fixes-again-v1-0-d87ba=
82ac404@cerno.tech/

> Let me know if it fixes things for you

Unfortunately I can't schedule tests directly, the board is in the
Baylibre lab so I've CCed Corentan and Kevin who might be able to help.
You should be able to see results via KernelCI for any tree that's
included and runs the debug builds (including -next).

--3kVr78dl4QxJzwCb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmNEPO4ACgkQJNaLcl1U
h9BOeQf5ATCyLzcvuAj6Ca7y5rmsO40P/SQUBKysLkjHYyRS0ZGs34pACiSVMu4F
2mxZMh3v0mi/ffxLRu9ElwU0k4vjK1ZILNmMRz7+a7ypIprU7B0difvH/s+LEcM+
O/lxuNk0ABodoOk355QqFOfiXv/f9UtXbKFHxgtF7DZWkBNaHS2uVPHNI2/QYizj
/jhuohwgLF47FEM+QoXpUdCKQtixRnIeOlzIDUzRjx/4gXbUmMgx2nWs2rESz0fx
34OERFcf5nkrYFjKtELUfDnvtRqSXjg/7Lpb6OJgsqfYiRMamUVI7z2ilkZHbTVC
G4y13Pi+Pu2eEf80oZfsv1xK+PoRvg==
=vkd8
-----END PGP SIGNATURE-----

--3kVr78dl4QxJzwCb--


--===============0549009171291212938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0549009171291212938==--

