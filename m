Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1EC7C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 08:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k619Y542qGOAeiyRLIuLZZo2mPz74J6ropRtQ9270zo=; b=wXP1vd+gzYclLo
	ByUWvSJaHeM36kAijQeKJB6z26TPdlODTRHaBS2cNlKw7FDOIEa9tOZds8KibLauMQ3p2wBQzUR+T
	Bvfl68w4cSzf8y53pgDRVux/tJSiFmgmDU/ejZ44A/3o/wN3FYDMsfCnRjUHbSExAfFpdxUrY/wwq
	T/iFi1Rezy4VmC6/CzrfFnS5NvQXIIvNuVkfPqM6x9ZKhrogbUCyRVHznxaqcFLBNp+ZIbXYbaUP+
	iPNr+Vs6Qwx/ARsNubAqbmmSmOiKJk6+nM8w3jykrpA1mTDBDczSNXWY4vuvED3oKQb9xn3DvXqtF
	+ovPw2wGkDd4ZJfJR4lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLIS3-0000000DbhY-02gQ;
	Sun, 23 Jun 2024 08:19:55 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLIRz-0000000DbgJ-282m
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 08:19:53 +0000
X-QQ-mid: bizesmtpsz8t1719130741t9z4pqa
X-QQ-Originating-IP: 3WfoIsP1y1/hRCpT+9KdBFthcVVs8RrrukwZVyBJz/4=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 23 Jun 2024 16:18:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3802460711432902669
Message-ID: <9941941CA3B1175A+26e42825-e100-44b7-a565-f1a86ca3fff8@radxa.com>
Date: Sun, 23 Jun 2024 17:18:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add dts for Radxa ROCK Pi E v3.0
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240623075318.80492-1-naoki@radxa.com>
 <8da8e56a-e24f-4b56-9861-df55369c984f@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <8da8e56a-e24f-4b56-9861-df55369c984f@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_011952_057244_34384B11 
X-CRM114-Status: GOOD (  12.45  )
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

Hi,

thank you very much for your comment!

On 6/23/24 17:07, Krzysztof Kozlowski wrote:
> On 23/06/2024 09:53, FUKAUMI Naoki wrote:
>> Radxa ROCK Pi E v3.0 has DDR4 SDRAM instead of DDR3 SDRAM.
>>
>> for Linux, this change doesn't make any difference from a device tree
>> POV. but, for bootloader (U-Boot TPL), it makes a difference.
> 
> What difference?

U-Boot TPL initialize DDR SDRAM.

https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-03ce6c241f5db74ae87d4d8654bfef5eeb5bc42a9f1ff3cc828b70b3b2ac51d2R4
https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-31b80303774e7c10b527fb2dbc704b82e6c5ccdc6d53dd4f65861309ce0e7413R4

there is 1 letter difference, ddr"3" and ddr"4".

>> bootloader needs a separeted dts for v3, so I add new dts for it.
>> dtb can be shared between v3 and prior, so I don't touch Makefile.
> 
> I don't understand. If you have the same DTB then you do not need second
> DTS.

2nd dts is for bootloader. it's not needed for Linux.

but latest U-Boot uses upstream device tree for some targets.

> This change really lacks proper explanation or is just unnecessary. If
> change is proven as necessary, then you also miss compatible and model.

sorry, I should write proper explanation.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
