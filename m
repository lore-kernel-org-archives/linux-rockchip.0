Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70D4FC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 11:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEI9EwWKAKnZx+az9T1hj6cSRXEf+UgZMpKpdZd6jX0=; b=z8IQcAburEUwd6
	Tu0X34PSN+sjVfOFlW5X+51r3TDmRXTSAzT/4p7Q2fskd8/wiMzWSi0TxAweQhTEJzzzqdAWLRz5H
	crTLXd70YpVvisnsFhqlddV/F+MM1wvyljAKWvrsuKq/o690XustFxRl29HEQbGRyvEM+5riwHWdR
	B1Ulx5UP0aiQNc6Zti+Z561UQAwFUWwhupxCOQ6DG8sQiaACxB/Nj1tFgnykfIVKrfY25WkuAnu/F
	BE6/4Zd3eEtRe3Pp5GaBMOGDpPOodR8G6384UlvcezB1D0kb8nqLlDPhfoQqBEItvDaDqAiADstbT
	ccYK7CggxlEMN+LsXPaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHhfn-0000000FdLF-0B3s;
	Wed, 21 May 2025 11:31:47 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHhdg-0000000FdAm-2qRC
	for linux-rockchip@lists.infradead.org;
	Wed, 21 May 2025 11:29:37 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-e733e25bfc7so5865310276.3
        for <linux-rockchip@lists.infradead.org>; Wed, 21 May 2025 04:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747826975; x=1748431775; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JWTPeu6guknXgD+xPLbcKD6/R/1DRiGD6zvZeqSl37k=;
        b=Bum4IgXQU26cEvdxfZ3Y7vcApqkyjyyXjqkbMk3wLANs4twdwXLWJazCmzmOoOL1uM
         sh3ho5e9DnEDo/hLtKoz+13muheRl43hczo57nb07oif6nJKCC4MDy+fDm5Iy4zhhKH8
         1M9jNA3nnQz+44JKON+tG86GzlvHAWIfZ822ij7c6NkYmliNcN9b/EqUSjuMEeY3liRy
         9C6sgrdmzjZpToIcrQqlA+hun7qcvW1cqd+an9ibrCmuM/tj4g3Yo8O+e+/8kSfuVyfG
         yxuU1gZhLMX5T8TIWSrSSls/zpJLjEh/ExaMKnFeR12wI+RzwlS+uRL4A1kfwXy/FY+m
         QmdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747826975; x=1748431775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JWTPeu6guknXgD+xPLbcKD6/R/1DRiGD6zvZeqSl37k=;
        b=Yce++aNCAksres4GWAeeGBchA4nUgLgkGn9chmLgXHjbDriRGk0oOMTRe7ENlNt3Lw
         eeUF57tPpI1zD/6sh/xVH3Lhi64jOa7lajni1542tyqq+Yk+sgDPIzsRjX/2+SY8pJXq
         T/lU99kIajFfZmW7ts7LOicd3XKUM32dHbuLQUp77NZcR3D8/VP0VXFkhTcdGCSoilhM
         s6As1H8Ty5ANSWVRceEt0W0aYnIuN0x1AMxKXyhP3asKGXII3Pucch+Bnrb0VQWTCF92
         tMdvwWXayE2/v6/mowsESirjdE+Gm+UNQcAH+zRgP2/JefBOp5PUbOocQxQ/+6UjnWbq
         d+Tg==
X-Forwarded-Encrypted: i=1; AJvYcCWdOQfMHkEHa9ZeOa15PdBK3JmLdNeteNHMA4ftT3SX/uJCdLnjvBhrPvnqrZfgCG4B869nwudDaaBEzL0zhw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwNsGXKKgXh8Y3X2rBUxucvr64pAXGHUSYzgaDJYdV0D5R8zbaa
	mHES+Gj0ols0sdKBR6O2FoihdE47FT/dd+WEyqJvUFS46Jyuk6IELZ9yrVU4EgxXCfjQTgkckVD
	rrteHdEVpDH5BenyKCLQylIyfY9vcGfFb1o+zrfp6kA==
X-Gm-Gg: ASbGncvVak21b62tqJjUw1ctxtGN5xGup9yFtabtP3D1jw6a01VkOxm1jSKdNdmJZcz
	LGHxwb9+yWE5fsyhbeWm5aOJGkdkHW7F3TByJNogncfFN3YHCymDCcbULtBJ+TtZPr/loIvHTWF
	lwm9jQbAKPXwthvX/0X9OD3mzLEzRoayhdBw==
X-Google-Smtp-Source: AGHT+IGqrJmtGm+y80TfkZ9qC6RzIIVW40VlzSH0k6DOy6nN+ldVjeL4cXPRTWEI/C6+tWZ4/q4Eo/InDg514PrPZMk=
X-Received: by 2002:a05:6902:e02:b0:e7d:5e41:a8a4 with SMTP id
 3f1490d57ef6-e7d5e41bb16mr2195411276.16.1747826975411; Wed, 21 May 2025
 04:29:35 -0700 (PDT)
MIME-Version: 1.0
References: <ab0476382e3342161beda94a45ddadb49b026dcd.1747760015.git.robin.murphy@arm.com>
In-Reply-To: <ab0476382e3342161beda94a45ddadb49b026dcd.1747760015.git.robin.murphy@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 21 May 2025 13:28:59 +0200
X-Gm-Features: AX0GCFsr2OpsfVkwDXkGW00v2KHCahRA4NOOOfoEOLpP7qgAYz-trCH0jo8qvFs
Message-ID: <CAPDyKFpT9B55kfGYHzOmb4_cvE-jDMajXBzqB1HLvVB_D+Nokg@mail.gmail.com>
Subject: Re: [PATCH 1/2] firmware: smccc: Stub out get_conduit()
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, mark.rutland@arm.com, lpieralisi@kernel.org, 
	sudeep.holla@arm.com, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_042936_728104_B30F19D2 
X-CRM114-Status: GOOD (  15.24  )
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

On Tue, 20 May 2025 at 19:10, Robin Murphy <robin.murphy@arm.com> wrote:
>
> Various callers use arm_smccc_1_1_get_conduit() to guard their
> arm_smccc_smc() calls - since the latter is already stubbed out to
> support optional usage in !HAVE_ARM_SMCCC configs, do the equivalent
> for the former as well to make life easier.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  include/linux/arm-smccc.h | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index a3863da1510e..97dc4d47c664 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -315,7 +315,14 @@ enum arm_smccc_conduit {
>   *
>   * When SMCCCv1.1 is not present, returns SMCCC_CONDUIT_NONE.
>   */
> +#ifdef CONFIG_HAVE_ARM_SMCCC_DISCOVERY
>  enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void);
> +#else
> +static inline enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
> +{
> +       return SMCCC_CONDUIT_NONE;
> +}
> +#endif
>
>  /**
>   * arm_smccc_get_version()
> --
> 2.39.2.101.g768bb238c484.dirty
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
