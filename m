Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65069FF885E
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0wc9gIWbvnTX2e2kRSfDmhCl33F9gyeaUDczLh2I3g=; b=PNFLdQJ/h33bwn
	0uaqUz+QWpqLB9Wn+jKTKp1pLeKeSrPD5QfsXmEMKVHrXGNuKWl1vqNjLvuWDmTzmCzL8GxQtimqP
	OhIl5AMRSPrWjOJrwhrikcRbmc1mbCVkCMNqic9DHkEM7aXYgK1EiIz01vUG+g6UnQzaGSNAcFyBG
	8DRGglxnqr8iNzlxptD0++0jmQLQt2orjWhfMfCGxw42cvlnGh4rw4W7XwAOHhEdwNkrJihsYgmdK
	KMu+94cMT49P6vyJog3w04BQ42FESWI54Mllur+qJQBrPTUT5/Gqz4w1nsx2yG4dsce6g3KHaJ9n0
	vS2FOhXMtK1DcWhs6bwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKzt-0000000Gt6T-0jpN;
	Mon, 27 Apr 2026 12:23:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKzq-0000000Gt4d-1kCR;
	Mon, 27 Apr 2026 12:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=iREvix3JcsTfQWQTKWPlT4HwL/HpIqdr7S6OUO9s+6o=; b=zGl6EttV+9ZMroLhwiCaM58v4J
	KpJoVaGbRlLp6A2HR1Yy3GKSDmOuKUH87Jm4g3pbBhpVsnNI3OCTzbsabIxNlm+0eqcWHzXiGsEiL
	RrRl8T1JRNGGr+9qoW5jI+ogY4x7KfIJYOg73Ymu8iFM6Vxhj+o8ZzNhJG2PcdFMYQxMqPQUG9qpS
	jQaR0oHlua4tlbPhhZowwr4adxXrR0fICK7qGH9A43jn8xv/utjy8M5Fqcf1Swluma6KdlNrURhMB
	mvvi4C15FLT/I3Wy1tBkqtMkry0P0G7ZLVhsyqrEguF+7vnontteZcwyBYdbSNmFTzPnFiIDlf6Jq
	rJYuo0ZA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Remove invalid properies from rk3288-veyron-analog-audio
Date: Mon, 27 Apr 2026 14:23:18 +0200
Message-ID: <177729258232.1866089.9184760635267258389.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260404195008.1951910-1-festevam@gmail.com>
References: <20260404195008.1951910-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052330_452763_542E9E18 
X-CRM114-Status: UNSURE (   8.70  )
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


On Sat, 04 Apr 2026 16:50:08 -0300, Fabio Estevam wrote:
> The 'rockchip,mic-det-gpios' property is not documented anywhere.
> 
> The 'rockchip,hp-det-gpios' property is not a valid property for the
> 'rockchip,rockchip-audio-max98090' compatible.
> 
> Remove both invalid properties.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Remove invalid properies from rk3288-veyron-analog-audio
      commit: 44a024778eeba377d7ac882d15e27ba784e0f647

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
