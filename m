Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6E18C30653
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 19:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkvVyzm5POHP3g7pEWkAjyW3VS1t87jW2WntHlSN77I=; b=fiRrqntSdo0P4x
	it1t7zOcEDlS6TARpVfm+Itgu2n2dKqAWYv4vMCvw6bU+pK+KawG6RLa1LowUa1op/iDwQC50YRAx
	3vH+LbBoPIxLn6CbSlgo2gSJ1FVGDCaNgcoV7l/gWgVfwpwlKEg/2TnXEx1tMr/mO9CNE7jGIZ2nL
	ytyp90xb8y5wvHBp4LYzmK1DtW26Gelxug/jbqgaWkdypxQ+PqVCHJG0x+tP3KHme9J+vOV6ffuvX
	K/5bmgM+eKfbA+5ooaOZxYNGaDXhEdGQfqv8fKWx6W9e/A63Tm4cUf5G9gcJ5jL0MEyqO8e5FEOEx
	NAFrDOhaW/OAnWhQQq7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumz-0000000BVMh-0Ikj;
	Thu, 27 Jun 2024 19:28:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumc-0000000BV8S-2fEc;
	Thu, 27 Jun 2024 19:27:52 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMumK-0000wK-L0; Thu, 27 Jun 2024 21:27:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Furkan Kardame <f.kardame@manjaro.org>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Lee Jones <lee@kernel.org>,
	Chris Zhong <zyw@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/5] DT fixes for Rockchip RK809 audio codec support
Date: Thu, 27 Jun 2024 21:27:26 +0200
Message-Id: <171951643514.1057727.17430383742626789629.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_122750_701349_BFDFE5DA 
X-CRM114-Status: GOOD (  10.23  )
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

On Sat, 22 Jun 2024 00:57:17 +0300, Cristian Ciocaltea wrote:
> Rockchip RK809 MFD provides a RK817 compatible audio codec, supported by
> the rk817_codec driver.
> 
> This patch series fixes a few issues identified by dtbs_check for the
> boards making use of the codec: rk3566-quartz64-b, k3566-roc-pc,
> rk3568-evb1-v10, rk3568-lubancat-2, rk3568-odroid-m1, rk3568-rock-3a.
> 
> [...]

Applied, thanks!

[3/5] arm64: dts: rockchip: Drop invalid mic-in-differential on rk3568-rock-3a
      commit: c5e56e620410696922cc01d4ab473fa03c627ca7
[4/5] arm64: dts: rockchip: Fix mic-in-differential usage on rk3566-roc-pc
      commit: 26067ce0934480d772b76cb674055ef66411bc09
[5/5] arm64: dts: rockchip: Fix mic-in-differential usage on rk3568-evb1-v10
      commit: 592d17ded2d569b60bd35d91889a79c70e5c6c5f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
