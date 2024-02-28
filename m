Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E65AC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 09:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5r9UsOw+oRsWqs7q16B9tYTE2T0Ta+AK35xPIQnWDA=; b=PIgPSDasJ1jmiU
	Cg+oZGM2VJdZkA5boym/9u9IUigZr4IDF68Lb9bgBLDDgw2uCNPYNbWc/on8TOlqMZRBiy9UTqzKq
	pcs1DIuQp08PlI6yluDmYB138qszDTxFh3aKDXoNgS49IR2RoR1F1qZh/p2Ceh/AlE2sijnhF6DdZ
	1Cr6qexryEa5bCAycS3JuqMKhmsqcAHApwLNfUOn6uWLKtFye7yTELH61IqrqQqImvVA4SwstpJlH
	1lFYtSNTJIXaWP3sXImDqwiEk233BkvZ8P959MvgWa9RrRrqFmXBXZ/M7UR/9gxptmhqBNTMjtE0M
	Gut3CS1kDXcJn4yH+ZZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfG3L-00000008dUR-1RxW;
	Wed, 28 Feb 2024 09:16:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfG3I-00000008dTd-2qoz;
	Wed, 28 Feb 2024 09:16:37 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfG3H-00084W-3t; Wed, 28 Feb 2024 10:16:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	ukleinek@debian.org,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add missing interrupt-names for rk356x vdpu
Date: Wed, 28 Feb 2024 10:16:32 +0100
Message-Id: <170911177587.875264.5357932973123944820.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240227173526.710056-1-heiko@sntech.de>
References: <20240227173526.710056-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_011636_743045_6C18BA61 
X-CRM114-Status: UNSURE (   9.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 27 Feb 2024 18:35:25 +0100, Heiko Stuebner wrote:
> The video-codec@fdea0400 was missing the interrupt-names property that is
> part of the binding. Add it.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: add missing interrupt-names for rk356x vdpu
      commit: d1c44d9afa6f89aa0e10a191f30868eb12cd719f
[2/2] arm64: dts: rockchip: fix reset-names for rk356x i2s2 controller
      commit: 0fc19ab75acde78558bd0f6fe3e5f63cf8ee88b0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
