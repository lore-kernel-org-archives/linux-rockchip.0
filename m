Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41206C282CD
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Mar 2025 15:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPsvwmwmzrGhmd9PePcV0jeCYKTzQSiEqJoZS7YI3mQ=; b=FFTcUb+2JG8xxr
	R2WLxHyO3NHBd2wQBCv/mhkUWw+YVsJe29TBym/yth7WRhPGMfWQWKBeALpF9COCC4SdY9cvx5FHh
	jIMAVLv+cduA2nXdrSCPBnpFGyS5JA/8fyrxd7/tV9KIufeWTqo6x1zt4T1kJ4+JROQAJqdhoJYkP
	qZzvCEkN+N/OREb/UynFpLQuPRNwrrwEl4v0aAjN3Hoxz+3/yTVB3QlZkmzdz0oi4dEvXoc3qs5HQ
	mxPfBGNbpwdbPV5UCi30iGgzvphWb5CvzrTU1NtltCXU90BBCuvTpctyMgwqbzvERQheccBTWwvtI
	4n2z11bMzwszkE5hwUSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp7Uw-00000001FMl-1GED;
	Mon, 03 Mar 2025 15:14:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp7P0-00000001ECU-39wj;
	Mon, 03 Mar 2025 15:08:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9B54F611FD;
	Mon,  3 Mar 2025 15:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC1CBC4CED6;
	Mon,  3 Mar 2025 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741014497;
	bh=wxHNAItkFHIncMThkMK3x96fLiyJc6WQRTjToXorc8o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XWtGk6wm+ybrOTF2kYZjc74q2++XFn6YSLPvBiSLIHKYwonzQoe9rIG9MkZeQeI0i
	 9kA7Qbt7FwITNhJRIKd1t3lcKguy8eqX6COl2wI+Px5cnZgJJa49JM3I9zqtKxyLbv
	 5TMqlaLHhJPCLq+fDu4h3yGDhIdxPxBwG6V6EOpA1MkixHN0hm9qXMEY+2GrCBeyt+
	 jDy0VwSSkmVnof2xU9oc3LnZu77kj1ZztDybehJPtcewmbkaERYfg40QXhlqxrESDy
	 5dQ8xYobvzN6aRx7YUsZqilxAaLIQAalok9cMSI88/N1ga33n6tZNGXltdISPZ4sl+
	 bICiNAEKV+7Tw==
Date: Mon, 3 Mar 2025 09:08:15 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 3/8] dt-bindings: mmc: rockchip-dw-mshc: Add compatible
 string for RK3528
Message-ID: <174101449502.1860172.16789001197573661761.robh@kernel.org>
References: <20250301104250.36295-1-ziyao@disroot.org>
 <20250301104250.36295-4-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250301104250.36295-4-ziyao@disroot.org>
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-mmc@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, Detlev Casanova <detlev.casanova@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Sat, 01 Mar 2025 10:42:45 +0000, Yao Zi wrote:
> Add RK3528 compatible string for SD/SDIO interface.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
