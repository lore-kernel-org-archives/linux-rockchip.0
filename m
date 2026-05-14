Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2108CD4F25
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 May 2026 16:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2f9YhSAdpPIduTsTK+aFNJHP6gzQ16PB0yuKday9V8=; b=u2ROQqr53/a0CS
	TQeRZHrQ46pRCHmPFKaqzYS3p5IilPkuVpfLDZRnEjLRgE6JUTnIRXu3fWy6LAz8izNw11bINq/qX
	O1iNOzsUk3RYn/2HmH+70Brz9Km0KVKZE9T//d4a6X1x5v1xRAf6pi5yjrRDd6/2b8xQzYW1mKiEf
	XwmG2kmO0HggS6lZf3CVME4BYW7aBgjdrDfgPyjgZeWtJt/C20NsIlpwd9lwy6Ggjyw3o1Ncki2uW
	9vprA6F4rsuTqDpmd/k3Aasf0ZFW5gQX8yW0mXLBG3si1bT/OgZsAX6IzLaS7rGRd0vrWcCF61Apc
	PDLJn2oTfDQ0PvljdyVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYlB-000000061a3-3jp5;
	Thu, 14 May 2026 16:18:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYl8-000000061YC-3foP;
	Thu, 14 May 2026 16:18:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 44870444E3;
	Thu, 14 May 2026 16:18:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20EC7C2BCB3;
	Thu, 14 May 2026 16:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775482;
	bh=hyF5D8Pc/kYQIaWvIB9S8/rv8IKNlIdZ14J3dKVxG7o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MY5L+XXfqtr6WnaCfpqdESQw0LlnFZidXkjWb7IM5EBPu/biNN2ouhUUqHoXdPyU3
	 bLxduLXK8kEDtK39M04WPNZZBMu7kfUlfh1TaaDvyDXKKJ8S9PPtNNtL50LPCXeS8G
	 JU/gACrG59F/ZbGrJ4AykiuDWL9NJdmIkd1uQGg9TlSiCOn6Q6sxJM9eZ9cOHY8Of1
	 h3VzdWsvKljBY3A8swYkAO8nipCiR5GsOkx8odm0DvlsGYY/pmMpVizkKCUpcZlVyH
	 Ki+/faUSa9P8O+dVaOOxG+ViiGmtzF05o8AmZMiDHNhajwqe3jhEspqACex6e/1anr
	 ElP+VOG9XGxJg==
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 jonas@kwiboo.se
In-Reply-To: <20260505170410.3265305-1-heiko@sntech.de>
References: <20260505170410.3265305-1-heiko@sntech.de>
Subject: Re: [PATCH v2 0/5] rockchip: Add USB 2.0 support for RK3528
Message-Id: <177877547874.1092446.2280455106153826984.b4-ty@kernel.org>
Date: Thu, 14 May 2026 21:47:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_091802_951306_D2EA3316 
X-CRM114-Status: GOOD (  10.46  )
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


On Tue, 05 May 2026 19:04:05 +0200, Heiko Stuebner wrote:
> This series adds support for USB 2.0 on Rockchip RK3528 to the
> Innosilicon usbphy driver.
> 
> The usb3 support has already been merge for the naneng combophy
> last year.
> 
> Changes in v2:
> - rebase on top of v7.1-rc1
> - split off dwc3 compatible and dts changes
> - add error handling to regmap_write (Vinod)
> - v1 is here
>   https://lore.kernel.org/linux-rockchip/20250723122323.2344916-1-jonas@kwiboo.se/
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: rockchip,inno-usb2phy: Require GRF for RK3568/RV1108
      commit: a896852613136e6babe6036567ab0989fb322a57
[2/5] phy: rockchip: inno-usb2: Simplify rockchip,usbgrf handling
      commit: be29cd958f5393004a24cd7b5b1da88dd90a651b
[3/5] dt-bindings: phy: rockchip,inno-usb2phy: Add compatible for RK3528
      commit: c430f042f4ba2c5abd592b6924f028d3bb09d4cf
[4/5] phy: rockchip: inno-usb2: Add clkout_ctl_phy support
      commit: 2775541de0580ab1cd077dfef710e6316563d567
[5/5] phy: rockchip: inno-usb2: Add support for RK3528
      commit: 864b3617df827865a95a06f06f09a8d57a795b91

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
