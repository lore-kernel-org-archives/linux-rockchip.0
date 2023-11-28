Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2196C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQ+WR04Ogi0+iBJsYrUhA+oKATFzc0YCdSVVqfbavcg=; b=dyWHWRM+eNyNhk
	i8rI++QLmDg3v0mBNHkwrh10wBVE1K2vjRZL2MV2eyF8uQ5RIs47hgio6EPSpR71ZismlGthyIbJf
	SvyKNc7iSY8bE8yTs7+3NHSz17vy/rbPka1BKsL+ilO6lyNy9qpoipm71/5J+NbLCkqXb/Wm6DhEt
	CGHThrnsF3HF+njBtUPfV0DPUQPGQAcF3Fq+wOGw5VjzCoomz6FuJDsTPj6LoYc4igcG15oGNwOAZ
	F14nIinDkpJsIaAeMplKWJgVVILSKpU2uEcv8M7wu2a1mNHCKb3CAN0Ki3Md+mdTCh7Ax5ZSWrSQj
	EGlGwzABVFWuTjbf/62w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87u0-006dCR-15;
	Tue, 28 Nov 2023 23:54:04 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r87tv-006dAE-1K
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:54:01 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-58d4968c362so2425910eaf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701215638; x=1701820438; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IEFdBGBIPfDPsFioHp1AVnDQQb24hQej9vfPWpRMMTA=;
        b=oSnW2ykbetCbsNAa+HEPmIGtu/fQgR0fL4RHYnJjDGeqmsBANFioO81CiEyajhkcXD
         WDfS0nurpBxyyI3Ohf8WjwFfsUbeQFYiEC03VbSlXM+pQBImu/Jz/oUjbckberYvqpwX
         UrnNlNvsy1Jh9n+dMYv6i+i7/9K3w+chfhZjaosxNwlEl6bogbUfPZA4cc507Z1ZHBXD
         ivgojTdG59omG91NWwk6VHP7rGF8ec00FrhR3OgKL6y1Jy/kbdsvUxm6al2USPC0xpTy
         Gdn7odZMhNht3yVecmMDyncmEYUMUEIkewNo5OvWWO+D8tzkVjzNz9ZHYiItjdSLDUsN
         3fCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701215638; x=1701820438;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IEFdBGBIPfDPsFioHp1AVnDQQb24hQej9vfPWpRMMTA=;
        b=JjEyQ0inqt7RShAvcCtPgFIN3dr7OktXBMgawxzFk86inSu5iojZJpCJafN92rsh46
         UPZMl404975zAdnd/oBs1Ai8LXmw9+rtPchMh8rTNGuE+OqN8kKQpRWBweOSl31NZ9xf
         rYNBRFHnWyKQ42H/u7ZDzbSKmVimT7OBvVfBYIEkM35ODnZhjhbv1arwlNtDbbGARTr9
         CCI7edvEwxqDvD1Yyv7FkVgau0UX87Lwf6/jDdK4bb3AeOXFnq10bjnzJsRTOMg5egcA
         rVu77vH8EB0qnMIlJD9n4qIsOdfBSChDwRnQfVpGwleovYi34sJaN63YtHtyXZQsW7Cp
         besw==
X-Gm-Message-State: AOJu0Yz1ZOGKRO6LHAUxz/BqdWTl1s93l+Fg6QWX4Fls+SpfOsBe6HKN
	4MBBkrOypHqGHfq5se9ZwLnpOQ==
X-Google-Smtp-Source: AGHT+IG+JvDO46eVb/i8IDuwEuHhA2SVxYkTSZoGtbM2c6nncwzUAA0+bA0p676nl1Is/JNEkvg0HA==
X-Received: by 2002:a05:6820:160a:b0:58d:9bb6:c38c with SMTP id bb10-20020a056820160a00b0058d9bb6c38cmr7347167oob.3.1701215638582;
        Tue, 28 Nov 2023 15:53:58 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id 63-20020a4a0342000000b0058ad7b0b1a8sm2117307ooi.13.2023.11.28.15.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 15:53:58 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r87tt-005jIw-Fu;
	Tue, 28 Nov 2023 19:53:57 -0400
Date: Tue, 28 Nov 2023 19:53:57 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com,
	alim.akhtar@samsung.com, alyssa@rosenzweig.io,
	asahi@lists.linux.dev, baolu.lu@linux.intel.com,
	bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net,
	david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com,
	jernej.skrabec@gmail.com, jonathanh@nvidia.com, joro@8bytes.org,
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, mst@redhat.com,
	m.szyprowski@samsung.com, netdev@vger.kernel.org,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com,
	virtualization@lists.linux.dev, wens@csie.org, will@kernel.org,
	yu-cheng.yu@intel.com
Subject: Re: [PATCH 16/16] vfio: account iommu allocations
Message-ID: <20231128235357.GF1312390@ziepe.ca>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-17-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231128204938.1453583-17-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_155359_450076_DE58E4E0 
X-CRM114-Status: UNSURE (   9.33  )
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

On Tue, Nov 28, 2023 at 08:49:38PM +0000, Pasha Tatashin wrote:
> iommu allocations should be accounted in order to allow admins to
> monitor and limit the amount of iommu memory.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> ---
>  drivers/vfio/vfio_iommu_type1.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

You should send the seperately and directly to Alex.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
