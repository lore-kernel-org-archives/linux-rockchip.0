Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C5F606A324
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 14:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z/oPurFd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=XqFU3Hv+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=elCpi0m0gbsxEvx59VMy5SyB6hPpcvx787/PYBaxDv0=; b=Z/oPurFdsQFFpAtH2cLjs9KaTc
	qyrONwtaEAR/dYBqz4K3ySaa0cFAmyj3Y7+FiF0V00LFsbAoqc1JlKWDRJFlj6tzX6op0kwWcDfE8
	zPchsRZCTnD/2nEYzWhc6NlRkY5SElZ3yXQaSWfULA6cWsWXvxkGn9ENJVkBvvgdsXrQP3ivnJPMJ
	+h1VOtlek+ZP7d6dEMyH5c6GM/gY5sjNehQeMSBWE0da1I0e5iH11rnK9RW5JvrSBSFTwQ+RZERY0
	4w68XwYtPkvV2x05ZOp7ztabLjg64+uosKnWM1/bE2W+bM2wcrnmRkuhxyRGMseXRzYqXHZaZpVIc
	whfua/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2y9-0000000CCJN-2eCy;
	Thu, 19 Nov 2026 14:18:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2y6-0000000CCIT-2dS6;
	Thu, 19 Nov 2026 14:18:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 110ED403F2;
	Thu, 19 Nov 2026 14:18:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 341F71F000C4;
	Thu, 19 Nov 2026 14:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795097909;
	bh=q7NwVO/A9WphMCDbQzvYX930tXlLoAWpqgcxhIVwLa0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=XqFU3Hv+Fi3Si5miPmf2dgrDa0IV2XlWnbOQDjaKtPO6BNB61B/mxpb2V4BJLTB3Q
	 F0pfbceWF+gaQR5EnnS82zmdW2ksg1qNginddxqQxaOYQ7GJyYLU0d6eCNUutKmnQo
	 paTJ+actWI1328U/q+KDf4swFWW0J9Hr91YvwlFnHuusfNtMoPwv/4CSSL4dnM9WE5
	 6gK5YTMM2qIjf63+pbNLpMn2BU3MwWViqnBmreoieR4F9kNgeLUAG02WXA+6bvhFAR
	 D06Wb3s+97/BhfnbNtGDwpcud7UuVMlSYTWV6hm/h6w0obguXl4RaQ44Yu6WmaO324
	 0bJSGAhaya4aQ==
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
In-Reply-To: <20261102005129.3745527-1-shawn.lin@rock-chips.com>
References: <20261102005129.3745527-1-shawn.lin@rock-chips.com>
Subject: Re: [PATCH v4] phy: rockchip: snps-pcie3: Raise the SRAM init
 timeout
Message-Id: <179509790782.1342948.7577883372083652668.b4-ty@kernel.org>
Date: Thu, 19 Nov 2026 19:48:27 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Mon, 02 Nov 2026 08:51:29 +0800, Shawn Lin wrote:
> The SRAM initialization of the PCIe3 PHY may take longer than the 500us
> currently allowed, especially on a slow power-up such as at low
> temperature. In that case the driver reports
> 
>   lock failed 0x..., check input refclk and power supply
> 
> even though the input refclk and power supply are fine.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
      commit: 7c2a2268bd3ddf3b2c674ebb7557ae24c22309d7

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
