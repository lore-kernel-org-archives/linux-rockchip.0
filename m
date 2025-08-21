Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 492FFCA0EFA
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 23:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y1FFMn2z2GaTLpXv+YtgFxbV6jAgvUZfPX7RSKRsmD8=; b=qOp0aiLXku6bD9oWfC2gVwICHJ
	TNE3yCtbDhv1Jp+4HJeiahDbMSqkHrCh5rzmm2CMtjIgE29PNJ9ritENaJ/IeA+0MmOOXFENGvISe
	iwubYdKoeubScFE+0y+/qSeSs8yuiK1ba+GlvILhIBXWniRvDHwbaBvmrAjIGgrMWawnZjaOACHXq
	3svxgy7ouHjcKopbTefw+zYa1Ye7ModfpLMEk5UEjtI8QDRpCgeQ+LmTDrLNTirmLodNMZOgh14Kf
	KVwJRidJ0dej9fiKtpizvanth7Vu1Jj53EZJVe8DadGGnhTrQrS2TREs/Nvg0xPHPhPsF3IEJ3gnU
	yYZ9/VmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upEdy-00000000vpK-0me8;
	Thu, 21 Aug 2025 23:24:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9hb-000000008pD-0beF;
	Thu, 21 Aug 2025 18:07:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 72C90434D4;
	Thu, 21 Aug 2025 18:07:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55C22C4CEEB;
	Thu, 21 Aug 2025 18:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755799674;
	bh=cqV32R8BauF0D9RcGuPTvw5bHyckwkMGjqU7llEphYg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SoZuMqbtNodZBdlB7WdbDgWySAkmHnvNA4/90X/Eojf8vkCVPMu46gsuc/pSMYzqc
	 O3Muhgm5HPqVV+9TW0jNkSlqdfyk86ROBJOUHV/MeKY5hlvyo++ylCpXZmha89oo9C
	 TR0hSVJSRTupBpsI6qgdt4DewUjOof+bPu5Y0/jr+KSYYmvud64kznOaF5F0yBXNbZ
	 hJfB2AQJ9X0VG+3N7u3AZHC1WwqD5GGaXMpxjalBbFccke4uRA0vx3+iueKGR8BmLs
	 HjF2a8p8GpQsPlZS0qk4mF8+E6B9F52WjhNLJ5gTaZ+r6syy3RFsFVUEDWlyrLojb/
	 8l/twFM5g1ppw==
Date: Thu, 21 Aug 2025 19:07:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Hsun Lai <i@chainsx.cn>
Subject: Re: [PATCH v1 1/2] dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
Message-ID: <20250821-java-tapping-a828a2775e29@spud>
References: <20250821110942.172150-1-i@chainsx.cn>
 <20250821110942.172150-2-i@chainsx.cn>
MIME-Version: 1.0
In-Reply-To: <20250821110942.172150-2-i@chainsx.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_110755_206215_F94D69E4 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, heiko@sntech.de, andrew@lunn.ch, quentin.schulz@cherry.de, jonas@kwiboo.se, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, sfr@canb.auug.org.au, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7161031007653963145=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7161031007653963145==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BT4qYPKxiViwhuZI"
Content-Disposition: inline


--BT4qYPKxiViwhuZI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 21, 2025 at 07:09:41PM +0800, Hsun Lai wrote:
> This documents 100ASK DShanPi A1 which is a SBC based on RK3576 SoC.
>=20
> Link: https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/
>=20
> Signed-off-by: Hsun Lai <i@chainsx.cn>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--BT4qYPKxiViwhuZI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaKdgdAAKCRB4tDGHoIJi
0qd9AQCqoS6NzL53hBCjSPNRb1IEtMcHrfzfvhXri8oJ6S4m7gEAtCM6t9wk+Rjr
r9QVywY0EGRtNRxOMkSUulbpp+KCSgk=
=qr+H
-----END PGP SIGNATURE-----

--BT4qYPKxiViwhuZI--


--===============7161031007653963145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7161031007653963145==--

