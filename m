Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D0F5C44520
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 11:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6wRrndA2Z1ZDKOYjqstp99Gfgih2gA2PSVtVujOB1U=; b=2TY+3FR5kttFMN
	+ow2bEpMPo69jlXawQCTAk17xKRV8gv6ZoIkR9eisM9f991d9A0rkUq0VRRT5Z9/zt3/hvxEQ3j+I
	8emVQI6POsfPsVfiZPpOxNH4J2M9ujxjUtJ6QgYE1HRMmDD91Kff8yXkQEgijYXnowrih2fNiQ2m4
	qcMy+0r3CjYA7dwtYWl2Rx4LPj91y2hf+S1TQEYj278/VnSC7a884EVtDsVng23m9UER6m+3qgoGF
	Oi4DxR65VcelbJu9Zz2Z/EFgoD9KKtIc0PpZOLFl6Q8WeLrzTPPJqNYkJWqi1sHzzmgBN03EOcOlo
	LXbX3ybBRCAOtOCwQDOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmIN-00000006c9a-1y5n;
	Mon, 20 Jul 2026 11:36:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmIM-00000006c91-0COx;
	Mon, 20 Jul 2026 11:36:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5574641ADB;
	Mon, 20 Jul 2026 11:36:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA4961F00A3D;
	Mon, 20 Jul 2026 11:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784547385;
	bh=v36e970MK+YgUbuwLDVXe5yspfmfNDBswqX60ky+hII=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=hR3tQwnjfBN2EIGsDQoz+X4UVx6Wjqmnc8SKjKcQhsrpAVIZ4EATATQa1tBxBNjJ4
	 /516ebGbb9o8t5/PjRVE4gRynVQRztTGg6bKpY0xcChyqkPdTWW+V/9uOa3Hg/J6Da
	 h4XlKtJjKoprBP+3/iL0UZIj3h6DDer2HTvcfyzGFcRqRp3c5cIq9F4IA1EgFg4+lK
	 2SmleYv2VM+rtgLxpHphsALgeDDSlMx3RzA2NI+/QgJE/MLRIOpLS7oBavRnjXx8k4
	 g5Bf+fIOp6JsTv/4tIdfE/bBh3VkH+II3K53VLKghK5nbRrxevRc2n/yELoCrWnATM
	 qamclOw8FtkLg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
In-Reply-To: <20260714-naneng-ssc-fix-v1-1-1c40a58061ae@flipper.net>
References: <20260714-naneng-ssc-fix-v1-1-1c40a58061ae@flipper.net>
Subject: Re: (subset) [PATCH] phy: rockchip: naneng-combphy: Always
 configure SSC spread direction
Message-Id: <178454738244.1375859.4122685311138244257.b4-ty@kernel.org>
Date: Mon, 20 Jul 2026 17:06:22 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 14 Jul 2026 19:41:20 +0400, Alexey Charkov wrote:
> Commit 0b31f297557f ("phy: rockchip: naneng-combphy: Consolidate SSC
> configuration") moved the SSC spread spectrum direction setup into the
> new rk_combphy_common_cfg_ssc() helper. That helper returns early when
> the 'rockchip,enable-ssc' property is absent, whereas the equivalent
> RK3568_PHYREG32 direction writes previously ran unconditionally in the
> per-type switch statements, independent of whether SSC modulation was
> actually enabled.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: naneng-combphy: Always configure SSC spread direction
      commit: be2b5b17b7053fee142939076746d26b2d6c9702

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
