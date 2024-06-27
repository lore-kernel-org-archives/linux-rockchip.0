Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 408ACC2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 19:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLZR2YYBDts+5EaEgI3lW6DKJd3Y5akzb01VOu3M7O0=; b=nYEcRmtpxWwKjZ
	0fLBm9Ah6wFPe7hpbgIFVLSVl1goqSc4Ni8DI4Wo/BwWrvar0DtNk8x7mHAWUbYk5bRAJtDA9sWMB
	pF5Kw5QPdB6gqatMJKEAnWB5Ivxw0gPhfNYvv3rgRsSJrSdeE17kywkV9qUTrZi+pGv2a611GGKFX
	vSKCdbeCvZpdmeg8sellkXJiswE0ce2H/oDe2N6OhlJykITfIHCHGyq+lYGKDnnQcc2Uar3NzmWWi
	Tw8jobcdbDXa80Hra4Drqjzd2fzt7h8fHlCzFYoRWT4bRtWmqjVcKL6uLMC6KKdDrmIR1I9Hhh7iA
	wo3anjJuzAyjbjXLnfmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumq-0000000BVFp-0IYM;
	Thu, 27 Jun 2024 19:28:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumY-0000000BV6u-0Ub3;
	Thu, 27 Jun 2024 19:27:47 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMumL-0000wK-5T; Thu, 27 Jun 2024 21:27:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	alchark@gmail.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro
Date: Thu, 27 Jun 2024 21:27:27 +0200
Message-Id: <171951643516.1057727.11647703095785160366.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
References: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_122746_183815_2B2AB8E8 
X-CRM114-Status: GOOD (  12.39  )
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

On Sun, 2 Jun 2024 08:25:38 +0200, Dragan Simic wrote:
> The commit 587b4ee24fc7 ("arm64: dts: rockchip: add core dtsi file for
> RK3399Pro SoCs") describes the RK3399Pro's PCI Express interface as the way
> built-in NPU communicates with the rest of the SoC.  All available evidence
> shows this not to be accurate, as described in detail below.  Moreover, the
> rk3399pro.dtsi isn't used anywhere, so let's delete it.
> 
> The publicly available schematics of the Radxa Rock Pi N10 carrier board [1]
> and the Vamrs VMARC RK3399Pro SoM, [2] which put together form the currently
> single supported RK3399Pro-based board, clearly show that the PCI Express x4
> interface of this SoC is fully functional and actually not used by the SoC
> to communicate with the built-in NPU.  In more detail, the VMARC SoM exports
> the SoC's PCI Express interface at its board-to-board connector, and the Rock
> Pi N10 routes it to an M.2 M-key slot with four PCI Express lanes.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro
      commit: 40113edfe63310ad529700fca24f2ebd49ae09ea

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
