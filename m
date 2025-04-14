Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA98BC369A2
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Apr 2025 14:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVQittKGhI2r1Gng3f3wdWMiLiIYwmslc/+vgQa7Izo=; b=MpumyYphSvdSw7
	aO1aCzUVsLeZH/56Z7sB/Z4S0Bdp6dHpPcGFPgHvYdhH8D2DpVMALE34HZTcDpgC/RmoDsNEDl3cn
	N29OiPzCxJpc4rcIT2OypZY9Q3R6GBV/3t7jaanWFezvqupOBoKVEjyO7TKX2ZVVmVE/rxYp+s2kO
	3wLJT09QGp0mAM/ykVOFuSZRjjplvvYfnjVClFPWA8RGUne23YKTxAtkCZlruh3KKSOd1X6LFP/7f
	SNG9Xzh2HDm0FGi7mM6Um3t6mnevZAEJWQ2iu/7Ob/6BE/q7D72jBGiI7MOfhfdhaMfXS644dvHiQ
	W7FBkOHaeV6jmU9ZKF8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Kno-00000002NcK-1Awi;
	Mon, 14 Apr 2025 14:28:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4KaZ-00000002KBK-1kbL
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Apr 2025 14:15:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DE8485C55BD;
	Mon, 14 Apr 2025 14:12:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3455FC4CEE2;
	Mon, 14 Apr 2025 14:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744640106;
	bh=N59mWOOmWYHFDa9wgd8r2eaYDiBQILRhojph9hULj9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EQlh+xJkLK8zR2EKzmrKEhYIjgvdIUwlT7vbz19lC+HCBa3zRIOisBtf7SPvAHeCh
	 8+t45kJAbu3enKP1KBM/giIp6BWaJyQemD99BGFoZCyh6wNieD8UY+akHZIz+UOASt
	 jQrqDu2Ul3VO2djOxYKUBCIc666Jk7x1inTG0XH7Fg/qeerBnlANQXj7quV1rB6yq3
	 qVGD66K5IEHaNI0yjnGyv/AMlkXRSCGzBTpMmrcBWe67zeZE9+ctL9yKQyxvcqxLcw
	 Ta3gTCxbmo7xz6/EylwdeolbOQJvRbLr8RER2YRk1HsUvNzSVkQt30r2Q5LLi+rvbq
	 AQOMsSepFwC6A==
Date: Mon, 14 Apr 2025 16:15:02 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/2] PCI: dw-rockchip: Enable L0S capability
Message-ID: <Z_0YZnJUiJdffqtA@ryzen>
References: <1744594051-209255-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744594051-209255-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_071507_505379_85AC057C 
X-CRM114-Status: GOOD (  10.58  )
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

On Mon, Apr 14, 2025 at 09:27:31AM +0800, Shawn Lin wrote:
> L0S capability isn't enabled on all SoCs by default, so enabling it
> in order to make ASPM L0S work on Rockchip platforms. We have been
> testing it for quite a long time and found the default FTS number
> provided by DWC core doesn't work stable and make LTSSM switch between
> L0S and Recovery, leading to long exit latency, even fail to link sometimes.
> So override it to the max 255 which seems work fine under test for both PHYs
> used by Rockchip platforms.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
