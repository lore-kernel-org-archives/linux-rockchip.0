Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9725E78491
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 21:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KacdJlkOFNBGX+4Sw5esJ6rNkVFBB9nA1Vx1PEJc538=; b=2wIF/gSnyhJwzN
	2edcc9Oucrv8sSIL+/OMNlcl9YspGzqoypp01MzZ9oNOUPewxDCuUOtkHnUmIpXwMWigZrQshOnlc
	j787KCHp1VLE2No/i0+YkFN85/EkpJdVXD+QliPEM5MjVMcb8tDhmMmw2CttZK9XBzupCpUQGRCdp
	TwlZQHsMu/DHOIaZyKjjP+Zy711ZX7QF4SVzfm+sop3CWR+pANv75qzRQnG/1eakI1Bu4bxGUfhqQ
	ZTfSb3q45dV/ig1QUT/TC1y29SM/kOPF7FWI/pTig93SuNgnj8znJx0a2ZjYA62niM2KGwY9bP5II
	zDmhibJOdPCdLbr1TZXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYWnp-0000000HQsb-1wdY;
	Wed, 24 Dec 2025 21:53:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYWnk-0000000HQs6-2ZZ0;
	Wed, 24 Dec 2025 21:53:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 94C4960010;
	Wed, 24 Dec 2025 21:53:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 154BDC4CEF7;
	Wed, 24 Dec 2025 21:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766613227;
	bh=jBtUeNJRO+RbhNPQJjWLbiBQiPsGJ9VvONJQVLV0Q1c=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=C7KSL8HLRTy1Rk1rIfQkwTEDk+GAA7eqse4JiJ11JBbVPOp9zcd+4E+g3RRAUbTs4
	 KinvoQ/FKT32X7ZJqskw6uFUnCH0qXEATSskCo7yhDmKB7Hm5uHr/XBb8jY2q5K0ck
	 jSyXCbdZO5E2aetjKXi/ns+jPd1X1ZpQr6og2NXOYv0RGZuBp0X4SeEf3B0TAatLnS
	 vMzH9uvgjAv+1qTEY3KS/4SuX9KN/B70QJ6ix/RhVGURosukgDjftpbxLO6g2WBCjS
	 gtOJesCpyd1vP8p1pVqS2UqZuOUAt8f4toWDUdbha5uTIJD/a17dQ2JKVFPXHvtv5g
	 uKeORvnnmAZyw==
MIME-Version: 1.0
In-Reply-To: <176656156358.817806.16966474957670370356.b4-ty@kernel.org>
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com> <176656156358.817806.16966474957670370356.b4-ty@kernel.org>
Subject: Re: [PATCH v3 0/9] phy: convert from clk round_rate() to determine_rate()
From: Stephen Boyd <sboyd@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Brian Masney <bmasney@redhat.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>
Date: Wed, 24 Dec 2025 11:53:43 -1000
Message-ID: <176661322399.4169.14248756511703978007@lazor>
User-Agent: alot/0.11
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Vinod Koul (2025-12-23 21:32:43)
> 
> Applied, thanks!
> 

Thanks Vinod! Can you provide a tag or immutable branch so I can remove
round rate from the clk core in linux-next?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
