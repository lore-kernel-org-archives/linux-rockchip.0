Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BD3EC46CD4
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 00:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxk1ygYAPP6xSyDdto+M1/5nSuK2AKmSd8CnBqcZ2ig=; b=GIenn6BGXfOLP8
	07s2dLZ0QChrsjjunoSvRRSMGnshv3cM4E7sxlZMPxLJiLG0E90VbZpfE8hBEMFPOSHDsK6uzfxax
	XKfstHCQc6GS2VwEQ1q0w38yrzj2B2SAo+STHbHODuN92mUKVUf9UJDqEPiTf42LXFgHFLJJLoyLS
	oFrFb+rvxd0uTatY2MwaXyl2rjMb5+79t1UZLYAPDqk1bWAfALSMu1HDQwVi2hhZ2FU78DnIZRa9e
	qOIcjzAsfAnE+/vFyKyA5qf4BvWWm3GfGPn1tQkY9mQpNtbmfxBNyq0EmzvIdQkfdVTctahmzFlV0
	GuD8q9s12Q1VzCcyoSRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIHlv-00Di0e-0r;
	Wed, 27 Dec 2023 00:27:43 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIHls-00DhzQ-1Q
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 00:27:41 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1d47fae33e0so18925ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 16:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703636859; x=1704241659; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=tWB8GEfhgaG2StCZxtDIu7qsHSf/rZ4sNtnlAoGbWAQ=;
        b=dms/CCmmdBSkxUI4PjICT4AN+y9J4WZYPa8qqAIx+JvlHp8VTt1fX1x2LbECqpQcoO
         79UoFVs4rZ8mU9RPsScrM0/fzcsDAi6VUrVykK0ZHfjdXwg6pbeVFLp1qJRgex7zu3/i
         OprsRJQeJePk9ci9ohEtZtsz76KEDC6JzX8KCNft0FE57O5alENbgiR3mXbl94NVvjVL
         gTgolGCy6/SIhekNdA7+fBpfmVrFsgOnZL685bqhENgEtIcXVEAlQIYxUIEcnGpklt9o
         fgid7VkwhJlGD5KR3aDm2w+QYyxyLFF150coEUJiw01i3CF07sJZsZ8WjKtYmA6gRMTX
         9NHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703636859; x=1704241659;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tWB8GEfhgaG2StCZxtDIu7qsHSf/rZ4sNtnlAoGbWAQ=;
        b=kHo76RWpNV2PEpGO2IGlMin2H8vd5dNGm611DyoKEZzOR3PY5tXO8OQZy53kIqwgYP
         9a3PTiARxBTHe3cAxuyS+w+WgItu6PbduCV5P+ULfUNSpHQwOY7CRXBmcAZ5hnk6WwPW
         v3D7HrD/PY7Al6Xifnhjxllv7iRtFqc5Ig+J8L/QZ9C4pp6pRd+ODRpmBB1LBmG3laCO
         1DxjOOJ0T7ain3Icx/b9doWbKyZOyvhRuGbAjmxnt2MErSps7Ntv+sNuSyWRW6FJ1HrH
         1XTO4FJ97aGa7ZjuOL9gUTYYNv7n1jrkrEALt+bLhcat971qwb59uVGh8pQXFELB3bIP
         yiqw==
X-Gm-Message-State: AOJu0Yymhu5T6ZNlrfX+PmQrir/dIcYcbhYLCwqhXgF05VeeEx0MESID
	Mo7GUdTH1b1qCmREuX9/tyWgtH7qMmVn
X-Google-Smtp-Source: AGHT+IEt5kz+5IRUGXbqQvg0LHmZbhtvIOnJMwFJGwN1byHl8pOfJREKbeZKfGVR7i5FozKA6XE7xw==
X-Received: by 2002:a17:902:d508:b0:1d4:69f7:792b with SMTP id b8-20020a170902d50800b001d469f7792bmr170997plg.17.1703636858562;
        Tue, 26 Dec 2023 16:27:38 -0800 (PST)
Received: from [2620:0:1008:15:5a8c:89e6:ca2f:ea30] ([2620:0:1008:15:5a8c:89e6:ca2f:ea30])
        by smtp.gmail.com with ESMTPSA id l7-20020a170902f68700b001d39af62b1fsm10527546plg.232.2023.12.26.16.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 16:27:38 -0800 (PST)
Date: Tue, 26 Dec 2023 16:27:37 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
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
    suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
    thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
    vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH v3 01/10] iommu/vt-d: add wrapper functions for page
 allocations
In-Reply-To: <20231226200205.562565-2-pasha.tatashin@soleen.com>
Message-ID: <c8311c45-72e3-8ff2-c206-3dd21f6a9bed@google.com>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com> <20231226200205.562565-2-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_162740_477443_5F3EE8E6 
X-CRM114-Status: UNSURE (   9.28  )
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

On Tue, 26 Dec 2023, Pasha Tatashin wrote:

> In order to improve observability and accountability of IOMMU layer, we
> must account the number of pages that are allocated by functions that
> are calling directly into buddy allocator.
> 
> This is achieved by first wrapping the allocation related functions into a
> separate inline functions in new file:
> 
> drivers/iommu/iommu-pages.h
> 
> Convert all page allocation calls under iommu/intel to use these new
> functions.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
