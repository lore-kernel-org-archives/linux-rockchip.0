Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1711CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 17:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6guVdYUnsGfmV7grnCN2piyTHB93rAWy/MvI2tJnSe4=; b=4NJJPYQVuwVO3D
	Qc9WA5F+ld9INQkrGU51HLo6LebTYvx4np0LMCvp5t9Spof9uL/8N6pSnzUXtk2WCUDkBUV1ft7+I
	W7eu4ks51MuaJNpXw3qb1dfyODrtE1uHNX5ir9s4/8gN8dRtezLcpbiJvxPbJeEiUdvO5EnVZE46y
	kw91ToIwEv+2u8ePeFub1ZKv1fnIA9XOOmhgubrkQxDSup+LyzurJtUIJclvUULecsJWzbyV/5Ehh
	eEQfQHEIRZNCQXy4d4mZn9wjLIgJUcUc5bbvCqZeIKe/GOuOBV7VSArRYiJerMTWxx9m6olwEMsjI
	8P70i+0eidhZOfIZBRuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIsIb-00000007Xij-1tAW;
	Tue, 11 Nov 2025 17:36:57 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIsIY-00000007XhM-2pv0
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 17:36:55 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-78665368a5cso42444267b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Nov 2025 09:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762882613; x=1763487413; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7MADnIkU7xOrr/MM2P4jAeg7XkEdpz6a4qe2VMmU4+A=;
        b=IqexUABtI/A1/YIFPfrD2jIsG0X7FLJDbh1xJkOqHS1OQoiKeeJNnv4bWCUYSmw/mU
         4nPuu6EvrBr4VJLOOLY53HLOAsJh7dIn89l1K3NP543E+9f1ZNKMN0Td72bYS4VzZ8yk
         hnBsHXnLJpFoYKjKQfsslEjSVc+nwFHhKDqUlppToSM2mPgyeOEKe7iW5zIXmgbKJUqe
         wEitGh3ieCZoV3B7ouBXtdK4RJMP1IcW9/wAjSfXd0CBi6Q4ReUcD/DMj8/M7WVHCQFx
         M54pHRHhR6jTRrGK7c+ZxYWluZtJ9YIQH2KskkDzEreoqagLMNcyG3iaUPGCHkMW1ZG5
         HshQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762882613; x=1763487413;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7MADnIkU7xOrr/MM2P4jAeg7XkEdpz6a4qe2VMmU4+A=;
        b=huN1sWn0MXhfn8N2b+Lpyvxemtf+b4czG9Z6mXsnB+imicLvAOFJL56NYB8lf348bc
         Y/WflVv3zq27uJwdJS8/WEocTyVn7EwKJvNU3yaO6HIwScdBt/qNytxBk4e3fnB7r/Da
         IFalDGWKqdq4YKGR+ko8HOOmu+ltqg+AjH1oLQXfKpzLP0UP+aaiEFb8aTtjHGUFF7gy
         gp5QrLWJw0SHlbJM5gM47NbRKFz31yNbdfHhQWzhTYx180uDi8YnTTtiJsks+pZISulf
         mvE/6bDZ+DmZ3A6H4k+Ce1BxkEfnsJQPG3gFZI2b2BFlCPq7c7HBDV1N83LcTcJwrtvT
         f+pw==
X-Gm-Message-State: AOJu0YwDwHz2WGGWfE+RZo+Froy11wolxGbx4ltOglexhS3ktrO9dx+b
	f+ac4fdzpTXefcyqEQsN+QYWiTUwdu0iLKK9pMVxsmTqRyW977zJJJpj843n6QJN7aMZD0YsfrC
	auYrT2+kUskgNYckwmPqrC+6hiu4YfSgMsdINuEn8FA==
X-Gm-Gg: ASbGnctyKWONHrbSs36AnDo2UeZtfGiR1WMl0znHHeL2GUSAE+EiVwHBUOWa+lIYMUJ
	X6DrGxkNYuK5G1+9dE8UluNSUmw/dZ5IwLmZ43bwDzQdvJPtMeHUydSrVW2BHSwsuHgTM+DXR+r
	xsLQujpWIwJ1OH+EgPshwUripTp55ngyvULSfwPSDF07luReDgyLz1Ae7IeiXb8QOoT2PFZ08UP
	fKGp3LVyYRdzv4iXLrFMhL4fCn0ay9lzDAnR9phYRjcuANOXb/wq1XSdz6fzSmM+SgpNUtA
X-Google-Smtp-Source: AGHT+IE8EqENW+ka3s5tGfwqiSIEe4stsUThcevDIM606OIDbbMBTKFRsfridyMjoX/1S3u13ea3XAYaXtSepBQyUkk=
X-Received: by 2002:a05:690c:4d09:b0:786:5789:57dc with SMTP id
 00721157ae682-787d541b354mr123645707b3.41.1762882613604; Tue, 11 Nov 2025
 09:36:53 -0800 (PST)
MIME-Version: 1.0
References: <1762228283-5025-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1762228283-5025-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 11 Nov 2025 18:36:17 +0100
X-Gm-Features: AWmQ_bmfDFVlk3K_o1BypDDZfP9YmJgmbccvjnXKBDypfp4_lyMPMlf6pXf8dB8
Message-ID: <CAPDyKFrdnzqeC=b5LBH+AsrDmbwXWTrZZpAHo58pB3=OdQf1cQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Fix wrong internal phase calculate
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Detlev Casanova <detlev.casanova@collabora.com>, linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_093655_130961_553C627D 
X-CRM114-Status: GOOD (  16.25  )
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

On Tue, 4 Nov 2025 at 04:51, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> ciu clock is 2 times of io clock, but the sample clk used is
> derived from io clock provided to the card. So we should use
> io clock to calculate the phase.
>
> Fixes: 59903441f5e4 ("mmc: dw_mmc-rockchip: Add internal phase support")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Applied for fixes and by adding a stable-tag, thanks!

Kind regards
Uffe


> ---
>
>  drivers/mmc/host/dw_mmc-rockchip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 82dd906..6813549 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -42,7 +42,7 @@ struct dw_mci_rockchip_priv_data {
>   */
>  static int rockchip_mmc_get_internal_phase(struct dw_mci *host, bool sample)
>  {
> -       unsigned long rate = clk_get_rate(host->ciu_clk);
> +       unsigned long rate = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
>         u32 raw_value;
>         u16 degrees;
>         u32 delay_num = 0;
> @@ -85,7 +85,7 @@ static int rockchip_mmc_get_phase(struct dw_mci *host, bool sample)
>
>  static int rockchip_mmc_set_internal_phase(struct dw_mci *host, bool sample, int degrees)
>  {
> -       unsigned long rate = clk_get_rate(host->ciu_clk);
> +       unsigned long rate = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
>         u8 nineties, remainder;
>         u8 delay_num;
>         u32 raw_value;
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
