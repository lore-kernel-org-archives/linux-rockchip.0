Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A7FEC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 10:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRlJQaoPG61VUZQonnJYWQmUTIr6HGEqme5dyKJf7t4=; b=sm/RDyW3kDYUrL
	S0zMmL5O9z4dPCfi6K/j9cEK9hKm3nPJgz92BTLCtJmMdG9sx5G5JHT4pCUe7+WexA2d2Ir+N4ad2
	x4WSrYKkeYIHbxMWViEwmikCve1/7DDH6HDCuzymq1+I1kh1xaxLGlZ9nLXzk80KmfFBLdZdByLVa
	RIdOYCQfeWBN+3RD+6Z1IgpA65fW7+KLwBi1ZoyLdS1dAbH/Z0HHyoxM1VECtFPECQiDL+59wwzAU
	0TXW74bg7ROe6F83iEnUEKBhh7eCI6L45Hufcj0mgy0BmpJHQtlYxf+YwB/02TV2uExUA97T7koRp
	A0gPgGnUo7wd0jOV+gtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzGBy-001iOu-Rv; Mon, 20 Dec 2021 10:46:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzGBn-001iMT-8w; Mon, 20 Dec 2021 10:46:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22C3F1042;
 Mon, 20 Dec 2021 02:46:40 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98BD63F718;
 Mon, 20 Dec 2021 02:46:38 -0800 (PST)
Message-ID: <8386046a-f673-b134-89ad-0117c70aaa51@arm.com>
Date: Mon, 20 Dec 2021 10:46:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Mark Brown <broonie@kernel.org>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211220094435.GU6003@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_024643_431245_14E787C7 
X-CRM114-Status: GOOD (  25.68  )
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

On 2021-12-20 09:44, Sascha Hauer wrote:
> On Fri, Dec 17, 2021 at 02:09:18PM +0100, Sascha Hauer wrote:
>> This patch allows to let a domain be supplied by a regulator which
>> is needed for the GPU on the rk3568-EVB board.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>   drivers/soc/rockchip/pm_domains.c | 24 +++++++++++++++++++++++-
>>   1 file changed, 23 insertions(+), 1 deletion(-)
>>
>> +
>> +	regulator_disable(pd->regulator);
>> +
>> +	return 0;
>>   }
>>   
>>   static int rockchip_pd_attach_dev(struct generic_pm_domain *genpd,
>> @@ -500,6 +517,11 @@ static int rockchip_domain_probe(struct platform_device *pdev)
>>   	pd->info = pd_info;
>>   	pd->pmu = pd_info->pmu;
>>   
>> +	pd->regulator = devm_regulator_get(&pdev->dev, "power");
> 
> I was told that I should use this function instead of
> devm_regulator_get_optional() when the regulator is not optional and
> also I can drop the if (pd->regulator) dance when enabling the regulator
> because I get a dummy regulator here when using devm_regulator_get().
> 
> Well, all true and on one specific board the regulator is indeed not
> optional. However, on all other power domains that don't need a
> regulator and all other boards and all other SoCs this driver is used we
> now get:
> 
> [    0.185588] rk-power-domain rk-power-domain.8: supply power not found, using dummy regulator
> [    0.186036] rk-power-domain rk-power-domain.9: supply power not found, using dummy regulator
> [    0.186459] rk-power-domain rk-power-domain.10: supply power not found, using dummy regulator
> [    0.187039] rk-power-domain rk-power-domain.11: supply power not found, using dummy regulator
> [    0.187333] rk-power-domain rk-power-domain.13: supply power not found, using dummy regulator
> [    0.187644] rk-power-domain rk-power-domain.14: supply power not found, using dummy regulator
> [    0.188042] rk-power-domain rk-power-domain.15: supply power not found, using dummy regulator
> 
> I wonder if devm_regulator_get() is really the right function here. Or
> should the message be dropped?

Since the power domains are hierarchical and none of them really 
represent the physical owner of a supply, I'm not sure there's really a 
correct answer to the regulator question either way in this context. 
FWIW I reckon it would make sense to model things properly and teach the 
driver about the voltage domains that actually own the input supplies 
(maybe with a binding more like I/O domains where we just have 
explicitly-named supply properties for each one on the power 
controller?) - it's a little more work up-front, but seems like it 
should be relatively straightforward to fit into the genpd hierarchy, 
and be more robust in the long term.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
