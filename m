Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC99C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 22:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzMp4abMfDFqGWjhXgy3ffQTPXUcrb5MSVWy7o7ne4I=; b=Nkafv5TSNjvuJQ
	AhmIsp/iKM2ozSKZC9xgv2Ah0b8TLoTiZ5RUhZgSpLH51FYo9fgiIu2/MB1MVKFiXqVMpt3UoA7zr
	b9guLCN0VG/bzJcO24MR1T2q3pPsgiw+BoHcLPwM8ym3PcOoyBYky3Qlf+KGXMr06oaSJqL8CFxzn
	gpLuQjFUkkH7vTu/oReLgaWavpkpR1eqxxoOnnLY59E/ybMw35p56D8gR0vm7A1XAgWpE+p4lRVIW
	nYGBK32qj4MrJAMWncQrvmb4eQujqTCckafllke1cvFOT7Epvu3l+YQYR0Z6N5Urrfvs3aA/fa8nw
	lBE0xQSrMPX9lsHudE6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxbqy-00C9jJ-Nn; Tue, 22 Nov 2022 22:34:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxbqS-00C9UE-09; Tue, 22 Nov 2022 22:34:25 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxbqJ-0004DQ-Ji; Tue, 22 Nov 2022 23:34:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anand Moon <linux.amoon@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [linux-next-v2 1/5] arm64: dts: rockchip: Fix gmac phy mode to rgmii on Rock 3A SBC.
Date: Tue, 22 Nov 2022 23:34:11 +0100
Message-Id: <166915627083.1689466.10618700392262605965.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221116200150.4657-2-linux.amoon@gmail.com>
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-2-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_143424_058239_677EEA3E 
X-CRM114-Status: UNSURE (   9.34  )
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

On Wed, 16 Nov 2022 20:01:43 +0000, Anand Moon wrote:
> On rk356x ethernet phy support reduced media independent interface (RMII)
> and reduced gigabit media independent interface (RGMII).
> So set the phy mode to rgmii to support clock delay, also
> add TX and RX delay for phy-mode.
> 
> Fix following warning
> 
> [...]

Applied, thanks!

[2/5] arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC
      commit: ef9f4b4a50206bedd931f45dd9fd57fd4c1714a6
[3/5] arm64: dts: rockchip: Add support of regulator for ethernet node on Rock 3A SBC
      commit: 79aa02ddc682558edb9bd56522ad841759c99201

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
