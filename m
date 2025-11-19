Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ACF3CF2562
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 00:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sz0uSqHDAjOiD15vC0Tfrfs43BmAd8ktaTVOkR7mGfE=; b=CCbMcuNqhMp+kP
	u4yaQTp0Zg6ZEhTucye3Nxj05k0yFBGNVS3X3Gj6t56SKZ1Eb4OTbCsdjFMky2hI+eBKlQoPiuvUU
	6rsKAGjahTd272uclUTHZtQtw2xtrARLgg9QMEfodiR0u0yAOuuL4/L5sx7tiOhLwdbxbf+6wjnSH
	pE8nbH2xBdcaiczvnDsSz3RIgTEfJ3phbSeBbt32viZ2FMMzb3CLc3b4iy4Bq0Mb6IeX+Ll79xfRf
	IfDpvEDxb9zuoEhc8FzJmoWs3xyXMycTmc8vSnYnqzVRK4Iqs5l5lmHGf32p0+Evj8kP/PeDTVI37
	6C+AI+56XSiLTEs9v7NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLVpO-00000001HC3-05Vn;
	Wed, 19 Nov 2025 00:13:42 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLVpK-00000001HB9-4AfX
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 00:13:40 +0000
X-QQ-mid: zesmtpgz8t1763511161tda318cee
X-QQ-Originating-IP: WCyfxCkXQbLOI3rQhE9c7nxrHn2fqsWQwmCHFlbw4y8=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 19 Nov 2025 08:12:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8747622648211889514
Message-ID: <77B4456916875131+5e15cfc7-61ef-4277-885e-f28f3f33380c@radxa.com>
Date: Wed, 19 Nov 2025 09:12:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Make eeprom read-only for
 Radxa ROCK 3C/5A/5C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: alchark@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dsimic@manjaro.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251112035133.28753-5-naoki@radxa.com>
 <20251113140020.919159-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251113140020.919159-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Ns5uoka424kMp4azHtaauTgrSlfx3MOH+MxTfFqT8buVllDVBcOJ0mQK
	2biwZsnRyDOnQHZby+/mQ7LTZ994ScBza+mpYpqGZ5w7IZlmd4fWR2SXb92FBwi5J4mtAt2
	TcCvRahfHHlOa15Qd2iiH9AzE4ZFIgQAqlNUufe3Q1oZwUDJd73aJ4gaPGGAWEYgxcLee9S
	6r4/c5+9FUoZk1WeVU36JHSEm8Ds89qMptpNTz/S10JorKU6z6ovJeQQHv9CNqMhNLTdGvH
	iQ5Zw+rTAfwtv54qcExQM3WDxFh8zdOMCJln9GF03BI6ZzZ11sU1ls/F13JB1s3rF0KPTSF
	5Py0gbz0Jbu81GmxADjI828IFdnl4ybepesIYD4S+VlksqNNJJnbXfdIourIabprt2/OmXG
	NgA/y1WMg+IGc68mDYBVureyzNpQGzw5cY1ZE4tGwMjfXCtCzCYbEapq9DI+G/FfuuS8LyL
	sn8qOSdzbmhGU8SOjgJpQDk3nP022D0tCIgO+aRWFdMAT/K/82gPwom5RELpbz2iUoNEosZ
	UG7q54/x9J7Bx+KzkTN84xDnu8xrw9dRbN7N7ht712EcVQOF44Clyb6ZOGtyMu3oRPL75lG
	+hu8G/hzZBFKynKA4Iq8VIMBkaQcuvrvE0vYdZklNPP6VXnsv6tpz/tVPGPvmzP1SYmppsE
	tQgtLk7XOmrtk0UXWUaR5OUzG7o49CDWRXv+F4ns3kswb4joQjNLdxg2mBNAuVRevUZq11G
	toKIOode7nFO1OmIK3hSb6LAtXFwq1BaM7ydLq+WvYQvC5g/tdg0vdi3xJLntQSJ80dpzWy
	VucWsE/Q4Cqt76724zFs0HUmnUHMlocomqqAuibTneKrGtF34LzJcOIbhN2vx38nQb87Vj9
	CrWAFLoEWtSle8+hV51hHBotVu9YeDnt/8iijTd3TJJNDckWI+bDk20tPJycC7qbhNAFlmX
	vgLA/dJh4PQUYBeYqtlsTaDc6yBkwQRd+81zwHeCuqa3t8w==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_161339_475261_60F04205 
X-CRM114-Status: GOOD (  11.15  )
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

Hi Chukun,

On 11/13/25 23:00, Chukun Pan wrote:
> Hi,
> 
>> Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and 5C SBCs
>> read-only, [1] [2] [3] because they contain factory-programmed data
>> that isn't supposed to be modified by the end users. [4]
> 
> Is this true? I confirmed that the EEPROM was empty when I submitted
> the ROCK 3C support. Based on the Radxa boards I purchased, it seems
> that only the "Network Computer" series SBC (E20C, E24C, E52C, E54C)
> have production information in their EEPROM.

I have confirmed with the Radxa internal team, and it is clear that for 
"all" products, the EEPROM (regardless of whether data has been written 
or not) is designated as: "The EEPROM is for factory data; users can 
read it, but they are not expected to write to it." This confirms that 
defining a read-only property is appropriate.

I will be submitting a series of patches to add eeprom nodes for several 
Radxa boards, and all of them will include the read-only property.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
