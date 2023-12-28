Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20621C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Dec 2023 14:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3mtTLuReHj2EzNOL1yFMJmOcSwj6MkLsohEaoEcbvs=; b=sVCzQHQsnnUWFO
	aGOi0cn9LhAoJBNZI1BIf5ONE0iZQc+zcXUI9jXHb093eHy8BTVvdaOydQEvyF3676CXiOnRvyk8n
	DLQFz88qxLUCZ+tadCY4ipAQJ/ab77W6Hyp8Ow34IylGe28l+DLfesnKQxr3LqfahDM8eFVxZLBZo
	mAvKk9bHwiK/0b0pxwZRk3iWMx5kcmC4ujyuKYls5iBNdEE4ERLiohxpVl7yrwXYrh0V2vOxmIFDN
	gXenA4tX8Bi6yvv36g+9Dhd8WBex2z0y5fOoERNmqGIZUymAkLWdgK2zFwM0mu+0gne+0C++wFei2
	KoTuynGbJvlkhqmj224A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIrVp-00H0Sn-2q;
	Thu, 28 Dec 2023 14:37:29 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIrVm-00H0Rx-0k
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Dec 2023 14:37:28 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-427a3887483so45285831cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Dec 2023 06:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703774244; x=1704379044; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VU21beHWoGJM/Oi2NFAV2MrwGlZZbvr3br6yMg4QftQ=;
        b=QEOFQzhxwIYcyI08OBGkO+KfZzCLUOWY1tpbGP9CfEZFr16YvgIzaAdpYcbx62fsP0
         SNyALtDqz40baJVuyPs441qjSakdDbWigcGk+eRB3+lhJLw15TUYlg1LM8KLFlhS5Wbf
         rzIxQeMojNjNra9pA3Qv1ihcmlY96HHA1UP5L7XH7TqQXCWEdZae/HP1MeWRu8w8Gh9A
         6X5s04pVJkdKOUkv2gr7tEClB6Z2jbZrrC714yL8nx2BUQZJx1JF1czh8VZMYOSBnedo
         PwYtps6USeXfN6NEIF68XNn4PI0TJ0ehMMeQrp9QOMZtK6LZhW7rgC8wjAp0YLPI7caB
         0MjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703774244; x=1704379044;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VU21beHWoGJM/Oi2NFAV2MrwGlZZbvr3br6yMg4QftQ=;
        b=DfvnpRvgJIhgJNCyGQazlqE5p4sclDLwPPrLEcnuP9wG4sV81NiTT3/jNkRBbgytBr
         opJu1e5CxDhlMiYscgG3eTtWBOVAZw6FnfAWyjLCRw36rVPBY2znKMoTQJkkh+egLbsP
         3qMzDOX2nDUmoza07u6rB4TRMBtf30ihlAqtmVl9e+bew4nDpH6kgIAGEhxzqvFKf6Gy
         Bwqy/tpd4DPnQm93MqQ9J+mXIbe6uM/rtyfpG6rm00kYgsOVOu3tet5oAKm58vsMx3Lg
         UdZuaDD+lw0a8oVGELvJUmdwD/8nk4EymT2pIkVWcfy89dEROiSvZsXZgZOUKKzzM/Nz
         eu7Q==
X-Gm-Message-State: AOJu0Ywh2Z7ZxqR1LgjDXYs9oRl6vkJUlx/xYYpdE79o9NT2LQa6u0Uv
	9GMOBM+jXmyZCtR0CHsYKl0Kb4Rz4Ha2hMx90EWeJcYHUiSp+w==
X-Google-Smtp-Source: AGHT+IG/UmSKlDQRlBa0+Is4JntOVZHhkiYS93o0FbAPPReWbU+HuVGCau4VX0GkprQKsQRXjMZhGZwl3l+vLHMY8rQ=
X-Received: by 2002:ac8:7f54:0:b0:41e:a62b:3d18 with SMTP id
 g20-20020ac87f54000000b0041ea62b3d18mr11492563qtk.59.1703774244502; Thu, 28
 Dec 2023 06:37:24 -0800 (PST)
MIME-Version: 1.0
References: <20231226200205.562565-1-pasha.tatashin@soleen.com> <ZYv3BIeEgY8LnH7U@archie.me>
In-Reply-To: <ZYv3BIeEgY8LnH7U@archie.me>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 28 Dec 2023 09:36:48 -0500
Message-ID: <CA+CK2bCSB46sZUrx+jsCCtGb-DFUuU9wvCaTamYtKnDAaG9eVA@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] IOMMU memory observability
To: Bagas Sanjaya <bagasdotme@gmail.com>
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
	Josh Don <joshdon@google.com>, YouHong Li <liyouhong@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231228_063726_647728_4A69317A 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
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

> > This series encorporates suggestions that came from the discussion
> > at LPC [2].
> > ----------------------------------------------------------------------
> > [1] https://github.com/soleen/iova_stress
> > [2] https://lpc.events/event/17/contributions/1466
> > ----------------------------------------------------------------------
> > Previous versions
> > v1: https://lore.kernel.org/all/20231128204938.1453583-1-pasha.tatashin@soleen.com
> > v2: https://lore.kernel.org/linux-mm/20231130201504.2322355-1-pasha.tatashin@soleen.com
> > ----------------------------------------------------------------------
> >
>
> First of all, Merry Christmas and Happy New Year for all!
>
> And for this series, no observable regressions when booting the kernel with
> the series applied.
>
> Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>

Thank you for testing.

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
