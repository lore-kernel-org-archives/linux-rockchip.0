Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29BE1C07E97
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VY36kh1K6b27LW5oHk8/TYHvdNKwbDgFxRNlyIqfK8Y=; b=Zl2rm3DrQbhykv
	yp/EQzZuHiAL505qFkizbO2JqZJMq/SJJuKVaECdH0P6TtQOcPypyFYw2kb2GLnMR12ImmJzXPV9B
	WDjjQ7zUGNowAmlOgfGXqab8K9uG+S+tXwZa+lubPoEnfrVkTsg3hXVHYz39S5VHGbTTubu5UX7i/
	J/cO8JUhfqAhzgu7czx+4Ck41yvabqqF9AaCBnabFaTodMcbEOrj7Cu2UsqAUyBaUFKQ8YKjsnyaa
	YrogUict5lQ4k5kNlsXWscdzd/Wdyj49vLqIUylvcvW0GkpJ7iNL0BmBmmwJ/HWjtwNmqcbI+x0fV
	cbKSpDUvvC3KlSLz3iXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rARyw-006rrK-1w;
	Tue, 05 Dec 2023 09:44:46 +0000
Received: from mail-m12783.qiye.163.com ([115.236.127.83])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rARyt-006roA-36
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 09:44:45 +0000
DKIM-Signature: a=rsa-sha256;
	b=dGZ4BWZty1d0oIWgBZ6X8FBIyGDPCj743XxLuAfNp+xa34p6BSXVPPWnrai2cFtu/MHaXQF1gs5x6htnfVWl192MLEzMqyi5frolErK8Uhb06vt8nQrgBdjNV6XOr4AZV9ICA09I88dZL2kgtm/Es/DqW6YWSYfL+Qc52ZB/YV8=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Qwe7/iDLwPEEdgYbXXnkzwx2HO9asx5VCXEH67b0F/w=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 59D887801C1;
	Tue,  5 Dec 2023 17:44:03 +0800 (CST)
Message-ID: <87831dc3-2554-4b53-a9f8-6b61cf67732e@rock-chips.com>
Date: Tue, 5 Dec 2023 17:44:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/14] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>, Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231130122001.12474-1-andyshrk@163.com>
 <20231130122439.13374-1-andyshrk@163.com>
 <20231205092936.GW1057032@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231205092936.GW1057032@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU1DS1ZMGkpCGUoZGEgZTkxVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c395cf962b24fkuuu59d887801c1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRQ6PQw6PDw0FgMVDBpKIykY
	GQxPCRZVSlVKTEtKTE1CT09PSUJIVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSElNTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_014444_147252_DDCBFBF0 
X-CRM114-Status: GOOD (  13.21  )
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

Hi Sascha:

On 12/5/23 17:29, Sascha Hauer wrote:
> On Thu, Nov 30, 2023 at 08:24:39PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> VOP2 on rk3588:
>>
>> Four video ports:
>> VP0 Max 4096x2160
>> VP1 Max 4096x2160
>> VP2 Max 4096x2160
>> VP3 Max 2048x1080
>>
>> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
>> 4 4K Esmart windows with line RGB/YUV support
>>
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> With the two nits below feel free to add my:
> 
> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Thanks for working on this.
> 
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>> index 8d7ff52523fb..8b16031eda52 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>> @@ -13,9 +13,16 @@
>>   
>>   #define VOP_FEATURE_OUTPUT_10BIT        BIT(0)
> 
> You could rename this to include "VP" for Video Port so it's not so
> easily mixed up with the defines below.

Yes, I have the same idea, maybe it's better to do the rename in a separate ?
> 
>>   
>> +#define VOP2_FEATURE_HAS_SYS_GRF	BIT(0)
>> +#define VOP2_FEATURE_HAS_VO0_GRF	BIT(1)
>> +#define VOP2_FEATURE_HAS_VO1_GRF	BIT(2)
>> +#define VOP2_FEATURE_HAS_VOP_GRF	BIT(3)
>> +#define VOP2_FEATURE_HAS_SYS_PMU	BIT(5)
> 
> Should be BIT(4)

Thanks for catching this, will fix in next version.
> 
> Sascha
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
