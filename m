Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A116BC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Nov 2021 07:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/qJ/N9a4h0pOqW/8XUgAHIsp4zjBUChLHKK09jdpwjk=; b=c2YCsvb7rdmReWwbIWh34POn1V
	RZBojdeBUbwmQreR5teJJ92t8PDVoEJWlp1DSMtZvhpdeo6dOSjqQFyNxPINupZYHUhCBRB82yry6
	m8y4GHAM3LCN8vxS4r8pvZe5w8KRhBHKeUzkp+XF7wvblutUmjh3sifw+tQPHW9beuM1b0cA4WNh2
	tvQIRwkAK8JPimpbyfC9sb3VNj/hYE9GlNbLpMGnWsccNa3hjXVicVu4kgAfQz7aqXOO7rNzjBZPx
	CB1ATFA0bqyG8hTAlHab3+RS3rO1hzU94RN124rbiUYV21GVdr/BZjx57rfaCMXG/C51BBbvgudv3
	BCc97wjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp3vO-00F6fE-1z; Mon, 22 Nov 2021 07:39:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp3vB-00F6c2-F9; Mon, 22 Nov 2021 07:39:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D83C860F24;
 Mon, 22 Nov 2021 07:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637566764;
 bh=PrH4k+ijYl0EiNcq81wenm6pE8vlqEfaCe6ubZeLRF0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oRVijJip2Vhm/aHtlKryCZeGEM57Q8pBsyeqiUn7Xg0L469hLgF7lCmuIbgp2AI3a
 Qml9bV7OuRNozUwkxxQj89BTsDIPOpYeNwgXGvxdo3YSZmh9eVPFnElsvbXAqh9bX1
 rSdZcRXcWSubVIyGxeBmZN2tXgSlK3FS7ZPAmHOgjQzrceMinwq65zYaaNTrOjE2DK
 /5G0hV5t/apFbGXMdaVKwsFxeCtq5zxvcfbUcpd6CoT8zODaFGwmu6lw/YRTBadQ75
 YN2X486t09Le4TQKovHAA/k6aiQ3ktDvNPS/u4eSH4pF2ORyR9DG9gwSJFVsafMY0V
 hKnSQcE8vk6jA==
Date: Mon, 22 Nov 2021 08:39:20 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, John Keeping <john@metanate.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] i2c: rk3x: enable clock before getting rate
Message-ID: <YZtJKAbscSLpmJDt@ninjato>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-i2c@vger.kernel.org, John Keeping <john@metanate.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211004131539.1253195-1-john@metanate.com>
 <1738891.e3IbIVKTtj@diego>
MIME-Version: 1.0
In-Reply-To: <1738891.e3IbIVKTtj@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_233925_555576_713EDF8F 
X-CRM114-Status: GOOD (  13.31  )
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
Content-Type: multipart/mixed; boundary="===============6860703055163490071=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6860703055163490071==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FQua//j0Vcqc41KE"
Content-Disposition: inline


--FQua//j0Vcqc41KE
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 21, 2021 at 07:00:55PM +0100, Heiko St=C3=BCbner wrote:
> Am Montag, 4. Oktober 2021, 15:15:39 CET schrieb John Keeping:
> > clk_get_rate() is documented as requiring the clock to be enabled.
> > Ensure that the bus clock is enabled before calling clk_get_rate() in
> > rk3x_i2c_probe() to satisfy this requirement.
> >=20
> > Signed-off-by: John Keeping <john@metanate.com>
>=20
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>=20
> Do you maybe want to repost and include the actual i2c-maintainers
> in the recipient list?

No need. This is in patchwork and now has a Rev-by. Good enough.

Thanks for the review!


--FQua//j0Vcqc41KE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmGbSSUACgkQFA3kzBSg
KbZ5Tw//WaPiD1HnteXBSDEh/wDzH9FDw2N3w6krgcyZ+zjuoV4b+Uk15w6nxhVR
saKWWiaQEmzwfd8zBqf1bJ0f6AprPz+Uypkktmit8GX7YBKccw711sOSLL9pQlOq
A0nflsXcaC3A7CAMqHOxNljPdFZq4v/Pb8nLpdCGz59zY+lt/gyFYvk9HInpQPU6
25T0nDkkamJ0Hej+qjU3X2goR77Gus20Jjg1HiqrkGZziI5CYMqukj/5SB6Z2+SV
GZ/768y9y8aY5Hkmfi/skW81uqHlj9PtIAv7LBesgHG/3eQMsfQx7oWwfE3Zy1RX
lkZPx6Snq4M8BFCaRz/XujCHjY6bp0qBkUOZvAuR0TfW4Ad194IkGGf7F15saXfz
jTOa6HNr13PDrfHaGoTvWiSC2hMSeEjbjj3IPNkaMO5BmffMcDBjku36ooWIvdgM
Cy9YsiVi8EEVdu7j0r8pwMDG8RjMyngSKZRp8BS4XRNR+0mJ339tdu3+jaUyM0hp
8Z4CRWug1ezShDtC+5y0r2cY9qY0xvkGamzMCac7tQGBEK0fTLhXW3zWfWRKH/7o
kXNAFresYzks7qI3o2MbQhsocFjsiNLFhHXri98XpNZSX+KwjZMx70H4BQPViclx
lOZVf36M0LKkuKQHyJybRxiAyXKpyxN2v9MfaXKFI9jMlNUGsX4=
=mSTE
-----END PGP SIGNATURE-----

--FQua//j0Vcqc41KE--


--===============6860703055163490071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6860703055163490071==--

