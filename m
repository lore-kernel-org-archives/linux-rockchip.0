Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66FE3C10F07
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 16:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svhFwrDD+pyuXJOgOUhfo1qpCgQK1dlG2YKiH2OO7v0=; b=MIlfbYBCMOb2/e
	ENHa2MOrdPolzTFMa846Pe6lKMcwAaxYEUMA8x42LCkEQmWQedN4QToQfz2BK+ajoBw+pJn3a4cKK
	cUsA4dA8RmPw8ZSsAFORoAqRNniFjsdvtzEAQAuJn2eJJBsU8V4IiNf59nRsB7l/nU95NoQzMlgLj
	vSs6pdypeqHYTmNJgTknuV9XELh1jKn5WD3w2SoiZPzZyzLBuHGTmRiAXZpcEhHytU+Phen4o5YF6
	LvoJt47JyGxUQamBp7uztleXOBHNp2uEeUJbZOTqi9TTTP8bYoRWaLPoRRMhvP9CQr40sIPAb89bM
	Z1BKsCM0YIcbGV17k5rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Syw-00FuFQ-2w;
	Sat, 02 Dec 2023 16:36:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Syt-00FuE2-1w;
	Sat, 02 Dec 2023 16:36:40 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9Syo-0002Wz-9J; Sat, 02 Dec 2023 17:36:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Add GMAC for RK3128
Date: Sat,  2 Dec 2023 17:36:32 +0100
Message-Id: <170153497985.380580.2053954762522949902.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202124158.65615-2-knaerzche@gmail.com>
References: <20231202124158.65615-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_083639_636285_BA9E322F 
X-CRM114-Status: GOOD (  14.46  )
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

On Sat, 2 Dec 2023 13:41:57 +0100, Alex Bee wrote:
> RK3128's GMAC is already supported by the Rockchip's glue for dwmac
> driver, so this series basically adds the respective nodes in the SoC DT
> and the enablements for XPI-3128 board.
> 
> Note: These patches are based on maintainers repo.
> 
> Changes in v2:
>  - use phy reset-timings according to the datasheet
>  - added rx-fifo-depth and rx-fifo-depth for gmac
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: Add gmac node for RK3128
      commit: 3d880c31d40d30328cb550523adadf1466e7c686
[2/2] ARM: dts: rockchip: Enable gmac for XPI-3128
      commit: b47c0b9ed3eb31c8efb8f8be3bca32d6ced5fd52

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
