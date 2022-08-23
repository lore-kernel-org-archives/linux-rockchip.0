Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40524C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 11:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MwmcPMTrRvvA/l8jSZLl29X7+cE32Tk+PMS4MPYpl4=; b=o65q1WJTFuS4ZC
	XA2BRTEB4iocCV9qN/49kHb+XDvgSv3JUeVlt+M0wPFQFtxuLhVbsnTs5n4qoDLCvHWk+SsLhzeou
	AJtBFaSLQXpIRLLrr95CFlD9l+UkzFp2IGA4fwuwCOqCRL6XQGl5kLKMeb6Fb9hcBlIz5IJrnFMbE
	f7PgVZupGxyeWtloai0KnnwWyoghXj+KRo4PUsepaTkR+4ASRVCL/IH6oSwrGkMme33S78NSo1Bki
	+DalJFeeCVHPwsfATYFuGr4UuOT0z5ccP2R+2+KjMoohndDCaq3XeDzYRUDsy66XCq+OAYT/HDbaC
	S03VRcSHdr0jvBCOXW/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQSRO-005YRr-7O; Tue, 23 Aug 2022 11:51:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQSQx-005YI3-R4; Tue, 23 Aug 2022 11:51:05 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQSQu-0004S9-Jv; Tue, 23 Aug 2022 13:51:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@wolfvision.net>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Peter Geis <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>, Sascha Hauer <s.hauer@pengutronix.de>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liang Chen <cl@rock-chips.com>
Subject: Re: [PATCH 1/3] dt-bindings: phy: add compatible for rk356x to rockchip-inno-csi-dphy
Date: Tue, 23 Aug 2022 13:50:59 +0200
Message-ID: <2716442.usQuhbGJ8B@diego>
In-Reply-To: <20220720091527.1270365-2-michael.riesch@wolfvision.net>
References: <20220720091527.1270365-1-michael.riesch@wolfvision.net> <20220720091527.1270365-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_045103_961442_FE9F232D 
X-CRM114-Status: GOOD (  10.62  )
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

Am Mittwoch, 20. Juli 2022, 11:15:25 CEST schrieb Michael Riesch:
> The driver for the Innosilicon MIPI CSI DPHY is compatible with the variant
> in the Rockchip RK356x SoCs. Add the compatible string to the binding.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
