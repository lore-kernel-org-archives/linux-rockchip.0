Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79165C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 12:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pC+REAztYOgA1QgyARlba0DTk6oWVrpeHndekxeZwpQ=; b=D2D7Myfnn969tF
	CyTjHDUfn1EitIWzF+/mYmzsOh4CWjEye+NFPAun4rNO6BLy5Jf0k3+6ds3fEy/i8Ew4JqYgkL5xb
	XFrhOE2uku6ReRWF3vhhTp5HRZ1zBPGw3HtJzlCOWs6PnN56KK88fzqV1ndYbUNVtBH6lgIAo4VYG
	S0Y8x+n7urQBKqRwN8mBfL475klZ1mCaJEPNDaum3NfMIoPlZFDfQ0WPskMIrmyQS2KNOAlM34aKc
	uQ8Qov55/BGqcI2Gbt8j5lnRUbnYhyp78VoM3tJonuxTwRxr4XeteJumS3hneyF/P2eD/ClDxvrh6
	METqDfSrfeI6qTVZhChA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2BUl-007iua-AD; Fri, 17 Jun 2022 12:54:39 +0000
Received: from mail-m12736.qiye.163.com ([115.236.127.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2BUZ-007ipa-MH; Fri, 17 Jun 2022 12:54:29 +0000
Received: from [172.16.12.167] (unknown [58.22.7.114])
	by mail-m12736.qiye.163.com (Hmail) with ESMTPA id CE3957E01C7;
	Fri, 17 Jun 2022 20:46:24 +0800 (CST)
Message-ID: <41af9d13-fff5-a416-87cc-4f69e77d6409@rock-chips.com>
Date: Fri, 17 Jun 2022 20:46:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] spi: rockchip: Disable local irq when pio write out of
 interrupt service
To: Mark Brown <broonie@kernel.org>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220613092744.9726-1-jon.lin@rock-chips.com>
 <YqcveggUU7yaXuk1@sirena.org.uk>
 <b97ee70c-70ee-6b15-65d6-a176125dcfd8@rock-chips.com>
 <YqxpTqvaQb4cohTh@sirena.org.uk>
From: Jon Lin <jon.lin@rock-chips.com>
In-Reply-To: <YqxpTqvaQb4cohTh@sirena.org.uk>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGkpMVh0fQkNNHx9PH01DS1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MUk6Fxw4Hz06F0kdARdREyMP
	DEMKCitVSlVKTU5OT01CQkNOSEpJVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFITk9PNwY+
X-HM-Tid: 0a8171b34ce8b20fkuuuce3957e01c7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_055427_909959_633C0DF9 
X-CRM114-Status: GOOD (  14.90  )
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



On 2022/6/17 19:45, Mark Brown wrote:
> On Fri, Jun 17, 2022 at 02:24:10PM +0800, Jon Lin wrote:
>> On 2022/6/13 20:37, Mark Brown wrote:
>>> On Mon, Jun 13, 2022 at 05:27:44PM +0800, Jon Lin wrote:
> 
>>>> +	spin_unlock_irqrestore(&rs->lock, flags);
> 
>>> So this is effectively just disabling interrupts during PIO, there's no
>>> other users of the lock which is rather heavyweight.  What's the actual
>>> issue here?  We should also have something saying what's going on in the
>>> code since right now the lock just looks redundant.
> 
>> For lock: In order to avoid special situations, such as when the CPU
>> frequency drops to close to the IO rate, the water line interrupt is
>> triggered during FIFO filling (triggered by other CPUs), resulting in
>> critical resources still not being protected in place. For local IRQ
> 
> So essentially we're so slow in filling the FIFO when starting a
> transfer that the interrupt triggers in the middle of the initial FIFO
> fill?  Something that tricky *really* needs a comment adding.
> 
> Ideally we'd just leave the interrupt masked until the FIFO is filled
> though, looking at the driver I see that there is an interrupt mask
> register which seems to have some level of masking available and I do
> note that in rockchip_spi_prepare_irq() we unmask interrupts before we
> start filling the FIFO rather than afterwards.  Would reversing the
> unmask order there address the issue more cleanly?

This idea is workable, and it's more efficient than previous code, So I 
send a new commit:
https://patchwork.kernel.org/project/spi-devel-general/patch/20220617124251.5051-1-jon.lin@rock-chips.com/
> 
>> disable: Turning off the local interrupt is mainly to prevent the CPU
>> schedule from being interrupted when filling FIFO.
> 
> If it were just this then there's preempt_disable(), but what's the
> problem with being preempted during the FIFO fill?

I think

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
