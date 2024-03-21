Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5826C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 18:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eAOTCNcxGufF1IBdghphyf+nXTtPuGAadC+1zz03cI0=; b=thEcZ4ER9j8YnBQ30qGOjWsA55
	CUsjGcnGSK3mi4VkHytHv4uFzj8q1MZjxfLOHspYLVHKeg5s+LL6r19wKjLroPO/3813eUxyWnl18
	CpfgY3aAdfHrKIfdQSkuQtrXuR8Ve2q7KePwNHih7gWEpj7buCwTGH11QS4rFk73wCjpW1A6qLmoB
	+mb3rcOtAIwNy/nqnSf3Jf7ZS7fk0ACFOORa9xk9Tyx2Dvp1ujrpkc7uK9eXq897mIPMdZBGtLJyC
	eKG+wR14lNsYKrMIG0n9Kq2XMnVO8dasYzaYR6OZNJfgwN8t0cJgw/qRawcgKWd7eK3F8FfWtukjS
	TuSODDmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnNCa-00000004GfT-3t09;
	Thu, 21 Mar 2024 18:31:44 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnNCX-00000004GeF-2hWJ
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 18:31:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711045898;
	bh=TFuP46Qyx1pxwBYCaCTCPf0SHLozPhSzhmuSdqJriLc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nUEzEPV2AvPMYLXvoI91Dis+8/UnEo8SYxTG3Ba2msP5faCd0nwcIhWPLEujvwura
	 /BnkLq2OyrmbihMskDQEWasHfVoH6Eehv/waS0crQ3MdSxm4V8XjcmoLxNV81w7DK8
	 UUOdu0vCaS3H2D8aw+69XXBMjNJFvMB/hmEQq6scEULwnoapRtxvmJyDI0eywqeRTx
	 UwbAz7ybcam0gzj3GpQkQDqB8BTddMwbd+ey9tWnKJJVV9PI0KdwexHOB3DUN1ZDq7
	 pchbRo/CPWRv+o2nu7wu99c70fgjj6/rSQCA0MxCKUO57ZFHcYhQ3c8pQFMr3PTeGV
	 MYTG8bP5h+SYg==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 42AD337820EF;
	Thu, 21 Mar 2024 18:31:38 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id D518D1060709; Thu, 21 Mar 2024 19:31:37 +0100 (CET)
Date: Thu, 21 Mar 2024 19:31:37 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chad LeClair <leclair@gmail.com>
Cc: Ilya K <me@0upti.me>, 
	"andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>, 
	"huangtao@rock-chips.com" <huangtao@rock-chips.com>, "kernel@collabora.com" <kernel@collabora.com>, 
	"kever.yang@rock-chips.com" <kever.yang@rock-chips.com>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "mturquette@baylibre.com" <mturquette@baylibre.com>, 
	"sboyd@kernel.org" <sboyd@kernel.org>, "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
Message-ID: <vetdlmrlwx2bpwliof442zjiir7jy5irs737qu3v7qjhcvubn4@wslcvkis3tsf>
References: <1456131709882456@mail.yandex.ru>
 <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
 <7f4b3f38-50ee-480f-a341-ab577e19bb32@gmail.com>
 <2rsu6qa3pwbqic6b7ej6txa34jw4ztrnybzcfcfysue2mky37h@dyrdefbimzdn>
 <97f8b9e7-983c-435e-8fad-11e71be158b8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <97f8b9e7-983c-435e-8fad-11e71be158b8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_113142_014443_1BCEEC89 
X-CRM114-Status: GOOD (  28.05  )
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
Content-Type: multipart/mixed; boundary="===============5886911371815085042=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5886911371815085042==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ag6ifsp67kon5iv2"
Content-Disposition: inline


--ag6ifsp67kon5iv2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Chad and Ilya,

