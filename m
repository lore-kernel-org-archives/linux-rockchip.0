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
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1CF7C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 13:06:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B721060EE4
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 13:06:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B721060EE4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMFIXut3taEbsI+pUqNfwBxY2eRsPZVyYSJxb2JQ9UM=; b=LzeCsVBp7TEhRi
	mpMuDvwtcdf64V7+cqZYe4KaJuBvxxilr0DIxAQjXnGQ5HoJpV8c0hPouYcqTVC2/JDmrIjmFtxBp
	xQ5GHOeNZ774b+H0Y7Eafkt6KjlufWxNz0JTARsT5h5lrK32A3ttwlN67us239XxY7NKffOHHajqh
	OEfak8O+slO4LP6OPt2195jbHh2TLjeAFRLfSaett8/AJOM/8oFFes5d7QmnWptKu968k86OwNWWE
	Qpip6BvZibvu+vrkrQrdlU9LNUvm7sK1rCFjTYEJPCkOQfftEJzsJ7R06xOTJ90cmjDFmVqFs6hL7
	mXL/BwcQX95h9uRcdKdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBd4l-009cBl-Ge; Thu, 05 Aug 2021 13:06:19 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBd4X-009c7N-CZ; Thu, 05 Aug 2021 13:06:07 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id w17so8810858ybl.11;
 Thu, 05 Aug 2021 06:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V+3eK9X/+QJLVWMPbMyMuZ4uj6Bn8K4ZuygACC4gU2w=;
 b=SsSWIi5dsnn/PtYp5CwpZtsi//s0IiXytDajoLF2kL5oNgf95ZPBGHZwHJ0RbvKDzP
 4HRQgi0iOYPBWFddL8AnLfFpRLpFzrnZ+AnwVILDpY9fPu8Y6h2MsAKK0tEO2vW8azZW
 pG8i4WnpnUcrzrrE3d9t0l9suWUaypifa8KXJqL/nVTzvI59J0GbS7Yqc0bZvG0B9uis
 3vQ3DNKcSFDU3a9P2EullD1voPK5mBZgv2Vr6k0Rl1IzzlG5gTFJvCLO0Xxqo5iD9ZvB
 1hH6uWK1D4K0RD5NOub8OfojITjCU/+J6QB6PYczQmC4oebWmuluyU8q61gEqMpaf7OO
 Efsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V+3eK9X/+QJLVWMPbMyMuZ4uj6Bn8K4ZuygACC4gU2w=;
 b=GNjB0XBa1sVzi4FdW7oFMpBOYOUBrObYwqMneSPYritIuwMfuEZiskcYTi9DuXg9RV
 brActuhnWRQZBL+5wy+9Ix8o/+WCx4SHn1B0Dm+s6HAih3vYamadbzbsEmK+nYSSf1Wk
 VZ1O/DlAwiLagcIWsxpcMkFt6O1Uw6JSwMl65DB3NKgHOPbqLY7fJoOiprV43LB8gycj
 8EWnt+UebD0N424MMZH+P/Qqp0X8DDd9GgJaOj4T1ovXTCYAcy79cu6tJIIoBHqH9zhn
 b9E2CTzMz1jGXFFKW/Jm197x2EJx6N+0lEU0xan6WX8sa/ZWQeqhyLL6TlwoQn5gWSJY
 tgpQ==
X-Gm-Message-State: AOAM530LlZMTh5RiM0OVIUg7gSukDi3bDOXn6iyvalYKsvS4sXb7M6O/
 e6ezAYhj1CfEIGB9a4DrOBNyigdUYNYR/v+vyTc=
X-Google-Smtp-Source: ABdhPJwRHXlRjNUCM/b/c/9/JyGupyFhEnzUeywDKVlarAuTiCReDwT++JtsdRC8RlvuLkz3QddBvurArfviIk8kKnM=
X-Received: by 2002:a5b:303:: with SMTP id j3mr5543580ybp.433.1628168764334;
 Thu, 05 Aug 2021 06:06:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210805120107.27007-1-michael.riesch@wolfvision.net>
 <20210805120107.27007-3-michael.riesch@wolfvision.net>
In-Reply-To: <20210805120107.27007-3-michael.riesch@wolfvision.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 5 Aug 2021 09:05:53 -0400
Message-ID: <CAMdYzYrpXs_vY6OxqL54xFsKu0TJu_G5myTTfOA8nAygkUJN5g@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] soc: rockchip: io-domain: add rk3568 support
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Simon Xue <xxm@rock-chips.com>, 
 Jianqun Xu <jay.xu@rock-chips.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, 
 Lee Jones <lee.jones@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Zhang Changzhong <zhangchangzhong@huawei.com>,
 Tobias Schramm <t.schramm@manjaro.org>, Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_060605_480271_419CE33B 
X-CRM114-Status: GOOD (  31.93  )
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

On Thu, Aug 5, 2021 at 8:01 AM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> From: Jianqun Xu <jay.xu@rock-chips.com>
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
>
> There is not register order requirement which has been cleared by our IC
> team.

Tested on Quartz64 Model A, Quartz64 Model B.
Tested-by: Peter Geis <pgwipeout@gmail.com>

>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
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
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
