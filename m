Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30D2DCFD2F6
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Nov 2025 22:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bH+wn27iJLApBs8w+DHxoJUO3L/s3t6+SBSyPvLDPMw=; b=q24/Bb+ALhlt9J
	4lkK1fp6j8xjc0022XTCaHAUAMm7alUs9RJmS3YXJgdpokxxn56MUMd5hivIKStgOLWzOY1qsNr7n
	yv4MInx0EnekPSAlZPH5YJ+jUbIweP82r75i9zVpzQ/asmoCNIIPUicgfb0XXn8oKPlXeSHiAAbvS
	4f3vjVAuDLAWBZvN4VhHFRJigmyyMmiL45TI73hG0VzSxgLUHM0/eWekkvltkXuCzzfYni/h/DGa4
	0ZJHcDXnZSD8u0BfgTRGbH/3eR9yEsedvZQ0j6OOvhH4FveLXsAl/9h2owqMbZlfw6I1wt2tSDoKp
	nE2kJmUM7UXK3wmLqJrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNIC8-0000000AjMK-1t3Q;
	Sun, 23 Nov 2025 22:04:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNIC6-0000000AjLY-0GyW;
	Sun, 23 Nov 2025 22:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=87aVKtphPmWH51C+RJV57IlAYwC+mC5UV6mscsFpSJ0=; b=RXXJTQXismvJyTDBN7rfBczTLa
	F+XWpvrLeB3NEJsyf8s1Qg21HXFvIPhH+3iVpIwfDvSqKBuJ+AsT0uLEhdl54R0vt0Avm6aXzU8JS
	vV3mfFidjuhfgXAmTSWVuECOY2Vg4Xcv9Mxm2zOgQncJxIBDtV+pe3QCbmnfBu6J1XOEY1Eocg3Py
	FQ2DPIaTQDoeMLxoqGsOEtsDM7yz3KGcU0S6Y8Qy+Ph6uM6eRM42a3IjvIphoEpQkz4271+Cqtmyc
	cCGUwqjZ5AT1FoewevopSrMfHFaPugrKKBB4nkK1ah1qWzznAFVel+4YmfSaMKkzxMXnhF8pgPaac
	LHiHjRyw==;
Received: from i53875bd2.versanet.de ([83.135.91.210] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vNIC0-00008P-9S; Sun, 23 Nov 2025 23:04:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	p.zabel@pengutronix.de,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Elaine Zhang <zhangqing@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	finley.xiao@rock-chips.com
Subject: Re: [PATCH v9 0/2] clk: rockchip: Add clock controller for the RK3506
Date: Sun, 23 Nov 2025 23:04:21 +0100
Message-ID: <176393545901.212596.10640796816193748171.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251121075350.2564860-1-zhangqing@rock-chips.com>
References: <20251121075350.2564860-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251123_140430_147823_97828AD4 
X-CRM114-Status: UNSURE (   9.90  )
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


On Fri, 21 Nov 2025 15:53:48 +0800, Elaine Zhang wrote:
> [PATCH 1/5] ~ [PATCH 3/5] has applied.
> 
> Change in V9:
> [PATCH v9 1/2]: Fix "clocks"
> [PATCH v9 2/2]: No change
> 
> Change in V8:
> [PATCH v8 1/2]: Add explanations for "clocks"
> [PATCH v8 2/2]: No change
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: clock: rockchip: Add RK3506 clock and reset unit
      commit: 84898f8e9cea06f8178fc5ca53f068180f7bfba0
[2/2] clk: rockchip: Add clock and reset driver for RK3506
      commit: 18191dd750e6c9e17fabefd09ff418dd587bcdb9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
