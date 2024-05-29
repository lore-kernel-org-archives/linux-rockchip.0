Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A260C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 11:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u4CPixxzKECvhhb8UfegnD5uulsFvkrKex2lOrOagTU=; b=WaoMhKwqZfPt9sqMjVYaJJjH5Y
	R24ZUhWy3R7AXQ/uAubpMFg0QKnWne85VJHxT7w/H/4E0CpqSJ7HhA09ZFUIHODlp0AM/DPESMW1l
	K/TeG5BkfBxdZyVpqGlp4v9UcmgPOEqw8gjE/qABUCH94lnrw7+ajW/ZLaQxCaR6bGSNAZI8hON4J
	Ac2rwmd8WtMzlzrECc+oCtrh8M36IEBD/0YPsfNxNghKqSUr5m6yUtBMDvCrA+uRvVIj6T1eZfShU
	bgEO+gUjcOFBggooKUwv3Mx5boZeuBpsNIC1MpoNFwMx0D1jC66dEAmYfihARC6L4LwHzI+4Ej7tq
	XPDsqGTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCHC9-00000003u42-02w9;
	Wed, 29 May 2024 11:10:13 +0000
Received: from out-170.mta0.migadu.com ([2001:41d0:1004:224b::aa])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCHC6-00000003u2q-01oQ
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 11:10:11 +0000
X-Envelope-To: dsimic@manjaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1716981003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X3K8AAihjo5jehCWYCuxmJ8F87mjFG1Pk15yaC7Oslk=;
	b=eEj8yEUL/kZ04N94F2Lxv+qcPhuIeQjqXc9M1gpAU7gJkjZONeiRZAr7gf+sUm1okG0O4n
	3VCQI3W/7RvSxcGZ45fzNi+wpeyYZnWeU5g3lgxkMIZ88kp/SYnx229DqSSCsK16W/nHDn
	V82dnEnl0ugY7yX9Oy2aKCNddTvf16s1xyvDCzUZKmTKCH/PMGa9MZl38YiEulVbqPszSU
	P5+7Yy10L9famzqAWQdfAo4PezWKKYOGDIQb+Bt988IZMyhGSseumJFO2Ts1Bt+Ds1LgIp
	KVMEi0G3ks4sxPQLVbTN/nozYeKkpAMXQlprSPl1E7gm0E1I8OgB75l+qrVb5w==
X-Envelope-To: alchark@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: robh+dt@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: quentin.schulz@cherry.de
X-Envelope-To: wens@kernel.org
X-Envelope-To: daniel.lezcano@linaro.org
X-Envelope-To: krzysztof.kozlowski+dt@linaro.org
X-Envelope-To: viresh.kumar@linaro.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, quentin.schulz@cherry.de, wens@kernel.org,
 daniel.lezcano@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 viresh.kumar@linaro.org
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Make preparations for
 per-RK3588-variant OPPs
Date: Wed, 29 May 2024 13:09:50 +0200
Message-ID: <9996796.SDjBYy7pSV@bagend>
Organization: Connecting Knowledge
In-Reply-To: <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
References: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
 <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_041010_214320_263DF088 
X-CRM114-Status: GOOD (  29.54  )
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
Content-Type: multipart/mixed; boundary="===============2098162672235126645=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2098162672235126645==
Content-Type: multipart/signed; boundary="nextPart4603407.K66ItMQtme";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4603407.K66ItMQtme
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Wed, 29 May 2024 13:09:50 +0200
Message-ID: <9996796.SDjBYy7pSV@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

Hi Dragan,

I think the idea is very good.
I do have some remarks about its implementation though.

title: s/Make preparations/Prepare/

On Wednesday, 29 May 2024 11:57:45 CEST Alexey Charkov wrote:
> On Wed, May 29, 2024 at 6:14=E2=80=AFAM Dragan Simic <dsimic@manjaro.org>=
 wrote:
