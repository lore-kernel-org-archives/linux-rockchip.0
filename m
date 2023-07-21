Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 042C6EB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 15:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpPkt+Z1lGRRUGI4wdp7p1q8oHeIpn6h1jwDw7gOBQ4=; b=EbbnlnN1Dfs8n4
	3uNo9H2If4oa6Xh4DkaoxGjyBJ3XhYwy2sxAtlvWVpCyJFr6XTs0frMq2Rm+sOFBp4YiP1IGw8zzS
	pM8kT/flM36IMP8pJtkcjSmlqXDfwpSurYvhbooXh1fVynIdVbSasZ3j61WSkP6kZiLHVSjAHtV5I
	QN3AVClQPAtz0qsU7PL1CqdTBfvWpZpnNCGq9PLiLGbMwjFn1yebYbu2dX7J33e8X8GYil2xwubSZ
	xNNtuSB7Dv/UkWFmJOlqNoV3hDZjbgxJcg5DuQhHV5aOkfw0UrULAlSmiaxkYXLUT1Im3fQgYXMFR
	/ONbBoWkeZlAX3kv3/Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrhc-00ENOu-0f;
	Fri, 21 Jul 2023 15:05:56 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrhZ-00ENOH-1W
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 15:05:54 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6687446eaccso1800228b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jul 2023 08:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689951951; x=1690556751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=J9t01tW//Y6gnQbuHCuY82CsGI5YDsJjCU5CUuuUpoE=;
        b=rXCT7zqYzdLCND5aqcr5GTp7x9G6pdO4FzrpiZ2KNLoeERbFMAsG1wAUwplKh61/7V
         MK8P7RgwY0moT1kYsXl1rnf2cStBEAdP1qIbRF7VQ5wqWN6sz2f2bXFFhL23AajxUVEk
         mTDumd5sm0KKHTWDfxPiWuVynPGUmOVXclguRTmODsW9oa1ga7e2RIeiWm6fTtP4bSlb
         moCRNr6uDO8iarO1Y9GQV1kqxmQDExLbkMhIumBZf1JV4VC7z6oUIV9B8333vTTQdfwV
         EHsUAY8biAJfqdKr0G+454NFq1Ez43lw2wlGRkzx1by/BxCObFGrmbyAj/IXOSWVfJzd
         zyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689951951; x=1690556751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J9t01tW//Y6gnQbuHCuY82CsGI5YDsJjCU5CUuuUpoE=;
        b=Ubi/XTgnrXYixDmaqi3Jh+1xy1YSDNmhpf6xiEoF0LEGcsNi26vfTqqYaIiYr4xvR/
         s3y4oJoo0c8Jj8/ruVHcu9qAPiIJ1XRQqqXHzJNrwd18wBosRcnIKrj6UaOAy7QT5KRD
         iJBxxAUqhsZNgY481kj9uctQIVKBHFsFc28Iy/d3zpn8eNOasaZw2NcbtgdFSaJFl03j
         pR4kS5zX4dUT6h1N0bv+OH2EXadxPPNkSFTrJw7wjqm0ifFw4qjZBIsNAS5qdR9det8i
         b9xBY+BOcTsK2OKeeMiSiuCfMNmaeYe1gpIKR87VFXAVPr9yvC3mxvGh6nw1SLxQHDeR
         euPA==
X-Gm-Message-State: ABy/qLan3HisSPlefavmSTv6cd+E1D0RW4rBxZoEEj+PPsupwxmD438C
	dX+4A3MIQ5R2ZyY0cLKHUWnwZ3rPDZ8=
X-Google-Smtp-Source: APBJJlGLjfetE/RgN+oM5Re8ZUebhuRS7XfGImhqYtc42yxWtNTYlACvUxIP7Uy+l098LSbdbOM6XA==
X-Received: by 2002:a05:6a00:2486:b0:682:37be:c9fe with SMTP id c6-20020a056a00248600b0068237bec9femr411699pfv.10.1689951951460;
        Fri, 21 Jul 2023 08:05:51 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id s15-20020a62e70f000000b0063d2dae6247sm3110766pfh.77.2023.07.21.08.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 08:05:50 -0700 (PDT)
Message-ID: <e79bcf87-472d-f785-d4bc-d7c744b23781@roeck-us.net>
Date: Fri, 21 Jul 2023 08:05:49 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations with
 RBTREE and MAPLE caches
Content-Language: en-US
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Mark Brown <broonie@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_080553_512547_D7547E4E 
X-CRM114-Status: GOOD (  22.02  )
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

On 7/21/23 07:53, Marek Szyprowski wrote:
> Hi,
> 
> On 20.07.2023 05:28, Guenter Roeck wrote:
>> REGCACHE_RBTREE and REGCACHE_MAPLE dynamically allocate memory for regmap
>> operations. This is incompatible with spinlock based locking which is used
>> for fast_io operations. Reject affected configurations.
>>
>> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
>> ---
>> This seems prudent, given that accesses will be protected by spinlock
>> but may allocate memory with GFP_KERNEL. Another option might be to use
>> WARN_ON instead of rejecting the configuration to avoid hard regressions
>> (and I think both drivers/net/ieee802154/mcr20a.c and
>> sound/soc/codecs/sti-sas.c may be affected, though I can not test it).
> 
> This patch, which landed in today's linux-next, breaks operation of the
> RockChip's VOP2 DRM driver
> (drivers/gpu/drm/rockchip/rockchip_drm_vop2.c). I'm not sure what is the
> proper fix in this case. Should one change the cache type to REGCACHE_FLAT?
> 

Ah, I missed regcache_init_mmio() when looking for affected drivers.
This affects a larger number of drivers than I thought. In addition
to the drivers mentioned above,

  drivers/soc/qcom/icc-bwmon.c
  sound/soc/bcm/bcm2835-i2s.c
  sound/soc/codecs/jz4740.c
  sound/soc/fsl/fsl_aud2htx.c
  sound/soc/fsl/fsl_easrc.c
  sound/soc/fsl/fsl_micfil.c

all use unsafe locking (spinlock with REGCACHE_RBTREE).

Thanks,
Guenter

> 
>>    drivers/base/regmap/regmap.c | 9 +++++++++
>>    1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
>> index 89a7f1c459c1..b4640285c0b9 100644
>> --- a/drivers/base/regmap/regmap.c
>> +++ b/drivers/base/regmap/regmap.c
>> @@ -777,6 +777,15 @@ struct regmap *__regmap_init(struct device *dev,
>>    	} else {
>>    		if ((bus && bus->fast_io) ||
>>    		    config->fast_io) {
>> +			/*
>> +			 * fast_io is incompatible with REGCACHE_RBTREE and REGCACHE_MAPLE
>> +			 * since both need to dynamically allocate memory.
>> +			 */
>> +			if (config->cache_type == REGCACHE_RBTREE ||
>> +			    config->cache_type == REGCACHE_MAPLE) {
>> +				ret = -EINVAL;
>> +				goto err_name;
>> +			}
>>    			if (config->use_raw_spinlock) {
>>    				raw_spin_lock_init(&map->raw_spinlock);
>>    				map->lock = regmap_lock_raw_spinlock;
> 
> Best regards


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
