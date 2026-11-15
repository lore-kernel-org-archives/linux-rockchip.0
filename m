Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F424606A323
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 19:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Yjgn2o+c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jXVJIkNPXiUCRhj8mCdI+4111rFbCO+1t5hbyPm+C/o=; b=Yjgn2o+cSbMhbLc+b/qSNtv3Kl
	PDNMAoyTgxZVKIvFITkPvMWnN1HTrD/e3LOi5EEkGqBrJVQqbxxE2YG1zaJT4RXyYFkry6gXkf7Xv
	7iCU/J8yIG0VuGVLmo+w3FchoDh3mS5dMd7KdXxVCmar7D8oKVasr1Zhnzup0q8Gr/j3AcJ7iTjnd
	kRFKcdGB7CrcAXqiCgP6mGjqFRz5Y58669lxEGdaiiY5MvjKBoy8DJHRRIbrgebeWI3I5oLACMyGG
	2D+GXT9KpxZ4sx4i15dCQ/Fuh7xxZuoXssjdIBzmvCRE+9DSJWu5zHCex5/e0oJjQ0giScyFCtiku
	9W+iPrqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgCs-00000000OgU-3F5l;
	Sun, 15 Nov 2026 19:48:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgCq-00000000OgD-1P9H;
	Sun, 15 Nov 2026 19:48:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8D71242A31;
	Sun, 15 Nov 2026 19:48:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E601E1F000C4;
	Sun, 15 Nov 2026 19:47:58 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/2] phy: rockchip: snps-pcie3: Load updated PHY
 firmware on RK3568
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org, 
 Samuel Holland <samuel@sholland.org>, Coia Prant <coiaprant@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
In-Reply-To: <20261102015236.3844843-3-shawn.lin@rock-chips.com>
References: <20261102015236.3844843-1-shawn.lin@rock-chips.com>
 <20261102015236.3844843-3-shawn.lin@rock-chips.com>
Date: Sun, 15 Nov 2026 11:47:55 -0800
Message-Id: <179477207586.132702.13681064910468775977.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=970;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=z/N/KYzBmLjuxTwfXJmOo9VDU3z5rXYJ+jtGgfky3h0=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+gxut/r6n3u62ciaAfiwxlRF0b6JJ70NZiftb
 LSnxtljYFWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoMbgAKCRBVnxHm/pHO
 9ezLB/9RZF95g86QTd7xNdk6G43WKTX15whkytnIDCXmLFPMRLeT4K57mh7aOe8/FXyiU3JWpjg
 1rY0kOVv5tr5H/tGlS6bsLRon6IWvaS/JDPLjSzd7is/0T2kAdS03VztgC/CDyE5zxFScaKx4R3
 ssJ9B+OStoKXIIZp//fSlQeLi7V35NLEHcEbBoTc13PnL7dmAULGUnRrf4vU3MlneWSF9TEoRmn
 WewmI+sVdttKYUnwPfACf9Q6sd0BmR62e2gpP3aYwkikMIHyAbbk3FOJU0XwJVzJr/w30QT2ZIU
 iQpFEeCfMj/0yo1xErbV2pTxuWzGC1jkroOvmtnG4SB8pQt/
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-02 09:52 +0800, Shawn Lin wrote:
> The RK3568 PCIe3 PHY can load an updated firmware into its internal
> SRAM during initialization. Without it the PHY may come up with a stale
> microcode and fail to establish a stable link.
> 
> Load the firmware named by the optional firmware-name DT property during
> probe, so that it is available in the phy_init() context and is not read
> from the filesystem on every init. During initialization, clear SDRAM
> load done and bypass, wait for the SRAM to lock, map the SRAM into the
> register window, write the firmware and finally signal SDRAM load done.
> 
> The firmware is optional: when firmware-name is absent (older DTBs) or
> the file cannot be loaded, the driver keeps the behaviour unchanged and
> uses the microcode already present in the PHY.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
