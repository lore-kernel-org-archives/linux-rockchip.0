Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC515C54EBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+7V/M9949w7BUFPsG7A7D8UUWnrL5w9YPjMk38QDxE=; b=v9EgQCrxfGXjc2
	/zt9jKkXS4TpT3rfJkfrEdcNhevFNhesu3oYjIgrbrXlEJFvecQSmxoVwfhUGLCfR7sQPCt/aSsGD
	lKvEeQRbnpN0iwSclr5qgX+XeWdlz9H66IFuR8eyCcLdSzNZ2IvGD7XWGek39ycNU4Kx5hWOyygBW
	ltXSk4yVjmA5ISWiBl3GuDSYd7CO1L6dvw1RGMWk0o8dwW4gR25S7K5M6vNQebRn9Al8Stcozzo7j
	gsfi/VkvHvui0hUbDuRXqhgzTLC3r8TlZPRXcF0rTAh3jp2OKRfzlx77Dc/B1fkUxArgP3Oh66+yE
	kaD3iqFlfYA5nJH0J3mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFG1-007BjU-JL; Tue, 10 Jan 2023 14:05:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFF9-007BDU-R6; Tue, 10 Jan 2023 14:04:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFFF3-0004vx-76; Tue, 10 Jan 2023 15:04:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: rk3328: Add Orange Pi R1 Plus
Date: Tue, 10 Jan 2023 15:04:33 +0100
Message-Id: <167335938206.2550251.12948376009985320157.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221203074149.11543-1-amadeus@jmu.edu.cn>
References: <20221203074149.11543-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_060447_944701_5D6CB449 
X-CRM114-Status: GOOD (  10.14  )
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

On Sat, 3 Dec 2022 15:41:47 +0800, Chukun Pan wrote:
> > Changes from v2:
> > * Add regulator suffix.
> > * Collected acked-by.
> 
> Chukun Pan (2):
>   dt-bindings: arm: rockchip: Add Orange Pi R1 Plus
>   arm64: dts: rockchip: rk3328: Add Orange Pi R1 Plus
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Orange Pi R1 Plus
      commit: 21a6d804d1fc737d0b8493d1ed0baa0a5a67e369
[2/2] arm64: dts: rockchip: rk3328: Add Orange Pi R1 Plus
      commit: 6d7961ddd3c2fcad6aea812fee9f6a6356b130a4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
