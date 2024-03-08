Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E744C5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 13:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3o2Y2yJ5wNXiINaZmMmx3RCopHVzHCK39QYddNn979U=; b=2KSWJKEYyz7nYovlCwYXaAmOzN
	Z/x0yaO2oymmRc7t/zmTkyDMhMGRor7zwpY3M0ewLo2JTiJHIKH249SoZmZnqiRBdBBG/uCR+kRQd
	V13ghHzILwzFHhDpuyLT4r7ZuY4J4enE+OxFJx4tCbvCOyiNvDnRuG/E98Jd4CMAk1bq1BJJkXJeF
	p1GOu3eb6Yttnv/XrstMGSPCeam7zvpUzcIIppN8uSiVVL3biICxqIG0U/xhc9Ibnnll83NwVfdlb
	2SC2fNtA3D4H2Tg5ripTMCcib2TASHpsXrVLs4lZoqlmoXOo3Ald1sT3RIr8lKy9wHTIQ9LPHfWGu
	lMDSVhbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riaGL-00000009Iby-44fK;
	Fri, 08 Mar 2024 13:27:49 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riaGJ-00000009Ib9-1nRb
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Mar 2024 13:27:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709904465;
	bh=FTRAWBTwymVL386fALtUwj3KhMPwR7HCTYICtzgjwg0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=POVw4MKh2Jb3iCnepDbPEqn8uBO0+dBbZxwqHhLc0IyM9NYI39rs4y0hVslFaIrE0
	 3o3Z9BJq2Pjw9l+/lQlCFkHrNvaANb327r6zwlhY+delZ3p9Cp24ArsSPxewnmAWYS
	 xI3NrZHB8DNzvq+viZrnXcZi1hyyEuiwaOINvSvtG5kBYLaP/jort+mzMWXkNYIXye
	 4ZGqYFZjE/yw936mYXJ1/P9hljmMU3hXIGl9LhJIk9K+TiKS5trxW6l5YqhCZUsMOb
	 nsBpMpMbsPWDe7XvzChFarjTtK01qK24f4cqgiCZJhpUPBG88xUyF0m8P2gYJhLS59
	 9e2KEujlpCwSQ==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1F5AB37810F1;
	Fri,  8 Mar 2024 13:27:45 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id B363E1060B10; Fri,  8 Mar 2024 14:27:44 +0100 (CET)
Date: Fri, 8 Mar 2024 14:27:44 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ilya K <me@0upti.me>
Cc: "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, 
	"heiko@sntech.de" <heiko@sntech.de>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, 
	"kernel@collabora.com" <kernel@collabora.com>, "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "mturquette@baylibre.com" <mturquette@baylibre.com>, 
	"sboyd@kernel.org" <sboyd@kernel.org>, "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
Message-ID: <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
References: <1456131709882456@mail.yandex.ru>
MIME-Version: 1.0
In-Reply-To: <1456131709882456@mail.yandex.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_052747_623227_05CADC03 
X-CRM114-Status: GOOD (  15.72  )
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
Content-Type: multipart/mixed; boundary="===============2748222129135939088=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2748222129135939088==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="73sgraorjqr7grra"
Content-Disposition: inline


--73sgraorjqr7grra
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[removed DT people from CC, since this is all about clocks now]

Hello Ilya,

On Fri, Mar 08, 2024 at 10:23:31AM +0300, Ilya K wrote:
> This change seems to make my Orange Pi 5 (RK3588S) lock up on boot
> :( Any suggestions on how to debug this? It doesn't really log
> much...

I suppose with this change you explicitly mean the last patch, which
has not yet been applied? That patch effectively allows some clocks
to be disabled, that have previously been marked as critical (and
thus always-on).

If that results in a boot lockup, I expect you have a peripheral
driver, that does not enable a required clock (e.g. because of a
missing clock reference).

I assume you have a bunch of other patches applied on top of
upstream and not just this one? In that case it might be sensible to
first apply this patch, do a test boot (it hopefully boots). Then
step-by-step re-add the other patches and check which one breaks
when being combined with this patch.

P.S.: I plan to send a v9 of this patch once 6.9-rc1 has been tagged
and will split it, so that the removal of CLK_IS_CRITICAL is done in
a separate patch.

Greetings,

-- Sebastian

--73sgraorjqr7grra
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmXrEkYACgkQ2O7X88g7
+poj8BAAkgTQTuX2gUF/opfF38TkGqXLmP9Lash+wOIGQaBo67HrPCb5ykmPiCAE
SAY3oxobY4X/H9y3hMxCuOEK7hbh3hRF14LRcB9fc8Bc7cBtvmVnxAHAe5W/ZvMG
f2IXHJah83GcWtt2lY1q2YYa+GBARW4dQ8lmdY6UJm7oRiMhrMr55XDe1Zl0VNjh
53XwercpOLlA6CslzS/SYhmcSMw72Wad/KHjCgB5o6r+Gyk26FVfD/mcWxaFxa/u
PPRYoLbueUxaPgh96RjO/FgXE8eWEI38fnykFSgBLJx+9qIHZZYPWLIyUSJrgZoN
trZPcnz6JbWwQDRNE4Cpe2rFLJbGjDez20lJqQeCPJB5yW0l9JqR5x1+AkseWbMY
rSJCNUL4/X6b4o9midFGwbr1ycE9pP/Rr2OpBftBmI3GwCWokrEVuCRSc83q8nkY
8JGQcE9LHyQYA2P8gGQjFvdKB0eyF+m2xy9OgrYEGHDOttvA6U+vpDnXVZaN/Dqc
nThjn0QulcTYnjyFxO6PynrVy5REVoPQLn5HrS8wvgXmKd7Cj8aoCOcuL9CNeCAc
hOFWLdSzqDEKGwjTBJdgOtq6PorHwAajV+ZRPD7stYT5XGkNC6CAP0USgovLODXb
4Ao2LokVxOcDEqIgFoGy14ye3HkPlTmC4h2eXprb2KdaXqPZxOE=
=ekYF
-----END PGP SIGNATURE-----

--73sgraorjqr7grra--


--===============2748222129135939088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2748222129135939088==--

