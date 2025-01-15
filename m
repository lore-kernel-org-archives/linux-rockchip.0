Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BA72C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 19:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+siarhxuknSSNXy5vYfTWGN86AlQJrkFkS60S3zwvY=; b=rW5XuZwEUHbs0g
	ZsPu21BdlPCGT58kdUSwZsiumN5hzOrNoM2EYuAyVfdljZF3JVAnhNlvV4TepJW6Brqfz+rvo5FPR
	wmpIiaRVMjSBRKmvurzGCx667jTJ0v9Qq5Xd+C/CEmc0oe1DmNK55corV+prpDnur5okEyzflLFHQ
	DkwWBlmpkj5MVDifQAzMRDYLZhUIzDk/Nn+Gp3HpyVuCCR7nbufEIH3TxfCNLf7/0XyF9kd8IjlAl
	1G/+i+CKsuj60cwas0Z07Tbto6paoYaVaOJ69GUY84eaogTHOmRn3jjiRkpFo6F92THjzyXv16xaw
	Jw9NLikTsVWAOZV+BLww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY8q4-0000000Crpd-1keP;
	Wed, 15 Jan 2025 19:14:04 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY8ol-0000000Cref-1XJB
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jan 2025 19:12:45 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-467a6781bc8so1187841cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 11:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1736968362; x=1737573162; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/4oGFxCwPaJgAdqTBVjzj8myjSC006R3VVcxomH2jWc=;
        b=CxhZXIdDBGbvOk3LpFKKptyg7++mxW2jK/f4l919X8cn/GqdWwWbLPdgfc0s1Yo3ML
         yvE6LE51F4g71XfO1z/prc3qJMsvovuRG+xUHvNi/7WFJxC6TNynrgJqVYRvENPyFch1
         1YMgzY6btbUp7ML4DkG3hjcOk3PWguf2F/P4CAFRE43uyBUph2xg9CpEdNCxvt2Y+k/i
         mehxWNJQHEjySZtRYsgvp7s3jrDm9A+wb9CM4XCIlQUNLd3bp0sorI7Wt9MIXDkTrTjb
         LaggSmihdIEuRGVWQIba7mqs62w2Icendr5EDNjg4oJunnkfiwskUjTfGAMv4xhz90Ud
         PKgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736968362; x=1737573162;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/4oGFxCwPaJgAdqTBVjzj8myjSC006R3VVcxomH2jWc=;
        b=tjNBEfQbsx/UKRc7pvU8ZZppJD5sSscJaV86YMophfYT5syMWFDZQ3dDkKsOB5s+ci
         jIgodvvA278CmeTupjfcLH2+UjJKL1mco3tYzl/IBQoVCpUmCB/X1/EGdsFjb8feocUM
         osq7yg9wEAgQ37Gxb/7QB63Dd8Mt4PUHFd/iQ5UQlAQuuIcE9k6FnppbF6D63V2w1kdM
         V6eJy5cfBaTIoMoDBZV7ZereHqIBHU9q+DVvAXt66wfsupIy9Xwxq9lWxDNm6NQh6wgt
         13i3Snq0v12ocQHbGfWzrChgzIOWVWw7Dq+e7CmWh8U8Ck1NbfUpQAufv2nOc+Y02v1N
         TCeg==
X-Forwarded-Encrypted: i=1; AJvYcCUSsjgs3oAU11I8OuUCGPlk4kgroRPEOCFEtiuXGsqtiAKJ17eA+sv0pohbNC3yq2pR/o/S4oyr5Up5N5AmrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyftx/QGQUexwTcqgVeBP5OssRaVOUQVdN+8M95sLQwK3pULHgg
	Q2+vnqeDCfT3BnqD3Wi1E7ATcPycQFDjxqcC5lAfr5Mri7Jd9PnYnov34/xZJ00=
X-Gm-Gg: ASbGncvIh87RVQpPfUTqm2oVsbENoE2NHu15MmVB+cEsqs+sY4KKZgcUHmdm8AMrii6
	Ck3Xiq7ODtAiBVDjECMxmKgvlAWHWjiVvO5nOC2hR5tqHVQMr9lQgYZtmcIdUcP+LJK2Se4wwj7
	ZNIdgrQyFM9Ital4TYJuwZm2HYgZLwPksCQKbSw+i5AKxXHvw8Y+UKPSEymxVE1Do4Mqs2HR3oW
	/ToDXlQGGQlGifVd54m0OmwcJvM7z3i/llPKUoGImrvsVPacCDP0f48yhro0jDfILGk6OOo0eIf
	HiU8f8HpU5Vz/xktViuJzh9Gc2ed7Q==
X-Google-Smtp-Source: AGHT+IGLgsr87VLlZ/6vxEgew2f6ev8/p69ziLEOON6TEwqWnOVVTirBJBkB/bFj8Dm/enP76kSGnA==
X-Received: by 2002:a05:622a:1a96:b0:462:ea22:33bb with SMTP id d75a77b69052e-46c7107aa17mr104417681cf.38.1736968361749;
        Wed, 15 Jan 2025 11:12:41 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.128.5])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46c873de559sm67648981cf.78.2025.01.15.11.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 11:12:41 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1tY8oi-00000002pPE-1jhH;
	Wed, 15 Jan 2025 15:12:40 -0400
Date: Wed, 15 Jan 2025 15:12:40 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>, Yong Wu <yong.wu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] iommu: Use str_enable_disable-like helpers
Message-ID: <20250115191240.GA650389@ziepe.ca>
References: <20250114192642.912331-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250114192642.912331-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_111243_571899_194E869E 
X-CRM114-Status: GOOD (  11.84  )
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

On Tue, Jan 14, 2025 at 08:26:42PM +0100, Krzysztof Kozlowski wrote:
> Replace ternary (condition ? "enable" : "disable") syntax with helpers
> from string_choices.h because:
> 1. Simple function call with one argument is easier to read.  Ternary
>    operator has three arguments and with wrapping might lead to quite
>    long code.
> 2. Is slightly shorter thus also easier to read.
> 3. It brings uniformity in the text - same string.
> 4. Allows deduping by the linker, which results in a smaller binary
>    file.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c | 3 ++-
>  drivers/iommu/arm/arm-smmu/arm-smmu.c       | 3 ++-
>  drivers/iommu/mtk_iommu.c                   | 9 +++++----
>  drivers/iommu/mtk_iommu_v1.c                | 3 ++-
>  drivers/iommu/rockchip-iommu.c              | 3 ++-
>  5 files changed, 13 insertions(+), 8 deletions(-)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
