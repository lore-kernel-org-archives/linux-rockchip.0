Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9972DC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 13:21:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2915B6512C
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 13:21:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2915B6512C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lHgG2A9/vWi9uM4J/M071NO9eTp1jqsdZmTX4Z6pk6U=; b=qMXBoLZzIwYiWBBDT9ghN9fMq
	ZaUQgmslIxqb3wkyLFzxcuAHBLBcriWyhzbcmTx+smxuiOhW8CnW70Dw0/TTnmPmr4ynvuz15fVar
	r9n9liql0aA3BvW06G3AZ4qsnQNGlcKBuDVWpSbSHE4cnZh84VUMsrHtyfGp91Xe3QR90lQWpvNV7
	ZAZSwY4RcFrnCgkeoeSt7fuieCgrbj6Ui+xLs4y4S6OsffrbP4igHL49cRHohKb3+bx2xS9v6Xr2B
	xkbZJen41dvyiH9Fj9VIPSIpxdBYUdHW+cCmLYCA6Whb+MS9Bs4Ic8FyxdLzSzZX2EGCmzVp6Ao1j
	qyjhzl1Dg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJFp6-00HPVy-18; Mon, 08 Mar 2021 13:21:24 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJFp1-00HPTr-53
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 13:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1615209679; x=1646745679;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=SdGj/2e8hD0ZLGVAp6OmEj/GguEWqv5OusTQHgDXn4E=;
 b=b6Uqw8gkMU5iK/WllCQewYOcTzzG6xwaqkp+bT/xjosKBpr5Ad2hMmGL
 suaUZK2cqAY08HrrlWpkvm5RaHaSvlpKdeQnifIT6zUKzcmhdayhk4y9F
 ofJkGT145QPKVDHELmkUNNdXn6/XXp2EoEvKF5U0VlaZpRvuT58LC3tNK
 rlsXLAVzfZuslFeu/5EfAmC9sIbbjSzjeD7fNgpZbaKkLyYd93UfosO9S
 s8cQXd0QcxPosDpd5zd0B5hgDIeEdfN6VQAg/jinsEgEK/6Tmnk3osldS
 3V1XsdA7/bmslyuTja/50rGPgomWbNR+VcMLRcTSjc3GNs6Ee16zqs9hP Q==;
IronPort-SDR: miOQMZtEodTgqx6yL9XAhbXXVX0p32zHuwMqp+Zg0QOlJZIq8/NOlkUXp2XJhCcw7ZtvGRuzYU
 6SbvlV22hebFBiibiL453vYn/9FnO9B2+8kEZBY3V+9g1J9ClRUXeeYoWK5k+aKrDN9uBsM93M
 FXHZfrztaxRrein5LiMKMK1H1kXB9+Ku4CnHiEYQXgqdlI3uAmvEyyZG9SLxmBi1vfuzvOQx3L
 rj8w5ZLkgP/Ue0DBp8gwd2ecXTuIxNKhmz8l+W83SmU2tFr7/V6T2A5Ys7Pxm3mYlR9Mrw2lcO
 1Lg=
X-IronPort-AV: E=Sophos;i="5.81,232,1610434800"; d="scan'208";a="109143115"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Mar 2021 06:21:14 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 8 Mar 2021 06:21:13 -0700
Received: from [10.171.246.58] (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 8 Mar 2021 06:21:12 -0700
Subject: Re: [PATCH 7/7] ARM: dts: at91: sama5d4: add vdec0 component
To: Emil Velikov <emil.l.velikov@gmail.com>, Ezequiel Garcia
 <ezequiel@collabora.com>
CC: <kernel@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 <linux-media@vger.kernel.org>, linux-rockchip
 <linux-rockchip@lists.infradead.org>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
 <20210305183924.1754026-8-emil.l.velikov@gmail.com>
 <915739c6fc01f17b00c4fac8b7fede1f25396286.camel@collabora.com>
 <CACvgo51peuKsuqx-NwZSWU4Ys1q5MuXb=BRx7GLo3tkWH+vb0w@mail.gmail.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <2e921a53-def3-ed3a-6240-b81ea3ddf946@microchip.com>
Date: Mon, 8 Mar 2021 14:21:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CACvgo51peuKsuqx-NwZSWU4Ys1q5MuXb=BRx7GLo3tkWH+vb0w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_132119_796717_87CB7577 
X-CRM114-Status: GOOD (  20.25  )
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

Hi Emil,

So nice to see this support! Thank you so much for handling that.

Little comments below...

On 08/03/2021 at 14:07, Emil Velikov wrote:
>   Hi Ezequiel,
> 
> Thanks for the prompt reply
> 
> On Sat, 6 Mar 2021 at 11:25, Ezequiel Garcia <ezequiel@collabora.com> wrote:
>>
>> (adding another Nicolas)
>>
>> Hi Emil,
>>
>> Thanks a lot for the patch.
>>
>> On Fri, 2021-03-05 at 18:39 +0000, Emil Velikov wrote:
>>> From: Emil Velikov <emil.velikov@collabora.com>
>>>
>>> The SoC features a Hantro G1 compatible video decoder.
>>>
>>> Cc: Ezequiel Garcia <ezequiel@collabora.com>
>>> Cc: Philipp Zabel <p.zabel@pengutronix.de>
>>> Cc: linux-media@vger.kernel.org
>>> Cc: linux-rockchip@lists.infradead.org
>>> Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
>>> ---
>>>   arch/arm/boot/dts/sama5d4.dtsi                |   9 ++
>>
>> Usually device-tree changes go to their own patch.
>>
>> The new compatible string "atmel,sama5d4-vdec" needs

Nitpicking: I would use "microchip,sama5d4-vdec". We tend to use the 
microchip name for new DT bidings and compatibility strings.

>> an update to the DT bindings, see Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
>> for an example.
>>
>> DT bindings change should also go to a separate
>> patch, see Documentation/devicetree/bindings/submitting-patches.rst.
>>
> Will do. Thanks
> 
>>>   arch/arm/configs/sama5_defconfig              |   3 +
>>
>> Better if config changes are a separate patch.
>>
>> But also, the driver is in staging and we haven't enabled
>> in ARM64 defconfig. Let's leave that decision to the machine
>> maintainer to decide.
>>
> Makes sense. Will keep it separate patch for completeness sake, with
> explicit note.
> ARM/Microchip (AT91) SoC maintainers will be in CC list and will defer
> the decision to them.

I'm fine with having a "staging" component. Maybe add the hantro vdec as 
a module instead.

Best regards,
-- 
Nicolas Ferre

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
