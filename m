Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8ECC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 16:28:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3094A61159
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 16:28:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3094A61159
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CNDiqg08aqx/2Gx5WGO20vI+HQd2wKY17mSI1Njp3iA=; b=ypH+Msdm/R9jksbIVXETCauYoz
	qz8emm8MdXYntVEJiGGTFZ+d4fjX5twQrKJpzpdNqsOiSeu4RKuXCJVJLMjz4V4yjdT9lWXC8oD5K
	TgoLRYbaMaIcgGoCwqUKvYUwOccVNdlQguxZweW64WzX0se4TRtemhDk6KjDBkdgBuO+Fd9hEQRDG
	faQ8Izam2bLMTgDujQHGAdZof70jvfDITW8eF6ExaAv25hXMOeRlPk8bccBke6GtHV6r/42SP088X
	kh6N0Nst27kbW3ncTGq8QpSzWNol1uFC9uW2yfehJfPdKHjgw9AJXKEc5ZuSeDRs1bmRbVxkFple9
	oBnNxyAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBgDz-00AF3r-8w; Thu, 05 Aug 2021 16:28:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBgDm-00AF27-TD; Thu, 05 Aug 2021 16:27:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BAFC31B;
 Thu,  5 Aug 2021 09:27:46 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC38C3F66F;
 Thu,  5 Aug 2021 09:27:42 -0700 (PDT)
Subject: Re: [PATCH v3 2/7] soc: rockchip: io-domain: add rk3568 support
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Simon Xue <xxm@rock-chips.com>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>,
 Tobias Schramm <t.schramm@manjaro.org>, Johan Jonker <jbx6244@gmail.com>
References: <20210805120107.27007-1-michael.riesch@wolfvision.net>
 <20210805120107.27007-3-michael.riesch@wolfvision.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8008800c-c518-30d4-edcf-57566e7a1251@arm.com>
