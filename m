Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44262C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 16:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAcI9okbuzrfPgePHk2fqJB2CMwmqr+7NOOz5dIhSfs=; b=lJqxTvgkEw+zQ/
	JugcP/EHl4dO9b0zcWRnhfTPYWsBAvQADJy6tb/P4AF00GXRYB3aCfq4n6FqLo43o+K7l/WCrHYpe
	0MiLHXKrwkLUEU4+95CG7mtI0on33H6ubmrpDjNvTVDzoDzWIMqaK94LRZp8zulK0ql4wXj7aGGyu
	QWysMhrRf5Aj3BDNMTrHkGmwpFY2C9HDkYNe8L5DcxjF1hEQuFqNYyVGCwOfSlcsmkkl7PEW5NHDY
	6dayDUHaSwTAIRQFm5usN+X0u1qKsXzoES9rPwgeuWpR7fQ3viQXrCfu4gS+Kl0uKDKS6WjvJpcuZ
	pDztvAGTu/yCqO7BUfKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0Xb-0000000GVli-0g1U;
	Mon, 05 Aug 2024 16:26:35 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0WG-0000000GVKs-394j;
	Mon, 05 Aug 2024 16:25:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9E51BCE0B4B;
	Mon,  5 Aug 2024 16:25:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E788FC32782;
	Mon,  5 Aug 2024 16:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722875109;
	bh=zbN7KVijszQ1S5hPulI5G2cAOfeTI15A4gHSS9o6zoc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GDhA+0oy7dmVAqooLzpx75FrWIZ86ZsUPeAHEKk4vFckpdf1AWNhNCB8poPpSJCBa
	 6HPWSyJGI89mOcLXdpiUgRhnrLMTIU4nC8t/ofWGJZXKL4ct/PE5d6E8VA6m2vBlnG
	 4TyiHhxN8QkIpuyLaEwBaZ54naGdFn4MRvLbGfCILmGJANq+nXlv5yxTAHPmfrgMqe
	 hUzVOMwPtV/eMREmqvz7Hxaq7TKmx/2zOorqSSdclUwJzTwIjtHEDKFguC4OvEHvBQ
	 qayHackhNfaS5qn1jRNO0wcyQ93Qg5jsA6HCrThZRiMPyHeoN5Zz7OY/nmPhrGRVXo
	 u2KcG0Q/7ylpw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
References: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
Subject: Re: [PATCH v2 0/4] Add clock provider support to Rockchip RK3588
 HDMI TX PHY
Message-Id: <172287510559.465699.10935386894693742033.b4-ty@kernel.org>
Date: Mon, 05 Aug 2024 21:55:05 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092513_002277_37839C34 
X-CRM114-Status: GOOD (  10.61  )
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


On Thu, 20 Jun 2024 03:36:21 +0300, Cristian Ciocaltea wrote:
> The HDMI PHY PLL can be used as an alternative clock source to RK3588
> SoC CRU. Since it provides more accurate clock rates, it can be used by
> VOP2 to improve display modes handling, such as supporting non-integer
> refresh rates.
> 
> The first two patches in the series provide a couple of fixes and
> improvements to the existing HDPTX PHY driver, while the next two add
> the necessary changes to support the clock provider functionality.
> 
> [...]

Applied, thanks!

[1/4] phy: phy-rockchip-samsung-hdptx: Explicitly include pm_runtime.h
      commit: 1b369ff94bc36d2e16c8a91c0ea8ebd329555976
[2/4] phy: phy-rockchip-samsung-hdptx: Enable runtime PM at PHY core level
      commit: 10ba8479f460e9256f7d884dc1b7d89006a89c7b
[3/4] dt-bindings: phy: rockchip,rk3588-hdptx-phy: Add #clock-cells
      commit: a652f2210054276990d45626a3b9ad5c99465f5a
[4/4] phy: phy-rockchip-samsung-hdptx: Add clock provider support
      commit: c4b09c562086f32588d962d30d0b7e93fe3e7cbb

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
