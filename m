Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 783EAC433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 13:46:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D7B4619FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 13:46:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1D7B4619FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8/28PlCagbVQ+39GYxjWNGXpyG594Jt7rekw1K9O3DU=; b=cutZvjGS/X0kOOMvNPC87Pp4X
	MOsT5/3m4LNqDa0PAL0yqRt2Ql/xVTplmFlz5WIf6hATmpRAnIyZjhi/t1UzBQ14D46S9Z0FlWIuy
	+AzElz74Rb/yrUjpQm2Etf8TP7P4H8hrAxgRUIFIE5LSDJMjzuZcx8pcmkk8rUT9TyMbsVqbLd/Ub
	tjB+rRHv44/qYOKlD399E+dB9az37obGNN9uMqr9mVfhbH4tqrPHYeRo6jBOUuMCnhb23T+kgV2FS
	baZ56GcrNm+PX2S67QD0Mw8KWZSSEZU1I1vaSYH7lR7HjuwN7sqmATFOsESnPGqDWl57TIQqS0QyY
	sX+pYLXBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP3qN-00HAZy-RW; Wed, 24 Mar 2021 13:46:44 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP3qG-00HAZc-Oh
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 13:46:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1616593596; x=1648129596;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=FvPDaHUzjC9xXphePPStpuKbHidSjAiCxc54TOeg7kQ=;
 b=qY4jThDk6urCvGQc+rmw0PVheFQu+WjM5rNj6ehzvNGY6QQjjb9um0O5
 ZwYIkDuVur0qB2TFLl/iyZE+Q2HqFURmpJJtIh4PsOJkwZigIR7AfqnU1
 SNOoOIS4rHVPAAHNtiofyMhgPMWgX9xuwOcPIXNLSocqAh5s7sjEhos0S
 J4a62UqB6/MYkB1nO5tWUqPQ8EeO6MBzbEbSSljFe4PN2ebZv7tBU8UKz
 KRCx38m+CqgBDscvD1HMR42EaauLZ0Zw9yNAx7tzTjVm7mqNMMn8LSRBv
 SGyyGjBNaWbpMUws1HJn6/dNioGdBMmDznNQy3ga1trP1yLov+Ul+FSyG A==;
IronPort-SDR: DRtHfB90mf+KI27pe5E+AvMDJgl1PYi7WKU3vUDSw7rxxgmYFlgOBL+f3Jor3JfosPHu/F94nQ
 ALtmpMiXq+v8q+NzHTCqdW8v4UUIRg/g9nlSWoUqVCz9ucYWPDfb+fgMps1C4Lx25UqjvTFFUB
 SVP6POFLhb6sh2hoLZS8avezM/SCcLYY59ljMI8r3yNB6YcdRxNZR1MkgYOrxfg53IAZkxiGc1
 Dw0+aKT7NzbXyW8MrlMcahz+sJ71+I36l22QsP/Y2txh0Tb/Qr4EwNd0PBFCyWkJndtwOWDJFM
 cYI=
X-IronPort-AV: E=Sophos;i="5.81,274,1610434800"; d="scan'208";a="48709226"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Mar 2021 06:46:30 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 24 Mar 2021 06:46:26 -0700
Received: from [10.171.246.12] (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Wed, 24 Mar 2021 06:46:24 -0700
Subject: Re: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
To: Emil Velikov <emil.l.velikov@gmail.com>, Ezequiel Garcia
 <ezequiel@collabora.com>, devicetree <devicetree@vger.kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, Ludovic Desroches
 <ludovic.desroches@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
CC: Philipp Zabel <p.zabel@pengutronix.de>, <linux-media@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <5ecf1d3b8a8f88d6387a1549faeb4f4180cf5d4b.camel@collabora.com>
 <CACvgo51uNyQgzGdW=f-0wxvjv-+OD1p7E4DJXRzu1GvnAHbcCQ@mail.gmail.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <50b3b4b3-6c5b-3f1e-3499-c88574ce9f74@microchip.com>
Date: Wed, 24 Mar 2021 14:44:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CACvgo51uNyQgzGdW=f-0wxvjv-+OD1p7E4DJXRzu1GvnAHbcCQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_134637_328067_7D8E2D41 
X-CRM114-Status: GOOD (  20.12  )
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

Emil,

On 24/03/2021 at 13:49, Emil Velikov wrote:
> On Tue, 16 Mar 2021 at 17:23, Ezequiel Garcia <ezequiel@collabora.com> wrote:
> 
>> On Thu, 2021-03-11 at 15:40 +0000, Emil Velikov wrote:
>>> Emil Velikov (10):
>>>    media: hantro: use G1_REG_INTERRUPT directly for the mpeg2
>>>    media: hantro: imx: reuse MB_DIM define
>>>    media: hantro: imx: remove duplicate dec_base init
>>>    media: hantro: imx: remove unused include
>>>    media: hantro: introduce hantro_g1.c for common API
>>
>> For patches 1-5:
>>
>> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
>>
>>>    media: dt-bindings: Document SAMA5D4 VDEC bindings
>>
>> This one need to be reviewed by DT maintainers, I think.
>>
> Rob can you help with this one?
> 
>>>    media: hantro: add initial SAMA5D4 support
>>
>> For patch 7:
>>
>> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
>>
>>>    ARM: dts: sama5d4: enable Hantro G1 VDEC
>>>    ARM: configs: at91: sama5: update with savedefconfig
>>>    ARM: configs: at91: sama5: enable the Hantro G1 engine
>>>
>>
>> These need review from Microchip maintainers.
>>
> Alexandre, Ludovic, Nicolas
> Do you have any input of the patches or series as a whole?

The patch series looks good to me.

If needed on patches that we don't take ourselves, you can add my:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Now, when we have the tag from Rob, how to coordinate these different 
pieces? Will it go through the media git tree? Will we benefit from a 
stable branch to share or will we just have to wait for the driver to 
hit Mainline before adding the defconfig and DT patches?

> If you prefer we can drop the last two patches for the defconfig. I've
> included those for posterity.
No strong opinion on my side, except that defconfig stuff might be 
better handled in at91 + arm-soc trees because we'll have other changes 
to queue for 5.13.

> Thanks for the review Eze.
> Would you recommend that I resend the series with your R-B or it's
> better to wait for feedback from others?

Thanks a lot for this nice work. Best regards,
-- 
Nicolas Ferre

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