Date: Thu, 5 Aug 2021 17:27:36 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210805120107.27007-3-michael.riesch@wolfvision.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_092751_098373_1FFBBAEE 
X-CRM114-Status: GOOD (  34.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-08-05 13:01, Michael Riesch wrote:
> From: Jianqun Xu <jay.xu@rock-chips.com>
> 
> The io-domain registers on RK3568 SoCs have three separated bits to
> enable/disable the 1.8v/2.5v/3.3v power.
> 
> This patch make the write to be a operation, allow rk3568 uses a private
> register set function.
> 
> Since the 2.5v is not used on RK3568, so the driver only set

FWIW, this seems at odds with what the first paragraph says - can anyone 
clarify what exactly "not used" means here? Is it that the I/O domain 
controller has been redesigned to support more than two logic levels on 
the new generation of SoCs, but RK3568's I/O pads still only physically 
support 1.8v and 3.3v; or is it that it *can* support 2.5v as well but 
no currently-known RK3568-based designs use that?

In the former case it's just a wording issue in the commit message, but 
in the latter it's arguably worth implementing support now for the sake 
of future compatibility.

Robin.

> 1.8v [enable] + 3.3v [disable] for 1.8v mode
> 1.8v [disable] + 3.3v [enable] for 3.3v mode
> 
> There is not register order requirement which has been cleared by our IC
> team.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>   drivers/soc/rockchip/io-domain.c | 88 +++++++++++++++++++++++++++++---
>   1 file changed, 80 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
> index cf8182fc3642..13c446fd33a9 100644
> --- a/drivers/soc/rockchip/io-domain.c
> +++ b/drivers/soc/rockchip/io-domain.c
> @@ -51,13 +51,11 @@
>   #define RK3399_PMUGRF_CON0_VSEL		BIT(8)
>   #define RK3399_PMUGRF_VSEL_SUPPLY_NUM	9
>   
> -struct rockchip_iodomain;
> +#define RK3568_PMU_GRF_IO_VSEL0		(0x0140)
> +#define RK3568_PMU_GRF_IO_VSEL1		(0x0144)
> +#define RK3568_PMU_GRF_IO_VSEL2		(0x0148)
>   
> -struct rockchip_iodomain_soc_data {
> -	int grf_offset;
> -	const char *supply_names[MAX_SUPPLIES];
> -	void (*init)(struct rockchip_iodomain *iod);
> -};
> +struct rockchip_iodomain;
>   
>   struct rockchip_iodomain_supply {
>   	struct rockchip_iodomain *iod;
> @@ -66,13 +64,62 @@ struct rockchip_iodomain_supply {
>   	int idx;
>   };
>   
> +struct rockchip_iodomain_soc_data {
> +	int grf_offset;
> +	const char *supply_names[MAX_SUPPLIES];
> +	void (*init)(struct rockchip_iodomain *iod);
> +	int (*write)(struct rockchip_iodomain_supply *supply, int uV);
> +};
> +
>   struct rockchip_iodomain {
>   	struct device *dev;
>   	struct regmap *grf;
>   	const struct rockchip_iodomain_soc_data *soc_data;
>   	struct rockchip_iodomain_supply supplies[MAX_SUPPLIES];
> +	int (*write)(struct rockchip_iodomain_supply *supply, int uV);
>   };
>   
> +static int rk3568_iodomain_write(struct rockchip_iodomain_supply *supply, int uV)
> +{
> +	struct rockchip_iodomain *iod = supply->iod;
> +	u32 is_3v3 = uV > MAX_VOLTAGE_1_8;
> +	u32 val0, val1;
> +	int b;
> +
> +	switch (supply->idx) {
> +	case 0: /* pmuio1 */
> +		break;
> +	case 1: /* pmuio2 */
> +		b = supply->idx;
> +		val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
> +		b = supply->idx + 4;
> +		val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
> +
> +		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val0);
> +		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val1);
> +		break;
> +	case 3: /* vccio2 */
> +		break;
> +	case 2: /* vccio1 */
> +	case 4: /* vccio3 */
> +	case 5: /* vccio4 */
> +	case 6: /* vccio5 */
> +	case 7: /* vccio6 */
> +	case 8: /* vccio7 */
> +		b = supply->idx - 1;
> +		val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
> +		val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
> +
> +		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL0, val0);
> +		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL1, val1);
> +		break;
> +	default:
> +		return -EINVAL;
> +	};
> +
> +	return 0;
> +}
> +
>   static int rockchip_iodomain_write(struct rockchip_iodomain_supply *supply,
>   				   int uV)
>   {
> @@ -136,7 +183,7 @@ static int rockchip_iodomain_notify(struct notifier_block *nb,
>   			return NOTIFY_BAD;
>   	}
>   
> -	ret = rockchip_iodomain_write(supply, uV);
> +	ret = supply->iod->write(supply, uV);
>   	if (ret && event == REGULATOR_EVENT_PRE_VOLTAGE_CHANGE)
>   		return NOTIFY_BAD;
>   
> @@ -398,6 +445,22 @@ static const struct rockchip_iodomain_soc_data soc_data_rk3399_pmu = {
>   	.init = rk3399_pmu_iodomain_init,
>   };
>   
> +static const struct rockchip_iodomain_soc_data soc_data_rk3568_pmu = {
> +	.grf_offset = 0x140,
> +	.supply_names = {
> +		"pmuio1",
> +		"pmuio2",
> +		"vccio1",
> +		"vccio2",
> +		"vccio3",
> +		"vccio4",
> +		"vccio5",
> +		"vccio6",
> +		"vccio7",
> +	},
> +	.write = rk3568_iodomain_write,
> +};
> +
>   static const struct rockchip_iodomain_soc_data soc_data_rv1108 = {
>   	.grf_offset = 0x404,
>   	.supply_names = {
> @@ -469,6 +532,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
>   		.compatible = "rockchip,rk3399-pmu-io-voltage-domain",
>   		.data = &soc_data_rk3399_pmu
>   	},
> +	{
> +		.compatible = "rockchip,rk3568-pmu-io-voltage-domain",
> +		.data = &soc_data_rk3568_pmu
> +	},
>   	{
>   		.compatible = "rockchip,rv1108-io-voltage-domain",
>   		.data = &soc_data_rv1108
> @@ -502,6 +569,11 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
>   	match = of_match_node(rockchip_iodomain_match, np);
>   	iod->soc_data = match->data;
>   
> +	if (iod->soc_data->write)
> +		iod->write = iod->soc_data->write;
> +	else
> +		iod->write = rockchip_iodomain_write;
> +
>   	parent = pdev->dev.parent;
>   	if (parent && parent->of_node) {
>   		iod->grf = syscon_node_to_regmap(parent->of_node);
> @@ -562,7 +634,7 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
>   		supply->reg = reg;
>   		supply->nb.notifier_call = rockchip_iodomain_notify;
>   
> -		ret = rockchip_iodomain_write(supply, uV);
> +		ret = iod->write(supply, uV);
>   		if (ret) {
>   			supply->reg = NULL;
>   			goto unreg_notify;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
