Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 533ADC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 01:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfNOxtbmMatVKqllZtGTG6YskwRvqYMAy3qeOHwn/GM=; b=1qW4oTnz7Yivzr
	SWegzLWNu8ExNg5vb42yFjxGHpyXmXOPOk0yUcNwjCL19ZpJP6gFEFXRZungomXJx2HOsLAQkhkaJ
	Tx6G072ODUQ1H14z7Ce5TOIHzoJNub7mGnsR/fYoAZJPdnVe9r70gDHm2SaMZFLQYBNCfm5m3FVkB
	nw191bMR4ri3dqNxr7R3x3CNDrQJIxIRTbMbivNWsG3pfcvRK4RFZ7lenAIrc1h9meXjfI6VaurL1
	0yx2L009HkOvxUWz5yhV/Z142TrxDWCasia9rf0sBZN4T+d1EQKJs4m169zawwwGb6j0yxOheVFLM
	XQkxCHdVcIh2zr++vV5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcFje-00BwAF-1M;
	Wed, 15 Mar 2023 01:15:22 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcFja-00Bw4g-1b
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 01:15:20 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id BA4A324E1D1;
	Wed, 15 Mar 2023 09:14:26 +0800 (CST)
Received: from EXMBX073.cuchost.com (172.16.6.83) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Mar
 2023 09:14:26 +0800
Received: from [192.168.60.77] (180.164.60.184) by EXMBX073.cuchost.com
 (172.16.6.83) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Mar
 2023 09:14:26 +0800
Message-ID: <46943d0c-81a6-2eda-680a-43c56e9aece6@starfivetech.com>
Date: Wed, 15 Mar 2023 09:14:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1] media: admin-guide: Update rkisp1.rst
To: Sakari Ailus <sakari.ailus@iki.fi>
CC: Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab
	<mchehab@kernel.org>, <linux-media@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20230310024056.59220-1-jack.zhu@starfivetech.com>
 <ZBBB/pM0WliJUu2i@valkosipuli.retiisi.eu>
Content-Language: en-US
From: Jack Zhu <jack.zhu@starfivetech.com>
In-Reply-To: <ZBBB/pM0WliJUu2i@valkosipuli.retiisi.eu>
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX073.cuchost.com
 (172.16.6.83)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_181518_703756_42596385 
X-CRM114-Status: GOOD (  13.30  )
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



On 2023/3/14 17:44, Sakari Ailus wrote:
> Hi Jack,
> 
> On Fri, Mar 10, 2023 at 10:40:56AM +0800, Jack Zhu wrote:
>> Update Rockchip ISP1 driver file path
>> 
>> Signed-off-by: Jack Zhu <jack.zhu@starfivetech.com>
>> ---
>>  Documentation/admin-guide/media/rkisp1.rst | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/Documentation/admin-guide/media/rkisp1.rst b/Documentation/admin-guide/media/rkisp1.rst
>> index ccf418713623..3eec078c9eff 100644
>> --- a/Documentation/admin-guide/media/rkisp1.rst
>> +++ b/Documentation/admin-guide/media/rkisp1.rst
>> @@ -10,7 +10,7 @@ Introduction
>>  ============
>>  
>>  This file documents the driver for the Rockchip ISP1 that is part of RK3288
>> -and RK3399 SoCs. The driver is located under drivers/staging/media/rkisp1
>> +and RK3399 SoCs. The driver is located under drivers/media/platform/rockchip/rkisp1
> 
> Applied now but going forward, please keep the lines at 80 chars or less.

OK, will modify it. Thank you for your comments.

> 
> Thanks.
> 
>>  and uses the Media-Controller API.
>>  
>>  Revisions
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
