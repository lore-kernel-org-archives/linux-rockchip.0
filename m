Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8DD606A334
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 18:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aDvhhIT6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kx2ZaO3z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pQP/4AfW9ATDI7miyA4DkyfPLsFXmULqpJ3zTc4hXT8=; b=aDvhhIT63it6B65gtVOJ6p3c0V
	93fEmbgu3vux0vrglt5FJhvc57uG0wc+DWwe3p2kK3SJwnp7s1q96hk/5yz2XpJvyL/FajYFQrJHo
	u+pmyf50bwlyy7bvZaov2n+VqdBdPiF7OCavajPHwUqQHBcLh/yPEA6g16UUGVPc8zvFJVsX7k7Jd
	z5/oiGCABoP4gkMVamJxyNYTH803V9WceTBAtwAjE0vqeyS1ozq+5fNSe9hFenHUqNh5HuqtugnOz
	S5+yXDex3BvLkP0zl7ORHS9ZyYK5MZJRiDh2ikixr5OIYKCtCgLbOM2HCnVeyY02v7A3MU/6wms+V
	KhPLLrrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQqvZ-00000004qNF-0SQO;
	Tue, 10 Nov 2026 18:50:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQqvW-00000004qM5-1ltO;
	Tue, 10 Nov 2026 18:50:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D2F1363B1C;
	Tue, 10 Nov 2026 18:50:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 566731F008A2;
	Tue, 10 Nov 2026 18:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794336637;
	bh=nVBZoi6/3BeA1E/nAUsBY+mM3R71b9Lch9KwKeBie0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kx2ZaO3znvu4YvmU84JU+Iyq4xCs5EF+0qqxwsv7Row54evB55RJqH6zZjZ2YTzQ+
	 KH6d3TrAUB73sCg7Q4T8ypXYbrkMJ+f7ztTRCFp7X1Ta5vIntCe6skoAzfj1B/aNst
	 XvaFfDfIz59yeRWjUCmhwHiJa8ugLfELWt6zQuawcKMqTkbJZnBIaDbriM8t/kINrw
	 VNbS+DBr7usofeo/G9oKuoz5YkNWqwUOJ0KUAyTNIZKZIyV8m8Qp7xFy+bHtMetLOC
	 EZjZd1GYO25xuVcTjsbN28QUu2N6kI0ISNCbTTLxHSEa0ajGl9mwxkTRvGZO7e3GM0
	 IWu6/RQKO9MaQ==
Date: Tue, 10 Nov 2026 12:50:34 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	linux-phy@lists.infradead.org, Dave Jones <s.dave.jones@gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: Add rockchip,rk3568-edp-phy
Message-ID: <179433663384.1318226.574453120666617957.robh@kernel.org>
References: <20261110074533.4052196-1-damon.ding@rock-chips.com>
 <20261110074533.4052196-2-damon.ding@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261110074533.4052196-2-damon.ding@rock-chips.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 10 Nov 2026 15:45:31 +0800, Damon Ding wrote:
> Document the eDP transmitter PHY with Naneng IP block found on the
> RK3568 SoC. The PHY has its own register window inside the eDP PHY GRF,
> so its node is modeled as a child of the eDP PHY GRF syscon with a reg
> property describing that window.
> 
> Also add the "rockchip,rk3568-edp-phy-grf" compatible with its own
> binding schema, so the shared Rockchip GRF schema is not extended with
> per-device conditionals.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Add the reg entry for the PHY node and the ranges/#address-cells/
>   #size-cells for the parent syscon node.
> 
> Changes in v5:
> - Move the APB clock (PCLK_EDPPHY_GRF) from the parent syscon node to
>   the PHY node, matching the updated driver.
> - Split the "rockchip,rk3568-edp-phy-grf" syscon node to its own
>   binding schema, instead of extending the shared Rockchip GRF schema.
> - Rename the reference clock to "ref".
> - Drop the example from the PHY binding schema, as complete MFD
>   examples belong in the GRF binding schema.
> ---
>  .../bindings/phy/rockchip,rk3568-edp-phy.yaml | 46 +++++++++++
>  .../rockchip/rockchip,rk3568-edp-phy-grf.yaml | 80 +++++++++++++++++++
>  2 files changed, 126 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/rockchip,rk3568-edp-phy-grf.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
