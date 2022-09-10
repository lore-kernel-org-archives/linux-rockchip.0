Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 325C4ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 10:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vc2ZMa+rYlBNcexi53BwVtfTPqX0mv9P5ULHSx6DpLE=; b=ppsPB9a7adXceUpoVjBMEKQT/9
	HeU39PMArRTzWzwMY5omDi5KzlOhojADh7G8UcPDJEGiY1rEZj9xZ5uZvXNfxjzNhq4qLouXspNWG
	p8GA8jh0wDugI9/1DLANxdLBmnXe0275MKkdAYpamC2Yt9kZy4JVh/fwpNuEMMABx1BGk/pcqNAtf
	5HjqIitctjWtGg0/vuulIqCTCywWAIJajxjIoVD/xrGRALWySrYu91/QCKsv63aJf+sxy/OhHrSFt
	ehrH1KKoTebEt2Wi7biTQEfX4zaRbVKiwHW/frDrKgyuFFP1/YGd028Z8AnUgZL+edTocZNI7TaPj
	3sa+523g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWxXS-009KI8-4K; Sat, 10 Sep 2022 10:16:38 +0000
Received: from pscan.eu ([31.193.140.172] helo=mail.pscan.uk)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWxXP-009KBU-9K
	for linux-rockchip@lists.infradead.org; Sat, 10 Sep 2022 10:16:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
	s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2LI2sTZWMm599hgPjn5eJai/GSNo73LbOpWQsqyUI4M=; b=vPv09QxjH9ohw9ivVcJWe1AQd+
	OqokNv+QIJ3jjNzaHV66SoTGHw6MbjGICjxNGMMpAsh/qeLRE1ELI1DFcO2YDqVDKNXsjk67PSZ0f
	SJRfzPP3tZ6U6q/CzjXaHh7eQghaf06JNSgJrpoi8IrHigpM34EBq50uyHh24m012NtU=;
Received: from host86-174-60-191.range86-174.btcentralplus.com ([86.174.60.191] helo=[192.168.1.77])
	by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.94.2 (FreeBSD))
	(envelope-from <subs@pscan.uk>)
	id 1oWwP2-000OxK-KH; Sat, 10 Sep 2022 10:03:52 +0100
Message-ID: <167c91c0-f83e-b7c3-e85f-5ce84e2ff965@pscan.uk>
Date: Sat, 10 Sep 2022 11:16:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: (subset) [PATCH V10 0/4] power: supply: Add Support for RK817
 Charger
To: Heiko Stuebner <heiko@sntech.de>, Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, pgwipeout@gmail.com
References: <20220827021623.23829-1-macroalpha82@gmail.com>
 <166274831282.21181.10815388429575993690.b4-ty@sntech.de>
From: Philip C <subs@pscan.uk>
In-Reply-To: <166274831282.21181.10815388429575993690.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_031635_388391_D211BFD9 
X-CRM114-Status: GOOD (  11.37  )
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

On 09/09/2022 19:33, Heiko Stuebner wrote:
> On Fri, 26 Aug 2022 21:16:19 -0500, Chris Morgan wrote:
>> This series is to add support for the Rockchip rk817 battery charger
>> which is present in all Rockchip RK817 PMICs. The driver was written
>> as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
>> myself Chris Morgan <macromorgan@hotmail.com>.
>>
>> The driver requires some basic parameters be described about the
>> battery in the devicetree such as the maximum capacity, the minimum
>> and maximum voltage for the battery, the maximum charge current, the
>> maximum charge voltage, and the value of sample resistors and sleep
>> currents.
>>
>> [...]
> 
> Applied, thanks!
> 
> [4/4] arm64: dts: rockchip: add rk817 chg to Odroid Go Advance
>        commit: a5d5e515ed89709de8ad2537cd9d611b95e1928b
> 
> With the binding having gotten applied, this could go in.
> It just leaves the charger-driver to be handled.
> 
> 
> Best regards,

I tried this on my Quartz64-a.
Once I added information about the battery into the dts file it seemed 
to work very well.
I'm not sure about informing all of those other email addresses as I'm 
not familiar with the processes going on here.
regards, Philip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
