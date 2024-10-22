Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C8A5CDD0D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 19:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8of/FWl7EpoAwJ4/hRSry1siuC126Q4xbcy5QOUDDzc=; b=Z9bxPyT8jAcMp4
	ap+w69oOL56na+8hiLFUZVdrAx73JBEIN0cgZqrAuHFxDWfdfAIymylxpFWIxnSmY6yMUXbGh6L03
	rdieOWeQrvCoH59NMeQy4dBYl8kAenjYFESlq9ud6pRrSi1dQVHhImx+2RWRKGPWCSCgsejg682qD
	R4mgTzBnNo0x8PEblyIhKt0pfL8wlYxxaB/NSs1j+SpOLjycBFegSposmLma+4uDkkweQ6yCD+OqV
	OqLMyuPraTno6CA9d52xrp8c0lt38aCl8aTfScV5yrStY4r/3c3c7wlNRR5gjtoVtuoV60xRrxnyR
	Nfb9AxZZ+FDgAD3iyP2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3KYa-0000000Bviy-2n14;
	Tue, 22 Oct 2024 19:28:40 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3KYX-0000000BviP-0Sbl
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 19:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: Cc:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1729625308;
 bh=ZH5OeOHP+5fhfD5MN4wKb8kWQwOC42Py5SdfeNj01tM=;
 b=ZRR+2ZE/DSf0cGHZ/rpv8mdYW2jMtZFbLPjhL5hHjQ8Itc4FLJRZHKzvAL4cEUyNY0NwFJr1L
 iVXWpJbYkJRJKt7tLzny5YftSHNcrDTriAW01yGXIEOxDEwRluC2spNf2wJIq7o4Zfzbk8INcHr
 48vUnx3aQ0IDXSmKUAFMcEfVcHaavMLEIOFbnAoaRmvIBnF51ddPOgm6mho0e2wN2YH3PeLVtpe
 PXWvATLICxlvD5MKoQfPjtjUaAleKhCHLkrQhJbNgnu1CgUMK3UnP9LGO2SsDhT9vhoeDfW4iPW
 iA82dx7lXRRIMvmUN0D2xXsTcKc7N+G2hTnFdrPbxQxA==
Message-ID: <0953a331-9d2e-4094-a524-defa7a009a71@kwiboo.se>
Date: Tue, 22 Oct 2024 21:28:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Thinking about firmware and hardware description for latest
 Rockchip platforms
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
References: <20241022165413.2156-1-shimrrashai@gmail.com>
 <04e2e389-ba45-4d77-a152-6705b0d92ba1@kwiboo.se>
 <9539aec2-09d2-4da8-9fbb-9914881a493d@linaro.org>
Content-Language: en-US
Cc: linux-rockchip@lists.infradead.org
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <9539aec2-09d2-4da8-9fbb-9914881a493d@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 6717fcdbb5b2c22e6f61a837
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_122837_628686_E505F163 
X-CRM114-Status: UNSURE (   7.19  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Marcin,

On 2024-10-22 20:47, Marcin Juszkiewicz wrote:
> W dniu 22.10.2024 o 19:43, Jonas Karlman pisze:
> 
> 
>> and be sure to leave around 16 MiB of space on SD-card/eMMC before
>> first partition to not overwrite any existing bootloader.
> Let pretend that we are nice people and use on-board SPI flash for 
> firmware parts.

Hehe, use of SPI flash or eMMC boot hw partitions would be optimal :-)
However, lots of boards does not have SPI flash, and RK BootROM does not
load initial playload from eMMC boot hw partitions.

At least second stage bootloader can be made to support reading next
stage from eMMC boot hw partition, for U-Boot I sent [1] as an RFC.
But I fear that may cause more/different problems/issues for end-users.

[1] https://lore.kernel.org/r/20240202001129.530825-1-jonas@kwiboo.se/

Regards,
Jonas

> 
> Please (with cherry on top).
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
