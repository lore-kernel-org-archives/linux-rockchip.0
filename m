Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E3F4C77B6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 11:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Zm9mxriRG/MPWFEska0P7la8S7PatdLCzB1cgbiRFs=; b=05r+BSEj0HBl9n
	siRvk76OMuFRzD9djvb7m6wEGvFJPlkzbNrejy2qVCNjB8s/4ikdf5JrSqZf1DspGCuaVJeAolb26
	MmciZ1v/aaWzUBOMz0iRBhZ6DK4X/ENSoqjSPoqwIBRcGLnEDu+HAHUgO+Gc9j18j7ttHgP0sBvM+
	Hfe0u85YQg7Mg/gJ+4r3icpCU9cRmphKC24Dpkm97ecblJKxXUg7EYEPzr2ZiNKyVAgbTkFniPVhq
	6HlSlJeMKjQf1Hk+e/Kva8YWFCmGQpGrnWZYKptbMO/fOCluRhoNMYVFMouRfpfCr5Sy6eEzys9Sb
	l8iy9gx4TWJtCyn7HNXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phqiF-003fO8-36;
	Thu, 30 Mar 2023 11:45:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phqi7-003fKp-2x
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 11:45:01 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1phqi2-0003YZ-GU; Thu, 30 Mar 2023 13:44:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	jonas@kwiboo.se,
	krzysztof.kozlowski+dt@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	maccraft123mc@gmail.com
Subject: Re: [PATCH] arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3 Devices
Date: Thu, 30 Mar 2023 13:44:46 +0200
Message-Id: <168017666944.2380317.10324183466461610424.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230327153547.821822-1-macroalpha82@gmail.com>
References: <20230327153547.821822-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_044455_961721_9DA582BB 
X-CRM114-Status: GOOD (  10.60  )
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

On Mon, 27 Mar 2023 10:35:47 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> For the Anbernic devices to display properly, we need to specify the
> clock frequency of the PLL_VPLL. Adding the parent clock in the
> rk356x.dtsi requires us to update our clock definitions to accomplish
> this.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3 Devices
      commit: 87891399d9883ed823ba58c2be3ac20cc499ad7d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
