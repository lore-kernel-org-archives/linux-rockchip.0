Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16896D1F9CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 13:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cWdjtbfG5zJggA4UdFKGeYkWkl8DgZzu1M4xT2XzHnQ=; b=vRjHzg6kGq5lRpzle2K1kFk4K2
	bOyCsTrKdxdOrZy+pKyqvA4sFDejMl7khglIRbLkh1QnN8HzuOrhKIAq7om75r/xm+hglCAWv9v8M
	IxPWi5QOR+RuBDBpZKxaLPBH8GbNRfiIUm+J8Gj/WkZFXfIsHYNsax3TgVbvXtG3xG8wvM70BRjK/
	Boq8xHwkUXrMLSyw54/kbw8Ef8Wy0oWSrX7alkQwjs9IHnRti9ZI89Qtybbc1oEzG3mNdlup+LGxS
	3p5BYDaI6npL/N4qip65P36sinPVNR7zAI8lbs7Zydqta5hXCxNjI3xfmkXQHlMXB/SdUfJuQcEpb
	Z3zxnRkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t14LR-0000000Bxu8-0VgV;
	Wed, 16 Oct 2024 13:45:45 +0000
Received: from out-187.mta0.migadu.com ([91.218.175.187])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t13Fe-0000000BkzR-0cvb
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 12:35:44 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729082138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nTaj8AXpVBWrhNSy1JcE6EXS2SykZrY/1WbUR5yvdpw=;
	b=x/b20hD0hEvfaBAi+hWs8pUvE/sfpOeqDCYrktpK1t2O/NFekaKGmAlokw5DPD4fUtDNnv
	Fx0dArSexcydEYCoBeTElusQR4SnX1iKaqgCHb0M3yNVY+3/sAN8T536FPY7Aih3b56T4r
	myylYYmiNBVVZ3pnsBqBYtbNdVF+JwiOhVEXTqZHhfmuUnNYIyOPVsKEnRTx7zL15tWAQN
	hK6beHJbnnLPJEV//altlD6g9l7cX9KPnmc4igsF/Ebz+lOB9Mqrryi6AG7xgEnQBIBlNZ
	MASHvglPFFD3DpSAq+OSa5Uwz19/h9uuwVbe4XDdGvIkxJAr328zL8qh4cO8ag==
Date: Wed, 16 Oct 2024 14:35:28 +0200
Message-Id: <D4X8GJV0W6JL.32E469JSATFEP@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, "Diederik de Haas"
 <didi.debian@cknow.org>, "Samuel Holland" <samuel@sholland.org>, "Dragan
 Simic" <dsimic@manjaro.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Michael Riesch"
 <michael.riesch@wolfvision.net>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: (subset) [PATCH v2 0/4] rockchip: Fix several DT validation
 errors
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Rob Herring" <robh@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
 <172841572989.2562611.18254512768409976284.b4-ty@sntech.de>
 <D4X4RACGCRRH.39SMPGMZZ2GK4@cknow.org>
In-Reply-To: <D4X4RACGCRRH.39SMPGMZZ2GK4@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_053542_553632_D278015E 
X-CRM114-Status: GOOD (  15.17  )
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
Content-Type: multipart/mixed; boundary="===============5334202873070597497=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5334202873070597497==
Content-Type: multipart/signed;
 boundary=420a352999a5f0637b0a389b86766f09be8702651d3ea0d2c89ab02af30c;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--420a352999a5f0637b0a389b86766f09be8702651d3ea0d2c89ab02af30c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Heiko,

On Wed Oct 16, 2024 at 11:41 AM CEST, Diederik de Haas wrote:
> On Tue Oct 8, 2024 at 9:28 PM CEST, Heiko Stuebner wrote:
> > On Tue, 8 Oct 2024 13:15:35 +0200, Diederik de Haas wrote:
> > > This is a set of 4 small device-tree validation fixes.
> > >=20
> > > Patch 1 adds the power-domains property to the csi dphy node on rk356=
x.
> > > Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
> > > Patch 3 replaces 'wake' with 'wakeup' on PineNote BT node.
> > > Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nodes=
.
> >
> > Applied, thanks!
> >
> > [2/4] arm64: dts: rockchip: Remove hdmi's 2nd interrupt on rk3328
> >       commit: de50a7e3681771c6b990238af82bf1dea9b11b21
> > [3/4] arm64: dts: rockchip: Fix wakeup prop names on PineNote BT node
> >       commit: 87299d6ee95a37d2d576dd8077ea6860f77ad8e2
> > [4/4] arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes
> >       commit: 2b6a3f857550e52b1cd4872ebb13cb3e3cf12f5f
>
> Please revert the 4th patch.
>
> I must have messed up my testing previously, but BT does not work on the
> PineNote with the 4th patch applied and does work with it reverted.

FWIW, I figured out what went wrong.
My testing was correct, but redo-ing the implementation to make it ready
for submission wasn't very smart.

With ``shutdown-gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;``
it does work correctly, but I forgot to change GPIO_ACTIVE_LOW to
GPIO_ACTIVE_HIGH before submitting.

I'll first figure out a better procedure before making a new submission,
so the revert is still the best approach IMO.

Cheers,
  Diederik

--420a352999a5f0637b0a389b86766f09be8702651d3ea0d2c89ab02af30c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZw+zEwAKCRDXblvOeH7b
bjbgAP9YbTBY27TFko/D2mKhNunoxZyzGN1Ss/H9noU7e6dOtQEAkqQg/YHMODFT
3YTB0Lngl+UqeAUuasytSAUgJxyAhQ8=
=QZhM
-----END PGP SIGNATURE-----

--420a352999a5f0637b0a389b86766f09be8702651d3ea0d2c89ab02af30c--


--===============5334202873070597497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5334202873070597497==--

