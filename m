Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74ACAC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 May 2022 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuOR8vBKO0bK8kWYYukz10JEcvtnWrZIArufdlujntc=; b=xxEOXp/OxFYPNP
	M+94LzRUD0q+sxnimp4G/FQQfEOxWlAkhIMnTpvtU0dpZVQMn/d63NjpHEyCCy2roy6jz4VgqByaC
	8UeSdN6fKuiLrjhFRiLBV5LluCBypXO2Kjsgid3wSbV7rQtWdqUedIhOvwfjTyLnGljSxpi/VJr5L
	hNyBYdcPTpm2k4X6fTR1jDV/7/y+VvQV1K3uIpf7Kb4YTjY9mFIKAbbx8kBaBk1mU0ZNDi72h25+q
	SLHZioHBK/b3d2lsyFzdTW0QQiiw6/Rm1EBvYzmhzgzyjx8Hksu+ewy4UC/ln+S0J9BimFLY2ifVC
	5FNWLi5SmZC8thsgU5Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqKDm-004qKd-Eo; Sun, 15 May 2022 19:48:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqKDY-004qE6-D3; Sun, 15 May 2022 19:47:54 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nqKDV-00064B-PE; Sun, 15 May 2022 21:47:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/3] add Pine64 touch panel support to
 rockpro64
Date: Sun, 15 May 2022 21:47:47 +0200
Message-Id: <165264375744.2524444.9780498055058874635.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511113517.4172962-1-pgwipeout@gmail.com>
References: <20220511113517.4172962-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_124752_524487_1BFCB142 
X-CRM114-Status: GOOD (  15.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, 11 May 2022 07:35:13 -0400, Peter Geis wrote:
> Good Morning,
> 
> Apologies Heiko on taking so long for this v2.
> 
> This patch series adds support for the Pine64 touch panel to the
> rockpro64 single board computer.
> This panel attaches to the dsi port and includes an i2c touch screen.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: add pine64 touch panel display to rockpro64
 ... for 5.20 .

The binding- and driver-change most likely won't reach drm-main and thus
the next merge-window in time, so I've put the dts patch on a branch for
5.20 instead.

I've also made some ordering changes and dropped both the "force X to vopY"
parts. DT is a hardware-description and not a configuration space ;-) .
And a devicetree should definitly not try to work around implementation
deficits of the kernel driver.

Both VOPs are capable of driving both hdmi and dsi with their relevant
deficiencies being in terms of resolution or clock rates I guess, so
anything related to selecting a matching VOP should be done in code in
the kernel.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
