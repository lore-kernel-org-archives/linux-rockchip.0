Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4401DCE8D61
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c4Rkz8dpVI2GEYgIx+XPDvScTePHSRoaf0jPiiiaewQ=; b=olW13BMj5+eFDVP0TgkrN/qbvA
	1YC7aDgH3hbVLd24Dkj2zVS5kTTC7F+6ntpEm9KQnlbjvS5B7Mro7/mntm1kAGpu3pjVk8gMOQ3a/
	3bhhVynjtookWRm5QZkPiqgDsuGM6Jn2oV0Wfnu2eYilq7AXqn6Nx0vQ5pYazNXxPqgXqZUcuspAI
	U0QOz+gsXUwkYswbw/KQw3j1+7a1v/apc9Eux4/bajs/q3FEMpcgLLpsFtax+dsGAzochocWh8Uz/
	KntVxWeoOsnIogZ3C4dZl279GKGylrEiKoiFf5Oiy6vZX6PnNHdoQV/Lbdo0JlUbSkg8Eh0x84MEo
	8fyJH2sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srD7d-00000009s23-3oPT;
	Thu, 19 Sep 2024 09:06:45 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srD7a-00000009s16-1otj
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Sep 2024 09:06:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1726736744; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=WjG2BOdH75Al6lv/8HNX+J4MZwf54noq6XT02LOFdOST4yvSHm7s95wvHBehc1ibo3irRiz3EWoRQEfwJhJ7u9CeVpnhvL7MTS5K2mYQfVTSH3SXdAG35+ZRgae8HPAaioQEvJy2l3iE527Jc2Trwe+kFkT66DgUIjRkZaSYpO0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1726736744; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=WIyPR9I7SW6Am8W2Xo7ZAkLcKedMPAaJoNrnX9TxwDI=; 
	b=IX+AgYHmn9h0/JFMcQSb76kpnvvprbj+30Z/H7NWsE6UCw8CilmwCNIXi+zYyi5O0EwTEHF7dWTtTgeutdXSbgyO0GTcO5G+N5JbeljfaBuCKRLmu4urFbgkZFA7CX1S9zkT7mbMBtGO1RF80yyiAQysRRuT46Z63hmBrJwYLUo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1726736744;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=WIyPR9I7SW6Am8W2Xo7ZAkLcKedMPAaJoNrnX9TxwDI=;
	b=aP0e28+9MF1DAD9w61R9zdYhgHkXUjJgjquFdB9epwQpmoan9kk060se3CanuevN
	gsKRjfRHKDNUukrlUk6TAVHjDo8/aLBau64DRYxp1VAeWihDccx0PvsOsXTxDubD0Ky
	tYRiunm+tSWSE5RV/g6BCsqF+yTAIof8Vyj8OOew=
Received: by mx.zohomail.com with SMTPS id 1726736742399817.1293742983563;
	Thu, 19 Sep 2024 02:05:42 -0700 (PDT)
Received: by mercury (Postfix, from userid 1000)
	id 3C03B106031C; Thu, 19 Sep 2024 11:05:35 +0200 (CEST)
Date: Thu, 19 Sep 2024 11:05:35 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?utf-8?B?QWRyacOhbiBNYXJ0w61uZXo=?= Larumbe <adrian.larumbe@collabora.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v1 0/6] Fix RK3588 GPU domain
Message-ID: <vh5gsouseahs6ddauzevcdtcjutl35dcyoc5cv4pvn56lyyilv@rekmpklpbbyh>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
 <CAPDyKFoMyGUagDdjdaBJXL_OEgewQjCeJcBBK+2PFk=vd+kjRg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPDyKFoMyGUagDdjdaBJXL_OEgewQjCeJcBBK+2PFk=vd+kjRg@mail.gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/223.982.64
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_020642_581170_AECE78C4 
X-CRM114-Status: GOOD (  30.05  )
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
Content-Type: multipart/mixed; boundary="===============5208635406497992587=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5208635406497992587==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ey5cyrmazej6g4l"
Content-Disposition: inline


