Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B30C7FB5E8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 01:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iJIC9/klnLXz/ylTDuXllTL/rZXp5ULeQTqtNbqYPpc=; b=gCQGxqb/QPnxqnd46mb4EhZHGA
	234JexvYjrJOmR4b/w93TPgh78ieb+FnXvE/KHQOHoBMIsp2GrdGGxoyFJXgdfp19wVwLNwx93oyp
	MA8RhWtMcejth7C5IBnChjINRjOdOA2GSeL+N5GPAC7xvGe9GA9O9F0+2MFQuww0Nt6c9ODv4RK4H
	xub2ykLe3iCk47vLUy66FZkZIs8BawSdPNAVT/1lVt75lpFR9VLZTopZq4lWA6LRkWj+Z8m2tGDa4
	Fgb8bsEPgYcK64mg1Bm4OYxgT0gXj9SY1gCr/HLVmuQUHL+TgnFbXoZzc7sJYtnd3TEDWEzMtxhcn
	B7UDOyxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2JFx-00000005B0J-28mA;
	Tue, 17 Mar 2026 01:30:01 +0000
Received: from mail-m19731116.qiye.163.com ([220.197.31.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2JFu-00000005AzD-0Lr9;
	Tue, 17 Mar 2026 01:29:59 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 372ee763f;
	Tue, 17 Mar 2026 09:29:50 +0800 (GMT+08:00)
Message-ID: <a24e2a09-86a6-4c59-b219-7bfe9c74a4a5@rock-chips.com>
Date: Tue, 17 Mar 2026 09:29:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] drm/bridge: analogix_dp: Add support for RK3576
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-4-damon.ding@rock-chips.com>
 <2032185.PYKUYFuaPT@workhorse>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <2032185.PYKUYFuaPT@workhorse>
X-HM-Tid: 0a9cf969dbe503a3kunm8ccf497d220f1e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUNKSlZOSB8dQk9KHk8eT0lWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=PJJ2468GOrg1YUeWzfIDkcNmJ93zOHxs2Aqc+k9HqwCiHWzw6l7ATKA+c/pDZKGoII0WDacnZmHNKE5yxtnzLMvHZ5VIfc4R+7iD0rgoqt9aWl8OJvGBiHpo869fXb5vGZbLS4vw2/Kzk06d4gvMsWl2g3m2+2GZAYK4/X/rUO0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/B8DeTrHPb3y1Zv+MpxLUNG3NZwclQ3c6Iyu/xxMENc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_182958_672001_5322D35C 
X-CRM114-Status: GOOD (  13.81  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, dianders@chromium.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Nicolas,

On 3/16/2026 7:14 PM, Nicolas Frattaroli wrote:
> On Tuesday, 10 March 2026 11:53:06 Central European Standard Time Damon Ding wrote:
>> Expand enum analogix_dp_devtype with RK3576_EDP, and add max_link_rate
>> and max_lane_count configs for it.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 1 +
>>   include/drm/bridge/analogix_dp.h                   | 3 ++-
>>   2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index fe7158d9edde..c4e49e8186ab 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1248,6 +1248,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>>   		video_info->max_link_rate = 0x0A;
>>   		video_info->max_lane_count = 0x04;
>>   		break;
>> +	case RK3576_EDP:
>>   	case RK3588_EDP:
>>   		video_info->max_link_rate = 0x14;
>>   		video_info->max_lane_count = 0x04;
>> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
>> index 854af692229b..d1a6e6d44a2b 100644
>> --- a/include/drm/bridge/analogix_dp.h
>> +++ b/include/drm/bridge/analogix_dp.h
>> @@ -16,12 +16,13 @@ enum analogix_dp_devtype {
>>   	EXYNOS_DP,
>>   	RK3288_DP,
>>   	RK3399_EDP,
>> +	RK3576_EDP,
>>   	RK3588_EDP,
>>   };
>>   
>>   static inline bool is_rockchip(enum analogix_dp_devtype type)
>>   {
>> -	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
>> +	return type == RK3288_DP || type == RK3399_EDP || type == RK3576_EDP || type == RK3588_EDP;
> 
> I think we can make this easier to read with a switch statement. In
> a separate patch, we may also want to rename `is_rockchip` to
> `analogix_dp_is_rockchip`, as e.g. rockchip_drm_vop.c and exynos_dp.c
> both include his header file as well.
> 
> Switch statement would make the function look something like:
> 
> static inline bool is_rockchip(enum analogix_dp_devtype type)
> {
> 	switch (type) {
> 	case RK3288_DP:
> 	case RK3399_EDP:
> 	case RK3576_EDP:
> 	case RK3588_EDP:
> 		return true;
> 	default:
> 		return false;
> 	}
> }
> 

Good idea, will do in v2. :-)

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
