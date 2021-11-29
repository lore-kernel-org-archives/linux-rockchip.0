Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 186BAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Nov 2021 09:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c+2LbcfTK0cot88hc4QPBa3RSK3hhvu75biM63MuEM0=; b=iYy8T0I6r4c4/YioKXpEKXD4sv
	t+bQoyNU7WaNMEITlkctpZnXL5SY7IuNodt4HpZWOU4bBq711UBRbrAjLkTteF5pvfu8kWbu5zyEw
	//uOnoNJVR/mj3beyN0TrS4yWSZ0AghRjXvWVEdqwmZUeSlnSvV43bijN02OcCdCAf7n2+sFqVBT7
	F4pgtOvaF/k7ekC6ydiUihEGg2lBYC/lUSF1oFV2IT1CaXhrQT41ZTT/AGlo9wuHPM4CRguFwPQQp
	M6Ur95AniJ1ocWcwfEvzlNF/xHH47H32LE2bHth77bxYF+r8nbMDc+EL/quw6OlYfoBwQuENVkzJm
	V9uQFldQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrd93-000GOU-DV; Mon, 29 Nov 2021 09:40:21 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrd8q-000GMK-GP; Mon, 29 Nov 2021 09:40:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 268B2B80E4D;
 Mon, 29 Nov 2021 09:40:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 292D3C004E1;
 Mon, 29 Nov 2021 09:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638178805;
 bh=ZhrZMdR4hI+luzbo+GzPORQaaCnJyhm/SoWTXwO5h1A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BMHoA94rKV5psCRpZ21WtLB5m8KQbFk8E3zmj5YSx8u0eorGyWG0wJTTRW+nFEZXT
 5h9O4h5ifkeg/FL4Nfy/hov+Vcis8MW4/48F8rPCSE5jBCvm7wlxTd+064RUhZaE0F
 q+ePf5i9fErYg4Bj8H9J2fbJC0xJ46LGyBPTReicugSGbGCnNrkji0Ve0qJMWvixTs
 ZraIgsoWWf2xJq5MqnqxiwGP6/u41+4CX41yiwM7g3W623DnNWaNCxMdOvNhRr3eFW
 JuI6844RWf4HvSivxn+PA7184vAbVJL/l8NYyaL7iEwIekIP5Q7n8b/ktmVuIN3+V4
 K314tUybE8rZQ==
Date: Mon, 29 Nov 2021 10:40:02 +0100
From: Wolfram Sang <wsa@kernel.org>
To: John Keeping <john@metanate.com>
Cc: linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] i2c: rk3x: enable clock before getting rate
Message-ID: <YaSf8uDjGCBHcHyZ@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 John Keeping <john@metanate.com>, linux-i2c@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211004131539.1253195-1-john@metanate.com>
MIME-Version: 1.0
In-Reply-To: <20211004131539.1253195-1-john@metanate.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_014008_726215_3BFAF042 
X-CRM114-Status: GOOD (  13.69  )
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
Content-Type: multipart/mixed; boundary="===============0782469241328268372=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0782469241328268372==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m5TcwiphfSOva+uT"
Content-Disposition: inline


--m5TcwiphfSOva+uT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 04, 2021 at 02:15:39PM +0100, John Keeping wrote:
> clk_get_rate() is documented as requiring the clock to be enabled.
> Ensure that the bus clock is enabled before calling clk_get_rate() in
> rk3x_i2c_probe() to satisfy this requirement.
>=20
> Signed-off-by: John Keeping <john@metanate.com>

Doesn't look like an urgent bugfix, so applied to for-next, thanks! Let
me know if it should go to for-current instead.


--m5TcwiphfSOva+uT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmGkn/IACgkQFA3kzBSg
KbZCAA//edcBmoIXEz3MVD3TsEFx5qCOw0SxbZj6aq1kjReXgv81FZWzRs2JzzNp
h+pO0Yxm26BZ681UJtqr8NzvlUSDmZLiI//jv4xRdkXmOSHY4OCZuK1LdIYFU63Z
sKLg09YMWpXe9HxPO0ziowG+LGDQDfjS56OJxJEpbjYnSDcWPKV8Jzcw1x5LEg76
h62m58mZHSX61FL72ay3pHhUuLbBiRaQfP7w4xSibZEsHSrYAiOLI/WvqGkEmHvL
LGrpLNCemr+5/aQ5+wFVOuide2uKFOlBJWNcNUH5MEFtlMFf+gRaTb4BUNdbXWI9
hkHqysMMDmyy5mGwDDgm3lil2KV0aAk7bNX1gO5ZZhYU0WCO6lj9e13hJZgdWu4j
s6L0xEQQ/1wYhNg0qTE+R+8wXQSCOquLFznqnJ2T7+9kpZDQGnM5E6IUUZk1kJYl
CfDbboUoRYs6wwhZ9jiIXFn2EN5KqBGwC+u8UkOIwPZAH5P96RgmEp2mdPQHH5aL
LufL2AvruEMRP0e/uFA6aRCQVmX6iUEqDGcrtIcEWLTnJUjMvkaKvY+bhpvgt/eu
VK0c3nQPYNm5RuLyTRQ7/QeNQ7XjWnDuZARnOuws1EzRf76Zs9Sc08aY1H4MVzpW
62hFBkeidXaf1cTeAiRPj8c4+twr9Nmg2oaG6YwehlF6pjzmXUI=
=zvfT
-----END PGP SIGNATURE-----

--m5TcwiphfSOva+uT--


--===============0782469241328268372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0782469241328268372==--

