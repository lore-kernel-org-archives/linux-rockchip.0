Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A2BC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 20:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfIdlgYjVyv4ZQsADPnBbJgmBMYkY72OxsTqFIKcmo0=; b=QntleaUITvhlo+
	ogJmbzDq0nyrQdqQUG7842mc5MZoen3PD/K07fIsiE1p9b+eBipM8qTOr/3TTkVW75Xx/jywVH9Z/
	cONRvuI9hCoXszY2j7WISDniBak9kplEI4BfSutmiXeOeIukSamt+OVlbiFlJzWR8olPOSLjKQWQF
	OwoAzszgcRd2l8VXIDmeGSRfIizTL9nVac0m35PnEMXDxffNaHNIlyM1zV6qdTibZNgKDGjHtDHAZ
	2cQZoA1pZ4ep4HjD/IAGqQ0KWb5XfrQjVCeSru8LvQNHhs+SZ2TZIlD3LQmh6TFj/bSs8TPBM27dH
	xm0p14o/KQiKXHrnSx/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH7Bp-0000000APf8-0C25;
	Mon, 19 May 2025 20:34:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH79h-0000000APJP-2Z0h;
	Mon, 19 May 2025 20:32:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=IGxVumKTNG01Ss/jT9EJGoIzPH02Ea1K0yvcJQNJe34=; b=rsBBKH7/qcMCObS8cpNOvXb2W6
	262WrIW3ITgFARIiLB8Wlt3i6T+/+WVZ+56j/RNzmdOlBmYbX7nT3jJKjMBRnAYDfOZbJXB+B3Iht
	dTJLN/brpL/W36GPmeV73Qr2pgi4V7XSxk7e9cj5qVp8+23PewBgzX1UdrGp5KhLSCf1+llNqYKQL
	EagMLNJOvyTmwlTsbFsT1H2h4fbfFuARQYfZIiXvrLRgJx5VfEteKMI/o2y49Fg7cf94ZFqJeaVhY
	+hC+82wsKbp94GvM2rZjrRaZzHx+AyxoDmAxMBHhBpLvgIWCPeVO1R3Fbvp3DQJAvccmUMJUmtVrl
	ks/ScQ7w==;
Received: from i53875bdb.versanet.de ([83.135.91.219] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uH79S-0001JQ-Gq; Mon, 19 May 2025 22:31:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 0/3] rockchip: Add GPU support for RK3528
Date: Mon, 19 May 2025 22:31:46 +0200
Message-ID: <174768669419.2818279.16363867607908655473.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250518225418.682182-1-jonas@kwiboo.se>
References: <20250518225418.682182-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_133213_649000_651D517E 
X-CRM114-Status: GOOD (  12.79  )
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


On Sun, 18 May 2025 22:54:10 +0000, Jonas Karlman wrote:
> This series adds support for the Mali-450 MP2 GPU in the RK3528 SoC.
> 
> The clock used for the GPU can use normal PLL to support a rate of 100,
> 300 or 500 MHz. Or it can use PVTPLL to reach rates up to 800 MHz.
> 
> The TF-A SCMI_CLK_GPU is used to switch use between normal PLL and
> PVTPLL. When a rate of up to 300 MHz is requested TF-A switch to use
> normal PLL, and for rates above 300 MHz the PVTPLL is used.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: gpu: mali-utgard: Add Rockchip RK3528 compatible
      commit: 6f446bbe412ab3d75651d1cc52e31aaf801dbea8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
