Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 413E9C61DD6
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 11:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lXHZaoSr6v/1GpXVQ/fuuFOkhYZR+YQb/fAusKwo5M=; b=j+TG/B+ZAWiSxS
	0BGF+thHym/97JWppfH34Q/UI7IWzWz/x+XTAw9eX7ZdIEgT/pBVdEclRKK9BGSFY4wQFrDdCVpbr
	P4AfxCdoe6sRWrt4PYjVlVwttqYdsfH0mQ48bIfPb/v4HJBOfk9pAf6GaXe20IS8zfg9F/8S+Omtn
	BCbRxzbXQefzFn04qSaoDIdQHnGUdA8S0Fzy+aIvAk5t1YmG7vTFZfem8IeTZohTUFCgDa2+ZO8JI
	0avBbvbg93DVROfLUOKKfpconudFTiovqR7qWPfaee3Eu6HRpB7LPvnG0Updt5H6C/Ad8Cj3nmCw/
	xyVmtQ3bjBBrFWNK4nLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1isJ-0000000ESkV-3i9k;
	Wed, 02 Sep 2026 11:11:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1isG-0000000ESiQ-37Vf;
	Wed, 02 Sep 2026 11:11:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BkVfR4DpAx7oQ1YDNDR2x3wJhTHMtx0Qv6BFtq/GbY8=; b=UahfmXeqEIH5gpcc/9Hwhze4D0
	BHqgFmDPXOOdhJIvYk8OWAaqJVORRSLn/Nx+C7qa8WqUZNOCRIGrwQyQbJUfu+wv1vHIw8fU1s4Tz
	KuyafnQbnL/XelC5aEtHLBMKrZYHpme0dvrLwdCYej3b3shIBID76r567lz/XvucpoGgXm00yiGfQ
	u09HSbasaBFtw03HqfFepcpKFHkACO+5YW3DAI7NsOV8O3lEjolhul2v5rW2pX0o4L2ePx9TdvH19
	H7nly9ZxIdpspknOsctvzwsN/ayCFO1u3w1oBk6jnm8d4n9C3sR8ezptXLTWnGcJuW4/m38IBbhQG
	cRybP2iw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rockchip: rk3229-xms6: Replace spaces indentation with tabs
Date: Wed,  2 Sep 2026 13:11:15 +0200
Message-ID: <178834747213.2268650.3079565102560072255.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260829194012.107758-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260829194012.107758-2-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_041124_783649_4274C3B8 
X-CRM114-Status: UNSURE (   9.41  )
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


On Sat, 29 Aug 2026 21:40:13 +0200, Krzysztof Kozlowski wrote:
> Replace excessive spaces for aligning indentation into tabs.  This will
> be reported by dt-style-check ("[mixed-indent-chars] too many space
> characters in indent (more than 7)").
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3229-xms6: Replace spaces indentation with tabs
      commit: 5c44a0abd4334e5be2d8d485dd73a387c6eabb04

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
