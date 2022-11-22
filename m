Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45E86C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 22:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RMjmfTafsg3CdZfRjThLICqgYlbZMGycbHoNmE8GJc=; b=0GVrMIfULo7XQE
	BbNO6ZXe+eqd3IN0S588aVTwHyULdYgMsbIjkey0ZYjbMHGzhRX6YpPDeDl7P48c0OTOiLECM64WN
	NQKVV2E29P7sbXZBf+hUC6eddevvqnwjyfrSYG3f28al/HlkPk4dj+LSXVawbFne+iLSA1cQZzshQ
	IYfeRSUyG4HJn+o6lsCNf3cQpLE3A7RuiRaZI9RZvC5nfXipOkScEM3Eg+ytK1g8UcjgbTH30bb+E
	peJVTvHGUUFDDWWB6ZAxaplLdvV9+nTGWHR30DVKI+bsG5XuLy0t0r1IpHziHoSQaSrUM1JwcOfQs
	g1K8T2PrnyI/neayNZ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxbqZ-00C9XJ-0m; Tue, 22 Nov 2022 22:34:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxbqP-00C9SJ-5a; Tue, 22 Nov 2022 22:34:22 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxbqJ-0004DQ-8F; Tue, 22 Nov 2022 23:34:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Peter Geis <pgwipeout@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/4] Misc SOQuartz Enablement
Date: Tue, 22 Nov 2022 23:34:10 +0100
Message-Id: <166915627085.1689466.13486151224430970136.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
References: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_143421_226789_A8830CA0 
X-CRM114-Status: GOOD (  13.33  )
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

On Wed, 16 Nov 2022 12:53:33 +0100, Nicolas Frattaroli wrote:
> This series adds the following:
>  * SOQuartz Blade bindings (patch 1)
>  * SOQuartz Blade device tree (patch 2)
>  * SOQuartz Model A bindings (patch 3)
>  * SOQuartz Model A device tree (patch 4)
> 
> The name of this patch series is a bit inaccurate as it has
> evolved, now entirely consisting of new baseboards for the
> SOQuartz. Nevertheless I chose to keep it as to make it easier
> for maintainers to track what this is a follow-up to.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: Add SOQuartz Blade
      commit: 8c84c2e51f3ee39b40e8078ebe3ad9c01fb17aff
[2/4] arm64: dts: rockchip: Add SOQuartz blade board
      commit: a5c826ecde5222f755e7d8a0c8d795189c5c1228
[3/4] dt-bindings: arm: rockchip: Add SOQuartz Model A
      commit: 7441d8c437883581dddfb616a087b399338244f0
[4/4] arm64: dts: rockchip: rk3566: Add SOQuartz Model A baseboard
      commit: afbaed737fb45bcae91e4606025fb31da71b9dfe

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
