Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E2CD2444F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 20:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTnHteqhLb9vbHhNuWOPjuSXGoh+GDeLSWNsmAKPYPc=; b=uTilmbtUHKEjs3
	CUBuM5Wybq6GLJ0kod7qasd5yu6c2U6uLfKrQyWnKXRbCIv+Q0ExySGXYlbj/p78EK/L8rY7FEeD4
	zylGlpz8faDd1I/1RP5ckkejDRUztFy2cJpeUG0mxeTgrqapV/IPdroWMerFHU7kmVuzqB5ximPY+
	Y8GJdv57Rpe19lepANnP7dGa48t3jXZsOzPw+6i6klumCgD8Ns3sZcQLWPCW0CnTRIWmqb4fsnaVV
	LtOlFTqf7gSPxZ2T/2vblQlH64B/lESWw0CICh+nyHBCEoEEr6KPjPdCSwSMuHvosUG1gtnGOwy5V
	j/vwPIlYp9xskvXroUoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syzyy-0000000EJAE-3wEE;
	Thu, 10 Oct 2024 20:42:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syzlJ-0000000EGOw-0ANS;
	Thu, 10 Oct 2024 20:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6BFDLIxR9WZQ3uKsX2doi4YcoFJOtB9dymEl4xDgCKY=; b=oG3oURYslPRZUea9n1SaXowBOr
	vo1i72GboeOY1D3CTjubkqfc98GbwQy8gWl0JcDDQ32K7+jwcQcLBzqrC6TuLE4NlOyiuY7GzbIB+
	4UhDZ4EFRWUK5u+q9xmFkH+t/bcibWV3/STvqmXQRqf3gSKISqjZTv0kQOlugBkH5tJtf8bcPBbwr
	dHbhDesrVpNIAafzAyJXJbSKNegmZw/4NkVxqTFai99xVcJB6ayUsS/zp1VWXJKZO7K4tDOlbWA85
	clfHYz1h6B3peZNGFp55R+SDWKfnGy2C4LdUR4Zg4foYXyghVkM7qptbkB6oVSDcbE30537UezpS8
	cOAf8BqA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syzlE-0000lb-22; Thu, 10 Oct 2024 22:27:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	stable@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Prevent thermal runaways in RK3308 SoC dtsi
Date: Thu, 10 Oct 2024 22:27:44 +0200
Message-ID: <172859192266.2746127.3378168630215627036.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
References: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_132753_100824_8BF14382 
X-CRM114-Status: GOOD (  10.39  )
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

On Thu, 10 Oct 2024 12:19:41 +0200, Dragan Simic wrote:
> Until the TSADC, thermal zones, thermal trips and cooling maps are defined
> in the RK3308 SoC dtsi, none of the CPU OPPs except the slowest one may be
> enabled under any circumstances.  Allowing the DVFS to scale the CPU cores
> up without even just the critical CPU thermal trip in place can rather easily
> result in thermal runaways and damaged SoCs, which is bad.
> 
> Thus, leave only the lowest available CPU OPP enabled for now.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Prevent thermal runaways in RK3308 SoC dtsi
      commit: 864f1a5b390278a4a8d4a6d7425c7022477c6c9f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
