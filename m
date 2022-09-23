Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DF50C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 13:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeWpettNdZs7am6Z2NY3wIrjVn2iPHnxp4CkBtxvRQw=; b=P7itVB23LQBehX
	0rgdqcz+03QmKnEQ/b/JoUMrJMFprK/NcsMvsHTgu8Z7tw5lONkzyV7uDahSkZcopqSixpSscSO1V
	yaL6D6E9HTgGccIkYkO7ryxyl3YXzD0b5/7+knncTkr+5Y0b/semZT3soFGzGZROQtGgA6e50l8Td
	jwYjKmVQFqGcTSO7zq5tzc3hBmDHEdmuXrOjH2P3f08Twa56CWDJHkjLXSLjsFVFC7uRw+D+nUfGM
	kVO0qBaYaPsAKRBeaHIbOFqy+uc1MoqDYvI+O4eYQlzDaPJGlnTqCB29LnBwuDvloC0/ju6LrUz3m
	5aikhhe2fSqCALj6+b5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obj8l-004WKv-Kk; Fri, 23 Sep 2022 13:54:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obj8I-004W9S-7m; Fri, 23 Sep 2022 13:54:23 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obj8F-0007Bj-Ty; Fri, 23 Sep 2022 15:54:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	jacopo@jmondi.org,
	linuxfancy@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-amarula@amarulasolutions.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: px30: fix ov5695 camera probe
Date: Fri, 23 Sep 2022 15:54:18 +0200
Message-Id: <166394125188.551974.9234507267741432877.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
References: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_065422_292526_C6ACB564 
X-CRM114-Status: GOOD (  11.43  )
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

On Mon, 20 Jun 2022 18:13:17 +0200, Tommaso Merciai wrote:
> This series fix camera probing issue of ov5695 camera driver for px30 evb.
> Improve also the ov5695.c driver using using regulator_bulk_enable/regulatore_bulk_disable
> function in __ov5695_power_on/__ov5695_power_off functions instead of for loop
> 
> 1. max drive-strength for cif_clkout_m0
> 2. add mux for mipi-pdn pad
> 3. use rk gpio naming convention for reset-gpio of ov5695
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: px30: max drive-strength for cif_clkout_m0
      commit: 8cde9667137f2ca8def8aef518305a78e5f55279
[2/3] arm64: dts: rockchip: px30: add mux for mipi-pdn pad
      commit: 921890cae252ed7b7e4d9f98f63515c25cc0aede
[3/3] arm64: dts: rockchip: px30: use rk gpio naming convention into reset-gpios
      commit: 19d4aaf640913c5a8f1b06c9ef46287c32635299

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