On Wed, Mar 20, 2024 at 10:50:48PM -0400, Chad LeClair wrote:
> Sebastian,
>=20
> On 3/20/24 12:36, Sebastian Reichel wrote:
>=20
> > I also worked on a cleaner solution for the issue you described and
> > integrated it in the patch adding proper gate clock support. So
> > please also test with HCLK_NVM not being marked as CRITICAL.
> >=20
> > [0] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linu=
x/-/commits/rk3588-test
> >=20
> > If everything is fine I will prepare a v9.
> >=20
> >> Hope this additional data point helps!
> >=20
> > Thanks for the detailed analysis.
> >=20
> > Greetings,
> >=20
> > -- Sebastian
>=20
>=20
> No luck unfortunately.  I still see the SFC dma timeouts.  It looks like
> aclk_nvm_root is still getting disabled.  It now has both an enable count=
 of 0
> and a prepare count of 0.
>
> Unlike your previous version, I _do_ see the driver bound to the device a=
nd
> the rpm_resume() call finds its way to pm_clk_resume().  So it looks like
> you resolved the original issue I was seeing.
>=20
> However, when I reach __pm_clk_enable() it looks like the clock entry (ce)
> is not in a good state:
>   (gdb) print *ce
>   $3 =3D {node =3D {next =3D 0xffff0001f0ce1930, prev =3D 0xffff0001f0ce1=
930}, con_id =3D
>   0xffff0001f0a214f0 "aclk_nvm_root", clk =3D 0xfffffffffffffffe, status =
=3D
>   PCE_STATUS_ERROR, enabled_when_prepared =3D false}
>=20
> The immediate problem at hand is that ce->status is PCE_STATUS_ERROR so t=
he=20
> switch statement will take the default case and return without doing anyt=
hing.=20
> Also the ce->clk pointer looks like some sort of error pointer value so I=
'm
> wondering if something went wrong in the setup you were doing in=20
> clk_gate_link_probe().
>=20
> Note: I ran to that same __pm_clk_enable() breakpoint for a number of of=
=20
> GATE_LINK clocks.  They all looked to be in that same bad state.  I put t=
he=20
> "aclk_nvm_root" one in the message here since that is the one that is mos=
t=20
> relevant to the discussion, but they all look to be broken in the same wa=
y.
>=20
> Hopefully this gives you a hint as to what is going on.

Ah, that was actually not setting up the clock links at all. Sorry
about that. I reworked everything again and moved all the GATE_LINK
code into the separate driver now. Please give it another try.

Greetings,

-- Sebastian

--ag6ifsp67kon5iv2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmX8fQIACgkQ2O7X88g7
+pp6tw//dOH9kkYRNrIBGF7Zee1CYz1GkqAz/32I2iMeU2zaZ1U1Qm/rfxn72PlS
T+t8xJd0geqkzzfvE44haC1waSSQTswoxGsiXJB8l++0V+5QjLa2kikLMGaoiU+8
n0If2j7KUJXssU8qRXvuOV2rTNTssuDxzz16fYe1BV3sbfCsgcI9Lq9ijFeUMcQF
AWeqIQSKrqT0ru3NFIaT0RahnfiD7F52KnRjKAXyb9qyGJvBvK7zTzeeKwF77rK0
fGDMeTX8lUrcP6fnPwttYv/Wt+jkn+1DXQaTfDQQMmzctZ3CkJrRQ6HtHp95G7z+
9f2lwPDgOElffxKL1LG97mvFVyuwlIA6AFWjJ+ELDkErwqfQjb94RRDPfl5XTh/r
HArKOUkZBQPA5Hzdxd8mdfHa1KLfypq5vJFI6v+6FV0hvOX6DpCe60DCuv7FOKdj
YYxjnvaGmhd/XUpAPUZDrdoiG/9EaxIhW5j2nC61StQmGqiDeDcBxih1NTdDJsLo
IlW37tp8UP42pYAzo4EW8MCsqnAIaLylPpG9upxAP7UEeHpe2TJod83fzJ9G1E2+
zOIno7W4JP13iwsQRZttlcLKxxZQgGQS/7sPhGrX/d1Cmn/VQoQzhPLKMUS+KE77
k4+T+p82TOEPUqdsQ7rxOKJdM2OcSpfc7KpC4azB/xt91nmozLE=
=ubiI
-----END PGP SIGNATURE-----

--ag6ifsp67kon5iv2--


--===============5886911371815085042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5886911371815085042==--

