Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 039F3C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 10:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7DZdAaVjDWO7ICZmNk7nyO7XRKrM/neICq8qy8Y+JBE=; b=UexK7+X+UKS+lyVNAGsssDcONv
	DL/39kj+fRW3W+ZW8sjfr3GBTgl17B4q+fR9L++pdugzT+Hh63pV/DPMEGQ4vCAnmzbjRd65ENGEm
	Uunh2EpDpHaSAZe++7QNu2zdefJLqBwBGni66fIDtRK7A3avRB9gPRBHoMZ+me3t7q0V68Di4A56k
	wGGO7TRPvKbncWgUh/USZSpdM6xLeS68aZvjMh1k6gfX/3j5xmAgbGBFddr/kMcT+WACIuNCkFXjt
	t2wPFnDHUjbG1d9LbRU8U3THSNorILWVWME28BTrGRk1z2A28Sb4KWc+0U+tdM9bg5++m9XxWrqhH
	B1vioHWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIQng-00EKVQ-1B;
	Wed, 27 Dec 2023 10:06:08 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIQnc-00EKUb-2K
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 10:06:06 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d3ef33e68dso33293135ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Dec 2023 02:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703671562; x=1704276362; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XEw1e9XOhK8loeWvp+2JpD1B3sTf7+dz1HWvX7OkY0o=;
        b=hGkLi7JrGnMT+5uCLihiZISKfxoiscX/qQhV/trWnkSOdIOC5nOa4gPYgp7XmxnNAK
         QP6cfs0MoNXND2nGJyAV5gTx9nNa8CjaXXnnWmklbAAUa251mHVW3T33zcdncfOaltdV
         crdIYXVGWAVtv6D1UvJLbmB/ehqaZRUD5ECjKse0c46syNgvcZjJA8i+zmu9DTDq+srx
         9CxKeLISBVoykHgl1A2vVWj1w0sC9JvYAn7qfl5a643OtQrezxMH65FycLVbpUDFCtbf
         vvkNIF/UewB9f7jPlB1MuEwkiCaP/ZcPXKEi919cEookT39Mg4MT1F//XfuzgtaxT95y
         XwxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703671562; x=1704276362;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XEw1e9XOhK8loeWvp+2JpD1B3sTf7+dz1HWvX7OkY0o=;
        b=m3HoT6DeKoJ/tavk+qBwMUriZSdsDQT1x1FLyGQmQ0VFOVNnIqk0KYzCqeze/gmaGz
         edqvMhZOpAb6FFuEZ/BQ9rS91J/2n6yETcQXNQu6uXw4N5wD9uI8kJAACaOxbUlEmRj2
         fRSU4GYBxeL+hzAnFLb5hUz3oU+51aPQSFWZ3P34L3r88M5La5TAWXjWHBnwcixK2hEq
         wbYmv2AoF/J/ZOoatusgtbjZoFy3NLfCrUKOrsVUWh/Tcb8QkB2j17vvH2brCLix59pc
         C1j+NJW627M/zIhxKLaeYZu0F71soPi667V3zv7WC9CVms6IJ4ZpIY+wl+WAia7KPfG0
         Eh+w==
X-Gm-Message-State: AOJu0YzGeg3cLX2EWpYf/apPtQ1qzOEBCu7OXK4fImnrMXiFQ5BRYRgF
	1+kzmZ7DaxSrAwSWELJxD2A=
X-Google-Smtp-Source: AGHT+IE0A23XYDmcU01t8+uFS8Gp29gePwIgov5tuUl0DPEmBiz4Ke/Z418pTWmSQ1nONlmsPn7+Xw==
X-Received: by 2002:a17:903:2988:b0:1d4:1044:87d4 with SMTP id lm8-20020a170903298800b001d4104487d4mr14263741plb.19.1703671562158;
        Wed, 27 Dec 2023 02:06:02 -0800 (PST)
Received: from archie.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id d5-20020a170902cec500b001d07ebef623sm11577837plg.69.2023.12.27.02.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 02:06:01 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id E15C51221DDFD; Wed, 27 Dec 2023 17:05:57 +0700 (WIB)
Date: Wed, 27 Dec 2023 17:05:56 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org,
	alim.akhtar@samsung.com, alyssa@rosenzweig.io,
	asahi@lists.linux.dev, baolu.lu@linux.intel.com,
	bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net,
	david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
	heiko@sntech.de, iommu@lists.linux.dev, jernej.skrabec@gmail.com,
	jonathanh@nvidia.com, joro@8bytes.org,
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org,
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com
Cc: Josh Don <joshdon@google.com>, YouHong Li <liyouhong@kylinos.cn>
Subject: Re: [PATCH v3 00/10] IOMMU memory observability
Message-ID: <ZYv3BIeEgY8LnH7U@archie.me>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
In-Reply-To: <20231226200205.562565-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_020604_780316_6481E31D 
X-CRM114-Status: GOOD (  22.37  )
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
Content-Type: multipart/mixed; boundary="===============7509695313299012701=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7509695313299012701==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vZmYjWY6Cm0pkfHC"
Content-Disposition: inline


