Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C022C001DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 14:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ormfy7otDTUD2tI/21Q+kiBYHfQt5ap0tP31jwqjCd0=; b=uw80eYtEboYCo6
	KK2u7VfhW7FD8PvuCLvNuXK4TjjjZ3qcIuu6aqGpU2WYpdLG1UkUF2BQ0rJ+/X6PcAzlEVQx3YKRW
	KGqApgySpy0nmLaTInRps5F8EmA6qm4KoCnBPdekzUdS7R0mPVah1Hxj1ew7V5WHTiuHy2vdNt4in
	L23I+19EXVq6m6G+2Ug6z6v6IHO3GcFyZ6wouLx/hJQSIRFOQxAnEJwTSVBIk6rbfA7lwRKbgqOfy
	59UrnebWNt//BXUYSMTWX2DWJkX5RxgreWzQdTw+TgaN9+dQI4Uc3zgcYG96uryI35CJn7xPOUdrI
	QjjRD9LPHYjg0AKabSLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfl-00FB8f-29;
	Tue, 11 Jul 2023 14:49:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfg-00FB5d-17;
	Tue, 11 Jul 2023 14:48:57 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qJEfZ-0000LD-4F; Tue, 11 Jul 2023 16:48:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	linux-ide@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Serge Semin <fancer.lancer@gmail.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH v4 0/5] Add RK3588 SATA support
Date: Tue, 11 Jul 2023 16:48:45 +0200
Message-Id: <168908688815.1964886.16094073283802293132.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612171337.74576-1-sebastian.reichel@collabora.com>
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_074856_379528_A91001AD 
X-CRM114-Status: GOOD (  11.94  )
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

On Mon, 12 Jun 2023 19:13:32 +0200, Sebastian Reichel wrote:
> This enables SATA support for RK3588.
> 
> Changes since PATCHv3:
>  * https://lore.kernel.org/all/20230608162238.50078-1-sebastian.reichel@collabora.com/
>  * Add Reviewed-by from Serge and Krzysztof to patch 1
>  * Update patch 2
>    - Add maxItems to 'clocks' property; without specifying minItems it's
>      implied to be the same
>    - Keep allOf above the properties in snps,dwc-ahci.yaml
>    - Add 'sata-port@0' to list of allowed properties
>    - Replace sata-port pattern property, so that it disallows using any
>      sata-port nodes besides @0 to override the pattern property from the
>      common binding
>  * Add Reviewed-by from Krzysztof to patch 3
> 
> [...]

Applied, thanks!

[4/5] arm64: dts: rockchip: rk3588: add combo PHYs
      commit: 6ebd55b3bba383e0523b0c014f17c97f3ce80708
[5/5] arm64: dts: rockchip: rk3588: add SATA support
      commit: 34d6c15d8e86256ef2456c604b1c8d8242720871

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
