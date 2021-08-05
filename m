Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31BC4C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 13:02:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E3B4860525
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 13:02:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E3B4860525
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6UeCmxWpDMhkueZVm6A/LJzIG4828CAJPSnw9m9cS8=; b=lktHPhDdfpLwz7
	xfMjHVTi0fRrr225xO6uPpoE46AxLDAtEUW2M2VaDkQnaT8RWUoxjWgT9ycukRKAT/XmMjg0s9QVl
	1Lm84WgYgHB33QHdAjwU6P+YxKMlRlwXIwg/H+WkNL123ZtQAICQ/h3v19uRbN8q7lbQurf+I2itI
	VA62bVriksT0ryVbTs5HzgNN09MMgowm2QwjrcL0jq6S1bub8oYVFwgRg14xc/I405WI92ZNWOU4H
	EPq71QArlsHfJIJkIcML4Catqn50AoHs3sUu/Q+VwQqhkEI22BWI7ixOEH6mLpi7cC2pX51ZATprt
	anz5XXKr+WLoe5zrtNyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBd1D-009bGJ-0I; Thu, 05 Aug 2021 13:02:39 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBd17-009bEQ-UY
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 13:02:37 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id p145so8823183ybg.6
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Aug 2021 06:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k/SW0jT6wSJBaYFm6P4xqY8rSckS6wlmdeNG9tc9hKU=;
 b=VfGm00bkQAnHpDptX5frFdxF99RwF0aAXCTj4vVJJOk+xPjSa4F8qs3LHx+C6RC5AM
 /0KBAQoXb51c/iHpbzP69sDWMfI9gV7/8s3bUgmKlwplbJuvcGTD7xfVmRQ1D+JLbZAz
 8zAAgsF/tfD6M29p/EMKbsk/cT7cnvU33F6YfuWYeaXvE7rhpMJEKaz2oBqnT2RjrvCm
 ibb8FGKgmKSbCGJLQUZDwndmpWbxDRGDpWkLXMsckNBEh4cj+Aw780G4Oj3Fvm2qtpaE
 flziK2gQ/Zt2MA04YbwVKXU7dBsk9wEnOnBIf0bnSM2kAes612NaXvO8xehztXYtx11/
 hpsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k/SW0jT6wSJBaYFm6P4xqY8rSckS6wlmdeNG9tc9hKU=;
 b=IQMYPV9SSsXuO5VDoE7cH+Nntd5o3w8fgrEukdtETvdqzNNvlIrH1E7WM+xUsnJyZC
 7qa9dw7eSHiW2msP26XWZA3TlchgvUJ96kDM4jb4rqy/IZo1XPfruU02yxYwPIjCbly2
 ZKuGfLJKV8Q6dZwh9+0g/kEtCq8Czsvc7dg2C16DFzwJJZhoZTd60c7OEj9OIXZ9YQXF
 wvwyO44574Ob7fkWH3TYMZUK4dQzBzH/36RbLZuA3U5jrn8gpSfhj7TTWRXF96qPCIwb
 2QevB0sYeBR6UAIBkjQpX5pMg8aDcjP5INROoRqX6dTF+wOAy0SAXGlv5vwlfHZ1txCv
 sTuQ==
X-Gm-Message-State: AOAM533bBkisfXxAf7R2qI90i7xVZCPndoEFnno/jj3+hDfqdxoiQgOX
 9oGw2KKpDkwsXlLVd8GcruP2i7oho0tJb8zAv3Q=
X-Google-Smtp-Source: ABdhPJy4wibB5neuDDeiv4z8apqDeZ4SkMstAanwZFLBBi6Aj5M6WO5fWhdWLudssjvtaB4gLLiv8ij9Bx8JVykrNcY=
X-Received: by 2002:a5b:48f:: with SMTP id n15mr5953372ybp.457.1628168552519; 
 Thu, 05 Aug 2021 06:02:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210527082905.1447591-1-jay.xu@rock-chips.com>
 <20210527082905.1447591-3-jay.xu@rock-chips.com>
