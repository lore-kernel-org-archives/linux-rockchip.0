Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6419CCF2578
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 20:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qEM4C1vffKbyxwJXNkE7+AwxrMKO3ZEb8CBAeNlY8ZQ=; b=G2nJzRfvHn37fNMnV0GXGQ3tiN
	120qWHSD1LM71Q5G+5wH6NgloT+fCE2dF9JDvrWetzHWy4GXC97Wr3rAOJpLypeW3pzylGREgJQSI
	+LJ8br+jbwjdcYVfA+oxoV1ycllfjrka27JcBAd2CHyf3WmjlU4xDjsaGMidR633UkPtRqEkxeWS8
	RezzVeqw+wHxZ69/Nyq3qxIY0lnznk0JQ6bZrZG2ulF8TXxakenpKtUb8nBdv5KruRsDy4XNKg1eX
	SrzHeSqwsp36tklT2knBWX9NMnJhXDstuT+hubrAX1ULs1JTfxqyJaP5uhlANJpPTFTMcyBaM0SWA
	pC9lywfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sziLb-00000001mZJ-0WNt;
	Sat, 12 Oct 2024 20:04:19 +0000
Received: from out-186.mta1.migadu.com ([95.215.58.186])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sziJy-00000001mP1-1yei;
	Sat, 12 Oct 2024 20:02:40 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728763355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/OHT9QdN7wzd/CkALWfMYR0kdujeKzv+3XUMfTAODMM=;
	b=u6fh8US+TgcJVH89X8tgPtR4yEzMKofevLFrAk0fVfDNiyzVUb4CFKruN9k4qhodNxfDXw
	moug2pGAXgEgKCa2HqfTuwBKZEI/yy0kDAipJBs3SNsYCeKWmY7oueTAVzpt9epXUTGc1A
	4HWO1ghZ5D0vh7RxiUB4vMLYOuHQrlcbbMibcpImcaV1+q+p78cUx7F6mWccQsv5Mj6xbg
	S3ZUK1gDB3IVS7SUGShD6KSAREGAMhWilv3lpEudFjUNDsIYkC48jnObAiv7Gc4ggfyLxA
	y+p0fo6CYdfc+xQ5MYZHMdFswGfgZKtOjPopEHWkJr/iUvYgNK6Ck1JCIwq5vA==
Date: Sat, 12 Oct 2024 22:02:24 +0200
Message-Id: <D4U3GKLN5U06.6VOVFCPFN6G7@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, <heiko@sntech.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Update CPU OPP voltages in
 RK356x SoC dtsi
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dragan Simic" <dsimic@manjaro.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <2e1e100284b1edb470d6e7fde021a0f1779336c8.1728752527.git.dsimic@manjaro.org> <D4U2PO4VF4ST.9SBVKYF6095M@cknow.org> <0a1f13d06ec3668c136997e72d0aea44@manjaro.org>
In-Reply-To: <0a1f13d06ec3668c136997e72d0aea44@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_130238_968348_9B2F5E6F 
X-CRM114-Status: GOOD (  26.49  )
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
Content-Type: multipart/mixed; boundary="===============3839067594210385922=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3839067594210385922==
Content-Type: multipart/signed;
 boundary=d7dfdf25674c7fbf2f24ab8bc09bc74052d5606ff79667bdf6e09fe52f2e;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--d7dfdf25674c7fbf2f24ab8bc09bc74052d5606ff79667bdf6e09fe52f2e
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Dragan,

