Return-Path: <SRS0=27lq=M5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32343C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 10:58:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5A0A6105A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 10:58:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E5A0A6105A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2pf5IH64uuHJ1vFiTFqELN8naQcEIl40f+VfIl97/Y=; b=Ff3lJ9puFON+jU
	qqQ0zssCITE3m5ZM3WDyBa/74vB1sIinhC8K2l4ZzMLoTrXLK6ybOtZM1cUBr2xlfJt5yqi8T8Op9
	0dxLXw7actP072tI2JrSwlDhsspjYkEiU8PUE2W/OpykaXzOqNKombn+JwlRWrXcQEJTxZAjem6Vp
	UNonYal85/a7Rab8Zk/UWRpsfUWv0YVF53TapHk/9rWAqSpoDJeUK+WkOer9PYGQD2W5yQpS5sfL9
	eU/kn+4MElpd0ZlaRzyvnf/2vMWSpo3OvX8ACOFmYHySN0Cbm7U9Io0yYiy9EEaFodRUXs7kNwWYJ
	Usmzc0lafDW1moPVPdIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBxYP-00CAy7-F4; Fri, 06 Aug 2021 10:58:17 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBxYB-00CAw0-Dc; Fri, 06 Aug 2021 10:58:05 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id k65so14343384yba.13;
 Fri, 06 Aug 2021 03:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fimCkEGBiMGjaGTmU7mx/grdD/CuzgdeFe6qp2UdRmE=;
 b=RoGriHdbFfFNlZSNt+8ZCbGnskTrJKE4bihNsqVClxs+I8hLHutpiGrxxQW7uVwL34
 IveW0hU2EsBP+GGZRIi97g01AYsTBtFcluh2GWVAQcW+g5Q9p+8h+BisUO1QNJI+KJEI
 d9u0D8EDZOahLcCCE2yLNqb18u+Gp0Cq55Pt2wCVdkNlq0A935tJxOmIG46tcQMNLWkk
 p7HdMN1FSKdgyx9veoTol1LuyTAi6we5f9gJ1eL5SO2OaxVrGCCIFKl37gGzue5PO7NY
 STYZknO8olHYwEZXgguxXpZlirnr6Xxw9MAA9rpXDgdfDdU2Jwjd6/f5AH3UckRD6S92
 H8zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fimCkEGBiMGjaGTmU7mx/grdD/CuzgdeFe6qp2UdRmE=;
 b=amhXlKQZ7vk2cVHoiD0m71lCqqiriIZXZ7yzxCt8g2tiHVeYSooet1vF8EcFiSfhyY
 eEMLuVDvub6dr9FUWlzGzckAKYJj6T38WItj5KKX04Du9PL6dXHHSVO/ccL+kgSG+UIC
 hKyeODTfH4oRraxDnSeNJwBq3wmi67kH0MuQEvPpuBSJp/LD7Gq9lz9IAKV7iK/l53un
 yi7EzxgMoQ4D3Kp20HAIu1N5xQ2gY/JQa/p1fo/0mSMA1Q14VnSUOpTZI3941+4rFqb1
 62FrattXs4GufXnr9l95wWoYF2+TT4HPx0l0AD4OFoW7vcW9kInKvR9389dxrMTkTQMZ
 lwZg==
X-Gm-Message-State: AOAM5318EmZCGwHFNO3axClku4ryXmQ3ztQ9p9WcA0wXVJHJaiwJgpUP
 /wdYTzkfN7dGOwB6LUjomUowIhgUw6f6vdq8YzM=
X-Google-Smtp-Source: ABdhPJyxaZY6BQAMCEeHWXw2buvHW9C5CgHoZd8BisU824ik7C4OzPal/bCZIxD3rAMhU4jS8ytygFbK/FN51Jh0Ef8=
X-Received: by 2002:a25:2cf:: with SMTP id 198mr12315914ybc.259.1628247481403; 
 Fri, 06 Aug 2021 03:58:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210805120107.27007-1-michael.riesch@wolfvision.net>
 <20210805120107.27007-3-michael.riesch@wolfvision.net>
 <8008800c-c518-30d4-edcf-57566e7a1251@arm.com>
 <3206032.SvYEEZNnvj@diego> <2021080617460178513151@rock-chips.com>
 <41dbf032-c852-fbe4-befd-3dc89b24f4c9@arm.com>
