Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFD68CC6B1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 05:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQozf/4+m3mctNGM8vXw1Y6aeGz/eNSkeRiEaUFSv84=; b=aU5TYrhf6Jj86r
	yRmYqEd6MGw/uUkDrgXWhSzEkisFbZ44AQi04Vqa9I/X7M5m8e4tw6oC6Ue3QSCoM/E6hpMPTc8hx
	oUv2jsak0leg1bwWK0J3/WkxPnPrX6Fnju0GcDHoHEnJRwFbRMYaz32VQkckCHo/CA3P58x99fEi8
	nkSXZgYx1LoV5c9x2qX8TcliGgrzo7rg6RKJvAumKtiWQv6oclzDSBw9YsVkAEUVtxEWs+cMmfPuP
	tAAbd9j2+yjkWHBlwkZWZNaHYoZqeZxSCSwvD3LDviFZn24vtT40QaLTjTM1AOw2p0JUbc2/wNAaL
	vJTWz7O3oJqlVvZPQsTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGrCp-0000000EXGP-0MVi;
	Wed, 14 Oct 2026 05:07:11 +0000
Received: from out162-62-57-137.mail.qq.com ([162.62.57.137])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGrCe-0000000EXEX-2ZAO
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 05:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1791954416; bh=5uIkWpaIYy1KePSTnW91xhwZ5sNP8TP3tpIZTScI8Vw=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=ZeEZqsUPoDL63bR+kdNzoI7++j616ELmxQ/lpt7BJnJndM3eAFx5hJnVVHL89Hgbh
	 UWh3I3kw4aTc/0YlvGVnUAcP3NX6cSO6ajm6nItNf/EdNb7CscCNIZH3aAcvNauBig
	 Z/Nq2d5+esZLoEfNcF6kcjo+aGL2nuBl5w6+YjkU=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: N/Vcqssfup8JUGdPU3KjzrD6L48Qsc+XeK+cFwyDFvTsE7eDMU0YJu9qLZH5qe
	 pMZSp3drrYCKaeN8uJcDat/2ZTprScxwK4seUeEPUj0Iyx4zF0x/afx/UgPRuAtpX+H3Ucvf37Pd4
	 0fzukyCQsV+2Vzk9wKtx3bGRC/TWb4C6QlGBbO1TpsiorXlA8W1L1BOL4sU1cE0A7HyfiyAMqAswu
	 hnYuYVV/chcmlZOZ+D9acU4Q+lnaSmOQg2T/CFZkrguVoRZl6+qVCEWvScPxd5OW2eJ9Xl/XbWR5U
	 jQkVgJUudJJcnbLvgMG2DU1Lo04COn59IS/XhDF9zGXTkXrlYrYhIzyYhRVfBacRetAtyEVjlZ8TE
	 LRttzyOanaWuYs1Mmnt9LVFwScOs9jwMQzYlxJDQgyU49BTo0tQbPmr6CclGPN8kV1AZ9KBgcIY4A
	 GPFybcKYySsy3/CN5kKawcSbP4uBH8fYSOH+4hCO+ZyF4PR7GdSrdtJZwBaf/GCDqv3/YJbkxfCpa
	 EJ2A+N2BdaNxayHUzrEaQXEer8twYzA+vDdN3vBZK2Q8+7nSfQgYkSDOoOsOBw5s7KmX3O3zNP6tU
	 ZGJV1/R5yIW+Haes9kCRzRTqidjRJjY/yiRqbXUTMfINQEzck5AbEZef9/9bFzdw7Lt/z8Ibzer8H
	 5NISZAWmWTVccgThVXQJ9iwPaWidJwe7zM+WmNSZSUuROWKhs4tpvYdAH+JMw1P9clFRJJHu5ejSq
	 k8mlMNkgH16qqLO0MPoR6FNtj++nDgYy4uqMsXpZVtfhBTmpu7O8CUFeWBAG4UWp3ozIQ2nR8fMZ9
	 tEnh/EAa1MdHrMwIq0WF1Z6cVivF5LLkpcbVRVoow0lytBcH/rTRfshIcmX/zqOVxDPgJZFtYNG9t
	 PrKeUSl2x81G8GRNWOX0gAStWub5BDbAMBjiqMm0dSKLObDKLclGlmT0nFm97Qi+wPb4AO8q2qcs6
	 xfCKNHkqMUt+kWprtDoZqeijwP2N1gjdG1xbnswHjeU+R4r3NAynjlWtawVueKX5BFH6E8R6GWW1d
	 lT8FU4aYMp+Ac9bXlmuemYAkRXRmBD7G/crPW7WVr7D9zL0j66jsnvE74qNw6eY8cYLvfd0C5d5nx
	 +yPXt+Xi2KRKGSsy7+y50R01fL47HOt9uUi5jp8dVrXKYNwT3DCmYRgTf8MjEMK2beRNWUFW99HBo
	 zYWrzW8OW7U9u+AdW43G1DpZlIdieEFkBVFk4wEwOAwFGY3ZLJiw+CnWh4+V+MDVSZEKHFA6OXORo
	 uYrdDJfmg=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>, "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?RGF2aWQgUy4gTWlsbGVy?=" <davem@davemloft.net>, "=?utf-8?B?V29sZmdhbmcgR3JhbmRlZ2dlcg==?=" <wg@grandegger.com>, "=?utf-8?B?T2xpdmVyIEhhcnRrb3Bw?=" <socketcan@hartkopp.net>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>