--vZmYjWY6Cm0pkfHC
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 26, 2023 at 08:01:55PM +0000, Pasha Tatashin wrote:
> ----------------------------------------------------------------------
> Changelog
> ----------------------------------------------------------------------
> v3:
> - Sync with v6.7-rc7
> - Addressed comments from David Rientjes: s/pages/page/, added unlikely()=
 into
>   the branches, expanded comment for iommu_free_pages_list().
> - Added Acked-bys: David Rientjes
>=20
> v2:
> - Added Reviewed-by Janne Grunau
> - Sync with 6.7.0-rc3, 3b47bc037bd44f142ac09848e8d3ecccc726be99
> - Separated form the series patches:
> vhost-vdpa: account iommu allocations
> https://lore.kernel.org/all/20231130200447.2319543-1-pasha.tatashin@solee=
n.com
> vfio: account iommu allocations
> https://lore.kernel.org/all/20231130200900.2320829-1-pasha.tatashin@solee=
n.com
> as suggested by Jason Gunthorpe
> - Fixed SPARC build issue detected by kernel test robot
> - Drop the following patches as they do account iommu page tables:
> iommu/dma: use page allocation function provided by iommu-pages.h
> iommu/fsl: use page allocation function provided by iommu-pages.h
> iommu/iommufd: use page allocation function provided by iommu-pages.h
> as suggested by Robin Murphy. These patches are not related to IOMMU
> page tables. We might need to do a separate work to support DMA
> observability.
> - Remove support iommu/io-pgtable-arm-v7s as the 2nd level pages are
> under a page size, thanks Robin Murphy for pointing this out.
>=20
> ----------------------------------------------------------------------
> Description
> ----------------------------------------------------------------------
> IOMMU subsystem may contain state that is in gigabytes. Majority of that
> state is iommu page tables. Yet, there is currently, no way to observe
> how much memory is actually used by the iommu subsystem.
>=20
> This patch series solves this problem by adding both observability to
> all pages that are allocated by IOMMU, and also accountability, so
> admins can limit the amount if via cgroups.
>=20
> The system-wide observability is using /proc/meminfo:
> SecPageTables:    438176 kB
>=20
> Contains IOMMU and KVM memory.
>=20
> Per-node observability:
> /sys/devices/system/node/nodeN/meminfo
> Node N SecPageTables:    422204 kB
>=20
> Contains IOMMU and KVM memory memory in the given NUMA node.
>=20
> Per-node IOMMU only observability:
> /sys/devices/system/node/nodeN/vmstat
> nr_iommu_pages 105555
>=20
> Contains number of pages IOMMU allocated in the given node.
>=20
> Accountability: using sec_pagetables cgroup-v2 memory.stat entry.
>=20
> With the change, iova_stress[1] stops as limit is reached:
>=20
> # ./iova_stress
> iova space:     0T      free memory:   497G
> iova space:     1T      free memory:   495G
> iova space:     2T      free memory:   493G
> iova space:     3T      free memory:   491G
>=20
> stops as limit is reached.
>=20
> This series encorporates suggestions that came from the discussion
> at LPC [2].
> ----------------------------------------------------------------------
> [1] https://github.com/soleen/iova_stress
> [2] https://lpc.events/event/17/contributions/1466
> ----------------------------------------------------------------------
> Previous versions
> v1: https://lore.kernel.org/all/20231128204938.1453583-1-pasha.tatashin@s=
oleen.com
> v2: https://lore.kernel.org/linux-mm/20231130201504.2322355-1-pasha.tatas=
hin@soleen.com
> ----------------------------------------------------------------------
>=20

First of all, Merry Christmas and Happy New Year for all!

And for this series, no observable regressions when booting the kernel with
the series applied.

Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>

--=20
An old man doll... just what I always wanted! - Clara

--vZmYjWY6Cm0pkfHC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZYv2+wAKCRD2uYlJVVFO
oxMfAP91UU+PRqp8ppjQagfbN7pLlLypEHbSPkqxzjMbovw1xQD7B3ptIVhk9yfz
/Uw9Lm3b2HtnyDuZ0vJwXjXM2mBM/AA=
=vPeL
-----END PGP SIGNATURE-----

--vZmYjWY6Cm0pkfHC--


--===============7509695313299012701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7509695313299012701==--