--2ey5cyrmazej6g4l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Sep 13, 2024 at 01:59:10PM GMT, Ulf Hansson wrote:
> On Tue, 10 Sept 2024 at 20:05, Sebastian Reichel
> <sebastian.reichel@collabora.com> wrote:
> > I got a report, that the Linux kernel crashes on Rock 5B when the panth=
or
> > driver is loaded late after booting. The crash starts with the following
> > shortened error print:
> >
> > rockchip-pm-domain fd8d8000.power-management:power-controller: failed t=
o set domain 'gpu', val=3D0
> > rockchip-pm-domain fd8d8000.power-management:power-controller: failed t=
o get ack on domain 'gpu', val=3D0xa9fff
> > SError Interrupt on CPU4, code 0x00000000be000411 -- SError
> >
> > This series first does some cleanups in the Rockchip power domain
> > driver and changes the driver, so that it no longer tries to continue
> > when it fails to enable a domain. This gets rid of the SError interrupt
> > and long backtraces. But the kernel still hangs when it fails to enable
> > a power domain. I have not done further analysis to check if that can
> > be avoided.
> >
> > Last but not least this provides a fix for the GPU power domain failing
> > to get enabled - after some testing from my side it seems to require the
> > GPU voltage supply to be enabled.
> >
> > I'm not really happy about the hack to get a regulator for a sub-node
> > in the 5th patch, which I took over from the Mediatek driver. But to
> > get things going and open a discussion around it I thought it would be
> > best to send a first version as soon as possible.
>=20
> That creates a circular dependency from the fw_devlink point of view.

Yes.

> I assume that isn't a problem and fw_devlink takes care of this, so
> the GPU power domain still can probe?

This has been tested on Radxa Rock 5B and RK3588 EVB1. It properly
probes the GPU power domain and fixes late probing of the GPU driver :)

> Other than this, I think this looks okay to me.

I will send a V2 with the minor things pointed out.

Greetings,

-- Sebastian

--2ey5cyrmazej6g4l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmbr6VsACgkQ2O7X88g7
+prM1A//Tz6tsfCtFAfD+esskzA7MDO9OW+icEYWp1LK1xBvIu+Sx9kB+ggKKHar
q09BTcQD+NSweJfBeabKpIScdmw4YRpMkbpqkGKQkQOYuy2h5udtt6g8nUrvbfIG
BtCo3N1VELMevzo1bW2uYafy2HLqH9rBTUS9kRRxXTfUyYKSwRnmmxrgrhiZJjGx
nrBPWVbj5HouXNoa2X4yuFs3XNG9MP3FkuFBFNZnKb6hcFCv6IApWvrJ71ESUivD
JJjDDKcy3yoVzRxb/AvA49WpCefKi/L2ilOOlZQswtLbLjxJ0ED+3nsHCxDA4RDU
6imPttrxcuEn+bKb8URAYGuxgK110w3TvaBY260JRaPS8EfiI8b439riBllY8aHv
ydpVBNdpvVaT/qG2RvLntsYlk+vx0M+nGRQCFJ4N+JudicQWmHuExncL8qBe8XiL
or6gVTsgmcZ9t3EiC8K/9d+S+icu0utnCDwyEV00byRbxKTrSBeZ2y+FUeEZLUSP
GmpniTJtQ2QkF3afhJZaN/57qZchTg4HmedHlFmqHEBuoh/U1LGG/SDcjiWnKmvp
DL6WYLIshIEAb1edyPmO/y/PdSUolodr2oeJhD9tFul8wC+eAirXa70AlOsS+EHH
wHVJ9BXeOfwEornBUsr41u7LDkCnAcX43WBKVobwDIWltnHXW3I=
=mFbG
-----END PGP SIGNATURE-----

--2ey5cyrmazej6g4l--


--===============5208635406497992587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5208635406497992587==--

