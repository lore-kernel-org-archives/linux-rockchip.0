Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 128E8C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUwcpOp9DUmUwYTEBV6LfDLbrmMjpODCY+gQzM+vE18=; b=2Z54OFEu3HwtTa
	jolHp2fGtpfxEQuZkSDdrWsxJmyQ4y89OlOWOcXnT9l175MVNKZjcZ2ocbu/dAjnZKN+YVpjuI5UL
	MQvfTnaqIqi7rkW9t8n9axmQspOq7XJFym6PP/21bKFGU7F+sx982o+SuEdZgI3iCfkuUGcF28SI2
	HOReBNKMIH0DxGT2V38t37pbvL7tNN78GsJzGxP5eAVoJWqJU1j0wFvHUZl6rrZ38S+a2oKvG2NEl
	AfOLsOpyeppk+8Myl+LO6ViwHQgNTew4N9BwifOP9OGeSD68l0QE+CX5ZGcrK2fYd/mLpgmV+j8k5
	xzy4CjJybEYpXTR0oRLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nppQ3-001IOx-Tx; Sat, 14 May 2022 10:54:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nppQ0-001IOE-Vx; Sat, 14 May 2022 10:54:42 +0000
Received: from p508fd4ce.dip0.t-ipconnect.de ([80.143.212.206]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nppPz-0006h4-Kl; Sat, 14 May 2022 12:54:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/6] Cleanups and enablement for Quartz64-A
Date: Sat, 14 May 2022 12:54:37 +0200
Message-Id: <165252567323.2504740.10027372252751805398.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511150117.113070-1-pgwipeout@gmail.com>
References: <20220511150117.113070-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_035441_066708_82829036 
X-CRM114-Status: GOOD (  10.65  )
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

On Wed, 11 May 2022 11:01:11 -0400, Peter Geis wrote:
> Good Morning,
> 
> The following patches clean up some dtbs_check warnings, fixup the
> Quartz64-A dts, and enable some additional functionality on the
> Quartz64-A.
> 
> With this series the only remaining dtbs_check warnings are due to
> unconverted bindings.
> 
> [...]

Applied, thanks!

[1/6] dt-binding: clock: Add missing rk3568 cru bindings
      commit: b21445db9818ccb9fa1c0ba81fd3705eb8d347e3
[2/6] arm64: dts: rockchip: add clocks to rk356x cru
      commit: 70f679ad25d5f8d0076e283bd6c61e047c7af226
[3/6] arm64: dts: rockchip: rename Quartz64-A bluetooth gpios
      commit: 650a1523756bb1e697f8927d2915cbbb92e83f8c
[4/6] arm64: dts: rockchip: add Quartz64-A fan pinctrl
      commit: 82f4f0183e5d3b2d0a2af6c70ba16f86b5897ef9
[5/6] arm64: dts: rockchip: enable sdr-104 on sdmmc
      commit: 6adce30701c810e11685911ca2114fbc0107120d
[6/6] arm64: dts: rockchip: enable sfc controller on Quartz64 Model A
      commit: e5008be69a1947d4236ab3f73c939f9c2a9a6f80

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
