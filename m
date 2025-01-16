Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27E39C02183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 03:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JK4lvdXe/bqvlXSXastnP3mx/eZ6h1MLCBkiBgziKyw=; b=08dzOytUrRE6s+
	+ZZLi4UD4262m88njRuTvn6i1coKlgubcoDqaljUuvc8r4FeqQ1oVdwxzyWXGVZZrdJeCRUWXZcL4
	TN0973hnsU+e89tXQ7aHw9c7SaMDV/b/OUR7rjHKXqopQwzfTENyoZ+ckiUsFRoXsuAnImckg1sa8
	8Dqi0T5FoxgFJ/dIvxa1zh8u1SmYoB9rE5GjPK8C80YRnqtdYJL6DCE1iWYCreuB3sTG5+tLNcuAh
	iuBlsWrPs83YPKPS/C4nHSlEuojeY10w1kanf3GM5g5bPOlWhcVkcEX4pqXF6cajX3X6UvNUzONzv
	VZ15pVnNwVc5C+sZoHGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYGDG-0000000DhIp-3j04;
	Thu, 16 Jan 2025 03:06:30 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYGC0-0000000Dh3Q-01ab
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jan 2025 03:05:13 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-21625b4f978so61675ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 19:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1736996710; x=1737601510; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7cuWckv2mg3iIR5MCaEBEb/4QCrqfrfbJmqZ9RuoMko=;
        b=Gb485FGif74mBzCnrSSbdC6jKxKLVzjmXc+4NF6YRSKwABhkPjiyqOYBjxaiy/WE4g
         YmG/NQy2/9GEZQdIB0epj1nhNPmodg9ud3nHcR6WSJhDXR7FsA2QORJJbvGpb9DKaUba
         c/kF8JBI26wSdUzj30jnUJbzVVHjRXEftAO/gxkIY6NbzTUbO5AnVboEqILtQE9bV2Mb
         YTebA6R30iqubJay0x66IzE93E2h3pZcPCbOJEAdQGr4/a7NlXHxyk/sW3hzrGXVl3Ek
         kWv3EIiIOZLJ5ZTV8MBDxN4qYf1GrEwpBcg+nKP+kN7VUJ1zDOqA5IjQkp2FgBg6KsgU
         VzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736996710; x=1737601510;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cuWckv2mg3iIR5MCaEBEb/4QCrqfrfbJmqZ9RuoMko=;
        b=UWOtBQsFRebL+Tmzoexn4bb60K87bLlychYDCoeowwtjBvRwmRXB7F4JfH5tzJEpZ7
         u6nBElguICnUhrj2rzblskHFTeQ+HkIuoyeNDuox/bhczuE9qJI2ZytlwmAohJHUbyyi
         R7CUFTO22IaswaFyTnWvE5Xi4BMVR8lm1jQ+MVU9xGJ9NzIxmF/BJ9Etvo8wM7Na7RL/
         oR8+ihNEZx4DtF4TdvlwhvkWVihzQEbmTuZNWovJbDZVxyfHQexM61o72nHptsZarodE
         WOdiV3CwtE20WFAalXNfMw/2r0Hwr1Jzed8JQ5m3NNpxI8XarO1z4Btq1kvY2PC/vh2v
         6SSg==
X-Forwarded-Encrypted: i=1; AJvYcCUqi3lxOzPsRu669+kLYN7BPf6qBI+ZH+qkLA+ocHYpJFZ8Um1jmnmvwnM69oBjW6/iV/MjR1JIjxY1F7wH+A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+FIzwUVZht6GW2Ke1HuEKJY1eN4tX4utlUfK1XPAdMSLkUwwt
	SHKBra/UsjbQ7iwLQ/lhVrOnGnyVUkUHKqpHP8dHThHe4tehezg0ZNeyI0UJcg==
X-Gm-Gg: ASbGncsVV7qayqs+u+6ld1rZKndlEghOfVq62mA/9x5lof+Wi5e5oQNBvsCrk9AxEI1
	go74NN03h+q5f+SNEbsCCqVotEP5035I5WkM4g2AQx1lPFZwXcMm1Gj5AyPctYEAwo6DL22f3Hw
	u0yAfkvOGkKaPtj++UHEMjf8ZGAHm+sjXvyHXZfnf/mKqus1MseYlUKxBWDK2NhZ5L8IDIFrqQu
	cNWPsw468GI1h0silzn1x3PzgP1FKifItd4KuvM6x8rOFfLEOphQtJov1kPxBy1AaWsGdcsQqqc
	c+4ZZU/4jO4I
X-Google-Smtp-Source: AGHT+IGgvey12XcQ8iP4n+eaUVK+cmvSLWMH2UIplRse6X8rSW8rrU74w2Bbqndq54XuqjUDHEawSg==
X-Received: by 2002:a17:902:f785:b0:215:69a3:1c94 with SMTP id d9443c01a7336-21c12cfe139mr1268815ad.28.1736996710051;
        Wed, 15 Jan 2025 19:05:10 -0800 (PST)
Received: from google.com (1.243.198.35.bc.googleusercontent.com. [35.198.243.1])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f72c151cbfsm2135397a91.6.2025.01.15.19.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 19:05:09 -0800 (PST)
Date: Thu, 16 Jan 2025 03:05:00 +0000
From: Pranjal Shrivastava <praan@google.com>
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
Message-ID: <Z4h3XHrzB53IAvys@google.com>
References: <20250114192642.912331-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250114192642.912331-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_190512_039364_2291551D 
X-CRM114-Status: GOOD (  17.32  )
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
> 
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> index 0e4cbb2c64d7..358072b4e293 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> @@ -26,6 +26,7 @@
>  #include <linux/pci.h>
>  #include <linux/pci-ats.h>
>  #include <linux/platform_device.h>
> +#include <linux/string_choices.h>

JFYI, this include was merged in the arm/smmu/updates branch recently,
hence it shouldn't cause any trouble while merging.

>  #include <kunit/visibility.h>
>  #include <uapi/linux/iommufd.h>
>  
> @@ -4321,7 +4322,7 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
>  	 */
>  	if (!!(reg & IDR0_COHACC) != coherent)
>  		dev_warn(smmu->dev, "IDR0.COHACC overridden by FW configuration (%s)\n",
> -			 coherent ? "true" : "false");
> +			 str_true_false(coherent));
>  
>  	switch (FIELD_GET(IDR0_STALL_MODEL, reg)) {
>  	case IDR0_STALL_MODEL_FORCE:
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu.c b/drivers/iommu/arm/arm-smmu/arm-smmu.c
> index 79afc92e1d8b..de205a34ffc6 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu.c
> @@ -34,6 +34,7 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/ratelimit.h>
>  #include <linux/slab.h>
> +#include <linux/string_choices.h>
>  
>  #include <linux/fsl/mc.h>
>  
> @@ -2106,7 +2107,7 @@ static void arm_smmu_rmr_install_bypass_smr(struct arm_smmu_device *smmu)
>  	}
>  
>  	dev_notice(smmu->dev, "\tpreserved %d boot mapping%s\n", cnt,
> -		   cnt == 1 ? "" : "s");
> +		   str_plural(cnt));
>  	iort_put_rmr_sids(dev_fwnode(smmu->dev), &rmr_list);
>  }
>  

For the arm-smmu part.
Acked-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
