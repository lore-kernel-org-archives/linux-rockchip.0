Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8C1FC636D4
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 03:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++DAdUCtfdx/UuznYkEP8/hehrtGM6E24a0e6l6zqtU=; b=kv8sOeIQk8x5lD
	5nq/v1MkkBmD81Ffw4hckI6JVkwlZD9B4nlFCETr3+B1ZLeALZbXqW4XYpfJ8+rnlQ4xZtKmT8WgW
	7VpaffInD3Js6TZsI9yg1u5l14w+y7HK0oDv/adoaPYMp5HoJ5d8PR7WMPmaJLcccdtnSsxJ+GOXR
	ist9gJr2w1DZjRgfnBIEfoo1EkFL2RW1CO3xRexUn07qioEl1OU2y14EOum5xxJx7rvnwJplriyoJ
	gZBOY8CzQICRB9BlRej/vvfEzC+w+yha/iyv8brEfPNuIiftHfz9v6JfvyN/LTsWyHNmiGR9tudFw
	9o1p42ojZoDAd6xmsXjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRm7n-00HKe7-Jo; Tue, 14 Feb 2023 03:36:59 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRm7k-00HKch-2T
	for linux-rockchip@lists.infradead.org; Tue, 14 Feb 2023 03:36:57 +0000
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id B3E542801DF;
	Tue, 14 Feb 2023 11:36:43 +0800 (CST)
Message-ID: <a336a9ef-77e9-fa1d-ad95-805a8b5a89cb@rock-chips.com>
Date: Tue, 14 Feb 2023 11:36:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Cc: shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 2/3] mmc: sdhci-of-dwcmshc: Add runtime PM support
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com>
 <1675298118-64243-3-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFoN3GDRYRJep1ARf8rSftZRBUceda92OPuDQLvG3dVhhQ@mail.gmail.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKFoN3GDRYRJep1ARf8rSftZRBUceda92OPuDQLvG3dVhhQ@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkwaSlYeTxhIHRhOSExDTx5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ogw6KDo6ET0WSR84NzoSDwsJ
	ChUaCQpVSlVKTUxNSE9OQ0tPTktKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5DTkw3Bg++
X-HM-Tid: 0a864dff04612eb1kusnb3e542801df
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_193656_300211_8CB63326 
X-CRM114-Status: GOOD (  20.39  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Ulf,

On 2023/2/14 7:45, Ulf Hansson wrote:
> On Thu, 2 Feb 2023 at 01:35, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>>
>> This patch adds runtime PM support.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> ---
>>
>> Changes in v2: None
>>
>>   drivers/mmc/host/sdhci-of-dwcmshc.c | 51 ++++++++++++++++++++++++++++++++++++-
>>   1 file changed, 50 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
>> index 46b1ce7..fc917ed 100644
>> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
>> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
>> @@ -15,6 +15,7 @@
>>   #include <linux/module.h>
>>   #include <linux/of.h>
>>   #include <linux/of_device.h>
>> +#include <linux/pm_runtime.h>
>>   #include <linux/reset.h>
>>   #include <linux/sizes.h>
>>
>> @@ -551,6 +552,13 @@ static int dwcmshc_probe(struct platform_device *pdev)
>>          if (err)
>>                  goto err_setup_host;
>>
>> +       pm_runtime_get_noresume(&pdev->dev);
>> +       pm_runtime_set_active(&pdev->dev);
>> +       pm_runtime_enable(&pdev->dev);
>> +       pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
>> +       pm_runtime_use_autosuspend(&pdev->dev);
>> +       pm_runtime_put_autosuspend(&pdev->dev);
>> +
>>          return 0;
>>
>>   err_setup_host:
>> @@ -580,6 +588,11 @@ static int dwcmshc_remove(struct platform_device *pdev)
>>          if (rk_priv)
>>                  clk_bulk_disable_unprepare(RK35xx_MAX_CLKS,
>>                                             rk_priv->rockchip_clks);
>> +
>> +       pm_runtime_get_sync(&pdev->dev);
>> +       pm_runtime_disable(&pdev->dev);
>> +       pm_runtime_put_noidle(&pdev->dev);
>> +
>>          sdhci_pltfm_free(pdev);
>>
>>          return 0;
>> @@ -638,7 +651,43 @@ static int dwcmshc_resume(struct device *dev)
>>   }
>>   #endif
>>
>> -static SIMPLE_DEV_PM_OPS(dwcmshc_pmops, dwcmshc_suspend, dwcmshc_resume);
>> +#ifdef CONFIG_PM
>> +static int dwcmshc_runtime_suspend(struct device *dev)
>> +{
>> +       struct sdhci_host *host = dev_get_drvdata(dev);
>> +       u16 data;
>> +       int ret;
>> +
>> +       ret = sdhci_runtime_suspend_host(host);
>> +       if (ret)
>> +               return ret;
>> +
>> +       data = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
>> +       data &= ~SDHCI_CLOCK_CARD_EN;
>> +       sdhci_writew(host, data, SDHCI_CLOCK_CONTROL);
>> +
>> +       return 0;
>> +}
>> +
>> +static int dwcmshc_runtime_resume(struct device *dev)
>> +{
>> +       struct sdhci_host *host = dev_get_drvdata(dev);
>> +       u16 data;
>> +
>> +       data = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
>> +       data |= SDHCI_CLOCK_CARD_EN;
>> +       sdhci_writew(host, data, SDHCI_CLOCK_CONTROL);
>> +
>> +       return sdhci_runtime_resume_host(host, 0);
>> +}
>> +#endif
>> +
>> +static const struct dev_pm_ops dwcmshc_pmops = {
>> +       SET_SYSTEM_SLEEP_PM_OPS(dwcmshc_suspend,
>> +                               dwcmshc_resume)
> 
> I have looked at dwcmshc_suspend(), which calls sdhci_suspend_host().
> As sdhci_suspend_host() will write to internal registers of the IP
> block, it's recommended to make sure the device's runtime resumed
> before doing that call. So that needs to be added along with $subject
> patch.
> 

Yep, let me add a check here.

> There is also another option that may better for you, which is to use
> the pm_runtime_force_suspend|resume() helpers. There should be plenty
> of references to look at, but don't hesitate to ask around that, if
> you need some more help to get that working.

If I understand correctly,  pm_runtime_force_suspend|resume() helpers
would use runtime PM ops for suspend/resume routine. In this case, the
main issue is the handling of clock is quite different. In suspend we
need to gate all clocks but in rpm case, it shouldn't.


> 
>> +       SET_RUNTIME_PM_OPS(dwcmshc_runtime_suspend,
>> +                          dwcmshc_runtime_resume, NULL)
>> +};
>>
>>   static struct platform_driver sdhci_dwcmshc_driver = {
>>          .driver = {
> 
> Kind regards
> Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
