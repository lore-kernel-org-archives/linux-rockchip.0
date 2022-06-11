Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC33FC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 15:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWBVxri4plerhFj6EutzbZLyXd+zStypvFO97PrEmCI=; b=EQTDejWdelR0jd
	2rMtJuLJfzMO0WxUCC5aw2uLtdq/GQ1KNTJWjDl2SMcCArlbkDeql0I1kfMXthmAS8EYfV9Vhzr8K
	qT1icXxjX15RyrzMVxQTY6KWkHwQN0wg+4uCDbkvRbJKlW+bbsPbtxqM954t9BF9bLu0yJ17EDURJ
	VjgE9OfO5hRNc9TRJOH0yUAXp6Jb0PIl/GY2WbmHO5X5a8Q8J0u99+IFVzfpiIaAqPekNo985CnRz
	jQ8SpRMHjQpWuj5Vmweats6dlUjZ69BopW8tzaYBYVl7TK35BPAgMGQ1ubMw77hLiBElh1E3l9/r7
	1u0DbU7bzemS4N7jBW2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02qS-00DWsm-RX; Sat, 11 Jun 2022 15:16:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02qA-00DWmC-1p; Sat, 11 Jun 2022 15:15:55 +0000
Received: from p508fd9f0.dip0.t-ipconnect.de ([80.143.217.240] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o02q6-0004vU-QD; Sat, 11 Jun 2022 17:15:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Quartz64-A dwc3 otg port behavior
Date: Sat, 11 Jun 2022 17:15:47 +0200
Message-Id: <165496044123.1951281.9328507276918622323.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610132542.159978-1-pgwipeout@gmail.com>
References: <20220610132542.159978-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_081554_134197_E42640EC 
X-CRM114-Status: GOOD (  11.64  )
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

On Fri, 10 Jun 2022 09:25:42 -0400, Peter Geis wrote:
> The otg_id line on the Quartz64 Model A is not connected to anything.
> This prevents automatic selection of the dual role usb port. In otg mode
> it defaults to device mode. Force it to host mode to retain previous
> behavior.
> 
> Fixes: bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x")

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Quartz64-A dwc3 otg port behavior
      commit: 2881a4ab319918e775ec9c084da3d6cc15ad77ab

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
