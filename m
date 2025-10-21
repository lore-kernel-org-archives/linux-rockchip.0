Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEFD3CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 10:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkUTmdByjTQfQ8k/DLOw5Q8093d1KVrnSxNB/49Ep/I=; b=ub6Zo+81ljalFZ
	KTUwOudOiFfa9UFA3Thjwt/9bDx/NbhdE+rfpP7DQcCDhzbuV934fVDUp/M4DWu3kc1K59moWhnty
	Hz1gkNM5gOJrDNHcQ6H7cfIcsC//TXPBGRNY7xPr2eLdpNRmgK/8rWhWqI+m52ej/R84dLnMhcrMU
	USSUazmPcczqWhjmPXRxcLoKSXvC3iyG0HgXqUNTQrkjr0ERixQQBEqZC1nEGA+UoHg1q830MShNS
	n5lGkNrlHHf1LCPLO2JGdRiZwSGqFgFsx9AfSUDKNK4uEBg9/92KkddMlXPQDmnV12hCXTT9yWnX6
	CKPzb6hRA2GzuhawGfqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB9S9-0000000Gaql-2nGc;
	Tue, 21 Oct 2025 10:18:53 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB9S7-0000000GaqE-3ZdN
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 10:18:52 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-784826b775aso35239307b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Oct 2025 03:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761041930; x=1761646730; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VSV64miEq6SNN4ENGfpeepcBv+FY5eGzfqe2NSbdXzQ=;
        b=LCU22a5ImWxXRPglmm9cGDe1JFNyQ8jL0pEFi0hML2wGq8wyihox8SO2CevPLgws90
         8eu9/ju6FftpYj9L+94T7SHaJlPF2ak4KqXRwpVUXyfO5Lz8AR9+Fcjv0E10AnMiymqe
         q1H2rJZdhQMUnkRMi4XPAEwzg8QY7Ngp/H/FMfE5SQhxKnaBuv57yJgwV7KloQybhzLy
         ZCgLxOAHvp+YsUKDltse3dhvLrgx1+26gNeu3JGpxJbhUitP5Kf2XAMo+rth+THxxa1p
         51oldjAOi/cyZPRxh3PLEOkqnOLw2CG/NxlGpxhcCjBt4dJepmXajLXuMeXae5deSeok
         v/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761041930; x=1761646730;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VSV64miEq6SNN4ENGfpeepcBv+FY5eGzfqe2NSbdXzQ=;
        b=v/uKHdk/cAO7vE+8Y3N9lkHZRKabfjKbMty6oNYEl4WjEy2O6P3hxydF1kY7ygF+j0
         adusMwbbpcA7v4xLEbHAxiCd/nCVwVRCn/osNNpUz+Uyukpb7bli6TGMVZLOMnNfxGhr
         uX9t5wPRFQJ2c9X9r8jq16qUSZNrVargg3xMqUYmLpNQkHfXk19JDoWXTtenmBOBzZ/g
         lgeTgCM6Sh95XPFQ+v1LHEHAQBpdFjR5eDJOgH1Ob/qPvj9JUvSNmt5KUWJqvvOnvXgz
         0sbvxjmNl182+VxlZdjkvvBJ5SwFbhaCiO7N+Kd+e58mEMhnKitqrf3IiF8ZB6KJjjih
         Jilw==
X-Forwarded-Encrypted: i=1; AJvYcCU4ndyiNSeyNdRfhtb3vutw1zsT2jgzV8aweW88RPQxEqsfECCLlDvnB+7DoVlCpXzYIFJcYgcZYyCnz909/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxrH2slcGFzvmNSGYjqMtPv8PwC6a0wlDqJrKPCjA3TAYzfCV6E
	RzNa8wP/V+muTlDBki73UkT32UDXLli0BMkDE0unware+yhJx2TsLdvalT32Wj6BgfaUKdl1Nkw
	0Rl6ZMQifd/TdWYaF94MMFWnAb/dOd8C/WT2FooaYzQ==
X-Gm-Gg: ASbGnctgNtlq/9zoWVAuMOptuwpwz/azlMRoiKWpUKugZTghj5OBUi7EYl6GpxAos5l
	3uaQb7qP9fbGT4aNej0G/8ovNcLkptVP9WQrneDnUYybTB9FKx32gL6DbBkQxWP1JOprkaaDLXD
	Yn2qJcnf3o0rCCSUu0u2e7ZKBHCsGwzu4Qt1AokD1OTpDl0dh6fu/vamfhB3JDay51hIWZ5CHMy
	n/+qtcDsr0bULjtMZvmC1/9QNddAbM0oJPZ53TSoi+AsSdb+5eJhpMAWTmywNw95hAgJLaK
X-Google-Smtp-Source: AGHT+IExyr4jzRbRE6gfesAsE6t7ySg8zgFgKjCwno7Ev1nt8NpIsy3iEOb8TkBNaANECnJvhMlf5cVTYmr6Cpg1k0I=
X-Received: by 2002:a05:690e:4009:b0:63e:17d8:d985 with SMTP id
 956f58d0204a3-63e17d8db6emr13403081d50.53.1761041930635; Tue, 21 Oct 2025
 03:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 21 Oct 2025 12:18:14 +0200
X-Gm-Features: AS18NWDQm-vrOUTUrisMfFjVw8v8SyQWQNv8yyxp6evWm-p1T9mLMCAPZTO-hLk
Message-ID: <CAPDyKFoKZTcFsLvtWqqXsxDmDZpSg2jvAw=U8xn56vzKFSiXag@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Change DLL_STRBIN_TAPNUM_DEFAULT
 to 0x4
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_031851_917824_A6635750 
X-CRM114-Status: GOOD (  14.05  )
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

On Mon, 20 Oct 2025 at 03:50, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> strbin signal delay under 0x8 configuration is not stable after massive
> test. The recommandation of it should be 0x4.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Do we need a fixes/stable-tag here too?

Kind regards
Uffe

> ---
>
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index eebd453..5b61401 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -94,7 +94,7 @@
>  #define DLL_TXCLK_TAPNUM_DEFAULT       0x10
>  #define DLL_TXCLK_TAPNUM_90_DEGREES    0xA
>  #define DLL_TXCLK_TAPNUM_FROM_SW       BIT(24)
> -#define DLL_STRBIN_TAPNUM_DEFAULT      0x8
> +#define DLL_STRBIN_TAPNUM_DEFAULT      0x4
>  #define DLL_STRBIN_TAPNUM_FROM_SW      BIT(24)
>  #define DLL_STRBIN_DELAY_NUM_SEL       BIT(26)
>  #define DLL_STRBIN_DELAY_NUM_OFFSET    16
> --
> 2.7.4
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
