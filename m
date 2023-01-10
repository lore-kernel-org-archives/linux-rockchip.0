Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4B1AC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWvAI+5jwemj9R309xDB1B8+4kyshe5OAE9+ch/tmHU=; b=wt71LQLxt9a7FH
	FTRhRnywzRsIzKdYQJnSc6n/4LZ8kejOlDdPcG2dHdZPiMEamXx6PS0Zc3DypYjF2cVJGoaojmHbO
	04J4Amh/Yjs2rAjpEz/dlCvOdXHdEaDOhbtx/gu4QD0wPx28g1m0YXuJuP0uu0nzwjPrU62dPa8Va
	HWtpcHla/zmUD3VOmfSThYo1OFREOLZbp6z2vKH5gVLiQO4NxvjdRGtqmOGvPAeJwnDLQBBmU+7X5
	zOTmtA2shm/eF3N1MmESrtsMl+GQQ8x8D1d6Eu64UKW6GB2V4ojkvTPSX//obwYM4I2YCQoF2OZye
	2xz6CR5MzlZ9UFTNaC/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGcz-007boK-Rg; Tue, 10 Jan 2023 15:33:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGcc-007bfu-Sw; Tue, 10 Jan 2023 15:33:08 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFGcX-0005bB-I3; Tue, 10 Jan 2023 16:33:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove unsupported property from sdmmc2 for rock-3a
Date: Tue, 10 Jan 2023 16:32:58 +0100
Message-Id: <167336477675.2640328.2287361282584419337.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221219101052.7899-1-amadeus@jmu.edu.cn>
References: <20221219101052.7899-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_073306_966001_F6BC0788 
X-CRM114-Status: GOOD (  11.42  )
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

On Mon, 19 Dec 2022 18:10:52 +0800, Chukun Pan wrote:
> 'supports-sdio' is not part of the DT binding
> and not supported by the Linux driver.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: remove unsupported property from sdmmc2 for rock-3a
      commit: 0b693c8f8b88d50114caaa4d2337932d4d172631

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
