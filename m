Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEA7FECAAD5
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 17:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urXxX18WQzOhSadQwJStyOFUbov+ARd8f6i+T3GksXU=; b=e+YVpLQjz4HIsM
	g7JO+ePZEnov76PaxRu0j/Bw+dXSJ2TlvdLI0mzzMWW4UaBgNWc3MQ11Ttk2cOjYVtGjyHswjo0CE
	PmhCEZMSGG65hTxfMP1sJ57itECjrrMZ6OiphNYbKe+nmt+pTnVH0qsr4O7YZTyYjDbUKbjYwB0AA
	OTZ3yEtfFKDWCbapie1+gjGbXs5akzHOYODN594aAxp4cyzeOmcc0fLa0imL8puBwXU5uuFK33d0f
	5IOxz9EyWyzluF/4k8XruQNbZg45nN5It79LXvN6Z2QN3BxY9S+X+eckFL+QN4mrZEXRXsDcBErOy
	5hjaSSwIra3O+95OfJLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAVj-0089KA-JA; Fri, 02 Sep 2022 17:31:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAVX-0089Ae-WC; Fri, 02 Sep 2022 17:31:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7BCBBB82CE6;
	Fri,  2 Sep 2022 17:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48667C433D6;
	Fri,  2 Sep 2022 17:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662139865;
	bh=xEjU6ABREWMOVvsUbeCrVUhQ+TEkw5DfKozvpaZ2bQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lProDyoBo3NGRmpi1Fpxj5p6lnNPV9AgAPut4N3CeswqR3mFMfFxG2Nffr1aTTcQc
	 ybQJx70pYYiM67AlHvWDRUMjXcqea6We00/KpGQVsBdM/EpXcWgkdr5RlEaRywwP4e
	 dIR28dJNCKDTlyMhkf0J4382RU/CAqcBgRc2iXquSgzniu7yvfHnQYk+JtImRco3Ua
	 Vs6rGkXMGGHPx8SZkXB3qeaz+Vns+UEp7xb/h0ZW9U5yYR2i5WXwoarJkwpvt9H4zw
	 NAHHcp87zGCeqIDYtfo4um3Fpl4DGx/riPL2J+J9j/dUt7/YD1+Y4Z+YxgSzx8W1QH
	 uIg+SYAEwLy1Q==
Date: Fri, 2 Sep 2022 23:01:00 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liang Chen <cl@rock-chips.com>
Subject: Re: [PATCH 0/3] Add support for the RK356x variant of the Inno CSI
 DPHY
Message-ID: <YxI91NRExHFQP5FM@matsya>
References: <20220720091527.1270365-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220720091527.1270365-1-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_103108_198539_CF177BE6 
X-CRM114-Status: GOOD (  15.52  )
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

On 20-07-22, 11:15, Michael Riesch wrote:
> Hi all,
> 
> This series adds support for the variant of the Innosilicon MIPI CSI DPHY that
> can be found in Rockchip RK356x SoCs.
> 
> Please note that only the basic operating mode is supported, in which all four
> CSI lanes are controlled by the Rockchip ISP. Split lane operation (e.g., two
> lanes to ISP and two lanes to VICAP) is not supported.
> 
> This has been tested on a Radxa ROCK3 Model A board together with an IMX219
> camera sensor and a patched version of the rkisp1 driver (with support for the
> RK356x variant V2.1 added in a very crude way).

Applied 1-2, thanks
-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
