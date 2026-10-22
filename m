Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC30606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 09:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=S5IMg0FQ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=if4nxZ5R
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2/gVMNv1wIGy+mxEXmrtetA3zUtGy2za4WbbFFHs+S8=; b=S5IMg0FQLSVZhAmUFkGNssMCGX
	K8BbVsOaKfBrMmPzt3xtvgL+8JL5ZJvHcIBf34W0thoZyxj/dj6hcFY44+N5iCPrX8UqacMYD/iv0
	zB4+rHsYq+lvG41oWPatRaF6Zn2yqKgMj9TD2ZFJl6UM6Tvo3iQsyL4VSiLhHJCo8owJ3ibV+kHQ/
	QyNzjvFk9Sb7QWtBuseRvYX3t/2GaCoArYb6ylR34fmVrdABYN7CL7bDQoVpw82ykSj0Gv4IBJSzs
	nHZo2NTZITMjcBBZb4ysLKLRUWTrd8aBJo332WtWYYj8GwaeVbdytLz70dyUx939uCeamRw6lj0N4
	do/jMxkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpYP-0000000DtIU-0yqj;
	Thu, 22 Oct 2026 09:57:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpYO-0000000DtI9-1xIc;
	Thu, 22 Oct 2026 09:57:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 27131601F1;
	Thu, 22 Oct 2026 09:57:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A3B61F000C6;
	Thu, 22 Oct 2026 09:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792663062;
	bh=R9GgQVWubeFRD0aDYlvlHgUND2ndFlem/CpD5/EOGgY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=if4nxZ5RobttRLRbaBnx4uZxN92SfJsWsPyXQx16zsKfXiiWpIWJm7EN5LdvmScE2
	 JpBbYtAbWCtuajV2oSCmaMlmGHT/PC8nF3B8Kc2Heh+3lNkACMG+/PzIJZLP/UP/Vb
	 j6kGpBw00RPwiVJVs0Df19scV6CqR1mJH5/BdWctLonWbG60wmh+4TcAaJvBAYDx3P
	 aI1/WjMBVPCNpQRpiPSXwNjAuN4pq9leLeRh4x6pe9UZQy1m/uFHzr8EeQ9LNu4y9a
	 rOF6ALW/Bwp5tQas9SrOF++Xa+kpaRVl5QNrryFMZxe7M8CBWW/xB4p+2UuPl5XVmc
	 hCyxbav4ur9Cg==
Date: Thu, 22 Oct 2026 11:57:39 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Manivannan Sadhasivam <mani@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>, 
	Coia Prant <coiaprant@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip,pcie3-phy: Document
 firmware-name
Message-ID: <20261022-flat-perfect-silkworm-d0290e@quoll>
References: <1792466206-127946-1-git-send-email-shawn.lin@rock-chips.com>
 <1792466206-127946-2-git-send-email-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1792466206-127946-2-git-send-email-shawn.lin@rock-chips.com>
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

On Tue, Oct 20, 2026 at 11:16:45AM +0800, Shawn Lin wrote:
> RK3568 can load an updated PHY firmware into its internal SRAM. The
> firmware file is named by the optional firmware-name property; when it
> is not described the microcode already present in the PHY is used.
> 
> Document the property and add it to the RK3568 example.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> index d7de8b5..2356812 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> @@ -67,6 +67,11 @@ properties:
>        minimum: 0
>        maximum: 1
>  
> +  firmware-name:

missing maxItems

> +    description:

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
