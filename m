Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B90B3C982C1
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 08:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxhKOBu+N1G4rHl8D1PhsPgifFg9UHHZjnWzvam8VRk=; b=Dpu9+F97MfFHsa
	8lTYtQ6uPsw7w5oNLL+8874S7F0U2aWGKOJSMiQYiY3EuJrvqs7vi1leTE9jXlBm1jC1gxUDutJNR
	AMerisQl8xDvClODD+Q+OAP/3SEY67wQD5hwVQDhTmy8w16TJXrcjOn7pQO/PS23vVvwBsd7aaLlC
	c9q4o0+IuvNUYmDoRseeBtaTVP2K6nksn5RLMAsCPgbUnOc6zLTafh/b01jp93YUEQMfyOp7Ydzll
	PVeGBNiVuXTcombyP+OAkIj+WwmHH0oryFNwIQbFDCixVIhjIrljTq9xGtfmwKp+QGo5m89yGW8AD
	SBeHpOIMkceZbWhszmkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x77LL-0000000AsqZ-3Dtr;
	Thu, 17 Sep 2026 08:19:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x77LJ-0000000AsqA-3b0W;
	Thu, 17 Sep 2026 08:19:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8C00C413A8;
	Thu, 17 Sep 2026 08:19:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6C781F000FF;
	Thu, 17 Sep 2026 08:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789633181;
	bh=h0zm856Sds7/Jevh8ra9Omnxami6oc8p7GzrqrBXCf8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eEqQTprYFUMyjt04Fp/eZenarzoghCA1IANYr5WAYQrOHPdmYBrwzJgSHCCtJQQhG
	 ArOIwr2ToN8h3TunD3px2mp+AW+tbdKR+EleenMHV98rlx4ZtD9prTsZUzSFHO556s
	 QLIAJ3nivBrgSPHNdwBnWOL51V/DMvhgwxQRBifOYLN52tNlF0PVDMmjYnT6cgG9Z/
	 daWw6+0Gd/mUBPrWaDGuBwANQO8iGWTFGpDTLugNrexJ1UHR5Pn5vharxpMAQC/nzv
	 xjKeUtCSYkRkfzBXuF7dVDvsuX0affjK0lM93aWflyT2KbYXWZdd6BRgNyaYSOfSrT
	 CzQtXMKTb9d+A==
Date: Thu, 17 Sep 2026 10:19:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lucas Sinn <lucas.sinn@wolfvision.net>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] media: dt-bindings: Add Rockchip JPEG decoder
Message-ID: <20260917-dangerous-friendly-booby-d2ebe4@quoll>
References: <20260914-rockchip-jpegdec-v3-0-3583c376d0d2@pengutronix.de>
 <20260914-rockchip-jpegdec-v3-1-3583c376d0d2@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260914-rockchip-jpegdec-v3-1-3583c376d0d2@pengutronix.de>
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

On Mon, Sep 14, 2026 at 02:19:04PM +0200, Sascha Hauer wrote:
> Add a devicetree binding schema for the JPEG hardware decoder Rockchip
> integrates into a number of its SoCs.  Documents the single register
> window (task registers plus the LLP link-table block at offset 0x300),
> the decode interrupt, the AXI and AHB clocks and resets, the IOMMU and
> the power domain.
> 
> The core is not tied to one SoC.  Downstream it is known as the VDPU720
> and the same block sits on the RK3528, RK3562, RK356x, RK3576, RK3588 and
> RV1126B, with only the clocks, the resets and the power domain differing,
> none of which this schema constrains.  A compatible per SoC is all it
> takes to cover them; the RK3568 and the RK3588 are the two that have been
> tested and are enabled here.
> 
> The resets and the power domain are required.  The block cannot be
> reached with its domain off, and the driver falls back to pulsing the
> reset lines when a frame times out and the in-block soft reset does not
> complete, which a node without them would leave with no way to recover.
> 
> The IOMMU stays optional.  The driver never refers to it, it is a platform
> integration detail, and rockchip-vpu.yaml does not require it for the
> other codec blocks on these SoCs either.
> 
> Assisted-by: Claude:claude-opus-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/media/rockchip,rk3568-jpegd.yaml      | 92 ++++++++++++++++++++++
>  MAINTAINERS                                        |  8 ++
>  2 files changed, 100 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
