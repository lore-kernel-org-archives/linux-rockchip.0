Return-Path: <SRS0=MHCR=GS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13BDC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 15:42:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68E07207D0
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 15:42:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 68E07207D0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jmYcOkHXyY3uwnq8KjkLT92qFn2f7nz5zgeav/br6QU=; b=hg9VRyTgSWBiY42IIWbJaomSR
	JZP4oW2gXYVtQ/2FqRCi5lpmMTWLCNS5ijuh4BjwHCRzbVnfz0eZZxnHvMvtz3eYVdmr0aenenN+8
	0AiDF7w5lFmF9NdC36i2IMOJ4GUVuEr9Bd+My2NLY7TKwOWhCU/+amUfD5oA2TtymvuwP8YFM1uzd
	aZRpeguRj5xX4tFugWodJDLZiPOMdQKzly6+/CHp2hvlj2rrg34xcJAWP+kXIHrqgwpV6nzfX/hvs
	SI1wUfVVy0q1lK0bLCAFRET2/yIMfOWWo1RCuVIL83QyGAmvQU4NHRUYaZDthwmaLCKJFAUJwKoi8
	sDs4jM+pw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0REl-000690-KU; Fri, 15 Jan 2021 15:42:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0REi-000685-GH
 for linux-rockchip@lists.infradead.org; Fri, 15 Jan 2021 15:42:05 +0000
Received: from [IPv6:2003:c7:cf1c:ce00:50c3:215:f597:23ab]
 (p200300c7cf1cce0050c30215f59723ab.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:ce00:50c3:215:f597:23ab])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9568D1F45FED;
 Fri, 15 Jan 2021 15:42:02 +0000 (GMT)
Subject: Re: [PATCH v3 1/2] media: rockchip: rkisp1: carry ip version
 information
To: Hans Verkuil <hverkuil@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 helen.koike@collabora.com, linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com
References: <20210115112351.208011-1-heiko@sntech.de>
 <20210115112351.208011-2-heiko@sntech.de>
 <6f368ffc-2caf-44a0-1fa8-12104f57d568@xs4all.nl>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <a2edd953-8e33-7d34-14cb-4c242a8ff696@collabora.com>
Date: Fri, 15 Jan 2021 16:41:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6f368ffc-2caf-44a0-1fa8-12104f57d568@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210115_104204_728684_5924DEF7 
X-CRM114-Status: GOOD (  27.29  )
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
 linux-rockchip@lists.infradead.org, tfiga@chromium.org, ezequiel@collabora.com,
 christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 15.01.21 um 15:02 schrieb Hans Verkuil:
> On 15/01/2021 12:23, Heiko Stuebner wrote:
>> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>>
>> The IP block evolved from its rk3288/rk3399 base and the vendor
>> designates them with a numerical version. rk3399 for example
>> is designated V10 probably meaning V1.0.
>>
>> There doesn't seem to be an actual version register we could read that
>> information from, so allow the match_data to carry that information
>> for future differentiation.
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
>>   Documentation/admin-guide/media/rkisp1.rst    | 15 +++++++++++++
>>   .../platform/rockchip/rkisp1/rkisp1-dev.c     | 21 +++++++++++--------
>>   include/uapi/linux/rkisp1-config.h            |  7 +++++++
>>   3 files changed, 34 insertions(+), 9 deletions(-)
>>
>> diff --git a/Documentation/admin-guide/media/rkisp1.rst b/Documentation/admin-guide/media/rkisp1.rst
>> index 2267e4fb475e..e960678f47ca 100644
>> --- a/Documentation/admin-guide/media/rkisp1.rst
>> +++ b/Documentation/admin-guide/media/rkisp1.rst
>> @@ -13,6 +13,21 @@ This file documents the driver for the Rockchip ISP1 that is part of RK3288
>>   and RK3399 SoCs. The driver is located under drivers/staging/media/rkisp1
>>   and uses the Media-Controller API.
>>   
>> +Revisions
>> +=========
>> +
>> +There exist multiple smaller revisions to this ISP that got introduced in
>> +later SoCs. Revisions in use are documented in enum rkisp1_cif_isp_version

Hi,
since you send v4 anyway..
You can format "enum rkisp1_cif_isp_version" to "enum :c:type:`rkisp1_cif_isp_version`"
But you actually document the revision here in this file and not "in enum rkisp1_cif_isp_version"
Maybe it is actually better to document them inline (just above the enum decleration)

Thanks,
Dafna

>> +in the UAPI and the revision of the ISP inside the running SoC can be read
>> +in the field hw_revision of struct media_device.
> 
> No, struct media_device is internal to the kernel, userspace doesn't see this
> struct.
> 
> Replace this by:
> 
> "...struct media_device_info as returned by ioctl MEDIA_IOC_DEVICE_INFO."
> 
> Regards,
> 
> 	Hans
> 
>> +
>> +Versions in use are:
>> +
>> +- RKISP1_V10: used at least in rk3288 and rk3399
>> +- RKISP1_V11: declared in the original vendor code, but not used
>> +- RKISP1_V12: used at least in rk3326 and px30
>> +- RKISP1_V13: used at least in rk1808
>> +
>>   Topology
>>   ========
>>   .. _rkisp1_topology_graph:
>> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> index 68da1eed753d..f7e9fd305548 100644
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
>> @@ -494,15 +496,16 @@ static int rkisp1_probe(struct platform_device *pdev)
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
>>   
>>   	pm_runtime_enable(&pdev->dev);
>>   
>> +	rkisp1->media_dev.hw_revision = match_data->isp_ver;
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

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
