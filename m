Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B5E5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0c0NG4ipOqPbKPh2Jdl7hSOgBiuIfVnBlTihpwiomg=; b=zo/ErAb7KSGUHc
	TWcBd/yDrtWWPzsPCsX+bFesJrqZozMzEhtBMKikIeTPPMWoemPQMecfFCI8ZRx8/Kv5+VsUKhg0h
	+CgBE71tSFKGwc4pbfSQxU0Qi42jcVNBKg3R2FRPElqsG6mtdQdMKq04VSuBE/KX+twcDRZ0CGaUi
	xENzF1ug3o2/1cV9TARqQ8Yza0TMDrqp9oj2TUKaavJ9Uj46W4LX9XD0dFSaEQtWXkQdrlOONz8cQ
	beRTjMfQ62mH5ikmXOoEaEYkPFbmJqu/cumEoNWfRyDRrj5D96L2D38p1Oez9oNEvcXvQ4TEN8kwa
	3GROx11X2lxYy10WjmKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuef9-000jZw-0t; Fri, 27 May 2022 18:26:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuef4-000jXG-Ha; Fri, 27 May 2022 18:26:11 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nuef3-0005E6-Dl; Fri, 27 May 2022 20:26:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip driver changes for 5.19 #2
Date: Fri, 27 May 2022 20:26:08 +0200
Message-ID: <6492509.1IzOArtZ34@phil>
In-Reply-To: <6613768.ejJDZkT8p0@phil>
References: <6613768.ejJDZkT8p0@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_112610_695438_D863B19E 
X-CRM114-Status: GOOD (  14.38  )
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

Am Dienstag, 17. Mai 2022, 21:35:07 CEST schrieb Heiko Stuebner:
> Hi Arnd, Kevin, Olof,
> 
> some additional things turned up (fixes) or got ready since the first round
> of pull requests for drivers and both flavors of devicetrees.
> 
> So depending on the schedule it would be nice to have them still in 5.19.
> But if it's to late for some, that's also no problem and I would then simply
> move them to 5.20.
> 
> All new tags (here + following mails) of course go on top of the
> previous tags.
> 
> So if timing allow, please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit add9f6f30e54b5c07e7a0260cda459ef1d9646b7:
> 
>   soc: rockchip: Fix compile-testing SoC drivers (2022-04-30 15:06:14 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-drivers2
> 
> for you to fetch changes up to 9b59588d8be91c96bfb0371e912ceb4f16315dbf:
> 
>   soc: rockchip: Fix refcount leak in rockchip_grf_init (2022-05-17 10:49:37 +0200)
> 
> ----------------------------------------------------------------
> Refcount leak for a used of-node in the grf-init.

superseeded by v2.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
