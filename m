Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C52C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 09:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jz6/3vRYdomMkkU5AhN1KJe1HM3/2JKeI+HNXKe5MWs=; b=rsyiJiuyY9+INM
	bi2wyidwfk9Jz7LeM08RtIzJdqn/bx+/y922IT6CnoDRNvuiC5es55OAVq/rJZVIEOSl1r17hcZ+o
	m4bM57NgXIejhuhsLBC2QfA3xJkwx5UHMeCh5bICl8iE6Hm6alghr1ZiSJYicNV3zIyqOED53v868
	ooi0uieZ58vSfHaclZC7pj4ZVJZLUn4ZfT+gUAJqS/iY3k2brlrS9e8oId6rT9oNW3HFb/QaGxayC
	gqxq8L8RB34kv9K78GgwtgJfZcGJrmiDkcYw/nXW28XkUIbNIBpq0ruI2j+Of4IlZJDJvU77q4Rc8
	byjpj+d2MvwstBWBFw7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7urb-004nko-0f;
	Tue, 28 Nov 2023 09:58:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7urX-004njr-1L;
	Tue, 28 Nov 2023 09:58:40 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7urS-0002r7-9R; Tue, 28 Nov 2023 10:58:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: rockchip: Fix sdmmc_pwren's pinmux setting for RK3128
Date: Tue, 28 Nov 2023 10:58:32 +0100
Message-Id: <170116550668.2181556.6293208825750972058.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127184643.13314-2-knaerzche@gmail.com>
References: <20231127184643.13314-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_015839_451741_FEE45220 
X-CRM114-Status: GOOD (  10.66  )
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

On Mon, 27 Nov 2023 19:46:44 +0100, Alex Bee wrote:
> RK3128's reference design uses sdmmc_pwren pincontrol as GPIO - see [0].
> 
> Let's change it in the SoC DT as well.
> 
> [0] https://github.com/rockchip-linux/kernel/commit/8c62deaf6025
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Fix sdmmc_pwren's pinmux setting for RK3128
      commit: 0c349b5001f8bdcead844484c15a0c4dfb341157

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
