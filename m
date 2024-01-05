Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20B2EC47079
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 08:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DDwW+Q6LuQ5MTbFMlJoTw0WFrn37jYvdzvrvE4/R9Yc=; b=hGPAfpHzEPVVBNeavN9nLuExRs
	3N56sy7kVROQGI807rQMM0RrcLQ0dUW+g09K1rgfwf5BwFK/F+OZIuySlYFpeOKbwKwatxE7ZgT33
	aoc0n/7ZaS/Rq4F7sSnQsoKZoLy8eu5OrjrhFhnskfmq7L+AuOnXztpQF6RUxQe3WMVdlSaNpkCR+
	iMdsvW+gz1V5FHp4b+jBiD9NHYjch8FH+DDY5B1GlD6tCuSuCpK91M95+c8kCVVRr6+uNrxnjjtxU
	iP/bnAb26WpU6iJdC1fAxv9QIY5YiT6VhOTzcHa+6xVs4XbiUPcIU1Dtd9HDvQar33TTbSyJlf5dx
	cnXpQ5UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLfRS-00GEDN-1F;
	Fri, 05 Jan 2024 08:20:34 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLfRP-00GEBM-1q
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jan 2024 08:20:32 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40d89446895so1625035e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jan 2024 00:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704442828; x=1705047628; darn=lists.infradead.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UirpifrpW6YIRosDr0Ki+l8kjsuIejuWaHX21FvuZXo=;
        b=Yq/LfVQOG6SEXl27mvgDRnnkK6QfA3l/n79OndZtSDJAz5ylhnxkDUBEcGTjtR6RCp
         kCMHcRYGScxdUSa7tRQAWygR8mt6IRRmhb88PJ+qwjxUsW8A4vNbVHGzUxS4mUc681pg
         9JtT2k2oz1x1HnhCX6N9FLzhAsN7vSihHyNnud20OJ0nFNCSba9PwiZ/ECTTz3At+5/F
         4AdDQqL3/kxZmiLcqiBC/eIWcbjdWMwu2hVC84KqsrLYDwWuaB1uSiTZxpNf6NHgi59l
         PB8EYSOfvM62XEpM7Dz2J9XYyibKcETqAw6YUSGnG0BhFF0HJscJGQOmESzQpNcXzPCF
         vmLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704442828; x=1705047628;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UirpifrpW6YIRosDr0Ki+l8kjsuIejuWaHX21FvuZXo=;
        b=RD2ch4qlAdWTUsFMwVqNJjELag+Zi6w3VvtR5selpj0UZutpyBwwh9k8eVs7JwhqoH
         QBQFTRAZPUpIpsC1AVJfKsbPwYGwaXXgdcjwaLinP+XAiLxHR8MMiDWg698dem+59RnU
         9jrQFjTEN3Kk4xOoQ2E35IsPSOcCfmW5ydEeVMMmKTmTG1cBXWEScgGiqGsw5+gLIJZ4
         LrX+w83ISKL+LQMcWp+znbjFp104wKRLG8acO/p2RytXHC8nFhJYMpzyxvFmJ4uzIaXR
         66UEQDxnMi3dXpTrM9Hf86tX2L48ZBKpW19Q0WeqsDzmz5JxHGihJ870zi1yTbilfUbK
         s5Kg==
X-Gm-Message-State: AOJu0YyEKCyucDTopZu20JxNsB+lsoYeB0wIjmY2J/7V51uaYR+emdSw
	wFc1B1fYBHvt4SEyL6ZG10I=
X-Google-Smtp-Source: AGHT+IHMgrGKGIkfpqwpUlWkD6o90yPervTOv/x0T4n2N+OmVuREFRfDKOS87FVN6VWMXcJ9sQ/Mcw==
X-Received: by 2002:a05:600c:5486:b0:40e:3538:a5c0 with SMTP id iv6-20020a05600c548600b0040e3538a5c0mr821797wmb.1.1704442827675;
        Fri, 05 Jan 2024 00:20:27 -0800 (PST)
Received: from orome.fritz.box (p200300e41f0fa600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:a600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id j26-20020a05600c1c1a00b0040e3804ea71sm806474wms.10.2024.01.05.00.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 00:20:26 -0800 (PST)
Date: Fri, 5 Jan 2024 09:20:23 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jernej.skrabec@gmail.com,
	jonathanh@nvidia.com, joro@8bytes.org,
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, tj@kernel.org, tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com, wens@csie.org, will@kernel.org,
	yu-cheng.yu@intel.com, rientjes@google.com
Subject: Re: [PATCH v3 08/10] iommu/tegra-smmu: use page allocation function
 provided by iommu-pages.h
Message-ID: <ZZe7x-l3Lxwp-4kq@orome.fritz.box>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <20231226200205.562565-9-pasha.tatashin@soleen.com>
MIME-Version: 1.0
In-Reply-To: <20231226200205.562565-9-pasha.tatashin@soleen.com>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_002031_609737_0E10A4C0 
X-CRM114-Status: GOOD (  11.16  )
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
Content-Type: multipart/mixed; boundary="===============3594965969037145567=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3594965969037145567==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8IeHlBnAmdcVLGIU"
Content-Disposition: inline


--8IeHlBnAmdcVLGIU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 26, 2023 at 08:02:03PM +0000, Pasha Tatashin wrote:
> Convert iommu/tegra-smmu.c to use the new page allocation functions
> provided in iommu-pages.h.
>=20
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> Acked-by: David Rientjes <rientjes@google.com>
> ---
>  drivers/iommu/tegra-smmu.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--8IeHlBnAmdcVLGIU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmWXu8cACgkQ3SOs138+
s6HXkg//YOz2qzNPS3zbXb9R+gceE/gBdW73WaBVARCvXhhc5PWwWZctFyPH4Hf7
KDyc0njiNk3tDVY28wbWI3Ex8fbdkb+B8CUlZihhhRxtYaEUiHjkUK7cyR8i81Dq
pv2Bw67wRrXUthITgzpBOOqdeI+FpB/ch6GKIH0S13F/NpIwmLemg/u5THAgTAyw
IBi+44VeFWXKky8rT2s/rENv2JAhz5ltYql0CGxFEYhqiIunEb2eqDPgbfr8vLKv
2mvQmIOZsY04NO86V6eTKTM7+Ue5tzt+jHrMVr0gH/DkHkcmbOoPTn/lBsZ8IFi/
3nhtBB5ofmX/+80r6w9u/reWpqxUWyvRcJYsE06Nw/AAZN6IZM1ds+6bal1QJ8Zn
Cw+zagqq5Sqj2ah/tQ/W3rOzbs/XLMD0xLkRl7/kcjjOq+LfZFAzx3zqNyB3Vzlp
/q+60iAGtwkI04MSGlkKjVkHpIrtSKQFWXbnM79/c5GEevy4r/W2/d7k+phM0y/Y
GrblcAFFlQfSm4K19PEWARzu0mHOHFqIIcd6vfRONCuGFSAcmtvdB3KOfap5jP4H
ebZ1R6zDoreUq4hYVBSiRxYxmfDgRUyTQcOTDhEGy/JyteRgvKVhDwgPH+ql3OGS
wSPkv6/wg5Y8w2lR1QHCG/KXFjZ84iBLdT38/7QZqAR6hfMBGno=
=MX0T
-----END PGP SIGNATURE-----

--8IeHlBnAmdcVLGIU--


--===============3594965969037145567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3594965969037145567==--

