Return-Path: <SRS0=HYuE=JE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08CC2C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Apr 2021 00:20:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C355613C2
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Apr 2021 00:20:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C355613C2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:Message-Id:From:
	Subject:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kUZkt45xqrVg0Rp8R/a1wYLt4F0MjmdYgXJTLTZNTdg=; b=o2faQfFhmLusmAIelBQU6f9Er
	Ir9bpMGUQSCzheW9J5ckwpkaivxwHmHAnYhLlqt3K5ZZzWBd69ZP6tqs90/Z/cNAzQPPwo7moP3yj
	g7WA+JGAN44wt0XP2FQflrAm4hdn+MsLJgqEzY6LMr9+y6KiiI3MLWl70gs8jHhpe3H96pIAIW+BM
	CMifM3S47DBhHUb2jSl8e+y8D383+ef70gmYBf/CKLxG5EF3n1I2z0xMPc4B5m+0T8tgc/t7UPL6e
	nnHHTuSNsaQ29fT4LdDSY/Nkrg6V+jcQtcV4j/rXilYzXeCjN4mOQidxRP/zrKaBTH4N0Ewjt25C4
	dzUbliVGw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTvw9-003fRA-Ef; Wed, 07 Apr 2021 00:20:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTvvd-003fPC-5z; Wed, 07 Apr 2021 00:20:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 12A42613D0;
 Wed,  7 Apr 2021 00:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617754813;
 bh=68ezURRB4IzMUiiFsKN47apLoSsRPZ+MXLR9pJgl0dk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=HPpNXmeN7inrJ64lopW5zGrefa3HtQKEBPDRvgn0KYeDZRczof5Q+UZ0OkP0qnjql
 S+aUIJwJ7XFF15zfSnehdq8yeZThdHndKYi8eIIVD+ciGECReXqV3rf9LclM7X3IYg
 XGH/ydAu5JZ2T0u2yxWGanAGwe36u/9uRehE+sKJyvEmt8KUctPvIS5pvUYcMRomml
 YyfvQxa1MqSwNMgNzS0nRRz8jfd/aSK2SGfUsxXwSGRXeLZpU3YPT/zQqkNGaxkzT0
 hERcyipbn7h23+vXd/K2gL0ml7Xk+j2QNMIDyntL4diD1BvByCveWSAqLtSfs69qfS
 H9tIqVivSFHLQ==
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/1] time64.h: Consolidated PSEC_PER_SEC definition
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161775481302.4854.4555470311488320359.git-patchwork-notify@kernel.org>
Date: Wed, 07 Apr 2021 00:20:13 +0000
References: <20210406102251.60301-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20210406102251.60301-1-andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: davem@davemloft.net, yangbo.lu@nxp.com, vladimir.oltean@nxp.com,
 heiko@sntech.de, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, claudiu.manoil@nxp.com,
 alexandre.belloni@bootlin.com, UNGLinuxDriver@microchip.com, kuba@kernel.org, 
 kishon@ti.com, vkoul@kernel.org, luto@kernel.org, tglx@linutronix.de,
 vincenzo.frascino@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210407_012017_646963_5285A0CC 
X-CRM114-Status: UNSURE (   8.73  )
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

On Tue,  6 Apr 2021 13:22:51 +0300 you wrote:
> We have currently three users of the PSEC_PER_SEC each of them defining it
> individually. Instead, move it to time64.h to be available for everyone.
> 
> There is a new user coming with the same constant in use. It will also
> make its life easier.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Acked-by: Heiko Stuebner <heiko@sntech.de>
> 
> [...]

Here is the summary with links:
  - [v2,1/1] time64.h: Consolidated PSEC_PER_SEC definition
    https://git.kernel.org/netdev/net-next/c/a460513ed4b6

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
