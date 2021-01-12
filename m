Return-Path: <SRS0=BMHt=GP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73B27C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jan 2021 10:48:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F532222B3
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jan 2021 10:48:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F532222B3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t1HIdmZJIMAEiHGCtTWLuCOvhieieDdsYLJlXiYDK4M=; b=yBgPaxmZQ9wnr/VThdzY4bcjL
	h+Xhz9RtmnaVqYOkLD+P/TkxE44Sm5yGgMk8TdI0VRtzDjQ1/p5f8JL9JfQuYFvJYvpU7NIdEKNt1
	5rRMjbPvwGFJK3r4yLhmAwjOqGnXBROwGnEG2VtfsfAqibzeLQnxr02FasjXXvyWgcoQFh6+lWtUw
	5o4rfIo+YJz+9y7ZqmdgKVqnGVy309AadtrV8tPKLIGcsvy92QEKHcYSF+ILwuJrc244WvKm0KBR2
	Ck4y4E1QHEoZgh7gwYeFp81Wd0LXtl4EfZNhVBp5otn1nLh5sF5sDy0az0y3FLyzLo/AxBfyOzSGi
	RAwxIv8mw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzHDb-0002sv-Ic; Tue, 12 Jan 2021 10:48:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzHDY-0002qM-9H
 for linux-rockchip@lists.infradead.org; Tue, 12 Jan 2021 10:48:06 +0000
