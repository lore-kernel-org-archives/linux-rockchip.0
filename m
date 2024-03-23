Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CDE0C54E67
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 10:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMU77TJRAePfrsE+SSw7Z8HKvUSTpsaia111NS4Rweg=; b=biFpQnpj/Q6nPu
	84zo+w6RMQk4qbQeTnl5nkQ30mIrVQjyzgpVQ60MXQkLSIuWZ161UxbwWwFHDWfsj9QtGygANs8HY
	OjyaoMO/0SBVzAJ6JHp/VGAVssQNz+ClPmGIA1Gbmk2gzo5SiF0CNAKNcExe7T0YA1f/GT061dVwR
	bbGjbGe0MG0TgTYS5otTizu6ukjhDb+jRwK3nLHOqCoL33WOe1jiOKBSkqJYnFXmJTh2l3r9YcCAM
	RBe1fNFrGU8UNg0ymcKaWrJJaq/ckv2lo8KYbYXqV+6LcfwasEtOr6yzgH/5/HYBTAZmDZYz3EYxL
	fyVq7ECxN9LDiisl2eVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnyL5-0000000A8PO-1qr2;
	Sat, 23 Mar 2024 10:10:59 +0000
Received: from mail-m6036.netease.com ([210.79.60.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnyL1-0000000A8ON-0YQX;
	Sat, 23 Mar 2024 10:10:57 +0000
DKIM-Signature: a=rsa-sha256;
	b=eiaz3UiV0uPVF2QFBinLXWWWvz2WaL40BQXlEdwQrk7Q6yHgnLRWJnPTMAynR0C6BcmSXnBxv6ublAjKBN5I1Yyz8/PdCga067rseDQQTELTkIAzb98hELqkyHWPeDf3DAbDNRXfST+X6BMOTspz4eOj9iC4vmjoFMr6Dkihoow=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=F4JueNQpmRpoZ37/dDuh/QnjrtryA6hyAuvn6ICYLVY=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 1CDA884017E;
	Sat, 23 Mar 2024 18:10:35 +0800 (CST)
Message-ID: <38d576a3-0f4e-4410-aa9b-74e06e1fceb1@rock-chips.com>
Date: Sat, 23 Mar 2024 18:10:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: Remove AR30 and AB30 format support
To: Heiko Stuebner <heiko@sntech.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240304100952.3592984-1-andyshrk@163.com>
 <ZeWlAWLvlW3NdKS_@pengutronix.de>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <ZeWlAWLvlW3NdKS_@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx5OSFYZSkIaShodGBlJGE5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8e6aca6f4c03a4kunm1cda884017e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pgg6Ghw4HjMVEgg*Ii5OUSlI
	Ci4aFBVVSlVKTEpKSkNDTUhOTENNVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU1OSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_031055_778935_34EF1A01 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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

Hi Heiko,

Could you please  to take a look at this patch?

On 3/4/24 18:40, Sascha Hauer wrote:
> On Mon, Mar 04, 2024 at 06:09:52PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> The Alpha blending for 30 bit RGB/BGR are not
>> functioning properly for rk3568/rk3588, so remove
>> it from the format list.
>>
>> Fixes: bfd8a5c228fa ("drm/rockchip: vop2: Add more supported 10bit formats")
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> ---
> 
> Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Sascha
> 
>>
>>   drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 2 --
>>   1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> index 48170694ac6b..18efb3fe1c00 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> @@ -17,9 +17,7 @@
>>   
>>   static const uint32_t formats_cluster[] = {
>>   	DRM_FORMAT_XRGB2101010,
>> -	DRM_FORMAT_ARGB2101010,
>>   	DRM_FORMAT_XBGR2101010,
>> -	DRM_FORMAT_ABGR2101010,
>>   	DRM_FORMAT_XRGB8888,
>>   	DRM_FORMAT_ARGB8888,
>>   	DRM_FORMAT_XBGR8888,
>> -- 
>> 2.34.1
>>
>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
