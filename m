Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76FB9D15DBC
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 18:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iIYY42r6t1xCtxzfKO6jFBjEbXH39k36N+efK/8I7jI=; b=J3f3WWzAZ2cAnA2irhojOiPmu7
	j+4zt8bggV3aCss3VePQbsPirEkzXJut/hl8D+0VyZEVCjT/DuJm+TKs2fkPvxcPfMEaVxSj/k54L
	en+pL/6brpTaSzSpsz+rvAXJ78dToeJeuUoc0X0j+xRPt0zPfK4djPalWHJmfjLS85SuhutMwXVLp
	L8RKhHIKd1K3n0eTx6On1CsuQ8300V/VZTYYMz6PvTlx7VVuE+mO5K/0gCZ59QksOmyY7wy27c2/W
	Zb2k3twDItAweCbU3L/CkRSB62wpp6wwLc+y2myUFyjFuOx2brgTTt1iPV9t9/q+z5+KpUe8sDQLO
	utJY4W8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQrQF-00000006vA9-2vsQ;
	Wed, 03 Dec 2025 18:17:51 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQrQC-00000006v9Q-09Ci
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 18:17:49 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-8b25ed53fcbso3727685a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Dec 2025 10:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1764785867; x=1765390667; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WO7+BfFMbhtTQ5calPjfM/nfUWHGIG/6W+9CTiI6Usg=;
        b=jw0FLbyz6S1iCDgpLRiV5swEwZhIw9vdMbwxy/AloUdnlLyFuBr5VSQ5SiPqlr4LHQ
         zy85kjfCnRtF5Dr4oMlzMMz3FllNQdji7WsOEcMqqoUHyRsXv1vnh531w8xoeTG0eZuz
         OqIWAqxt/yJRtvyFVQy/AYoRDwYAzss6pF+60Z+ajW9BiGid0ULIQkdPpPfzPtAHaEcg
         FWElLdhMfKKax0g8TYLOaUK6anfak0RTYflxxtfVMrxOhZ60TefLUyGEojtZt7IMUpys
         wIXn04yINrXSFzlgjDk8GFdW3fu8vQu46qETQpL+tI8VrOQFE06GK1pw011Klfbgg+X2
         wj8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764785867; x=1765390667;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WO7+BfFMbhtTQ5calPjfM/nfUWHGIG/6W+9CTiI6Usg=;
        b=by8QrXXrEXF2XWdKL2yqlVUm67tWAJAO0OQu3qMh/Ky7+bU91dVpiT/AMm/ABglLPf
         VN1h50L91tZXBXhk4tWgasL97Yg4h3flUYAvyn9eWWH5iFCzj+fAismOaQ7aVpIz7+aA
         fvNuLIOeBJ3TwBZ81gNLhdDEXvuOve4vWxcUqqCy4Xqi++xWs4ZWfTPHfmUsXoq2OPOJ
         u0j7ZdsubsPx/wlsRK5v8q4uHmPUEBX9YLS0atFyeRs8tgaPQFIxWNRqq69LfupOd8RK
         aStn7GiCTdWvHFUO3WvoKJOlFdUYceTfHabMSBDRgWGydeWwpTeKep+Kzvp9casg4K6j
         LhPw==
X-Forwarded-Encrypted: i=1; AJvYcCXG0wEhv+BaY5ObWuaqC8maOJubQrhNyLnRTM0uZiJtQc4pKthrtxxLw+avqKZ/VbQj6rGqjywdohT3/O+Dzw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYmLBCbX4H9euX6osuVnL9nOjOctLpKCRF4kUUj/Ajd0+Df9XC
	591MHM0L7ZE/aJW+dTzcOYwRt79nHUDAeYffDG/sJlTnDUUr7kW7S7Kw/6lUtIhPgdM=
X-Gm-Gg: ASbGncvfUopNEAeBRFlC7//3+rKjBph788xkJpBSnrE3NZRckAvIn+4D1KG+JOB2Tih
	NBzQ4MfILYXKZeh+vr+ZO70oDx2WKE7TvMvkiPhLbW0gaCo1Gzk7TFfyHBaN2KJYMI27eDCaF52
	hCKGPuGa2wYM86s6zVoF0IFLVRmSQ7Gn4J51v0vB9LxsEG3+9nmAAQQNOg4zX7eZPN3VF0cZhtq
	gwhsj+E72M9N4RXobzhV8Uby2VLyE314iOWRpqF2UOFMa6TRAx62UF/gdnH0389/rNoS72bPjWy
	L1eqMR1jpaDrJrcZTQ74JeMSllyEkntDli74RWW3NFP6I3Cltyk1gKa3tr+IZTIJah4uJRvxDkO
	2YxCPIJNJaJU1dUKkZSvEUoeyNCoIbTQU9qcgnX89FB0B//C9Hq1ON9A5beR5/o/k65blqN2wDx
	cmFERadO3sfBgHgrE1
