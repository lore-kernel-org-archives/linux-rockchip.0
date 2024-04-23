Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A4FC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU+vAHNi/IqVe+nn1EDsZBp5g3fmvmz1hOMyxMcATkA=; b=tlZuHYFuZ4J+/R
	SPMcIK3/NoZYKWi1NN7WP4dEznRgKzD3RM5ceivtwn4oN0bRflQLnZ+hNN49E31rdwp615eH5vmR2
	4G3urnhpviFTEFDEPNOgS4ifpfuk4YFmIo7vipCuLibByqatJNW3M/07zUY5T8YlEUpT4rYPA5geQ
	eOCZCJNdTJ0yiU+4q6rWC3KP10eXefwUWFoE1pnWI52rMa6uvBsshlf/t5KodJdScf/ou14Pg69fL
	E+Izq/fNAHZ90hRhWCDRWHFFHtRAQ8x1Ws9akvE4yOWy30aJZHQMN5rSpiTvv7S0v7vK6pTD+1EM9
	qGXZ9QUwyuDYQZMbG6bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzIF6-00000000ZOk-3khF;
	Tue, 23 Apr 2024 15:39:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzIEq-00000000ZHV-1pjo;
	Tue, 23 Apr 2024 15:39:22 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzIEn-0007h9-41; Tue, 23 Apr 2024 17:39:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	quentin.schulz@theobroma-systems.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix pcie-refclk frequency on rk3588 tiger
Date: Tue, 23 Apr 2024 17:39:13 +0200
Message-Id: <171388674749.2655666.16806219158016791877.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240423114635.2637310-1-heiko@sntech.de>
References: <20240423114635.2637310-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_083920_522475_3FBD6AFA 
X-CRM114-Status: UNSURE (   9.06  )
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

On Tue, 23 Apr 2024 13:46:35 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The clock-generator of course only produces a 100MHz clock rate,
> not 1GHz.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: fix pcie-refclk frequency on rk3588 tiger
      commit: 0eb2a93518fb4728bd1d55fcd3b57fce4797ef1d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
