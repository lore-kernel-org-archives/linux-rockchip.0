Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74A1DCEDD89
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MiQXRmWTaR+ICDIy3kTu09yby+UA29skWQMKQ5qZOjM=; b=NXDmw6N0pmhKQW
	1Rs6Ph9v8vzbjRJRoOMJ4puB6lZuiG70FLGAErBj2qXrPKYOZzuVHW79zXPOMWNQ0Kcd+hz+eysYB
	RZ0y6kxQgSJE2gwOeUHxlxuSYCxIUEj0MuvMrn1idAa4rIxzjX4IZDGA8lq7P3nzGv8A4b4X4k9hv
	IfL5itk9Zp0nokgWDDqfARU50I0WT7yWT1CqdE++Ewt88/Q5TpQJVohoWCQ9duAzp2JHQamVrjcZV
	c+rgVgxGQZt3Ums4ZUM9bYxTSXVwKwymjLR55kCWo3bSiwgIazHUtgzBgtm7qIlHAnbt5D104YxKY
	MCFSNSMPkxs+4ToVUVWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syWiu-00000009P3d-3s5i;
	Wed, 09 Oct 2024 13:27:28 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syWfV-00000009OYS-2quf
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Oct 2024 13:23:59 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e28fe3b02ffso858295276.3
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Oct 2024 06:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728480236; x=1729085036; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eKg7bGv/gDwJ8Dj8f1rz2qShUBIy5wA6pg80JRqhvBw=;
        b=wYRL2iMDHGJUyrCcjKh1Q1L24zXPo/Qt8huQn7dx8zFEX57hLWQDazgK/FchcTQR8R
         r9+Xs4xyQLRkmc9CXabMAg1nZWzYI4QoXGeYgkggZ7MuIvqFeEh1AtbrqM0VCQZRzLCk
         d+VbMaC+3YT1rRc+ixkZJYMyLQHhGrxwwE9ZTQjAucmSgIy147kgZXekBF0cu4fklOJ6
         D5b+q48AvQtKFTKHG6TxwvlCQ3XfhNyh9yGky7Lyq0rLGj0YJ9+Tblj7O8C6nlAzFrem
         Wu8UTRrAauTAiD3V1CqVCSDPL0VFZsI0hFlXKPb4Jz4ql1pvYAgiGUJOrxQv6kWOlBcr
         xg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728480236; x=1729085036;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eKg7bGv/gDwJ8Dj8f1rz2qShUBIy5wA6pg80JRqhvBw=;
        b=IsNtjqLRHRpQgwIzYV1Oda3czSBDNQbBg/NtTH1hC7b1Kcrch3tCWsq+KxvcstBE3G
         q10ipZViYtoiUyJ4d2mTjQ6Yioqz4w2dwzBVS5RaD0SdfwqRcdBL4YnzQ2uJrWxyX74n
         iF4n9KUVE8wCdf7OCdzDMCL7wVsEU05DCSK6oZeDE99WJ5S+Xq4/nOhQmmBR6FDCT79L
         x+gOAOGNz71KgK9/f9a6gHNsDeZ3ZXE48cQ651a/ivVeNwQFiar68XZ6v5SVMbtpdNeJ
         Ac+1tCBlGapOyMcBZTLOemUj4a182+iOM0duqnyaj7mgoyFIg+V8FNqQVYuIfDWgK0DQ
         H6HA==
X-Forwarded-Encrypted: i=1; AJvYcCVZ5IUC9aY6h+l6Hz4XJtbb9f91hgJnnuCJQ91gweRPASU3Xe2xGyKgw05kzpKBnF1b4kqJGami/vsYKx0LBw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbxoDzVfOVBjg2uwpk0JPbNL0jvyQHGd18lT1KAXXdnldMJJMi
	w1O/BpWv4n1jjMAWYRpyePpsp0DZyY5QyLDoj7RU2qmxSC9tQSXM54TVe8ihJogYAOHx/PFftxn
	7HHMXXcM/GhmHRh6FtRdU8YJIjChEYoFcvhjW1w==
X-Google-Smtp-Source: AGHT+IHdjIJEGNBc42+O7+FXjnfNDEy5mnh1GgAZbWvtts8h8pDmYrsy1bp7WIFON/JsxIYQBTwc7aUIRRTMf2jauEU=
X-Received: by 2002:a05:6902:2b8d:b0:e28:f7c9:49e6 with SMTP id
 3f1490d57ef6-e28fe41eae1mr2537348276.8.1728480236424; Wed, 09 Oct 2024
 06:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com> <1728368130-37213-5-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1728368130-37213-5-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Oct 2024 15:23:20 +0200
Message-ID: <CAPDyKFprgKOBGnnvJUvVxXUTPEHGJMXXQa_HssXxEt01aBRoVA@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] soc: rockchip: power-domain: Add
 GENPD_FLAG_RPM_ALWAYS_ON support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_062357_751084_CBDE4E9F 
X-CRM114-Status: GOOD (  18.32  )
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

On Tue, 8 Oct 2024 at 08:16, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> If low level driver claims to keep its own power domain always on,
> let pd driver respect the flag of GENPD_FLAG_RPM_ALWAYS_ON.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
> Changes in v3: None
> Changes in v2: None
>
>  drivers/pmdomain/rockchip/pm-domains.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index cb0f938..b2bb458 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -621,6 +621,9 @@ static int rockchip_pd_power_off(struct generic_pm_domain *domain)
>  {
>         struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
>
> +       if (pd->genpd.flags & GENPD_FLAG_RPM_ALWAYS_ON)
> +               return 0;

During system suspend, genpd may try to power off the PM domains that
have the GENPD_FLAG_RPM_ALWAYS_ON being set.

It seems like you need to prevent the PM domains from being power off
during system suspend too, right? In that case, why not use
GENPD_FLAG_ALWAYS_ON instead?

Or maybe the use case is different, let's continue to discuss patch5 first.

> +
>         return rockchip_pd_power(pd, false);
>  }
>
> --
> 2.7.4
>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