On Sat Oct 12, 2024 at 9:45 PM CEST, Dragan Simic wrote:
> On 2024-10-12 21:27, Diederik de Haas wrote:
> > On Sat Oct 12, 2024 at 7:04 PM CEST, Dragan Simic wrote:
> >> Update the lower/upper voltage limits and the exact voltages for the=
=20
> >> Rockchip
> >> RK356x CPU OPPs, using the most conservative values (i.e. the highest=
=20
> >> per-OPP
> >> voltages) found in the vendor kernel source. [1]
> >>=20
> >> Using the most conservative per-OPP voltages ensures reliable CPU=20
> >> operation
> >> regardless of the actual CPU binning, with the downside of possibly=20
> >> using
> >> a bit more power for the CPU cores than absolutely needed.
> >>=20
> >> Additionally, fill in the missing "clock-latency-ns" CPU OPP=20
> >> properties, using
> >> the values found in the vendor kernel source. [1]
> >>=20
> >> [1]=20
> >> https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed5=
61650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >>=20
> >> Related-to: eb665b1c06bc ("arm64: dts: rockchip: Update GPU OPP=20
> >> voltages in RK356x SoC dtsi")
> >> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  1 +
> >>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 18 ++++++++++++------
> >>  2 files changed, 13 insertions(+), 6 deletions(-)
> >>=20
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi=20
> >> b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >> index 0946310e8c12..5c54898f6ed1 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >> @@ -273,6 +273,7 @@ &cpu0_opp_table {
> >>  	opp-1992000000 {
> >>  		opp-hz =3D /bits/ 64 <1992000000>;
> >>  		opp-microvolt =3D <1150000 1150000 1150000>;
> >> +		clock-latency-ns =3D <40000>;
> >>  	};
> >>  };
> >>=20
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi=20
> >> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> index 0ee0ada6f0ab..534593f2ed0b 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> @@ -134,39 +134,45 @@ cpu0_opp_table: opp-table-0 {
> >>=20
> >>  		opp-408000000 {
> >>  			opp-hz =3D /bits/ 64 <408000000>;
> >> -			opp-microvolt =3D <900000 900000 1150000>;
> >> +			opp-microvolt =3D <850000 850000 1150000>;
> >>  			clock-latency-ns =3D <40000>;
> >>  		};
> >>=20
> >>  		opp-600000000 {
> >>  			opp-hz =3D /bits/ 64 <600000000>;
> >> -			opp-microvolt =3D <900000 900000 1150000>;
> >> +			opp-microvolt =3D <850000 850000 1150000>;
> >> +			clock-latency-ns =3D <40000>;
> >>  		};
> >>=20
> >>  		opp-816000000 {
> >>  			opp-hz =3D /bits/ 64 <816000000>;
> >> -			opp-microvolt =3D <900000 900000 1150000>;
> >> +			opp-microvolt =3D <850000 850000 1150000>;
> >> +			clock-latency-ns =3D <40000>;
> >>  			opp-suspend;
> >>  		};
> >=20
> > While it felt a bit much to send a patch just to remove the blank lines
> > between the opp nodes, this sounds like an excellent opportunity to=20
> > make it consistent with the opp list in other DT files?
>
> Actually, my plan is to work on the SoC binning, which will involve
> touching nearly every OPP in the Rockchip DTs, and will add much more
> data to each OPP node.  Thus, having empty lines as the separators
> between the OPP nodes is something we should actually want, because

As indicated in the "arm64: dts: rockchip: Add dtsi file for RK3399S SoC
variant" patch series, I do prefer the separator lines ...

> not having them will actually reduce the readability after the size
> of the individual OPP nodes is increased.
>
> That's the reason why I opted for having the separator lines in this
> patch series, i.e. because having them everywhere should be the final
> outcome, and because in this case they were already present where the
> OPPs were moved or copied from.

... but you actually removed those lines in the other patch set.

While I'm looking forward to the extra data to the OPP nodes, I don't
think the amount of properties should determine whether it should have a
separator line or not.

My 0.02

Cheers,
  Diederik

--d7dfdf25674c7fbf2f24ab8bc09bc74052d5606ff79667bdf6e09fe52f2e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwrV0wAKCRDXblvOeH7b
bg9zAQDo90OyxAf/h9U4TC9xmlrPJ8gjPqJrhdXG8qyvtHSHhgEAsCvJamwLgWEP
dQ+R1gov9Un0Jgyr4SvJ6EQfeo62cAE=
=DvV+
-----END PGP SIGNATURE-----

--d7dfdf25674c7fbf2f24ab8bc09bc74052d5606ff79667bdf6e09fe52f2e--


--===============3839067594210385922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3839067594210385922==--

