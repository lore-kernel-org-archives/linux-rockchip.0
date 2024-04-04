Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1ED4CD1284
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 13:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qR40ZlpO+zSVQtUXhJK0FWjjIhwMpBk5FYk6znYNWk=; b=vvlJJ4fnOSF+QZ
	Sw2tMqS2P+iJj4fT1w6RrZm5JF6aw2t5YPDVkjIOEU1GVoBOBOAFM8e7bFJ1SJdwveBzyiTEyVNuu
	Y24/qEhT8mzY8OjRxaI30/JD+LeTbIpA185PqnvbMdYLke3K0LwmcskaF//9Oib0dyOPArQ7+Qd7V
	SWcTwwUQSgrFJUnx+kJLGvOqOD3IEYbwbFo71k6zlpDyNhyIWf1P/FkMH7ONE29oFcQ/2+AjZqb4T
	D/UsWqPyoFVgY7EcXEFCg+Fj0R3GAf2HLTi4MBwF6KtrfMVIG4sGbQw0QszO6+noNY51TOtCeE0G2
	TPU5iWwMAdnunbeSN1pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNVZ-00000002u4k-44mF;
	Thu, 04 Apr 2024 13:52:01 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNVD-00000002tyi-2ix7
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 13:52:00 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-4317fbb669dso4051901cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Apr 2024 06:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712238697; x=1712843497; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GEhrf+Xnwdm4P0BoHyd6IIElLQSsz5Bym9Fr83GNG8o=;
        b=KxhA9xvaFFqFUc4ldQfsTN8b5+9MF5UwSU1n6RLONWiRgj8tk+8vtHZTKSaMQqizz3
         Y7lszYz7hbMXKBA4ynSu+syZlXWPRWQVG25C5Ge6GzNH/IKa6PgoNBMcP7aeHiNbfXsj
         lz23YyUFyQp4U/VhrnbipGhVSydLx9sjQGNrfvCLDALa5TiGyF8mcRIBxNHIyYVZoCWa
         UsaCzV/BM8QlgRoT77ZCKm1562+nFClKr98BRqbAqNIg/3p8lKXo3Ks0WNzZzTrkVhdO
         nk/ZxoYAaagOvM92teDztkko1jbJxEU5z/awRZCFvoJoDHRUOqNToQVvvojDKEilCSO0
         JVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712238697; x=1712843497;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GEhrf+Xnwdm4P0BoHyd6IIElLQSsz5Bym9Fr83GNG8o=;
        b=WdlGvti48ABqfireqeIt2mu6xvdHFI2XqudYrzL1VkArB/+BV5Ze6fuIp+/ExRqu6q
         RnHWACSyiKba8L2YjmYxA9EMVseItc3/ciaau4ZJSEJFOMzAUPOChErCXLCujUEmoSQz
         sNrWZ6FtfX7TsGAbPpHB3Bf8CKoaBvZGvdN27ELI7FGpaSoF4SU2JbBpXRkqrJOwLLkj
         FoPX2m8Ky/kFqnYIZCW+81+3+QtNeh4a9A+ZDOvAvC5DcVYKsh/dSKZfoERU0a+CPipY
         olM4t12krqd2mITPeAJhw0Cc45uomkGpD3PPTMQHIB+wXmFaq9p4Xkmg4j+71gCiX2G3
         1TpA==
X-Forwarded-Encrypted: i=1; AJvYcCVvHpdOC5e2IdxXBvuJa1wXP1i6MdGqn4IOk1x+7zdHmR94bYX9t2drHAabHxTahOBmdfg20vZibhvpbL7wWz7rTLDblxGJTUXIGHhZx5shLMiE
X-Gm-Message-State: AOJu0YztXX6eahF6tORW8cU4Re2tC68ggXkBvJjuWf5tOdE3eFYkW2zV
	FEAKOPSbgOJa+oQqdhFILt6HCxaCF4Hd38z+hlGp9stn9iLrdhxEND9YHRcGcsWA1yRTqabZPOn
	JS9tWb1bE5eLtrvgQ/gYPnef26oyN+5iT2hrMgw==
X-Google-Smtp-Source: AGHT+IG34VfsrO/bFBQm1+tAdMAMjkEMbTIL7Igt83TuV9+7PUf7aasZynC6bg9Q2hezj4QPdzlhPGGLCOEcmSFudGM=
X-Received: by 2002:a05:622a:20d:b0:431:8135:6fa9 with SMTP id
 b13-20020a05622a020d00b0043181356fa9mr2490307qtx.61.1712238696692; Thu, 04
 Apr 2024 06:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com> <20240404005803.GA102637@hyd1403.caveonetworks.com>
In-Reply-To: <20240404005803.GA102637@hyd1403.caveonetworks.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 4 Apr 2024 09:50:59 -0400
Message-ID: <CA+CK2bAiM_eC6k2EVL93uuOwB+hhV1WkDDK0YROo9-wAh=ju-w@mail.gmail.com>
Subject: Re: [PATCH v5 00/11] IOMMU memory observability
To: Linu Cherian <lcherian@marvell.com>
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
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com, 
	bagasdotme@gmail.com, mkoutny@suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_065140_084464_56A20E21 
X-CRM114-Status: GOOD (  13.87  )
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

> > Description
> > ----------------------------------------------------------------------
> > IOMMU subsystem may contain state that is in gigabytes. Majority of that
> > state is iommu page tables. Yet, there is currently, no way to observe
> > how much memory is actually used by the iommu subsystem.
> >
> > This patch series solves this problem by adding both observability to
> > all pages that are allocated by IOMMU, and also accountability, so
> > admins can limit the amount if via cgroups.
> >
> > The system-wide observability is using /proc/meminfo:
> > SecPageTables:    438176 kB
> >
> > Contains IOMMU and KVM memory.
>
> Can you please clarify what does KVM memory refers to here ?
> Does it mean the VFIO map / virtio-iommu invoked ones for a guest VM?

This means that nested page tables that are managed by KVM, and device
page tables that are managed by IOMMU are all accounted in
SecPageTables (secondary page tables). The decision to account them
both in one field of meminfo was made at LPC'23.

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