X-Google-Smtp-Source: AGHT+IEhv40xL383ENCwnfqVp2ktNmuefqqTYkr/UJMCMGa9G76Ic4Btltlz1SuLx7uvnnfNFOeUrA==
X-Received: by 2002:a05:620a:c54:b0:8b2:6a47:f5ff with SMTP id af79cd13be357-8b5e7453f59mr421706785a.86.1764785866599;
        Wed, 03 Dec 2025 10:17:46 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::5ac? ([2606:6d00:17:7b4b::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b52a1dd3b6sm1352235885a.50.2025.12.03.10.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 10:17:45 -0800 (PST)
Message-ID: <f1938e17e04cfd1768f90b757813f9187b424505.camel@ndufresne.ca>
Subject: Re: [PATCH 16/16] media: rockchip: rga: add rga3 support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, kernel@pengutronix.de, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Date: Wed, 03 Dec 2025 13:17:44 -0500
In-Reply-To: <ccdcf1c3-4afd-45b7-92d0-c35a31be2188@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-16-36ad85570402@pengutronix.de>
	 <cfe8d17416184f11a93e56872c30a6bcaf017ef5.camel@ndufresne.ca>
	 <ccdcf1c3-4afd-45b7-92d0-c35a31be2188@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_101748_325850_AACD5B7D 
X-CRM114-Status: GOOD (  23.53  )
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
Content-Type: multipart/mixed; boundary="===============1597886039489603232=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1597886039489603232==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-O46nnlDAIF/qqFenTBb5"


--=-O46nnlDAIF/qqFenTBb5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 10:49 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Hi Nicolas,
>=20
> On 10/7/25 9:41 PM, Nicolas Dufresne wrote:
> > Hi,
> >=20
> > Le mardi 07 octobre 2025 =C3=A0 10:32 +0200, Sven P=C3=BCschel a =C3=A9=
crit=C2=A0:
> >=20
> > > +}
> > > +
> > > +static void rga3_cmd_enable_win0(struct rga_ctx *ctx)
> > > +{
> > > +	u32 *cmd =3D ctx->rga->cmdbuf_virt;
> > > +	unsigned int reg;
> > > +
> > > +	reg =3D RGA3_WIN0_RD_CTRL - RGA3_FIRST_CMD_REG;
> > > +	cmd[reg >> 2] |=3D FIELD_PREP(RGA3_WIN_ENABLE, 1);
> > > +}
> > > +
> > > +static void rga3_cmd_set_wr_format(struct rga_ctx *ctx)
> > > +{
> > > +	u32 *cmd =3D ctx->rga->cmdbuf_virt;
> > > +	const struct rga3_fmt *out =3D ctx->out.fmt;
> > > +	u8 wr_format;
> > > +	unsigned int reg;
> > > +
> > > +	if (out->semi_planar)
> > > +		wr_format =3D RGA3_RDWR_FORMAT_SEMI_PLANAR;
> > > +	else
> > > +		wr_format =3D RGA3_RDWR_FORMAT_INTERLEAVED;
> > > +
> > > +	reg =3D RGA3_WR_CTRL - RGA3_FIRST_CMD_REG;
> > > +	cmd[reg >> 2] |=3D FIELD_PREP(RGA3_WR_PIC_FORMAT, out->hw_format)
> > > +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 FIELD_PREP(RGA3_WR_YC_SWAP,=
 out->yc_swap)
> > > +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 FIELD_PREP(RGA3_WR_RBUV_SWA=
P, out->rbuv_swap)
> > > +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 FIELD_PREP(RGA3_WR_FORMAT, =
wr_format);
> > > +}
> > > +
> > > +static void rga3_cmd_disable_wr_limitation(struct rga_ctx *ctx)
> > > +{
> > > +	u32 *cmd =3D ctx->rga->cmdbuf_virt;
> > > +	unsigned int reg;
> > > +
> > > +	/* Use the max value to avoid limiting the write speed */
> > > +	reg =3D RGA3_WR_CTRL - RGA3_FIRST_CMD_REG;
> > > +	cmd[reg >> 2] |=3D FIELD_PREP(RGA3_WR_SW_OUTSTANDING_MAX, 63);
> > No issue with the code, but quite an interesting feature. We did discus=
sed in
> > pas about using the target framerate (well frame duration in v4l2) to a=
void
> > bursting the memory.
>=20
> Do you have any links to these discussions or some actual implementation?

That likely happened during a media summit. Philippe Zabel might remember m=
ore.
I know for stateful encoders, you can already have two timing information, =
but
its all vague in my memory.

>=20
> =C2=A0From the API perspective I didn't really find the desired API to=
=20
> support this feature. While VIDIOC_S_PARM would allow setting an frame=
=20
> interval, the documentation doesn't really encompass this use case (as=
=20
> we won't configure the RGA3 depending on this nor drop frames if the=20
> RGA3 is too slow).
>=20
> Also limiting the potential burst size only seems practical, when it=20
> causes latency issues. Otherwise it should be more efficient to have big=
=20
> bursts (bandwidth and potentially even power consumption wise).

I have no issue with letting it to its maximum. The comment here simply
highlights it, but pretty much all other drivers will hardcore the maximum
working size and move on. In a second thought, if you multi-plex the RGA3 a=
 lot,
you don't want any slower use of it, since it may hang up on the core for
longer. So I'd say, unless we have problems, this is fine as it is.

>=20
> Sincerely
> =C2=A0=C2=A0 =C2=A0 Sven

[...]

cheers,
Nicolas

--=-O46nnlDAIF/qqFenTBb5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaTB+yAAKCRDZQZRRKWBy
9O9wAP4vK3/hFQMhn6LQeuouPwSbEOMHtv4m89+tlQ156SdFFQD+IbzJtlWm4CnT
1HlbYcGIvYOfmuM+UuiPeSwc538wrQs=
=u1fm
-----END PGP SIGNATURE-----

--=-O46nnlDAIF/qqFenTBb5--


--===============1597886039489603232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1597886039489603232==--

