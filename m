Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8B7606A334
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ovt3yrfi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=BUPR2I1t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zBJGFp3X4IzjWmqgWgOza3bmEd0WpNNddckBcEzbOoU=; b=ovt3yrfihi/Eg1DfmOcKh2wOD3
	8IvmfRyiW5gZVYqAdc1Tjx3mvGTmQ82gaoO9mja1XzEVBE59b1sVESKnx4ayx1pGva8PRoySg0zvt
	sdNEXdV1O3OTcrkoaHvcobJLhZ0+MWzG63CVRIjgNuaeAWGuYPMiZ0MFA30YHoJFOLEe/VNeJDzva
	lSd1fyebeQCvsG9hMz+JLkpD5jPlkPtUZnzSNVpjTKLkPB+uJtQscyY2vn301aSETcecWyEUbhM/k
	BFDY8rmF89/QnvkZZNggbu6ET1fzaz11LJSYk0cKpQvkfeO2DGInDw3sLY21K++cp0Lz5XGdmSA67
	/Gj9USPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNds7-0000000F4pQ-2Xko;
	Sun, 01 Nov 2026 22:17:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdrZ-0000000F0Xu-1kWm;
	Sun, 01 Nov 2026 22:17:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=++gxowZjuidnt8oawi1XPPb3EzRSU9Uup7gItuTW2fc=; b=BUPR2I1tPRmcXg9xsEVZwH8Hi7
	hbDjQv5SgSwbtW/cfk25tdoCUxocfXzXx3s52kTMQlq6f/nzGbuNncYS4hxlh4TO51q4yqTQ4gq9w
	MF4RqAGqE1zMoMVEdQD8Sp+xnmOb+IhsaITigBEyCds6VITmSpB67SRGGeyuS1TZOvuvt6r4gzIn9
	bomBFeSDmQhk985WXVvkmKhgzalVMmc8AsMRTgdIhmbDtjfTUr4BvwzFYqSo+T/4osCDYKa8OGvw+
	EZasLkABz3gfT8EmzN4PKBwdTKDXhuaD9oumlfmYTl4xCA50xyzpHvV7oRRhgAy7/6SQPlbWzPZZ8
	iTKM3LpQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joachim Eastwood <joachim.eastwood@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/9] arm64: dts: rockchip: NanoPi 6 series fixes and improvements
Date: Sun,  1 Nov 2026 23:16:31 +0100
Message-ID: <179357139329.4108484.8181627010588735275.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141718_041485_A3FE0069 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.1 (--)
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


On Wed, 14 Oct 2026 18:33:00 +0200, Joachim Eastwood wrote:
> This patch series contains a few fixes and miscellaneous improvements
> for the NanoPi 6 series of boards.
> 
> Patch 1 fixes the voltage range on the SDMMC regulator.
> Patch 2 enables HS400 mode on eMMC. Tested on my M6 board.
> Patch 3 adds an IIO HWMON device to monitor the input voltage.
> Patch 4 moves a regulator that only exist R6 boards to the correct dtsi.
> Patch 5-9 renames DT names to match the schematics signals/nets.
> 
> [...]

Applied, thanks!

[1/9] arm64: dts: rockchip: rk3588s-nanopi: fix sd min/max voltage
      commit: bfec6462f52d507ed3e33a8c4adede1145ad9385
[2/9] arm64: dts: rockchip: rk3588s-nanopi: enable mmc-hs400 and add supplies
      commit: f49fd1a383e8434b4aac9bd3da54e494b5f1008b
[3/9] arm64: dts: rockchip: rk3588s-nanopi: add voltage iio-hwmon device
      commit: d57c7cf4dfcdb3ae16a57d9040d1feb0f405def9
[4/9] arm64: dts: rockchip: rk3588s-nanopi: move vcc_3v3_s0 to nanopi-r6
      commit: 40701510a5d315f0db6d2d854b9a7642f331f89f
[5/9] arm64: dts: rockchip: rk3588s-nanopi: rename sd power pin
      commit: 71b4ea97eced8d4f3f348bccae1bb407a3e65eee
[6/9] arm64: dts: rockchip: rk3588s-nanopi: rename usb host power pin
      commit: e50bd653adc33c17a85a464d289477fa81bbfaac
[7/9] arm64: dts: rockchip: rk3588s-nanopi: rename gmac1 reset pin
      commit: a86f4448a3f8edb73b07ab473169e7327cba7294
[8/9] arm64: dts: rockchip: rk3588s-nanopi-m6: rename pcie2 power pin
      commit: 4793b1de2ea0390e0b5698a15e877476a8a9cee8
[9/9] arm64: dts: rockchip: rk3588s-nanopi-m6: rename pcie2 power rail
      commit: cf63be594dfbf99c159135cb04c60e7f4f574d00

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