In-Reply-To: <41dbf032-c852-fbe4-befd-3dc89b24f4c9@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 6 Aug 2021 06:57:49 -0400
Message-ID: <CAMdYzYpw7RP+jbP_0HkVwAF8=b_k0oeti+h9214NtnjSfvT_ww@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] soc: rockchip: io-domain: add rk3568 support
To: Robin Murphy <robin.murphy@arm.com>
Cc: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>, 
 "robh+dt" <robh+dt@kernel.org>, cl <cl@rock-chips.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 "xxm@rock-chips.com" <xxm@rock-chips.com>, 
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Lee Jones <lee.jones@linaro.org>, "ulf.hansson" <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>, 
 Tobias Schramm <t.schramm@manjaro.org>, Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_035803_513482_4DA6138D 
X-CRM114-Status: GOOD (  52.78  )
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

On Fri, Aug 6, 2021 at 6:28 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-08-06 10:46, jay.xu@rock-chips.com wrote:
> > Hi Heiko and Robin
> >
> > --------------
> > jay.xu@rock-chips.com
> >> Hi Robin,
> >>
> >> Am Donnerstag, 5. August 2021, 18:27:36 CEST schrieb Robin Murphy:
> >>> On 2021-08-05 13:01, Michael Riesch wrote:
> >>>> From: Jianqun Xu <jay.xu@rock-chips.com>
> >>>>
> >>>> The io-domain registers on RK3568 SoCs have three separated bits to
> >>>> enable/disable the 1.8v/2.5v/3.3v power.
> >>>>
> >>>> This patch make the write to be a operation, allow rk3568 uses a private
> >>>> register set function.
> >>>>
> >>>> Since the 2.5v is not used on RK3568, so the driver only set
> >>>
> >>> FWIW, this seems at odds with what the first paragraph says - can anyone
> >>> clarify what exactly "not used" means here? Is it that the I/O domain
> >>> controller has been redesigned to support more than two logic levels on
> >>> the new generation of SoCs, but RK3568's I/O pads still only physically
> >>> support 1.8v and 3.3v; or is it that it *can* support 2.5v as well but
> >>> no currently-known RK3568-based designs use that?
> >>>
> >>> In the former case it's just a wording issue in the commit message, but
> >>> in the latter it's arguably worth implementing support now for the sake
> >>> of future compatibility.
> >>
> >> I hadn't looked that deeply into the rk356x io-domain config, but at least
> >> on a register level in the TRM it seems there are separate bits for
> >> "3.3V control", "2.5V control", "1.8V control" [0] for each io-domain.
> >>
> >> Of course the documentation is otherwise somewhat sparse.
> >>
> >> Maybe Jay or Kever [added] can explain a bit more about the 3 voltage
> >> levels.
> >>
> >>
> >> In general though, I tend to find the approach good enough for now.
> >>
> >> Especially as the io-domain stuff is always said to "can cause damage
> >> to the soc if used incorrectly" and it looks like nobody (including
> >> Rockchip) seems to have actual hardware using these 2.5V levels right now.
> >>
> >> So having code in there that no-one ever tested doesn't feel too good ;-)
> >>
> > yes
> >
> > about the 3bit
> >
> > case     V33  V25  V18       result
> > 0          0      0       0           IO safe, but cannot work
> > 1          0      0       1           IO require 1.8V, should < 1.98V, otherwise IO may damage
> > 2          0      1       0           IO require 2.5V, should < 2.75V, otherwise IO may damage
> > 3          0      1       1           Invalid state, should avoid
> > 4          1      0       0           IO require 3.3V, should < 3.63V, otherwise IO may damage
> > 5          1      0       1           IO require 1.8V, should < 1.98V, otherwise IO may damage
> > 6          1      1       0           IO require 2.5V, should < 2.75V, otherwise IO may damage
> > 7          1      1       1           Invalid state, should avoid
>
> Thanks Jay, that's useful to know.
>
> Fair enough if it's the case that 2.5V mode hasn't been validated with
> the BSP kernel either - I'd have no objection to clarifying the commit
> message that way instead, I'm just a curious reviewer who noticed some
> ambiguity :)
>
> >> Adding this later when needed should be somewhat easy, as it really only
> >> needs adding of handling that 3rd control bit per domain.
>
> I'm mostly just thinking ahead a year or two when board designers have
> ventured further away from the reference design and *are* using 2.5V
> external components, then a user puts an older stable mainline kernel on
> their board and starts tearing their hair out trying to figure out why
> things are flaky. For instance I recall from my RK3328 box that if the
> I/O domain setting for the GMAC is too high for the actual supply
> voltage (such that it never detects MDIO responses from the external
> phy) you end up getting an utterly nonsensical DMA error. In that case I
> eventually figured out (by chance) that it was because I didn't have the
> I/O domain driver enabled in my config, but it would be a whole other
> level of frustration if the driver appeared to be working but was
> quietly doing the wrong thing.

