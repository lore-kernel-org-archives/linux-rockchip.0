Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1507660A2614
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 16:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fpey2Vl6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Rc5ivXsE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9sdjzFaIEryd+2wjwuD0k4JHm4FT3M592JZ4hbQx9Ps=; b=fpey2Vl62llQ8wZX6r/DDT8P29
	rZsMQYoZCgQIz2/oPt5xSg5w5hJ9hIaKiZNvBYVPdNWzJSEgafl0gijKG6gCMLh85ewY+FPL40xrR
	ul79cJtHKUDYmkYTBX2xiXO06wA/Q7U5uIdeRgL5KhJEYcrnFT8rGjfajI1yRaZji+PZBgFBg1k84
	QfWyyaYHOJAQXHyoF8VSaPRMm7ksxoJ0bUQiXq/j+1avkjLDpbVSRHAtp5KRTqjWN0k+pG0yz/Xke
	oSeM/CddMcqfJketdhXAC2wg8ZLhW8tNcGCtwn5MMc/GpGCA9REH8imPOQJJfa+kChj8CvJd29aN/
	1ypN2zDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4ve-0000000CcXB-117r;
	Thu, 19 Nov 2026 16:24:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vb-0000000CcW5-3Qvu;
	Thu, 19 Nov 2026 16:24:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8E05D4129A;
	Thu, 19 Nov 2026 16:24:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E34F91F000C5;
	Thu, 19 Nov 2026 16:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795105443;
	bh=1pbHZ/UD3rUQYraKB5VVEpOEj7pJU3t0iXhesNJaed0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Rc5ivXsEeR2w3rU7JQDOz4iYCapl+O/BWbDN5F+XKB/CZyCzHDR0p2OzE1xPA64pU
	 yqWSTHDyMNnNLsGcAwgSYVknFBOMytGmp5OjRnaU1obcOECQrfnNp4pv33gAhfLZgX
	 HLw8G0q+9/i8UVyfBQqi95WAo04ar003E70hsfsxMF2aJPLsbSuXcyIhvrym62pwrl
	 JlmynBi15yUTStZRK5k86N9TocCIqcgRbH7hB/Gkuq3hk3jjfo5x3W5UdSkSkQsCEP
	 asD4H2HnsN7dlNcFXMZWsaA8i76320hsbUdZjcs2JVAB8uWr6/PoWGQSKYxof8RJs2
	 d8M+hLS/MAcjA==
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org, 
 Samuel Holland <samuel@sholland.org>, Coia Prant <coiaprant@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
In-Reply-To: <20261102015236.3844843-1-shawn.lin@rock-chips.com>
References: <20261102015236.3844843-1-shawn.lin@rock-chips.com>
Subject: Re: [PATCH v3 0/2] Support updating the PCIe3 PHY firmware on
 RK3568
Message-Id: <179510543955.1370333.11289386216403807541.b4-ty@kernel.org>
Date: Thu, 19 Nov 2026 21:53:59 +0530
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


On Mon, 02 Nov 2026 09:52:34 +0800, Shawn Lin wrote:
> The RK3568 PCIe3 PHY contains a small controller that runs microcode
> from an internal SRAM. The microcode present in the PHY is not always
> the latest one; with a stale version the PHY may fail to establish a
> stable link or come up with other issues that are otherwise very hard
> to diagnose from the host side.
> 
> The firmware stays optional: when firmware-name is not described in DT
> (older DTBs) or the file cannot be requested, the driver keeps the
> existing behaviour and runs with the microcode already present in the
> PHY, so there is no new hard dependency for existing boards.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: rockchip,pcie3-phy: Document firmware-name
      commit: 3b93911c3e311584e01e5ceb7f2cde8b77842bd6
[2/2] phy: rockchip: snps-pcie3: Load updated PHY firmware on RK3568
      commit: 8f7b319cc91e61ff9144bd9d72df4d508dbf5e93

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
