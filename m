Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA9E606A32C
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 00:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HM/hauER;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=YPs+OaY5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9/NgYPW+a+nzLc4xnVrlkuKg69qCIZGXPQ9Nk9fmBko=; b=HM/hauER7HV1N78eb52S9ZpcY6
	Po7cpL3CdDF5fRh2rECUGXnpF3Evi3NMOJ2XAeEtv3fXd3a2hrRdAskOom+YQAEWQ6LMFDkbu7Lop
	ZwNqrfaFGkYT6XP6rfrkWi+n1fTyKPZQCaTkZ6DDb+y+opu9xH6Oli8cArEJUupWJr3WweebTmca1
	FyCt+BLHQCy1zkXaOygUMRMFRZlaf4/s1djVyLjMg3MSSwY5ve0xtLyQWrJGiuczzwLiRo0uhJURh
	Ds16clxChQRAcLKIRFK2gTWcF9pQvMq3Jzoh45egyxRWQ2ptMH2EnDC3zAoGJsY8ANg+MAeYMrTQS
	4S+m3EBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSOVm-0000000GwK1-3MBY;
	Sun, 15 Nov 2026 00:54:26 +0000
Received: from mail-dl1-x122f.google.com ([2607:f8b0:4864:20::122f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSOVi-0000000GwJE-306k
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 00:54:24 +0000
Received: by mail-dl1-x122f.google.com with SMTP id a92af1059eb24-1a3c08d6928so3035031c88.0
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 16:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794704061; x=1795308861; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wom25+2wqiUds1POyI+eHp228E/IXzic3h0qgPh6IYw=;
        b=YPs+OaY5t7hwUWnOOLi1oeBcXCNfdK7ZCbCiYq5xwOuQaxGv0PBGt2vX7tHMZ8WDOK
         o5vKyCjSwwqiCoDzpMcJ94rVxyix1bZGaixC/ndqNqkq9NbPl6nZr/qDZ4omyUNWfK4n
         ftO5WZl3slqzTWhW9cFD1zl0lFKyD25HzGZGIxPrLOJ6moYKVO8UqTtQHbq+sRqkTP62
         3B/qOmNfAyRbuEVBjB2Et+7iDsLV0htASif0bXGkUPvq4nEUUF5UqoWfVi6L0wFPCZf7
         iCzs9pygKULkYQcLp2ie4kCAyUqXTtB0dBF4111CSBnD8H/GGl5V6fxV0TrztgHqxl64
         mv+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794704061; x=1795308861;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wom25+2wqiUds1POyI+eHp228E/IXzic3h0qgPh6IYw=;
        b=rThmEFoo4u/6flFsv7PiVsUvtRHwlMqQK88popbMXjRrUsx9SqYo+ZpKym5fwf5xHp
         UdOwFk8FsX5Q1yEorQEvNLjQLVtLIHTPamba5LLu4TrGr/SpoBpZow8N2QzrF5hd8Xb3
         uCgfYbHQnRpNFjEcO7/9jdYTTkJI8qdDVEi5Rw3gScs9dhRwQSf+nE4ri5kvEJHsEjnp
         QiOHqCa30IBGqsRdtUTCKM9s6ZSSZ3BKQkuZqOq4QKIgtXStQzGpGvLauy3paIiXGpZ7
         DPa90JEs6NwbyCvuF2GalFyYupWJ9zQ96J5qM6NWRKou+rkWnA0DJ+WrTg18NNlU9wl1
         yxcA==
X-Forwarded-Encrypted: i=1; AL+hErH9MQ7Ey1soC2XVs7/fmJeLIbmxcNgxiHyojioIZMYt3vf9b8nPqL9jBgDHAA1muBAI2llgxRoAA+IXp0RyDA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8Neum/sH/N6TxtmDyiuHUPAEYMjApoGZ21BP15i8k/xJtEox7i
	FOFmwo+52+hEvNgmbrHhvn35Ogn0FtXTc2gdiS0j+/xt+1OrQuDuJM83
X-Gm-Gg: AYBFou3+0YS3RLYNJ0U/YRiuvOEwy/augj2tLVprDwQhIxWSwqfxT6U5aNAKPC/BRNH
	HhGMa70qpo0CwkGRCF3yPstP2MGZBRmBnjsMSV3B/QDP9E8RMVAfMHEabIf7d6A0zf66Eyt5yEu
	bGdx2rw7sGmba9rMwLjoCMybgMO+WAI839NZ4jQvp85t9pBl1654WsHzOwZByacWceXYyAvHAUk
	aWGRGZXqlaIOaBp0yVQx80BD6DXvakzK1ANvni4OjBffI33cJK8fgx0JQZoJ+h5awP+VD6MAmwy
	12qJTV5DCxC0NDRtSQjt1Dow6kF3N00rzYnLcLJJmc/flYx8CIKSzqS6xhDQ1P3Y3cKl89N9pp1
	6w9sAYVLGXc6lAZVTi8BH9LJl2lnV9zOjHGL7f7/+AsepE/Bb/t4dIn2iPhH4KXsiXtV08KoO7r
	A1t3RmgYfxtgJc6GkT19IDvRsXuPixD18vX8JrofjI/nCM7KZQi+Dse8eTErVZIqSpmSJHZypE4
	5k5bQOpcPYGGVJCPtLnfjR5loJbOZCb1EhPkWaoLTm/F1YM3N4sBy7b3Azr9E0mdWP+yuPCJZou
	go26/IJXzqPCubZIOepeZ5stZsN9iFRdDLjUWmuh/+VUrUofuXSXbfKZMv09+SYXNB4=
X-Received: by 2002:a05:701b:2706:b0:16d:dd5c:4261 with SMTP id a92af1059eb24-1b503120981mr6267107c88.46.1794704060898;
        Sat, 14 Nov 2026 16:54:20 -0800 (PST)
Received: from [192.168.35.43] ([218.50.238.131])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b50313d8f5sm29598546c88.3.2026.11.14.16.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Nov 2026 16:54:20 -0800 (PST)
Message-ID: <9c1a915b-dbf5-44d9-88eb-680449348dcd@gmail.com>
Date: Sun, 15 Nov 2026 09:54:15 +0900
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] PM / devfreq: rockchip-dfi: add NO_INTERRUPT perf
 capability
Content-Language: ko
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260921-rockchip-dfi-cleanup-v2-0-43ff34ac8599@collabora.com>
 <20260921-rockchip-dfi-cleanup-v2-4-43ff34ac8599@collabora.com>
From: Choi Chanwoo <cwchoi00@gmail.com>
In-Reply-To: <20260921-rockchip-dfi-cleanup-v2-4-43ff34ac8599@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_165422_822946_C2DF6280 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: chanwoo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/22/2026 5:32 AM, Sebastian Reichel wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> The perf subsystem's PERF_PMU_CAP_NO_INTERRUPT is a bit of a
> misnomer.[1] Instead of meaning that the PMU has no interrupt, it
> actually means that the PMU does support sampling. On CPU PMUs, this is
> equivalent to not having an interrupt, but for uncore PMUs like the
> rockchip-dfi PMU is, no meaningful sample data could ever be generated
> regardless of whether or not there is an interrupt, as it is not a CPU.
> 
> Since rockchip-dfi doesn't seem to make use of the interrupt the DT
> provides it with anyway, this was probably never a confusion that
> existed in this case; the capability flag was likely just forgotten.
> 
> Add PERF_PMU_CAP_NO_INTERRUPT to the set flags for the pmu struct's
> capabilities member, so that the perf core knows about this limitation.
> 
> Fixes: 4d586b5724d3 ("PM / devfreq: rockchip-dfi: Add perf support")
> Link: https://lore.kernel.org/all/20250619140442.GH1613376@noisy.programming.kicks-ass.net/ [1]
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 5339616f7ca6..dd9edfd6a674 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -646,7 +646,7 @@ static int rockchip_ddr_perf_init(struct rockchip_dfi *dfi)
>  	seqlock_init(&dfi->count_seqlock);
>  
>  	pmu->module = THIS_MODULE;
> -	pmu->capabilities = PERF_PMU_CAP_NO_EXCLUDE;
> +	pmu->capabilities = PERF_PMU_CAP_NO_EXCLUDE | PERF_PMU_CAP_NO_INTERRUPT;
>  	pmu->task_ctx_nr = perf_invalid_context;
>  	pmu->attr_groups = attr_groups;
>  	pmu->event_init  = rockchip_ddr_perf_event_init;
> 

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Chanwoo Choi
Principal Engineer, Samsung Electronics

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
