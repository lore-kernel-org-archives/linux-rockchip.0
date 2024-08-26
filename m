Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0625CC5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 09:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnCyw+oulZSTEGT+bURaLJKMHBQKujTWIDZvejcq+zI=; b=B3B4V1dzu+bLa+
	SNhE24ZwL+JrqruRp1C7vegmpEbM4s+6QFZ8tbPjTyQypFYlNz5odDH3UQdkBYkYwX5sWaOrxdE/U
	wsKJLJ3hL7X9ikmEyqSbphGiTGtKEeSEYnYZ9PPteQ5VRLcvgpeNX+6Po0RWeLcSxKsNWoOk5PrAd
	OKsUgTbR6XUfr/jrcar00opp+WxGu/9AVrN+gjjr6QhG8JZeBUx9Flhoi/pcqzLYl9Lfy/AS+eOIX
	3aHz0dXZjuSAGfJM6Yi6MXdmTz84vnlRVFIrAg7vGGUnMLUZlnr34RrWz8IhBvLFU8s5fXIQKtZHf
	7kID05VtGCinpg4qkk4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siVey-00000006b3w-46IO;
	Mon, 26 Aug 2024 09:05:13 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siVe9-00000006awH-39P4;
	Mon, 26 Aug 2024 09:04:24 +0000
Received: from mail.maildlp.com (unknown [172.19.88.194])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Wsl7D27nYzpTZH;
	Mon, 26 Aug 2024 17:02:32 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 28A361401F0;
	Mon, 26 Aug 2024 17:04:11 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemh500013.china.huawei.com (7.202.181.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 26 Aug 2024 17:04:09 +0800
Message-ID: <ab3c09e7-43cc-b946-0f7c-44ea7f4111f2@huawei.com>
Date: Mon, 26 Aug 2024 17:04:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH -next 1/5] drm/rockchip: Use
 for_each_child_of_node_scoped()
Content-Language: en-US
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
CC: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
 <20240823092053.3170445-2-ruanjinjie@huawei.com>
 <20240823123203.00002aac@Huawei.com>
From: Jinjie Ruan <ruanjinjie@huawei.com>
In-Reply-To: <20240823123203.00002aac@Huawei.com>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_020422_320166_A8489424 
X-CRM114-Status: GOOD (  19.48  )
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



On 2024/8/23 19:32, Jonathan Cameron wrote:
> On Fri, 23 Aug 2024 17:20:49 +0800
> Jinjie Ruan <ruanjinjie@huawei.com> wrote:
> 
>> Avoids the need for manual cleanup of_node_put() in early exits
>> from the loop.
>>
>> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
> 
> There is more to do here, and looking at the code, I'm far from
> sure it isn't releasing references it never had.
> 
>> ---
>>  drivers/gpu/drm/rockchip/rockchip_lvds.c | 8 +++-----
>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
>> index 9a01aa450741..f5b3f18794dd 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
>> @@ -548,7 +548,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>>  	struct drm_encoder *encoder;
>>  	struct drm_connector *connector;
>>  	struct device_node *remote = NULL;
>> -	struct device_node  *port, *endpoint;
> 
> Odd extra space before *port in original. Clean that up whilst here.
> 
> 
>> +	struct device_node  *port;
> 
> Use __free(device_node) for *port as well.
> 
> So where the current asignment is.
> 	struct device_node *port = of_graph_get_port_by_id(dev->of_node, 1);
> 
>>  	int ret = 0, child_count = 0;
>>  	const char *name;
>>  	u32 endpoint_id = 0;
>> @@ -560,15 +560,13 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>>  			      "can't found port point, please init lvds panel port!\n");
>>  		return -EINVAL;
>>  	}
>> -	for_each_child_of_node(port, endpoint) {
>> +	for_each_child_of_node_scoped(port, endpoint) {
>>  		child_count++;
>>  		of_property_read_u32(endpoint, "reg", &endpoint_id);
>>  		ret = drm_of_find_panel_or_bridge(dev->of_node, 1, endpoint_id,
>>  						  &lvds->panel, &lvds->bridge);
>> -		if (!ret) {
>> -			of_node_put(endpoint);
>> +		if (!ret)
>>  			break;
> 
> This then can simply be
> 			return dev_err_probe(dev, ret,
> 					     "failed to find pannel and bridge node\n");
>> -		}

Thank you! I'll resend and cleanup them.

> 
> Various other paths become direct returns as well.
> 
>>  	}
> 
> The later code with remote looks suspect as not obvious who got the reference that
> is being put but assuming that is correct, it's another possible place for __free based
> cleanup.
> 
> 
>>  	if (!child_count) {
>>  		DRM_DEV_ERROR(dev, "lvds port does not have any children\n");
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
