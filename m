Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FEA8C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FEESvpfVwDwSiWNEwDzFPzCHusGxracejcabhBR7JY=; b=d0nLg+qfgYmuPA
	I6CdyvB2q7s6pp3YYfhGf6kYC+LbjNTBskwPk0YsAe5eEpSV7I8o5sRTFTAuoTETY6S3I1dlOaNK9
	+Ghp9dQO803qTiNpGAhp6ojGT+ZgKm+2fMsnuskPK3yOh/V8rsEdRUE8M7gaen87gK+vCZqy/KcQ/
	3F6BdP1SXV/AVrLilsWAOvMymvF3uw1fNYLOdQr/LZgrBpDJvQVgibZR9uBxeEYcP4QRroeWMucBN
	MDfc+R7K6un5ZYi7X487RgzT858kZ7S7oOdOxA6j7UMwMT34tpOLMY6LWi9RaIy/ZriBPhksnZDfA
	YSfMSiZVwUZnoigu59fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWA6-009uQD-1X;
	Sun, 24 Dec 2023 21:37:30 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWA2-009uOK-14
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:37:28 +0000
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-36000a26f8aso26135ab.0
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703453845; x=1704058645; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=pVxyPMcJnzxVjqwUrIgqhLO2uo1Gd7uHiOR5G5u7XjE=;
        b=a3qwWNkJCmNlM0bkda+phbCTO6yCDzc0qCJ5NNL+8k00XJm3SKOWBiGf7PQJYrQr1L
         hcGaC91DX21ffhrdYcQr+ndBEoVmQMUUVMM6ObNzd4QnnEr0o/lBIrDs2rs4uP8sOmKd
         pCxaLFtvqgtlD1KxQ12ZheST3RCsJCXbfwMCcsvETQECLu3zAKv9qYzDYbS9g7XVHfu5
         sVLHH+s4Hpy/V6/+6yQnjANNrsfO/jxsKu2BURWc+lG17jkkXX2/6WQH6xUddwo+orzx
         ufdNavQkfeMsEuTpY4O10YKlxpVPsCo67GyIxWFHFd+Fbfr8F1RjdKva+avAgKl4FnJI
         xwkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703453845; x=1704058645;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pVxyPMcJnzxVjqwUrIgqhLO2uo1Gd7uHiOR5G5u7XjE=;
        b=N2s/4D31EcQ5G3mucyvIm3uyDxp7ClMqwaza50ooBRSPiBBjdWZah6yFU816Ck/dD4
         2hHk+YWixXTWxLScyHFPazFmihAFhVUM7Bg8EIF5lH5Tw3DkhF2evPqoioDynACbIieF
         R14Zfqw8VNfA/ksDCAhaDaLp1rlzddXeu97xuI6CQH7xzpea5xwrKfbL/EahqRgKnoBn
         Fg1M8uqmrh6yJLgZjJ3hMQxuYzGXZleVzIM8G5TC1dgJ62PMo7TRcj2FkIPlcMWGafkr
         U7rWvSoPl9SSOoAJS0ZnktBCj1RkA+wmhPl/2BkqpVZLKAXfDF8wdx/B8cxsY2K9zQjB
         TpDg==
X-Gm-Message-State: AOJu0Yy8VFvgyA/CzByVDRWmjAzgA7VvLY2INBBQXQ6hO4aQzPn94rpw
	2kN9a/ao/wZBOm5AgKcs/Gv7Y5nQXYkv
X-Google-Smtp-Source: AGHT+IEltSw2it/AyEQL4TJEReIP7j1yGavDmVQF3lJZLlbsuLGoO+wANiaULFEhAWOlUQIZqn8B1g==
X-Received: by 2002:a05:6e02:1110:b0:35f:eb24:6e67 with SMTP id u16-20020a056e02111000b0035feb246e67mr189109ilk.7.1703453845125;
        Sun, 24 Dec 2023 13:37:25 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id x2-20020aa784c2000000b006d99cbe22f5sm3116025pfn.217.2023.12.24.13.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:37:24 -0800 (PST)
Date: Sun, 24 Dec 2023 13:37:23 -0800 (PST)
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
Subject: Re: [PATCH v2 05/10] iommu/exynos: use page allocation function
 provided by iommu-pages.h
In-Reply-To: <20231130201504.2322355-6-pasha.tatashin@soleen.com>
Message-ID: <5c2d33b4-3360-10f3-7d97-5cdcb29e4d73@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-6-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_133726_609869_BB2F4186 
X-CRM114-Status: UNSURE (   6.35  )
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

On Thu, 30 Nov 2023, Pasha Tatashin wrote:

> Convert iommu/exynos-iommu.c to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
