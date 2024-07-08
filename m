Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D13AC3DA42
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMtqFAPCMTnJGlkV7/SBpI4xAQNgvhNvaBerFAQvbSE=; b=qbvEi73QAHEjYd
	B5GNTHokGpjkHXo7uch7hzDr86tGO+jOvsVWxlOs8LfJsDlL2ea7tbaF6GOqS432inAHU8Zj/OIq2
	xrS1VjJlGJP2ZsnDWUhDm2Jy1KQGegWgeI6e70LSPF3abP5/vHqPzCJujWynCdBaqJnbxRoxRXZ1A
	f/A3QNeHZ8TK242k9ZIbzyRSQOGYDlbst2q7HJ6SSs5UPHfpfESfcCdFgSSJOaENpX+/cHbr6is+3
	gVMr3PjgNm9sIEfoi65WhMegzQE8geJoZch5sj680bdiKQ8T4YecA334g3PxLyC0CgK5L1nMIZK2M
	+KXhM9CcIuvOk+TCrFjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQxHq-00000005Gqk-3JWS;
	Mon, 08 Jul 2024 22:56:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQxHa-00000005Gmq-1SIp;
	Mon, 08 Jul 2024 22:56:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A88D60B21;
	Mon,  8 Jul 2024 22:56:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F199EC116B1;
	Mon,  8 Jul 2024 22:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720479389;
	bh=rlZAk0kZAJiaCngMbVFik5uVJ1rapRR4BRamWVIq5gI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qHgp85fYv8pnhCLOvUenNezIYXWbyJzF0w8HGxxu4W3p0wAAhJS+O+RVpRfXF7ruy
	 CuVt3V8M31ioa6R9EYHkNjnaemYzkOmOW41/s552jI0XYXp4BH4htWwl6iCkTpagPO
	 XukmWEGj6Peq6rVGW9LOS2DOVRSwpSBePlLLBiCns2Kj1ZDzGNaOxbcGJOkgKU4GVp
	 6xXBW6DcsMzK4ycHIay0yQnswhOo2cslyXS7dLcsjC5rC103aKwniqOMGLIFEASxgi
	 kpax8lyBUyirtTeAiCqUp9nrBF2KXCHgSxB+Nv+gqogR8xWCvH7Qvf9rhSkPg6Xu06
	 TJ59A7KdVeVcg==
Date: Mon, 8 Jul 2024 16:56:27 -0600
From: Rob Herring <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 1/8] dt-bindings: i2c: add support for tsd,mule-i2c-mux
Message-ID: <20240708225627.GB4092671-robh@kernel.org>
References: <20240708-dev-mule-i2c-mux-v5-0-71446d3f0b8d@cherry.de>
 <20240708-dev-mule-i2c-mux-v5-1-71446d3f0b8d@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240708-dev-mule-i2c-mux-v5-1-71446d3f0b8d@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_155630_618727_6CB844E4 
X-CRM114-Status: GOOD (  10.76  )
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

On Mon, Jul 08, 2024 at 06:12:12PM +0200, Farouk Bouabid wrote:
> Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
> among which devices that are reachable through an I2C-mux. The devices
> on the mux can be selected by writing the appropriate device number to
> an I2C config register.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> ---
>  .../devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml  | 69 ++++++++++++++++++++++
>  1 file changed, 69 insertions(+)

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
