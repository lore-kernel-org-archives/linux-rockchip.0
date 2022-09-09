Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D9CECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 18:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpJCBuu4qdQ/1/Hv0nIm6Yur3nD3M4VY64f859E4R3E=; b=Qgh7Bidz+4sTc0
	K20dhv3xWtFaz9P9Z9bpvypbx5+kpAfD0snFOG0ae42xOtzr4RGpVhsejpZb9DxsSVK+mGvF2rxKr
	/q+xQabZfw78jTrM7wIqTaJPlMANGTgfopmVAxns/R7rx1pV2pKqUJ0anhoAypgJmP7ZX+FS/guqM
	0qL7Uq0M5BGXY/piwZSuLZ394ZRDIr5RAYekx+IS35ls2OsI+wmlJsBwQlfE34SMcgY0jeClYv2pG
	4vwyFv+ixB3bkUbHaOzs3eiKYhfd8E83m5m1MfRJXj0wMX6vybKdTS6Mc9dGIFqeqj1Krc2mss0al
	hKY88VSRBkfnQKrZsTsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipj-001EsR-A9; Fri, 09 Sep 2022 18:34:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipL-001EaB-E4; Fri, 09 Sep 2022 18:34:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWipI-0007Ij-Mq; Fri, 09 Sep 2022 20:34:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Lee Jones <lee@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCHv3 0/6] RK3588 Power Domain Support
Date: Fri,  9 Sep 2022 20:33:51 +0200
Message-Id: <166274831282.21181.3968253085074632950.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_113407_488556_B843C724 
X-CRM114-Status: GOOD (  10.88  )
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

On Tue, 6 Sep 2022 16:38:19 +0200, Sebastian Reichel wrote:
> This adds power domain support for the new RK3588(s) SoC
> series. The series has been tested with ethernet on the
> RK3588 EVB1 board.
> 
> Changes since PATCHv2:
>  * https://lore.kernel.org/all/20220831182629.79255-1-sebastian.reichel@collabora.com/
>    (Note: I accidently send PATCHv2 with an incorrect patch version)
>  * Change license of DT header after message from Finley Xiao (Thanks!)
>  * Add Lee Jones to Cc list for the MFD DT binding
>  * Collected further Acked-by for DT bindings
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
      commit: aa8414fffd9892a81de76d4bb91c70149a005769
[2/6] dt-bindings: add power-domain header for rk3588
      commit: 67944950c2d0bdb7cfc8855f1d9b44fc4ef51510
[3/6] dt-bindings: power: rockchip: Add bindings for rk3588
      commit: 167bbadee8c2aa53d56a2466bddd98c8c0aaf846
[5/6] soc: rockchip: power-domain: do not enable PD
      commit: 47bceb7cda6a78b3735694790e70f5cdc254058e
[6/6] soc: rockchip: power-domain: add power domain support for rk3588
      commit: 6541b424ce1dda616d3946e839f015c984df7a99

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