In-Reply-To: <20210527082905.1447591-3-jay.xu@rock-chips.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 5 Aug 2021 09:02:21 -0400
Message-ID: <CAMdYzYpxvEbc-gAk6xEkec-bXaqe7wNM0awRVAPV64v0OVcGSg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] soc: rockchip: io-domain: add rk3568 support
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee.jones@linaro.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_060234_036988_B1876468 
X-CRM114-Status: GOOD (  33.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, May 27, 2021 at 4:31 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> The io-domain registers on RK3568 SoCs have three separated bits to
> enable/disable the 1.8v/2.5v/3.3v power.
>
> This patch make the write to be a operation, allow rk3568 uses a private
> register set function.
>
> Since the 2.5v is not used on RK3568, so the driver only set
> 1.8v [enable] + 3.3v [disable] for 1.8v mode
> 1.8v [disable] + 3.3v [enable] for 3.3v mode

Good Morning,

I see this still hasn't landed, but for what it's worth I've been
running it for months and it seems to work well.
(Also it's necessary for sdio support)

Tested on Quartz64 Model A, Quartz64 Model B.
So - Tested-by: Peter Geis <pgwipeout@gmail.com>

>
> There is not register order requirement which has been cleared by our IC
> team.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> v2:
> - none
>  drivers/soc/rockchip/io-domain.c | 88 +++++++++++++++++++++++++++++---
>  1 file changed, 80 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
> index cf8182fc3642..13c446fd33a9 100644
> --- a/drivers/soc/rockchip/io-domain.c
> +++ b/drivers/soc/rockchip/io-domain.c
> @@ -51,13 +51,11 @@
>  #define RK3399_PMUGRF_CON0_VSEL                BIT(8)
>  #define RK3399_PMUGRF_VSEL_SUPPLY_NUM  9
>
> -struct rockchip_iodomain;
> +#define RK3568_PMU_GRF_IO_VSEL0                (0x0140)
> +#define RK3568_PMU_GRF_IO_VSEL1                (0x0144)
> +#define RK3568_PMU_GRF_IO_VSEL2                (0x0148)
>
> -struct rockchip_iodomain_soc_data {
> -       int grf_offset;
> -       const char *supply_names[MAX_SUPPLIES];
> -       void (*init)(struct rockchip_iodomain *iod);
> -};
> +struct rockchip_iodomain;
>
>  struct rockchip_iodomain_supply {
>         struct rockchip_iodomain *iod;
> @@ -66,13 +64,62 @@ struct rockchip_iodomain_supply {
>         int idx;
>  };
>
> +struct rockchip_iodomain_soc_data {
> +       int grf_offset;
> +       const char *supply_names[MAX_SUPPLIES];
> +       void (*init)(struct rockchip_iodomain *iod);
> +       int (*write)(struct rockchip_iodomain_supply *supply, int uV);
> +};
> +
>  struct rockchip_iodomain {
>         struct device *dev;
>         struct regmap *grf;
>         const struct rockchip_iodomain_soc_data *soc_data;
>         struct rockchip_iodomain_supply supplies[MAX_SUPPLIES];
> +       int (*write)(struct rockchip_iodomain_supply *supply, int uV);
>  };
>
> +static int rk3568_iodomain_write(struct rockchip_iodomain_supply *supply, int uV)
> +{
> +       struct rockchip_iodomain *iod = supply->iod;
> +       u32 is_3v3 = uV > MAX_VOLTAGE_1_8;
> +       u32 val0, val1;
> +       int b;
> +
> +       switch (supply->idx) {
> +       case 0: /* pmuio1 */
> +               break;
> +       case 1: /* pmuio2 */
> +               b = supply->idx;
> +               val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
> +               b = supply->idx + 4;
> +               val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
> +
> +               regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val0);
> +               regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val1);
> +               break;
> +       case 3: /* vccio2 */
> +               break;
> +       case 2: /* vccio1 */
> +       case 4: /* vccio3 */
> +       case 5: /* vccio4 */
> +       case 6: /* vccio5 */
> +       case 7: /* vccio6 */
> +       case 8: /* vccio7 */
> +               b = supply->idx - 1;
> +               val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
> +               val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
> +
> +               regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL0, val0);
> +               regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL1, val1);
> +               break;
> +       default:
> +               return -EINVAL;
> +       };
> +
> +       return 0;
> +}
> +
>  static int rockchip_iodomain_write(struct rockchip_iodomain_supply *supply,
>                                    int uV)
>  {
> @@ -136,7 +183,7 @@ static int rockchip_iodomain_notify(struct notifier_block *nb,
>                         return NOTIFY_BAD;
>         }
>
> -       ret = rockchip_iodomain_write(supply, uV);
> +       ret = supply->iod->write(supply, uV);
>         if (ret && event == REGULATOR_EVENT_PRE_VOLTAGE_CHANGE)
>                 return NOTIFY_BAD;
>
> @@ -398,6 +445,22 @@ static const struct rockchip_iodomain_soc_data soc_data_rk3399_pmu = {
>         .init = rk3399_pmu_iodomain_init,
>  };
>
> +static const struct rockchip_iodomain_soc_data soc_data_rk3568_pmu = {
> +       .grf_offset = 0x140,
> +       .supply_names = {
> +               "pmuio1",
> +               "pmuio2",
> +               "vccio1",
> +               "vccio2",
> +               "vccio3",
> +               "vccio4",
> +               "vccio5",
> +               "vccio6",
> +               "vccio7",
> +       },
> +       .write = rk3568_iodomain_write,
> +};
> +
>  static const struct rockchip_iodomain_soc_data soc_data_rv1108 = {
>         .grf_offset = 0x404,
>         .supply_names = {
> @@ -469,6 +532,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
>                 .compatible = "rockchip,rk3399-pmu-io-voltage-domain",
>                 .data = &soc_data_rk3399_pmu
>         },
> +       {
> +               .compatible = "rockchip,rk3568-pmu-io-voltage-domain",
> +               .data = &soc_data_rk3568_pmu
> +       },
>         {
>                 .compatible = "rockchip,rv1108-io-voltage-domain",
>                 .data = &soc_data_rv1108
> @@ -502,6 +569,11 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
>         match = of_match_node(rockchip_iodomain_match, np);
>         iod->soc_data = match->data;
>
> +       if (iod->soc_data->write)
> +               iod->write = iod->soc_data->write;
> +       else
> +               iod->write = rockchip_iodomain_write;
> +
>         parent = pdev->dev.parent;
>         if (parent && parent->of_node) {
>                 iod->grf = syscon_node_to_regmap(parent->of_node);
> @@ -562,7 +634,7 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
>                 supply->reg = reg;
>                 supply->nb.notifier_call = rockchip_iodomain_notify;
>
> -               ret = rockchip_iodomain_write(supply, uV);
> +               ret = iod->write(supply, uV);
>                 if (ret) {
>                         supply->reg = NULL;
>                         goto unreg_notify;
> --
> 2.25.1
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