Received: from [IPv6:2003:c7:cf1c:ce00:f910:3ddf:79d3:b08e]
 (p200300c7cf1cce00f9103ddf79d3b08e.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:ce00:f910:3ddf:79d3:b08e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0F8E31F451D5;
 Tue, 12 Jan 2021 10:48:00 +0000 (GMT)
Subject: Re: [PATCH 1/2] media: rockchip: rkisp1: carry ip version information
To: Hans Verkuil <hverkuil@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 helen.koike@collabora.com, linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com
References: <20210111234011.3642481-1-heiko@sntech.de>
 <20210111234011.3642481-2-heiko@sntech.de>
 <0154ffe7-19a4-28a9-003e-4f3af7c76274@xs4all.nl>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <81d0ce25-98a9-1785-d046-913c322d98bb@collabora.com>
Date: Tue, 12 Jan 2021 11:47:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <0154ffe7-19a4-28a9-003e-4f3af7c76274@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210112_054804_581877_85CAE5F8 
X-CRM114-Status: GOOD (  28.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, Tomasz Figa <tfiga@chromium.org>,
 ezequiel@collabora.com, christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 12.01.21 um 09:32 schrieb Hans Verkuil:
> On 12/01/2021 00:40, Heiko Stuebner wrote:
>> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>>
>> The IP block evolved from its rk3288/rk3399 base and the vendor
>> designates them with a numerical version. rk3399 for example
>> is designated V10 probably meaning V1.0.
>>
>> There doesn't seem to be an actual version register we could read that
>> information from, so allow the match_data to carry that information
>> for future differentiation.

There is a register RKISP1_CIF_VI_ID.
The datasheet I have says: "MARVIN revision ID"
The datasheet says that the reset value is 1085'3017H
which is also the value for the rk3399 and is described "M14_v2 id (Rel. 1.1)"

I don't how this register corresponds to the versions from
the downstream code if at all.

The register is read and kprinted in function rkisp1_config_cif
Could you report the value printed in the px30?

>>
>> Also carry that information in the hw_revision field of the media-
>> controller API, so that userspace also has access to that.
>>
>> The added versions are:
>> - V10: at least rk3288 + rk3399
>> - V11: seemingly unused as of now, but probably appeared in some soc
>> - V12: at least rk3326 + px30
>> - V13: at least rk1808
>>
>> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>> ---
>> changes since rfc:
>> - move rkisp1_version enum into uapo
>> - show version in media-api hw_revision
>>
>>   .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
>>   .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++++--------
>>   include/uapi/linux/rkisp1-config.h            |  7 ++++++
>>   3 files changed, 21 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> index 038c303a8aed..bad1bd468f2f 100644
>> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> @@ -354,6 +354,7 @@ struct rkisp1_device {
>>   	void __iomem *base_addr;
>>   	int irq;
>>   	struct device *dev;
>> +	enum rkisp1_cif_isp_version isp_ver;

I don't think we need to add this field,
seems to be enough to set the media_dev.hw_revision

Thanks,
Dafna

>>   	unsigned int clk_size;
>>   	struct clk_bulk_data clks[RKISP1_MAX_BUS_CLK];
>>   	struct v4l2_device v4l2_dev;
>> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> index 68da1eed753d..f594d7cd03d0 100644
>> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> @@ -104,6 +104,7 @@
>>   struct rkisp1_match_data {
>>   	const char * const *clks;
>>   	unsigned int size;
>> +	enum rkisp1_cif_isp_version isp_ver;
>>   };
>>   
>>   /* ----------------------------------------------------------------------------
>> @@ -411,15 +412,16 @@ static const char * const rk3399_isp_clks[] = {
>>   	"hclk",
>>   };
>>   
>> -static const struct rkisp1_match_data rk3399_isp_clk_data = {
>> +static const struct rkisp1_match_data rk3399_isp_match_data = {
>>   	.clks = rk3399_isp_clks,
>>   	.size = ARRAY_SIZE(rk3399_isp_clks),
>> +	.isp_ver = RKISP1_V10,
>>   };
>>   
>>   static const struct of_device_id rkisp1_of_match[] = {
>>   	{
>>   		.compatible = "rockchip,rk3399-cif-isp",
>> -		.data = &rk3399_isp_clk_data,
>> +		.data = &rk3399_isp_match_data,
>>   	},
>>   	{},
>>   };
>> @@ -457,15 +459,15 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>>   
>>   static int rkisp1_probe(struct platform_device *pdev)
>>   {
>> -	const struct rkisp1_match_data *clk_data;
>> +	const struct rkisp1_match_data *match_data;
>>   	struct device *dev = &pdev->dev;
>>   	struct rkisp1_device *rkisp1;
>>   	struct v4l2_device *v4l2_dev;
>>   	unsigned int i;
>>   	int ret, irq;
>>   
>> -	clk_data = of_device_get_match_data(&pdev->dev);
>> -	if (!clk_data)
>> +	match_data = of_device_get_match_data(&pdev->dev);
>> +	if (!match_data)
>>   		return -ENODEV;
>>   
>>   	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
>> @@ -494,15 +496,17 @@ static int rkisp1_probe(struct platform_device *pdev)
>>   
>>   	rkisp1->irq = irq;
>>   
>> -	for (i = 0; i < clk_data->size; i++)
>> -		rkisp1->clks[i].id = clk_data->clks[i];
>> -	ret = devm_clk_bulk_get(dev, clk_data->size, rkisp1->clks);
>> +	for (i = 0; i < match_data->size; i++)
>> +		rkisp1->clks[i].id = match_data->clks[i];
>> +	ret = devm_clk_bulk_get(dev, match_data->size, rkisp1->clks);
>>   	if (ret)
>>   		return ret;
>> -	rkisp1->clk_size = clk_data->size;
>> +	rkisp1->clk_size = match_data->size;
>> +	rkisp1->isp_ver = match_data->isp_ver;
>>   
>>   	pm_runtime_enable(&pdev->dev);
>>   
>> +	rkisp1->media_dev.hw_revision = rkisp1->isp_ver;
> 
> This must be documented in Documentation/media/admin-guide/rkisp1.rst.
> Document that this field is used by this driver and the mapping of the
> version number to SoCs.
> 
>>   	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
>>   		sizeof(rkisp1->media_dev.model));
>>   	rkisp1->media_dev.dev = &pdev->dev;
>> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
>> index 6e449e784260..bad46aadf838 100644
>> --- a/include/uapi/linux/rkisp1-config.h
>> +++ b/include/uapi/linux/rkisp1-config.h
>> @@ -124,6 +124,13 @@
>>   #define RKISP1_CIF_ISP_STAT_AFM           (1U << 2)
>>   #define RKISP1_CIF_ISP_STAT_HIST          (1U << 3)
>>   
>> +enum rkisp1_cif_isp_version {
>> +	RKISP1_V10 = 0,
>> +	RKISP1_V11,
>> +	RKISP1_V12,
>> +	RKISP1_V13,
>> +};
>> +
>>   enum rkisp1_cif_isp_histogram_mode {
>>   	RKISP1_CIF_ISP_HISTOGRAM_MODE_DISABLE,
>>   	RKISP1_CIF_ISP_HISTOGRAM_MODE_RGB_COMBINED,
>>
> 
> Regards,
> 
> 	Hans
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
