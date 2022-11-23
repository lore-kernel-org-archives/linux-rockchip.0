Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA15C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 14:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBeqtSSly/TW7OjxLlQD+Qvuf77GA9zmWTgPD0Xx39Q=; b=HFrsQf7T1SA9LB
	1XOrWDJC9OpME0i4t4vqMN5sqW/5xE3ZoAp1ddQgueBdahS50DG4KfY0MHfhYsN1+m5hqZAeAetyi
	KMBy1bR70E9l8g6TPkkYYQbtCq3EKJ6Mel//zKodEzw5j8YK4oA1Ub5gXxOkq6w7HrnaLLR18WU3Y
	ScKzkD0AIaSb+uc9WRc6yba8zePmTXKZ8sOBYIyUZUfmDurWDdFDHSWEISml10GQHBCMzqS5BfO5x
	SMG04Hrm5nPM81yhaq+KXUxkjg4mD8ICX3SDy9FVtvGEI/qAthlKeyYKnTG5IbVqAdh5Ak7XyPNcn
	8LgdOSe7OKmJ01KkF3iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqIO-00HS7o-3q; Wed, 23 Nov 2022 14:00:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqIL-00HS6T-M8; Wed, 23 Nov 2022 14:00:10 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxqIK-0008NI-4k; Wed, 23 Nov 2022 15:00:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts32 changes for 6.1 #2
Date: Wed, 23 Nov 2022 15:00:07 +0100
Message-ID: <3721014.iZASKD2KPV@phil>
In-Reply-To: <9661382.T7Z3S40VBb@phil>
References: <9661382.T7Z3S40VBb@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_060009_753196_4A6A098B 
X-CRM114-Status: GOOD (  13.76  )
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

Am Mittwoch, 23. November 2022, 14:50:34 CET schrieb Heiko Stuebner:

The subject was supposed to be "#1" not "#2".
Sorry about that

Heiko

> The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:
> 
>   Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.2-rockchip-dts32-1
> 
> for you to fetch changes up to da74858a475782a3f16470907814c8cc5950ad68:
> 
>   ARM: dts: rockchip: disable arm_global_timer on rk3066 and rk3188 (2022-11-15 12:02:38 +0100)
> 
> ----------------------------------------------------------------
> Disabling of the unreliable arm-global-timer on earliest
> Rockchip SoCs, due to its frequency being bound to the
> changing cpu clock.
> 
> ----------------------------------------------------------------
> Johan Jonker (1):
>       ARM: dts: rockchip: disable arm_global_timer on rk3066 and rk3188
> 
>  arch/arm/boot/dts/rk3188.dtsi | 1 -
>  arch/arm/boot/dts/rk3xxx.dtsi | 7 +++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
