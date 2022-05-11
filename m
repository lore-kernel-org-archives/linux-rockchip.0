Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB22C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 04:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68rlfVsLiWpynwgE3phJE1OKI2HVNPvjrRNqKrmeyD4=; b=IypwcG5TEVdcD/
	fbCruJnlOqlGQq4ZOtHyiJRFm+GQgikY8XVH5jI2FcDy6MruirLJVIkj4JMG+yM48hZzUTFMVthmF
	Hw3sBKtnDVXAdkJC1Rudjt4wOEmJrvIYYDkxfxeoJDNWhoAmUWrtwvcds5sfGLlBb3KKTIl9Y+yZB
	r/fVxOxJufunzbc0ak4kOoT1U+yoCqPvA2bBwtGIHupHRo89BGkfuULkegehg+m/XBp0hvrQ5s+gV
	dPStz9CCpZg41V+Pr0kXKATwFwDFc43YVhfWFYDlS/N3RxzhVbSWzC70KQQhhuNcijPctsx6ZrhzV
	gHYc6MiGWlYOj3E9gueA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nodjy-00576i-Kk; Wed, 11 May 2022 04:14:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nodjo-00575m-CQ; Wed, 11 May 2022 04:14:13 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nodjj-0000V0-71; Wed, 11 May 2022 06:14:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Frank Wunderlich <frank-w@public-files.de>
Subject: Re: (subset) [PATCH 1/3] arm64: dts: rockchip: enable otg/drd
 operation of usb_host0_xhci in rk356x
Date: Wed, 11 May 2022 06:14:05 +0200
Message-Id: <165224242948.2009452.15532636093197566420.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220425133502.405512-1-michael.riesch@wolfvision.net>
References: <20220425133502.405512-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_211412_459554_153118B0 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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

On Mon, 25 Apr 2022 15:35:00 +0200, Michael Riesch wrote:
> This USB 3.0 controller is capable of OTG/DRD operation. Enable it in the
> device tree.

Applied, thanks!

[1/3] arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x
      commit: bc405bb3eeee4b711830ab569e7f3811b92196ab

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
