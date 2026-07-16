Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 664F2C44501
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 01:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4n0Fae13NoBcqxzH5IwaCQcaf/+2Bi5LzmIGGLD3R1M=; b=Y/UwnZdm4oTNrHb31rQQ3czWau
	isBkfkbYSl+Zm4SRMm6MMVCRANRLAorgRq4kfItLd0VhBlg1fYFSPosHht/rwxiZfT9tWwh3WyoWz
	e1w3IyTwz2WgsstCSbTk41pQWohbwPv//n6bLLmQIP1cFuf4rLOG5y4+OarR5vDJLqA3Q/dsPOpbS
	RS4kAQH6fUqkesLRQxtffPUeZassXBqux43bIQrBhe1HQhX8AJqbXa9FCANdOqjkL5aMG27hWzt+3
	oDT8AvfIZSzjWNk3XjXA0O1QsC3V73KFKtOiXzCHTJvZhUFlBfu9Vmngm9ce5D2cJUEhA8+U5j4QR
	OzT4STeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkAuq-0000000GCVX-2oAY;
	Thu, 16 Jul 2026 01:29:32 +0000
Received: from mail-m20521016450.xmail.ntesmail.com ([205.210.164.50])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkAul-0000000GCQh-1Kdk
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 01:29:30 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 465b46afa;
	Thu, 16 Jul 2026 09:29:17 +0800 (GMT+08:00)
Message-ID: <613614f5-30d7-443a-954c-31685044f6c2@rock-chips.com>
Date: Thu, 16 Jul 2026 09:29:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: eDP support for RK3568
To: Dave Jones <s.dave.jones@gmail.com>, linux-rockchip@lists.infradead.org
References: <CANf5e8YTxDsMdqOd02ht4J2qUU8rTV6pC3L36J6XC5pOAOpHRw@mail.gmail.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <CANf5e8YTxDsMdqOd02ht4J2qUU8rTV6pC3L36J6XC5pOAOpHRw@mail.gmail.com>
X-HM-Tid: 0a9f688ad5d703a8kunm5a983360167948
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSElIVhgYT0NJGh9JSU8ZHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=N6pFalwrzaCWO/DMyCrb62ul9azc1NrKODO0qBAnkk6b5LGn9TOGzFeQkPGNdCcDzI0uQOVd5siQtVDfpPjQPmL9AdaamJ/R2Jk9WO/ZEcdSujtfvH9x5tiXBGAUzdLLLG2Ntp0le8WVn1B7m1nTyFvGpJ+6H0E5DGQRiS5mzFk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=QgNwLGKRumV4hEYry7O/zT2XS3vZfyJyYsBtZB6tiIY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_182927_962550_3ADDF97B 
X-CRM114-Status: UNSURE (   7.33  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dave,

On 7/12/2026 12:21 AM, Dave Jones wrote:
> Hi,
> 
> As far as I know, the mainline kernel currently supports eDP on the
> RK3588 and RK3576, but not on the RK3568.
> 
> Has anyone added eDP support for the RK3568 yet?
> 

As of now, mainline kernel does not yet have eDP support for RK3568.

Implementing eDP support for this platform upstream is one of my 
near-term plans, and I will work on the relevant patches when time permits.

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
