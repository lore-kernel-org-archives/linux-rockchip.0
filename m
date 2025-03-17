Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 001F8C282EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 19:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0QJBS1eBArSYTdoqnlm6pR0psWdUuX2S6bFzW5V734o=; b=xoQDlOwP4XktiX
	f2DjOIkuAoCyR/Z9G+1gHLxGkur0owodp45WVwl0IzEKSqm7rEjCYfSpdQYyeb4NtLt9a0yfIjyxi
	Gp413CB2L2MY79d+U1yE0Wx1yHF97beqCMTSu7scnefF598F+IsEwjhppu6K5UwtrKHrcowdqd63w
	TYJSSQPSjOEbTgkTILJJzj3IcNpq0RQEMr4dPCqYC1pPTqdvfdDc41HJxhirsaiwFxoVLujU5J9+W
	UpJXicKceP5aDIqwW70awBB/pOnKmmYo1jddboVPYjBkrtef81HI5NpOZrlx2MqpXxs7Ky/cbtZXF
	x6Iyd+5pJmBd9CV7Mwgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuGOT-00000003qYy-3kKc;
	Mon, 17 Mar 2025 19:45:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuGMm-00000003qIK-08Q2;
	Mon, 17 Mar 2025 19:43:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6CCE35C05A4;
	Mon, 17 Mar 2025 19:40:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6D6DC4CEE3;
	Mon, 17 Mar 2025 19:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742240595;
	bh=t//6P/q0t8jIMHBT9W/8mr8iVb+RwiE/dM2UG+3+3rs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bJY6pWHAHjA8xrZ/5+VUjB1jqkwWQCAceb0D2Kx7WuOa/IeJcN7gAg8gWrxfY0F1U
	 SQZR5hMLDYoUm3n3eaILBNSY9qtWVg0N9pX7wa3so9kHRslCGuR3KWEY0Pk9v6L4/R
	 Pk6sPCllY/LZHOwZiQshkmDf7C6W+czCc5B5pWBzEyKE66h+B/12eIcXSNG7gQ02OX
	 m2Mkk7MVV+5O3/at5i9/MO48RkGLWyWcXIActOkWOt1ZX2GuZnQTGMx4OaiF4GThWu
	 Mt3ks+Uhjwnvj62d3ra1dt7drBybKMgcoW1xBqFO77B66t/jFOTmo0LhKw1uDI72XB
	 HUCK9E2oZZBOQ==
Date: Mon, 17 Mar 2025 19:43:09 +0000
From: Simon Horman <horms@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Wu <david.wu@rock-chips.com>, Yao Zi <ziyao@disroot.org>,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/5] net: stmmac: dwmac-rk: Add GMAC support for RK3528
Message-ID: <20250317194309.GL688833@kernel.org>
References: <20250309232622.1498084-1-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250309232622.1498084-1-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_124316_123032_E0F00D73 
X-CRM114-Status: GOOD (  16.44  )
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

On Sun, Mar 09, 2025 at 11:26:10PM +0000, Jonas Karlman wrote:
> The Rockchip RK3528 has two Ethernet controllers, one 100/10 MAC to be
> used with the integrated PHY and a second 1000/100/10 MAC to be used
> with an external Ethernet PHY.
> 
> This series add initial support for the Ethernet controllers found in
> RK3528 and initial support to power up/down the integrated PHY.
> 
> This series depends on v2 of the "net: stmmac: dwmac-rk: Validate GRF
> and peripheral GRF during probe" [1] cleanup series.
> 
> 
> Changes in v2:
> - Restrict the minItems: 4 change to rockchip,rk3528-gmac
> - Add initial support to power up/down the integrated PHY in RK3528
> - Split device tree changes into a separate series
> 
> [1] https://lore.kernel.org/r/20250308213720.2517944-1-jonas@kwiboo.se/

Hi Jonas,

This patchset looks reasonable to me. However it will need
to be reposted once it's dependencies ([1]) are present in net-next.

And on the topic of process:

* As this is a patch-set for net-next it would be best to
  target it accordingly:

  Subject: [PATCH net-next] ...

* Please post patches for net/net-next which have dependencies as RFCs.

For more information on Netdev processes please take a look at
https://docs.kernel.org/process/maintainer-netdev.html

-- 
pw-bot: deferred

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