I too have experienced the joys of io-domains breaking things.
Perhaps the driver should warn when the voltages aren't expected,
instead of when they are simply too high.

>
> Cheers,
> Robin.
>
> >>
> >>
> >> Heiko
> >>
> >>
> >>
> >> [0] what happens if none of the 3 is active? ;-)
> >>
> >>
> >>>
> >>> Robin.
> >>>
> >>>> 1.8v [enable] + 3.3v [disable] for 1.8v mode
> >>>> 1.8v [disable] + 3.3v [enable] for 3.3v mode
> >>>>
> >>>> There is not register order requirement which has been cleared by our IC
> >>>> team.
> >>>>
> >>>> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> >>>> ---
> >>>>     drivers/soc/rockchip/io-domain.c | 88 +++++++++++++++++++++++++++++---
> >>>>     1 file changed, 80 insertions(+), 8 deletions(-)
> >>>>
> >>>> diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
> >>>> index cf8182fc3642..13c446fd33a9 100644
> >>>> --- a/drivers/soc/rockchip/io-domain.c
> >>>> +++ b/drivers/soc/rockchip/io-domain.c
> >>>> @@ -51,13 +51,11 @@
> >>>>     #define RK3399_PMUGRF_CON0_VSEL        BIT(8)
> >>>>     #define RK3399_PMUGRF_VSEL_SUPPLY_NUM  9
> >>>>
> >>>> -struct rockchip_iodomain;
> >>>> +#define RK3568_PMU_GRF_IO_VSEL0   (0x0140)
> >>>> +#define RK3568_PMU_GRF_IO_VSEL1   (0x0144)
> >>>> +#define RK3568_PMU_GRF_IO_VSEL2   (0x0148)
> >>>>
> >>>> -struct rockchip_iodomain_soc_data {
> >>>> -  int grf_offset;
> >>>> -  const char *supply_names[MAX_SUPPLIES];
> >>>> -  void (*init)(struct rockchip_iodomain *iod);
> >>>> -};
> >>>> +struct rockchip_iodomain;
> >>>>
> >>>>     struct rockchip_iodomain_supply {
> >>>>     struct rockchip_iodomain *iod;
> >>>> @@ -66,13 +64,62 @@ struct rockchip_iodomain_supply {
> >>>>     int idx;
> >>>>     };
> >>>>
> >>>> +struct rockchip_iodomain_soc_data {
> >>>> +  int grf_offset;
> >>>> +  const char *supply_names[MAX_SUPPLIES];
> >>>> +  void (*init)(struct rockchip_iodomain *iod);
> >>>> +  int (*write)(struct rockchip_iodomain_supply *supply, int uV);
> >>>> +};
> >>>> +
> >>>>     struct rockchip_iodomain {
> >>>>     struct device *dev;
> >>>>     struct regmap *grf;
> >>>>     const struct rockchip_iodomain_soc_data *soc_data;
> >>>>     struct rockchip_iodomain_supply supplies[MAX_SUPPLIES];
> >>>> +  int (*write)(struct rockchip_iodomain_supply *supply, int uV);
> >>>>     };
> >>>>
> >>>> +static int rk3568_iodomain_write(struct rockchip_iodomain_supply *supply, int uV)
> >>>> +{
> >>>> +  struct rockchip_iodomain *iod = supply->iod;
> >>>> +  u32 is_3v3 = uV > MAX_VOLTAGE_1_8;
> >>>> +  u32 val0, val1;
> >>>> +  int b;
> >>>> +
> >>>> +  switch (supply->idx) {
> >>>> +  case 0: /* pmuio1 */
> >>>> +  break;
> >>>> +  case 1: /* pmuio2 */
> >>>> +  b = supply->idx;
> >>>> +  val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
> >>>> +  b = supply->idx + 4;
> >>>> +  val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
> >>>> +
> >>>> +  regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val0);
> >>>> +  regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val1);
> >>>> +  break;
> >>>> +  case 3: /* vccio2 */
> >>>> +  break;
> >>>> +  case 2: /* vccio1 */
> >>>> +  case 4: /* vccio3 */
> >>>> +  case 5: /* vccio4 */
> >>>> +  case 6: /* vccio5 */
> >>>> +  case 7: /* vccio6 */
> >>>> +  case 8: /* vccio7 */
> >>>> +  b = supply->idx - 1;
> >>>> +  val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
> >>>> +  val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
> >>>> +
> >>>> +  regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL0, val0);
> >>>> +  regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL1, val1);
> >>>> +  break;
> >>>> +  default:
> >>>> +  return -EINVAL;
> >>>> +  };
> >>>> +
> >>>> +  return 0;
> >>>> +}
> >>>> +
> >>>>     static int rockchip_iodomain_write(struct rockchip_iodomain_supply *supply,
> >>>>        int uV)
> >>>>     {
> >>>> @@ -136,7 +183,7 @@ static int rockchip_iodomain_notify(struct notifier_block *nb,
> >>>>     return NOTIFY_BAD;
> >>>>     }
> >>>>
> >>>> -  ret = rockchip_iodomain_write(supply, uV);
> >>>> +  ret = supply->iod->write(supply, uV);
> >>>>     if (ret && event == REGULATOR_EVENT_PRE_VOLTAGE_CHANGE)
> >>>>     return NOTIFY_BAD;
> >>>>
> >>>> @@ -398,6 +445,22 @@ static const struct rockchip_iodomain_soc_data soc_data_rk3399_pmu = {
> >>>>     .init = rk3399_pmu_iodomain_init,
> >>>>     };
> >>>>
> >>>> +static const struct rockchip_iodomain_soc_data soc_data_rk3568_pmu = {
> >>>> +  .grf_offset = 0x140,
> >>>> +  .supply_names = {
> >>>> +  "pmuio1",
> >>>> +  "pmuio2",
> >>>> +  "vccio1",
> >>>> +  "vccio2",
> >>>> +  "vccio3",
> >>>> +  "vccio4",
> >>>> +  "vccio5",
> >>>> +  "vccio6",
> >>>> +  "vccio7",
> >>>> +  },
> >>>> +  .write = rk3568_iodomain_write,
> >>>> +};
> >>>> +
> >>>>     static const struct rockchip_iodomain_soc_data soc_data_rv1108 = {
> >>>>     .grf_offset = 0x404,
> >>>>     .supply_names = {
> >>>> @@ -469,6 +532,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
> >>>>     .compatible = "rockchip,rk3399-pmu-io-voltage-domain",
> >>>>     .data = &soc_data_rk3399_pmu
> >>>>     },
> >>>> +  {
> >>>> +  .compatible = "rockchip,rk3568-pmu-io-voltage-domain",
> >>>> +  .data = &soc_data_rk3568_pmu
> >>>> +  },
> >>>>     {
> >>>>     .compatible = "rockchip,rv1108-io-voltage-domain",
> >>>>     .data = &soc_data_rv1108
> >>>> @@ -502,6 +569,11 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
> >>>>     match = of_match_node(rockchip_iodomain_match, np);
> >>>>     iod->soc_data = match->data;
> >>>>
> >>>> +  if (iod->soc_data->write)
> >>>> +  iod->write = iod->soc_data->write;
> >>>> +  else
> >>>> +  iod->write = rockchip_iodomain_write;
> >>>> +
> >>>>     parent = pdev->dev.parent;
> >>>>     if (parent && parent->of_node) {
> >>>>     iod->grf = syscon_node_to_regmap(parent->of_node);
> >>>> @@ -562,7 +634,7 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
> >>>>     supply->reg = reg;
> >>>>     supply->nb.notifier_call = rockchip_iodomain_notify;
> >>>>
> >>>> -  ret = rockchip_iodomain_write(supply, uV);
> >>>> +  ret = iod->write(supply, uV);
> >>>>     if (ret) {
> >>>>     supply->reg = NULL;
> >>>>     goto unreg_notify;
> >>>>
> >>>
> >>
> >>
> >>
> >>
> >>
> >>
> >>
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