> > Rename and modify the RK3588 dtsi files a bit, to make preparations for
> > the ability to specify different CPU and GPU OPPs for each of the
> > supported RK3588 SoC variants, including the RK3588J.

"Rename the RK3588 dtsi files in preparation of the ability to specify diff=
erent=20
CPU and GPU OPPs combinations for all the supported RK3588 SoC variants."?

There's no partial renaming of things. That you then also change the includ=
e=20
files to match, is implied.
The "modify ... a bit" implies you'll do something else (too), which should=
 be=20
in its own separate patch (if that were actually the case).

If you mention one variant but not (any) others, makes people like me wonde=
r:
why is RK3588J treated differently then f.e. RK3588M?
In this case I don't see a reason to single out one variant.

> > As already discussed, [1][2][3] some of the different RK3588 SoC varian=
ts
> > require different OPPs, and it makes more sense to have the OPPs already
> > defined when a board dts includes one of the SoC dtsi files (rk3588.dts=
i,
> > rk3588j.dtsi or rk3588s.dtsi), rather than requiring the board dts file=
 to
> > also include a separate rk3588*-opp.dtsi file.
>=20
> Indeed, including just one .dtsi for the correct SoC variant and not
> having to bother about what other bits and pieces are required to use
> the full SoC functionality sounds great! Thanks for putting this
> together so promptly!

Indeed :)

> > No intended functional changes are introduced.

=2E..

> >  ...inctrl.dtsi =3D> rk3588-common-pinctrl.dtsi} |    0
>=20
> Renaming the pinctrl includes seems superfluous - maybe keep them as
> they were to minimize churn?

The reason for that wasn't clear to me either. If there is a good reason fo=
r=20
it, then a (git commit) message specify *why* is appreciated.

> >  .../{rk3588s.dtsi =3D> rk3588-common.dtsi}      |    2 +-
> >  ...nctrl.dtsi =3D> rk3588-fullfat-pinctrl.dtsi} |    0
> >  .../{rk3588.dtsi =3D> rk3588-fullfat.dtsi}      |    4 +-
>=20
> To me, "fullfat" doesn't look super descriptive, albeit fun :)

Agreed with the non-descriptive part. Please choose a different name.

And document in the git commit message why it was renamed and what is expec=
ted=20
to be in the new dtsi file, but would be incorrect for the old dtsi file.

That you went from rk3588s.dtsi to rk3588-common.dtsi (I miss the 's') shou=
ld=20
be described (assuming that was intentional and not a typo).

IOW: let this commit (message) describe what should and should not go in th=
e=20
respective dtsi files, which can then be used as reference for future rk358=
8=20
board additions.

> How about we rename the existing rk3588.dtsi and rk3588s.dtsi to
> something like rk3588-devices.dtsi and rk3588s-devices.dtsi

Whether it's '-devices' or '-common', I think it's impossible for a (short)=
=20
name to be fully self-descriptive.
Thus document what you mean by it in the commit message.

Then we can use those 'rules' to consistently apply them.

> >  arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  414 +--
> >  arch/arm64/boot/dts/rockchip/rk3588j.dtsi     |    6 +-
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 2671 +----------------
>=20
> Rename detection didn't do a particularly great job here - wonder if
> we can do anything about it to minimize the patch size and ensure that
> the change history is preserved for git blame...

+1
The diff does look awfully big for a rename operation, which was supposed t=
o=20
(also only) "modify ... a bit".

Cheers,
  Diederik
--nextPart4603407.K66ItMQtme
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZlcM/gAKCRDXblvOeH7b
boXFAQCgLAgi+jdfrwcmNIdE+b3uLByJRWSeiM+fn8Il8DjzDAEAqe1l050CNF9Z
Zwn/WxpqmanDODRRGRh7CrMypeZ4Vwg=
=79tX
-----END PGP SIGNATURE-----

--nextPart4603407.K66ItMQtme--





--===============2098162672235126645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2098162672235126645==--




