Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C6BC6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 13:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6fidLu7Y3MIvIYkvEYeSFAA1hMiDkm7y6ZUf5g+2fw=; b=EhDWEKsIcis41V
	4MS2XFLHcy2KJUBH7PuN0zBgBbsYPD9NEBqQmF2xQWixOXs6Hi3ANnl/m+AgIYAW5nO/msPbYGHl8
	UlAf72/XU5RG6feyk6Dy2a6Ame01F4taTtpdvwqwdjf8gb8nwW1UvANHosGrxFTw/wVvTXGfJqf+/
	coTBmxrameZPWjuaUbcD2fPO5bm+BeO9ovlfFPaXAEpIJXhPqcBqZFvbC+9nezxM0ERgO3rRLzkcz
	ZDg9BdapeNDzWlclU+grEpi1jwTY/CguMOQWxOxNAQ2MKizAd7LHSZYuumawIpXD8exv51AhiElsf
	oz9LMFWSDmC8ytXpUupA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obioG-004RzY-Kf; Fri, 23 Sep 2022 13:33:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obio5-004Rvz-Ry; Fri, 23 Sep 2022 13:33:31 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obinv-00074F-K3; Fri, 23 Sep 2022 15:33:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>, Jon Lin <jon.lin@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v5 6/6] ARM: dts: rockchip: Add Rockchip RV1126 SoC
Date: Fri, 23 Sep 2022 15:33:18 +0200
Message-ID: <2439124.NgBsaNRSFp@phil>
In-Reply-To: <20220915163947.1922183-7-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-7-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_063329_938387_5D3D49A9 
X-CRM114-Status: GOOD (  13.81  )
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

Am Donnerstag, 15. September 2022, 18:39:47 CEST schrieb Jagan Teki:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> hybrid operation and computing power is up to 2.0TOPs.
> 
> This patch add basic core dtsi support.
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

hmm, this series doesn't really provide any board for the rv1126,
so we essentially don't even get any compile-time tests, as nothing
is using this dtsi. Can we please change that?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
