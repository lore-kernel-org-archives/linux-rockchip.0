Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00B9ED5E379
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 18:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZbcgiT/YMoKuHdUs1eE7A2boYwcKp9zXdL2DVgr2S0=; b=jybYNl1TVI70OZ
	qi4qWpNvT6ERDxGAfqtRWQas5V8NvBiBz4Zzrt9cpkG9m7fegeAvzz2Htc7KnTwjEVCrIgUoBHjDb
	+jrmmInx9MnI03OsYpR8I0nPjeetd7YWmI2X2kuK5Rsh2bPJJQtQNoiYn/qaWQfJief3aLXqlMe0u
	9y6Df1njIMzB7bkv9PtMpF+LDAwqWfMLKmRVDMELMnP5v3viotxJ6GV/yFc+UcqcR6360o3vIxlpY
	0cSZdm9Mll8orxwOHLw/zD0t6ipIB/OWd8IuvhAJK78TMm4h+bRRBpniJfB84je06Gx5KnqUMelfK
	Qxr+TyvsGsgMU5wPMM9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qNR-0000000DpH6-1z99;
	Sat, 09 Nov 2024 18:40:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qBR-0000000Dnh8-0qRV;
	Sat, 09 Nov 2024 18:27:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gSKanQf0BmxKHhIhUXq0enULNI1TVd/OdUXWSMftuIg=; b=qOsnP34HUawU0TWZvm8UKgXPaU
	PtH0PUeyFGjxsY68jFjAgi7Z2b1uMHTIggP4rZ6TLw6c2TLNY52E2Xyc/Qn8YlPWSWW7rJElcVpzP
	vmPdfQRRNkLhRNF3g8oljkfDR3uoro0B2dsMY2noEc+TyYMKf2rmt2kBBaN526eqbVJAXZ2Kz3QbS
	afynPjHmGxBxDrFjzWtWQFnZdJGrFiGmvBYX76vF7Du4CKsEFn9LUs65uweBLMuRleNiohljYMGUf
	uSED23GccLJK6fLSeiFTwRajwDhDc2itsvvPuL75XMe/Irdtq3o9TbL9qUctVuEqYxSso99Y2K7Ro
	s477Oy1w==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBH-0007Km-4h; Sat, 09 Nov 2024 19:27:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	didi.debian@cknow.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v2 0/3] Update, encapsulate and expand the RK356x SoC dtsi files
Date: Sat,  9 Nov 2024 19:27:11 +0100
Message-ID: <173117675956.1131306.6435149045133652112.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1730516702.git.dsimic@manjaro.org>
References: <cover.1730516702.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_102741_263848_9A02D569 
X-CRM114-Status: GOOD (  13.01  )
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

On Sat, 2 Nov 2024 04:08:58 +0100, Dragan Simic wrote:
> This series tackles the Rockchip RK356x SoC dtsi files in a few different
> ways.  First, it updates the lower and upper voltage limits and the exact
> voltages for the Rockchip RK356x CPU OPPs, using the most conservative
> per-OPP values for different SoC bins.  This is rather similar to the
> already performed adjustment of the GPU OPP voltages. [1]
> 
> Next, this series prepares the RK356x SoC dtsi files for per-variant OPPs,
> with the RK3566T being the first new RK356x SoC variant to be introduced.
> This follows the approach used for the RK3588 SoC variants. [2]
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Update CPU OPP voltages in RK356x SoC dtsi
      commit: 0e183fcc92b0eaa13b33b39846d86c3d65b8330a
[2/3] arm64: dts: rockchip: Prepare RK356x SoC dtsi files for per-variant OPPs
      commit: 853f9632a17624e9264c68be5c9587f13d04be54
[3/3] arm64: dts: rockchip: Add new SoC dtsi for the RK3566T variant
      commit: e4832d190b4fb69cf28630543804825bf1636ff1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
