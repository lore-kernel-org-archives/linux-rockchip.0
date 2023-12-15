Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B263EC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 21:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CpxyFFRLMUFo5jRe1xs32MuFDz1DZ3MwiBQEn2WkV0=; b=geCTD0UYPgWZbH
	ET7QiwePItEKnhDruWuvSb0+/8Du3xebyCtp+wJk23ebXcoPg6Y7MUpZNAPNBKleDjz55vu2fO1ww
	9RfHGgFymvApSPHu6mgHUBNoMDpdg6YGgTSE9Tara8NkvQbpFuZrlVOQm8nwDsETiZYVEA0mASHDU
	iSk9A3DLGgWAAUKM5TaRu28xsg3VomgkpJSUroC5jisqvy+2JOjRlLdwvtiuWFaW7OIQUSZHE3YS0
	igud1eF4fOK/LqHlBaDKZ1LhSPYv+/gB/q11Q3z9XlWa0ciHnLpoyjBvRD6PzWvBOZ+LGnS/Rp3EG
	qXFU+9PS+Ed3+zSbXsMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEFTV-004aPU-0b;
	Fri, 15 Dec 2023 21:12:01 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEFTS-004aNl-0x
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Dec 2023 21:11:59 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-1f5bd86ceb3so709518fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Dec 2023 13:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1702674715; x=1703279515; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b9KJ+4BbcKeSEG7077PFa7FVZHENUrxS+8ivlb7RAxY=;
        b=W5z8URnOEXUdXoD5N1Aakpp2ynryqHy+X8R0omzoA2YgO53742Dq15gi86a7vNrsAW
         p4prq3LSGrgugz1Py4GujmCw2gUlNaVwweInnciJwhPpcg96arKpUr+amfAITZ215wyq
         jJd98wVpr4eT1qiirXVQyQen3ydB9Ez5/X3XyKJJo9sdDep1iqaSigqa5EC8Kzt8BzO+
         mGdv1o1XXnRBZgVdAIQoLunfhCrfp4uL8llLOV/NfFsZ/qF/1q03JzsjGLb8n/SAyypK
         H6tvrF500l/ZcJQc/Bw2+np6sTGB5jl5HQq4Wx1jmXRS8wk7mbIGDrNIKflkK/tsAnmk
         fDZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702674715; x=1703279515;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b9KJ+4BbcKeSEG7077PFa7FVZHENUrxS+8ivlb7RAxY=;
        b=OpPeYHc8jP8isdvhqtksEOV3YyWgLL+4tqIdu39mP6BfPG+CRPixxX++RwznH076J2
         k3QDBPJwB5P0wxMpdDxnPeta8t97KlUsaqHfomjL+zF3tqm5YkvA9p42jLUGZLQRc0Pm
         OrhVt6zo7qz/cZE3F+cTUHeibY7KUoNk88GSn1RSNhZN2HVP1tdy0iNbxjXihx/QDLGs
         0NAwBd9NqKFWtI2fNquA8AVAiO4A08+Cmm2z3txp31D6xla7Ay3KcUorR6s2BuphUgxz
         Pi1OUQOMCWezLC2tO1+rY8RkuKAdMmhsQW+14xjhtrSiRiuPB78xbulqywelCLp/cBIg
         2hXw==
X-Gm-Message-State: AOJu0Yw/VJTS6MSdP+mzm/wWsB3fs9j5rhWCcGjQkQH/plSSrEWyuY2o
	zJXcFLYf5yq2kUXUdGlcdF7z2I5SRfLElo33uOWE9g==
X-Google-Smtp-Source: AGHT+IFHrLpndT4XCwAesdcyNwQf00aMOvX02D4/8uxdog8acvbjKfsi57jpp2aqEyynfGVCKlt0IXuLjUhCsHgb3nk=
X-Received: by 2002:a05:6870:c09:b0:203:7ccc:b6e8 with SMTP id
 le9-20020a0568700c0900b002037cccb6e8mr1214533oab.25.1702674715317; Fri, 15
 Dec 2023 13:11:55 -0800 (PST)
MIME-Version: 1.0
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
 <20231130201504.2322355-11-pasha.tatashin@soleen.com> <c0d23d3e-39e6-57af-fd38-eb1b885d7da4@google.com>
In-Reply-To: <c0d23d3e-39e6-57af-fd38-eb1b885d7da4@google.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 15 Dec 2023 16:11:18 -0500
Message-ID: <CA+CK2bD0Wz8mzB_BGKEYKCHRJKKVwr0CPK7OOC0tD_Sxi5Rp5g@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] iommu: account IOMMU allocated memory
To: David Rientjes <rientjes@google.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
	joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
	rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, 
	tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_131158_571343_54B343BB 
X-CRM114-Status: GOOD (  14.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> > diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
> > index 3f85254f3cef..e004e05a7cde 100644
> > --- a/Documentation/admin-guide/cgroup-v2.rst
> > +++ b/Documentation/admin-guide/cgroup-v2.rst
> > @@ -1418,7 +1418,7 @@ PAGE_SIZE multiple when read back.
> >         sec_pagetables
> >               Amount of memory allocated for secondary page tables,
> >               this currently includes KVM mmu allocations on x86
> > -             and arm64.
> > +             and arm64 and IOMMU page tables.
>
> Hmm, if existing users are parsing this field and alerting when it exceeds
> an expected value (a cloud provider, let's say), is it safe to add in a
> whole new set of page tables?
>
> I understand the documentation allows for it, but I think potential impact
> on userspace would be more interesting.

Hi David,

This is something that was discussed at LPC'23. I also was proposing a
separate counter for iommu page tables, but it was noted that we
specifically have sec_pagetables called this way to include all non
regular CPU page tables, and we should therefore account for them
together.

Please also see this discussion from the previous version of this patch series:
https://lore.kernel.org/all/CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com/

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
