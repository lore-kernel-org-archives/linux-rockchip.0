Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88518606A31B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 11:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RgSQnRHC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=SKzvnqdS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2L/ckLCY6CLdIV1A7Rlu+dhH3qqEpilHH4xspD3Qr2o=; b=RgSQnRHCuiaV2NpmZF+Uwtryhz
	ZbRvyC1r98AKnk4UcAfa1Z7XyJGqrLousbh4HUKloxgFvCr/4c0xigpOjDta8Ef5fWefwltFttMlt
	ZLCTvGupLupdTDMkMDgrsAJcOM+pEaEYp+P7s3vfKChTHPai0a8PCZMy5jKY2LN9GvYLarLCXgvub
	Fh1SsJ0U+gDJVi1PDUCFzw9a9ybasx0e3MlFmfGdbj3n46EUCuW1SOCRZWI1mO/mr8HKDbGiS1zOA
	5eCbjw1hXZlWXjE0wWEcAgRVczvCUCbws1wtV7UtDPGwBLyL94mfV0muvk/ts343ILJOtWWjBMC1g
	BU+BdKvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf31-00000004OvQ-1qEj;
	Tue, 27 Oct 2026 11:08:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf2y-00000004Ouq-3AjB;
	Tue, 27 Oct 2026 11:08:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EE7FE6021C;
	Tue, 27 Oct 2026 11:08:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA31A1F01825;
	Tue, 27 Oct 2026 11:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793099331;
	bh=2hM9mxHhLuj1we3DZ/m/4m/Qo/lNtvCzpdhphngvTyE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SKzvnqdS5TT0q14wRUOMnTlfWips9nx5kkEh8UJL533oq5T4II6Y0ePrblzyAS5I9
	 7QKWGFSdJzkCkzWwKtOKkJErnfxIxRN8/DCibQ78/kFhA1UVFGu30ZajqvFbevsaL0
	 0RmVdOyZ2T41pqHmtfDxCkxAIpOr6zlJpLGuW53Z2mnK7c8OuD/fO8JxVLmdNLCdUr
	 QLvQ1Np7Er5PSjXYm1ByM7lCgdgVZUE3cGgBt1XNU1SJB7rDxu7r+COtQsEc6B0QYU
	 TOUo3dHuzrFumO2VbNTY8ABIr+oIaVhxWfrPzx21h7sxeU+VwYx/WBdDdEG2uoSFNx
	 ROE4JVui6Q8pQ==
Date: Tue, 27 Oct 2026 12:08:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Manivannan Sadhasivam <mani@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>, 
	Coia Prant <coiaprant@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: Document
 firmware-name
Message-ID: <20261027-majestic-perfect-mule-a746ee@quoll>
References: <20261026074003.1169669-1-shawn.lin@rock-chips.com>
 <20261026074003.1169669-2-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026074003.1169669-2-shawn.lin@rock-chips.com>
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
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 26, 2026 at 03:40:02PM +0800, Shawn Lin wrote:
> RK3568 can load an updated PHY firmware into its internal SRAM. The
> firmware file is named by the optional firmware-name property; when it
> is not described the microcode already present in the PHY is used.
> 
> Document the property and add it to the RK3568 example.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> Changes-in-v2:
> - Add maxItems: 1 for firmware-name (Krzysztof)
> 
>  .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml        | 7 +++++++
>  1 file changed, 7 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
