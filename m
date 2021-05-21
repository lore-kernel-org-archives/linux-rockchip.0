Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0702DC04FF3
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 20:30:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C77C96135A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 20:30:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C77C96135A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:Message-Id:From:
	Subject:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BI+DLjbcAmFvJAXOu76WIy9njN2Ak7pbh7VUDcJIxfY=; b=fXeWoaGE/M5xpJ6gQf73MEnqbX
	982yRoYPwWPZvSD3MBQxoel7zUCT8Avz0NwTeqta2x+FuzQPADvihvm2Q4vlpHCSIXahgeZ1acIOt
	bJ3hLZz7YAAuTt41K0yjtHlRSuAZzQFSTyc2B5qnmzNnBf+C8AiSa7UOBy8QjHvNavZUp3DWkpnnU
	OtvJ1mdhH99+r1JdoeY99JYMhg48Eck3xh8YjPX02VQqdRrwiL2CinMcskisVCt4Xz/lBqgTA8Jn3
	WOJEHi6hWIJItmDac2AtpmXY85Ewz8tJ8pzhfnsWlz375lJ17eFG6jkXfKCrq0jkgKW8nyGpDvH13
	wDfLXBew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lkBmk-0013iC-GI; Fri, 21 May 2021 20:30:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lkBmg-0013hQ-Ku
 for linux-rockchip@desiato.infradead.org; Fri, 21 May 2021 20:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Cc:To:In-Reply-To:References:Date:
 Message-Id:From:Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=x4l2LCYTKWWidNdOL4SO5BC2GOZ/Qh+AJxA5atMOqdc=; b=c0fP2mX9xbp1TGrN3WFUNwrB02
 nRfNAAtNb4m4gDqT1yxZBQh8mA+tZDOWrBAJ74Kmj4dQ1tAhrwyjjj0LFpCtw3m6MqZTJAECyotdG
 oZeVlxM/YYC6hMEXWXlleTEsvMA6uAaWH8e5d9jfafR+I4Fr09FiZAWr4rmoWTBQLOnS39g1OJmo8
 efpdtAH2In3uX12e07u3JxPE5azecQQcQC3ZOf3Ul8tTA4DVwR6tqAgLquaZIfynlHdPDG2rZe15N
 jCedIwrWDWgIbla2RaGiFL5Gz0gwsKzrbbejkIX5N3ESZfCu4vAE2XpipdRiOM4gnRan3G+IwYeWk
 20OZBBnw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lkBmd-00HPkE-TG
 for linux-rockchip@lists.infradead.org; Fri, 21 May 2021 20:30:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 98F626135A;
 Fri, 21 May 2021 20:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621629010;
 bh=olZ6Dv/4y7IaMPDGSdmYOR5cp3HIHCsZNVGtlsb0Dow=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=HBg6SbTQCwZ9GGK17PA1aa6Wh9Klxf0nTAlXV2kE3iOCJ/a3TSM57nzteikG6M0Vi
 MY5UKA/Ey302qsKIY6UB7ZipsPAqvQbMilkhxf/OB9bIPsEMcJ2t6cAm4DzB+DktDT
 92lSmi5ZpdAugyPMdQzj9g0553Ma+ckkfG6Pq8+CmdocLe/+bZ+KA+qPKaY1y3xN0S
 WjQmE1Ccv5GllQPxar5L3neLlY+HYiST3fwZ26zaDiVDvu7jbvPl/snz/s6F/+O0rc
 eF8YvZdi3TpqWj78fuwfixuSX+jjGp4JnltmH5uFX1GEwlkkL416sh97ReEs93x1To
 Sy77UouL044Wg==
MIME-Version: 1.0
Subject: Re: [PATCH v4] net: phy: add driver for Motorcomm yt8511 phy
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162162901054.11427.16053858331878438071.git-patchwork-notify@kernel.org>
Date: Fri, 21 May 2021 20:30:10 +0000
References: <20210520163230.3788942-1-pgwipeout@gmail.com>
In-Reply-To: <20210520163230.3788942-1-pgwipeout@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_133011_985618_05021974 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Thu, 20 May 2021 12:32:30 -0400 you wrote:
> Add a driver for the Motorcomm yt8511 phy that will be used in the
> production Pine64 rk3566-quartz64 development board.
> It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
> Changes v4:
> - Set fast ethernet delays as well
> - Use __phy_modify for delay setting
> - Enable PLL in sleep instead of disabling sleep
> - Don't set genphy functions that are defaults
> - Tested downshift and duplex detection
> 
> [...]

Here is the summary with links:
  - [v4] net: phy: add driver for Motorcomm yt8511 phy
    https://git.kernel.org/netdev/net-next/c/48e8c6f1612b

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
