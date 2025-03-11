Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E52C28B2F
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 20:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsJiOJtgGxM1oANgOs4xPFtBMXV4NckKn1875Og/SqI=; b=Nw1FDK9ZSiOxf/
	U1ZdzWe1DisYxs+RqotoEUpAm4e1iJcoCP6PfTrh6Ic1syTxwpZ94zeXKEMDql3yQoIYAZEgS+g81
	4kikyTvIji6ecQs6Ij9fjQZuZnejb9ztUk49Wv68n9rliwGqAiXWt6s+px9WWEqiIeBK1iCJOwPJU
	TAw1sR9lrLFbdKRdSbvdCQWmBntw0g3McIvkLToj/wL/zbqr/aCu1JpkXNDohF3p0SG/Twga1VnZB
	QimEcrrDMIX9MlRSqAaqzm4cz1DLEIVkDvMUu9SySsy/zMZ3o6nwNaZurxUT7zMV9HofZEiFQ7BEr
	96pZH/70YyNkOKeuqC1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts6In-00000006vjX-2rQN;
	Tue, 11 Mar 2025 20:34:13 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts5bC-00000006pV6-3Cwq;
	Tue, 11 Mar 2025 19:49:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C4F5DA46517;
	Tue, 11 Mar 2025 19:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D10DC4CEE9;
	Tue, 11 Mar 2025 19:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741722549;
	bh=foDxJvYl6KBasGc4dz9ZaDGclCUqmjAtTLkdrSdETis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iSCfDhN267WTd7uP6GT6lqCzD7QWFJY8RLRlu2G8GvlIbb3i8vPXYQWARMpHgw05u
	 +14u0y7nvmEKpMGXRvR1q9UGtpp9oW/DDyqRGF1WAFgvKJvmEZJ9UaOIrqWGLeMjCo
	 9r9sbhYnO1uDgS1Mtt4M+Px5UiwG4C6ucMZuIC451D86zc/AMm2teed5vxjQB5fsR5
	 jZ1jFVDmj6fhxbU3vW/NqqJmDZUzm5e0Usbbd2CnIBR5origWHzAUW4wDHuq0qbu2m
	 aVOIjOafmp7oQABWKnZAgh3W0t9WudUcXhPV0s4HEdBOWy7E0lYlDlEWWd9f90Evlo
	 ccW6DoFHIjCEg==
Date: Tue, 11 Mar 2025 14:49:08 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
	kernel@collabora.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: clock: rk3576: add SCMI clocks
Message-ID: <174172254786.8700.16296927950928692659.robh@kernel.org>
References: <20250310-rk3576-scmi-clocks-v1-0-e165deb034e8@collabora.com>
 <20250310-rk3576-scmi-clocks-v1-1-e165deb034e8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310-rk3576-scmi-clocks-v1-1-e165deb034e8@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_124910_886858_DA5C26CB 
X-CRM114-Status: GOOD (  11.18  )
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


On Mon, 10 Mar 2025 10:59:56 +0100, Nicolas Frattaroli wrote:
> Mainline Linux uses different clock IDs from both downstream and
> mainline TF-A, which both got them from downstream Linux. If we want to
> control clocks through SCMI, we'll need to know about these IDs.
> 
> Add the relevant ones prefixed with SCMI_ to the header.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  include/dt-bindings/clock/rockchip,rk3576-cru.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
