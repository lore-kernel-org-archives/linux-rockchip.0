Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7266C5DF85
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 18:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1iMFC8kGlVe+4WcroMEDiRH92EkaZKpGXoy2y34hWms=; b=GWGTD9cgbPEjotLK23kpchkPPx
	DDhOpRWF9kGS1Q/2oDFvD8tGUfZog9mCfFxGM3l5BFVIqlqRM5xDqxetuXnEKMv6bBqLfLGw8sA8g
	KxdKVedcB27hXYLOufk/PqAK6+73ksZeq9O1ANIOWH3erZ84uAjS9CbyjLur3sqcdAbp3Tmuzaeef
	JRWaqxoEmKpz2pZOQMKGlBuUlPKdz01FweoOZW+Bazu9nwm00ZN72SmBOC68WcmidhkaRLbhSA8ZT
	VxXdy9cMI2JhdXOfP6kxhSG+Coshk+y1LgPwWPc1pKNDMVt+rLqGQaMoCI6nVlQLUGIWAqlHihvKG
	jpdtbp8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwlJs-0000000AOgi-3QVl;
	Wed, 19 Aug 2026 18:47:24 +0000
Received: from mail-oi2-x07.google.com ([2607:f8b0:4864:32::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwlJq-0000000AOgF-2TRF
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 18:47:24 +0000
Received: by mail-oi2-x07.google.com with SMTP id 46e09a7af769-7ee41f88c50so46710a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 11:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1787165241; x=1787770041; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QSwrHGgl2AT1GasXRYkV9GR6hxZV3VVSWH3II1cAJck=;
        b=jzh87pGJDJyJbIFMlkcXLfh7SxwotI3BVKCWEhFhktkeH5UaUk7Kee01UQrtaD39Z/
         Jvje9Y0RXm6OToTW/KKMeg9Vvf7DHWQSmVlQB2NavX4KWrnYUVGOJhsBuUbRRaCeu4js
         SyQaTKAobj3yBdfLIQHDMUv/8b+yvT6gRo0JLrlhYCtpop93YoldB6hQPq9jGcf5uHim
         BqGjFpOybYlNbbKSVJuL9phfFDfjdVVJxKBfLqerc4QR3GX9q0hUDXXpGoyH684dD6ea
         s6LCVT6PJOMzkF1Y0glbOnO/qgoIsEnXGvzG1KRzbP/ioc7XtbvgG4ym+p33uNUj42Gf
         pzCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787165241; x=1787770041;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QSwrHGgl2AT1GasXRYkV9GR6hxZV3VVSWH3II1cAJck=;
        b=CQOYZ6JqttwZYwD6jTA8pBUQ74KPp4z0O4y8jXiw8aWB9wkDXqYi8NFFd473S08Hqx
         tHGcbmvDO9UVWgXQVELTfqMGzWXOAwuEjl9gRMoWm8RcYUrjXg5kAgSgAKtldQdh9Xne
         mNISdb1EccHJ2NLDegLWonZOopY6AsEYJ26bJolWkU+GZlkNrzG4K6YzIpFGJ415Gcjb
         PS5iXxGsIbeJ5sWi4om7J8tST9cxTcmfs1hDRjQ5lLM752AlXAyNGNKk4TnD++0jeQLR
         F9WgUyQ7iTUXVl9kzcaDXHOgNGMvYnpiICV8r1jwljFI/nXSk0ubc/TIH5nWrl9woxg5
         YzTw==
X-Forwarded-Encrypted: i=1; AHgh+Rpa4/CGOHwKlA+jWpdWlt2ElZTZoMAVrB56ZTS3VbP5QsVNE6ROKuJ4Z3b53/gZf28SxXFoMo5Jl1gGqTbqiA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZw/ueGh8aAiZg+sY9/+NZsIm1LNhTJqvsRoIO7edL/QuBJPM7
	y/RRzhl9aUpRVfByieVKlKQw7X+EW+QzLJTRhBGotkzIdl7ngXzACpkdlO2Nh6cJPk8=
X-Gm-Gg: AR+sD10tobTejATgpq1kQVBElTFy3Pk457aWMGNd5e828WUTeF4xoxTCnx47qpFr752
	LcoCmKLr+DcNxKdnunj4OjM6QwXYGOc8xtes9791bUkkvS/L1r3ICVgOCUar0AZ7YDDes8j+CUF
	ZgOOz6sfu6FE7v/3nrfSVSE0MTNKcmG9Jmft2gmPt1JalYDECiPZ9AXgLYhauwhyKRqzJJyBarM
	YhneEihqSJDLmRpkLwXMUPdScFtXPGjmm1K5FAJbnnl/GlI2vBBD2IoYjFQWlv3JfplPIq+rB+W
	L+kvXXpnsC2HCLYbCKFbMFPMrPB0yBToRy2bOHidTCgqEbf5nqPhexf5d58he5Obib2zAipxV5C
	V9ZiE6VgvmXtjlwbl20hZkUOzJK5os+3B2b4QgOSbrqKt9s552H7jhufNFILc6qmH3HlfRtZyQN
	ZjN8AGUSrwrPWv/NrabbF3KNirnG8c7+XPtgVh4gdAAOyjFyerk8GMwNdCiuSmNp+6CfpEn5Mgh
	ns=
X-Received: by 2002:a05:6830:6d17:b0:7e9:adef:4fd4 with SMTP id 46e09a7af769-7f43fa916b2mr7494544a34.11.1787165240632;
        Wed, 19 Aug 2026 11:47:20 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e221::c41? ([2606:6d00:15:e221::c41])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f440023019sm2466411a34.15.2026.08.19.11.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 11:47:19 -0700 (PDT)
Message-ID: <41ce17bc5d62c2d2a1fb820fa9d4ffb89d20a672.camel@ndufresne.ca>
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and
 some numbers
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jonas Karlman <jonas@kwiboo.se>, Igor Paunovic <royalnet026@gmail.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Heiko Stuebner <heiko@sntech.de>, 
 Jiaxing Hu <gahing@gahingwoo.com>, Oded Gabbay <ogabbay@kernel.org>,
 dri-devel@lists.freedesktop.org, 	linux-rockchip@lists.infradead.org
Date: Wed, 19 Aug 2026 14:47:17 -0400
In-Reply-To: <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se>
References: <20260801131656.58450-1-royalnet026@gmail.com>
	 <c495dae1976dab842d77f4a4a142217eb77b6fb7.camel@ndufresne.ca>
	 <20260818072936.41844-1-royalnet026@gmail.com>
	 <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se>
	 <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se>
	 <20260819055324.33669-1-royalnet026@gmail.com>
	 <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se>
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
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_114722_914655_B13469CE 
X-CRM114-Status: GOOD (  39.98  )
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
Content-Type: multipart/mixed; boundary="===============5475346610425434346=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5475346610425434346==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-BonzMBfzDgbeskESyC4p"


--=-BonzMBfzDgbeskESyC4p
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 19 ao=C3=BBt 2026 =C3=A0 11:40 +0200, Jonas Karlman a =C3=A9cri=
t=C2=A0:
> Hi Igor,
>=20
> On 8/19/2026 7:52 AM, Igor Paunovic wrote:
> > Hi Jonas,
> >=20
> > On 8/18/2026 2:30 PM, Jonas Karlman wrote:
> > > Looking closer at my old commits, it was the PCLK_GPU_ROOT that was
> > > needed for e.g. RK3576 and RK3528. This clock is not described in RK3=
588
> > > clock tree so it never gets disabled by Linux clock framework.
> > >=20
> > > I suspect similarly one of the NPU root clocks is what drives the NPU
> > > PVTPLL and thus always must be kept enabled when PVTPLL mode is used.
> >=20
> > Thank you - the PCLK_GPU_ROOT observation was the missing piece. I went
> > through the firmware my board actually runs and can now name the clock
> > for the NPU case.
> >=20
> > First a correction to what I told Nicolas earlier: my BL31 is not the
> > vendor blob. The boot banner reports v2.12.0-9-gd5c68fd92, which is the
> > edk2-rk3588 project's TF-A branch: upstream v2.12.0 plus nine feature
> > commits (SCMI voltage domain, eMMC clock, TRNG, ...). The only one of
> > those touching rk3588_clk.c adds an eMMC clock; the NPU set_rate/PVTPLL
> > path is unmodified mainline v2.12. So Nicolas and I are effectively
> > running the same clock code, and the firmware-difference caveat from my
> > earlier mail mostly evaporates.
> >=20
> > What clk_npu_set_rate() in plat/rockchip/rk3588/drivers/scmi/rk3588_clk=
.c
> > does:
> >=20
> > - The rate table gives every OPP from 300 MHz up a ring length > 0, so
> >   they all take the PVTPLL path; 200 MHz has length 0 and takes the
> >   normal GPLL divider path. The 200 MHz suspend rate we both converged
> >   on is therefore safe by construction on this SoC.
> >=20
> > - For a PVTPLL rate the firmware programs ring_sel/length/calibration
> >   (cal cnt =3D 24, T =3D 1 us, i.e. a 24 MHz reference) into NPU GRF at
> >   0xfd5a2000 (NPU_PVTPLL_CON0..2), and only then flips the mux in CRU
> >   CLKSEL_CON(74) to the PVTPLL path.
> >=20
> > The Linux side is where the NPU differs from your GPU case: the NPU
> > root clocks are fully described in clk-rk3588.c. pclk_npu_root is a
> > gateable composite (CLKGATE_CON(29) bit 4) and NPU GRF hangs off it
> > (pclk_npu_grf, CLK_IGNORE_UNUSED). In the mainline DT only core 0
> > (fdab0000) requests PCLK_NPU_ROOT as its "pclk"; cores 1/2 only hold
> > their aclk/hclk. So whenever core 0 is runtime-suspended, pclk_npu_root
> > has no user left and gets gated.
> >=20
> > An SCMI set_rate to a PVTPLL rate issued in that state programs a GRF
> > whose bus clock is off, while the mux write still lands because the CRU
> > is always clocked - leaving clk_npu_dsu0 parked on a ring that was
> > never configured. That matches the empirical failure in my RFC exactly:
> > the sysfs min_freq write while suspended, followed by the power-domain
> > power-on ack timeout. (I have not put a scope on the APB bus, so "the
> > GRF write cannot land" is inferred from the failure signature plus the
> > gate state, not observed directly.)
>=20
> Ideally the SCMI firmware code should probably be updated to ensure any
> required root clock is ungated, and possible also hide some related
> clocks from OS. I am not even sure this is feasible option and this may
> diverge too much from vendor blobs and may not be backward compatible.
>=20
> >=20
> > For the series this reinforces the hold-all guard: resuming all cores -
> > core 0 in particular - around every rate change keeps pclk_npu_root
> > enabled for the duration of the SCMI call, closing the window for the
> > sysfs, governor and cooling paths alike. Your .config_clks() +
> > pm_runtime_suspended() check covers the OPP-initiated paths; I will
> > reference it and your branch in the cover letter.
>=20
> I played around with Nicolas patches and created a more updated
> config_clks() variant that tries to use the clocks configured for opp
> instead of keeping track of the clock, see [2]. Have not done any
> runtime testing of that, but wanted to share the link anyway :-)
>=20
> If I remember correctly for the GPU path on RK3576, keeping the 'bus'
> clock enabled at all times helped ensure any root clock was enabled
> while GRF is accessed. I cannot remember that I had any issues with GPU
> GRF access for PD and sysfs governor paths. The config_clks() helped
> ensure set_rate never was called during GPU probe or when governor was
> changed. Maybe I missed testing some other paths :-)
>=20
> [2] https://github.com/Kwiboo/linux-rockchip/commits/next-20260803-rk-hdm=
i-v6/

This looks like one of many hacks down, I'll make sure to test and integrat=
e
that.

cheers,
Nicolas

>=20
> >=20
> > One open point where your GPU experience may help: besides the GRF
> > programming interface, do you know whether the ring/monitor logic also
> > depends on hclk_npu_root, or is the 24 MHz calibration reference
> > (xin24m, always on) the only other input? If you never had to find out,
> > I will determine it empirically by holding only pclk and cycling rates.
>=20
> I do not know, and never looked too deep into it, with the root clk
> enabled everything seemed to work great, so I was happy enough with that
> and just moved on to next thing :-)
>=20
> Regards,
> Jonas
>=20
> >=20
> > Regards,
> > Igor

--=-BonzMBfzDgbeskESyC4p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaoX6NQAKCRDZQZRRKWBy
9LyVAP47C2FSx0QcA5CyoG+DF+6pVuAUKKTgxac0gHmccFpXZAEAgpv4oEEnibPG
Z9h4UhoOl1Pc1NoDcvVGE6EeBqYNDA8=
=/Ev9
-----END PGP SIGNATURE-----

--=-BonzMBfzDgbeskESyC4p--


--===============5475346610425434346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5475346610425434346==--

