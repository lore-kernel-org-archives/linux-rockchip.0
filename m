Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFCA1C52D6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 16:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YnGkvXmwwMXZHRxgT6KVPTQrd9yRz1tFtWobCFWms1g=; b=US4alkpAvcd6aDK7OJRfaAhIRz
	E82Eg76QjL28Ku/QNhejkVE0q93BWdCTklvnSKNJaFmyarg9wrxTMN6HO7vpE8oburl1t3mGOm3Xg
	cb+3Ik2EbQQYx3R9TTBskG0IEKCZ243KSocVEVKQhlpc9UUXkbudX1+u61YYriRP+HTbJW5wrhSsc
	J8MEADgbm8o9OEyGgK/SoOqCaEVaVN813T4DT/s6t0aXjJz/RDVwsEC3TzPZ+IXR4tm0aq9S5jOip
	/y1V6Ahkyl6GAJYMjEKD2fg8Puj1n4PbErFQXlpOiQrk90y6MW6hbIr+lqPx2Jk8bG/iXquFMaF/Q
	k93mzodA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgnzv-00000009i2T-0vsM;
	Wed, 21 Aug 2024 16:15:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgmwS-00000009Qkv-114x;
	Wed, 21 Aug 2024 15:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=dQUlsD8QPgcr8+qyfu1xXvm8cOrTgHvFNSVqGAs/8Rk=; b=NE0nS2iQDMAfSr92HN1YPypI37
	eO3pd1BvDGzkOdakTWPDgj5XsYAooAlUt1qlDTBWNwMP4rOZ5EqOoXFUIvqImWerNO6TxSUMfmwGx
	18xFRkEHLxw7xzWqNyk9gM7Jpo5KJH9ODjRVQV4GeAdrXN0pM7kPPzMSz6iPS6MkBFy5krmnopP6l
	J4eKC88HcLjT+uJcvQsUBq3xvEECLK/mkwi9WHpywV9CYo/NKkXwIrJrpq6LY+fG++x/mUxk/li0l
	xMq0ZXrTyE0gow+eue6XPO8gIY3JX+Ccr1QYBrF/PznwMZlwlsb1842pKIcodvu/zbWNLbnN2cUew
	GNeaEgfg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgmwO-00000009dd1-3y94;
	Wed, 21 Aug 2024 15:08:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9977A6104F;
	Wed, 21 Aug 2024 15:08:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27247C32781;
	Wed, 21 Aug 2024 15:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724252881;
	bh=BmuSPqL3do4aQAU03Wh1Ei296IH0Aok8vWYlYeXbHII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E9ce13EpwGJfNj/fz3ek0H9T6tqfzB2Ang4VBOW3wXpl3SNY56ugAkcScdpvW2mYq
	 pRGIpCkIm4Js0Nl1dFSO928N+kkfOqYD4mSc6mUyjW1ORGtmC+Tu0ujQ4GOjwMuxWI
	 5n+aHpbO2N/M/0f6Lf/rnWBjGY4xq2Q1hfqpH8p9BTAb8Yv3Ol1D2AfosnGjMY3T6p
	 26Azakecgn5Oj0LzRFL0QDOJQzZJ9wrwApBr2QlPWhyK3WKTAaomkPhdRcL4LGMxXg
	 7HN6TlatXlE/NiT7yCYl2XfS0M0lWkgfCcPkmCA5OFaDCgvpzNc5Iu9gJIDnNY3vJ8
	 SrcPlvCQfZ92g==
Date: Wed, 21 Aug 2024 16:07:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Yao <markyao0591@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
	Luis de Arquer <ldearquer@gmail.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
Message-ID: <20240821-evoke-mop-fb09ceef3597@spud>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <20240819-b4-rk3588-bridge-upstream-v4-3-6417c72a2749@collabora.com>
 <20240819-bobbing-purplish-99e48baa2304@spud>
 <ec84bc0b-c4c2-4735-9f34-52bc3a852aaf@collabora.com>
 <20240820-tropics-hunchback-6fdcd0b37f91@spud>
 <038073d0-d4b9-4938-9a51-ea2aeb4530f6@collabora.com>
MIME-Version: 1.0
In-Reply-To: <038073d0-d4b9-4938-9a51-ea2aeb4530f6@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_160805_357530_91B550D5 
X-CRM114-Status: GOOD (  19.70  )
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
Content-Type: multipart/mixed; boundary="===============2435081795085798896=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2435081795085798896==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZZq5NLhTZdZIQco9"
Content-Disposition: inline


--ZZq5NLhTZdZIQco9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 20, 2024 at 11:12:45PM +0300, Cristian Ciocaltea wrote:
> On 8/20/24 7:14 PM, Conor Dooley wrote:
> > On Tue, Aug 20, 2024 at 03:37:44PM +0300, Cristian Ciocaltea wrote:
> >> On 8/19/24 7:53 PM, Conor Dooley wrote:
> >>> On Mon, Aug 19, 2024 at 01:29:30AM +0300, Cristian Ciocaltea wrote:
> >>>> +  rockchip,grf:
> >>>> +    $ref: /schemas/types.yaml#/definitions/phandle
> >>>> +    description:
> >>>> +      Most HDMI QP related data is accessed through SYS GRF regs.
> >>>> +
> >>>> +  rockchip,vo1-grf:
> >>>> +    $ref: /schemas/types.yaml#/definitions/phandle
> >>>> +    description:
> >>>> +      Additional HDMI QP related data is accessed through VO1 GRF r=
egs.
> >>>
> >>> Why are these required? What prevents you looking up the syscons by
> >>> compatible?
> >>
> >> That is for getting the proper instance:
> >=20
> > Ah, that makes sense. I am, however, curious why these have the same
> > compatible when they have different sized regions allocated to them.
>=20
> Good question, didn't notice.  I've just checked the TRM and, in both
> cases, the maximum register offset is within the 0x100 range.  Presumably
> this is nothing but an inconsistency, as the syscons have been added in
> separate commits.

Is that TRM publicly available? I do find it curious that devices sound
like they have different contents have the same compatible. In my view,
that is incorrect and they should have unique compatibles if the
contents (and therefore the programming model) differs.

>=20
> >> 	vo0_grf: syscon@fd5a6000 {
> >> 		compatible =3D "rockchip,rk3588-vo-grf", "syscon";
> >> 		reg =3D <0x0 0xfd5a6000 0x0 0x2000>;
> >> 		clocks =3D <&cru PCLK_VO0GRF>;
> >> 	};
> >>
> >> 	vo1_grf: syscon@fd5a8000 {
> >> 		compatible =3D "rockchip,rk3588-vo-grf", "syscon";
> >> 		reg =3D <0x0 0xfd5a8000 0x0 0x100>;
> >> 		clocks =3D <&cru PCLK_VO1GRF>;
> >> 	};


--ZZq5NLhTZdZIQco9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsYCyQAKCRB4tDGHoIJi
0hCkAQDkrev2VngE+toZCyW7CBqkBdnhvbudk6uduFmusUQTeQD9E7e4awSNcV4K
3sLyRNFdK2Rcc/ulk7eGAuyO21QDmAM=
=e4n+
-----END PGP SIGNATURE-----

--ZZq5NLhTZdZIQco9--


--===============2435081795085798896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2435081795085798896==--