Cc: "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>, "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
Subject: Re: [PATCH net v2 0/3] can: fix bus-off restart during device close
Mime-Version: 1.0
Date: Wed, 14 Oct 2026 13:06:54 +0800
X-Priority: 3
Message-ID: <tencent_04B66976651812A847AC03C610D9FC809A09@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_82C93561D200C84C24608C80049C23EEF80A@qq.com>
In-Reply-To: <tencent_82C93561D200C84C24608C80049C23EEF80A@qq.com>
X-QQ-mid: xmsezb41-0t1791954414t6uc91w1n
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_220701_669580_CF293669 
X-CRM114-Status: GOOD (  34.07  )
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

> This work started from a real failure on a production robot using a
> LubanCat-5IO with an RK3588. RX continued, but the TX queue remained
> stopped and subsequent sends returned ENOBUFS. The interface still
> reported ERROR-ACTIVE, and the hardware indicated neither a bus-off
> condition nor a pending TX request.
> 
> While testing the echo-loss fix with fault injection, I discovered a
> separate race between bus-off restart and device close. This series fixes
> that race; the fix for the original TX stall will follow separately.
> 
> When automatic bus-off recovery is enabled, bringing the interface down
> can race with a pending or running restart. The Rockchip driver currently
> relies on close_candev() to cancel restart_work, but calls it only after
> freeing the IRQ, disabling RX offload, and stopping the controller. A
> restart in that interval can re-enable the controller and its interrupts
> after IRQ teardown, and requeue timestamp work after it has been stopped.
> That work can subsequently access registers after runtime suspend
> disables the controller clocks.
> 
> The networking core clears the running flag before calling ndo_stop().
> The first patch uses that flag to avoid scheduling or starting bus-off
> recovery once the interface is observed to be no longer running. The
> second patch adds close_candev_cancel_restart_sync() so drivers can wait
> for recovery separately from the echo cleanup in close_candev(). The
> third patch uses this helper at the start of the Rockchip close path.
> 
> The running-state checks do not replace synchronization with a restart
> that has already passed the check. Rockchip waits for that work before
> tearing down its resources, and keeps close_candev() at the end for the
> final cancellation and echo cleanup. IRQ exclusion during hardware
> reinitialization is retained; the shared IRQ is not disabled while the
> close path waits for restart work.
> 
> I tested v2 on a LubanCat-5IO running a PREEMPT_RT kernel, using the same
> setup and procedure as v1. The 1 Mbit/s CAN bus was connected to four
> CANopen motors operating at 100 Hz and four sensors operating at 20 Hz.
> A bitrate mismatch forced bus-off with automatic restart set to 100 ms.
> The v2 campaign completed 380 valid bus-off iterations, covering automatic
> recovery, close while recovery was pending, close near three delay points,
> 200 randomized stress iterations, manual recovery, and reopen after close.
> All 380 iterations reached bus-off and scheduled recovery.
> 
> ---
> Changes in v2:
> - Split the series into the common checks, the cancellation helper, and
>   its use in Rockchip.
> - Check netif_running() after the do_set_mode capability check and before
>   the restart notification, echo cleanup, and carrier update.
> - Only queue automatic recovery for a running interface; keep reporting
>   bus-off and make the log message match the scheduling decision.
> - Add close_candev_cancel_restart_sync() in linux/can/dev.h and use it in
>   close_candev() without changing the existing cleanup order.
> - Replace the Rockchip mutex and closing flag with an early call to the
>   helper. Drop the extra close-path IRQ synchronization and mask readback.
> - Retain IRQ exclusion around hardware reinitialization in the restart
>   callback.
> - Link to v1:
>   https://lore.kernel.org/linux-can/tencent_5802EE88434010229EDF7A53084D994C6106@qq.com/
> 
> To: Marc Kleine-Budde <mkl@pengutronix.de>
> To: Vincent Mailhol <mailhol@kernel.org>
> To: Heiko Stuebner <heiko@sntech.de>
> To: "David S. Miller" <davem@davemloft.net>
> To: Wolfgang Grandegger <wg@grandegger.com>
> To: Oliver Hartkopp <socketcan@hartkopp.net>
> To: kernel@pengutronix.de
> Cc: linux-can@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> 
> ---
> Cunhao Lu (3):
>       can: dev: prevent bus-off recovery when the interface is not running
>       can: dev: add close_candev_cancel_restart_sync()
>       can: rockchip_canfd: cancel bus-off restart before closing the device
> 
>  drivers/net/can/dev/dev.c                      | 12 +++++++-----
>  drivers/net/can/rockchip/rockchip_canfd-core.c |  3 +++
>  include/linux/can/dev.h                        | 12 ++++++++++++
>  3 files changed, 22 insertions(+), 5 deletions(-)
> ---
> base-commit: 24a19b953e2a3d0ea5a8c4951a0ab8f32720c907
> change-id: 20261013-rockchip-canfd-restart-close-ebde5954f1bf
> 
> Best regards,
> --  
> Cunhao Lu <1579567540@qq.com>

pw-bot: cr
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
