Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45CE0C02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b/vLhRpMfwJRvf50wuF62gYHZd4uG8ofs4PCA0jGAJk=; b=XEKagg6MFQ1OHQAqUlU3u3zjxh
	1DZbNdsYfBPN0zOe0WLRsAau2C1/yeM1di8UOOdRgW1fv2f60Jd3yJa7vdZI9Yh/OScs1cGfIobfs
	fFAVjPJtZzaRzzxEoCTZtZAtkWv+aOuCOHvZYIbmOqFMbuooWM4zofsTt1s9qW0QeE1M+xn3P7boC
	zaqxTmyRLV5bTVhA2pL9EkgzFbePs3O28JZN1cQF0qINutYTKwr+KtkO/hRccWTn+ZYigRyJeFJ/x
	A1+mRGo/numPIlcKwiV4V0wYr/QSX+G2xasUQA82pLtiy95HXCxRWSmkYCE/bqCgG61t454NOBtDB
	cHIapeMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbF2v-0000000EFNA-3Irg;
	Fri, 24 Jan 2025 08:28:09 +0000
Received: from mail-m3282.qiye.163.com ([220.197.32.82])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbF1k-0000000EEyB-1e7r;
	Fri, 24 Jan 2025 08:26:58 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 996fdf6b;
	Fri, 24 Jan 2025 16:26:49 +0800 (GMT+08:00)
Message-ID: <c1718efc-85de-4356-aa15-2296a0780b2f@rock-chips.com>
Date: Fri, 24 Jan 2025 16:26:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 06/14] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-7-damon.ding@rock-chips.com>
 <y4yzgkvcmvmphviuoroijaaotd2zdworbs5tfhdxh74kchirk6@dgoqwoksckiz>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <y4yzgkvcmvmphviuoroijaaotd2zdworbs5tfhdxh74kchirk6@dgoqwoksckiz>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQklMHlZOSE9DSUxNGh9DQkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94976bc3a103a3kunm996fdf6b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MU06Mzo4OTIXHiFLMDBKCA82
	F1YwCxZVSlVKTEhMTEtMSUpKT09CVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ0pLNwY+
DKIM-Signature: a=rsa-sha256;
	b=OYTYvei2Jt0VQn6+xbTs8MyEcoB25VtrUR7lof7WSmjRXwxJEUCpdeds8/R8FPtylnCqhMnxEYfnwWe8lhF4tAhafN/OQ4GNnzOSdhxEy1abwkDbtmF4hEXF63QkK1mmAn5qGwbNW9EOHOAF24wqZRsOfWhLaNR2Zq2sBlFtpoM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/8oAL6qTbQWJkj8r9VXN/YNw8cpkGC6GOUpg2XwzQs8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_002656_990026_6EF83DBA 
X-CRM114-Status: GOOD (  12.99  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

On 2025/1/23 19:19, Dmitry Baryshkov wrote:
> On Thu, Jan 23, 2025 at 06:07:39PM +0800, Damon Ding wrote:
>> Add two new functions: one to find &analogix_dp_device.plat_data via
>> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
>> serve for the function of getting panel from DP AUX bus, which is why
>> they are included in a single commit.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
>>   include/drm/bridge/analogix_dp.h                   |  4 ++++
>>   2 files changed, 18 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index b05f5b9f5258..8251adfce2f9 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1794,6 +1794,20 @@ int analogix_dp_stop_crc(struct drm_connector *connector)
>>   }
>>   EXPORT_SYMBOL_GPL(analogix_dp_stop_crc);
>>   
>> +struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux)
>> +{
>> +	struct analogix_dp_device *dp = to_dp(aux);
>> +
>> +	return dp->plat_data;
>> +}
>> +EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
>> +
>> +struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
>> +{
>> +	return &dp->aux;
>> +}
>> +EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
>> +
>>   MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
>>   MODULE_DESCRIPTION("Analogix DP Core Driver");
>>   MODULE_LICENSE("GPL v2");
>> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
>> index 6002c5666031..1b119b547988 100644
>> --- a/include/drm/bridge/analogix_dp.h
>> +++ b/include/drm/bridge/analogix_dp.h
>> @@ -7,6 +7,7 @@
>>   #ifndef _ANALOGIX_DP_H_
>>   #define _ANALOGIX_DP_H_
>>   
>> +#include <drm/display/drm_dp_aux_bus.h>
> 
> Nit: it should be enough to just forward-declare struct drm_dp_aux
> instead.
> 

I will move the header file to the driver of Rockchip Analogix DP and 
just use the forward-declare here in the next version.

>>   #include <drm/drm_crtc.h>
>>   
>>   struct analogix_dp_device;
>> @@ -48,4 +49,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp);
>>   int analogix_dp_start_crc(struct drm_connector *connector);
>>   int analogix_dp_stop_crc(struct drm_connector *connector);
>>   
>> +struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux);
>> +struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp);
>> +
>>   #endif /* _ANALOGIX_DP_H_ */
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
