Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83DC4CD8C92
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 07:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkRG0cltf7J3DheedH3d1zfdfwd6HlNVW4Z0JWBHxHA=; b=vcX9TYFFhH8fCf
	x1DmqZvQKnmLotWszunV6MKZ7n38uPskpOtLvjGqhxgjLHaIvJqAiCKRFmXuUlUeEA/dMhmHKuFj3
	Kf9LhrvZgQ1gg0TbiuaKj+Z+8KrfYJLq09qYgkzZUKQLg5KLUpSzvOiEw4KUs3Yxg4R1idMDmx7Fs
	/8raP1cGuhB9eV/n8wCHp8cWDtuQ9eeiL+KvwQRjRtWDFbJeVCDp009gvVvlgHX2GUMmc4lMSCaEs
	Y9TmHV3Iqt/dSCZLK9SJSWmwvPuY5eB8uZ+Q7vV0QDCFXGRummrWL7gWBGnAP6IPydD4sK+0/h9xE
	B05aXLMj9VgLiKwQ+meQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWUs1-000000031Nt-2g7S;
	Mon, 08 Jun 2026 07:58:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWUrz-000000031Ng-3RQs;
	Mon, 08 Jun 2026 07:58:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D350D6001D;
	Mon,  8 Jun 2026 07:58:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90BDF1F00893;
	Mon,  8 Jun 2026 07:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780905482;
	bh=2c67zNsS0HvgzZNh71DbxgcmS8tcATdydWycpSmMb/E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hT/m1biDqcx4HHvNJoG2hykcnOUtT84VJfuAbUwLAIKu4Hnk+ZXo5P2QkdZjY2wXJ
	 LdNNSwOMzQPatplpQzEha26AG7OPbQVz3klo+T5aEl0HwCxAddaCbz5ZRIfKNxWzWz
	 0vFCGwQAfOg8jMP1XJXLNMehOB7TVWR2I+ND/wvs8voq9X0rTemT/UcfmaEzCpggbT
	 ke4FGNYQv+Slne1BYStrCVIXlSI/HB0utqa8HXEaYSjB8gMD0B52zJEKzgRj9Lrrvr
	 CvB3tA/oX8qHrsCCqC/hu4kEihVSQ4qi0YlZmRTVFoGqGs0eZ8i73O1P83/zNi0U/q
	 hlCpcmnqLyiDA==
Date: Mon, 8 Jun 2026 09:57:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ricardo Pardini <ricardo@pardini.net>
Cc: Heiner Kallweit <hkallweit1@gmail.com>, nic_swsd@realtek.com, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: net: add Realtek r8169 family PCIe
 Ethernet
Message-ID: <20260608-armored-ultra-uakari-ef1d77@quoll>
References: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-0-8a8857b39daf@pardini.net>
 <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-1-8a8857b39daf@pardini.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-1-8a8857b39daf@pardini.net>
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

On Fri, Jun 05, 2026 at 01:49:08PM +0200, Ricardo Pardini wrote:
> Add a binding for fixed/soldered Realtek PCIe Ethernet controllers
> driven by the r8169 driver (RTL8125/8126/8127/8168 and variants).
> 
> The "pciVVVV,DDDD" compatibles are the Open Firmware PCI Bus Binding
> spelling, auto-derived from PCI-SIG vendor/device IDs, but they still
> need a binding when used in a board DT - analogous to "usbVVVV,PPPP"
> compatibles documented in their own bindings (e.g. microchip,lan95xx)
> so board DTs attaching properties (fixed MAC, nvmem cell, ...) to
> these PCI function nodes can be validated.
> 
> Suggested-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
> ---
>  .../devicetree/bindings/net/realtek,r8169.yaml     | 54 ++++++++++++++++++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 55 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek,r8169.yaml b/Documentation/devicetree/bindings/net/realtek,r8169.yaml
> new file mode 100644
> index 0000000000000..6923211ff4c93
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/realtek,r8169.yaml

r8169 but no r8169 devices at all. This must match the device name, so
most likely:

realtek,rtl8168.yaml


> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/realtek,r8169.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek r8169 family PCIe Ethernet Controllers

rtl8169? 8168? There is no r8169, is there?

> +
> +maintainers:
> +  - Heiner Kallweit <hkallweit1@gmail.com>
> +
> +description:
> +  PCI function node properties for fixed/soldered Realtek Ethernet
> +  controllers driven by the r8169 driver.

Describe hardware, not drivers.


> +
> +allOf:
> +  - $ref: ethernet-controller.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - pci10ec,8125  # RTL8125 2.5GbE
> +      - pci10ec,8126  # RTL8126 5GbE
> +      - pci10ec,8127  # RTL8127
> +      - pci10ec,8161  # RTL8168 variant
> +      - pci10ec,8162  # RTL8168 variant
> +      - pci10ec,8168  # RTL8168/8111 GbE
> +
> +  reg:
> +    maxItems: 1
> +
> +  local-mac-address: true
> +  mac-address: true
> +  nvmem-cells: true
> +  nvmem-cell-names: true

Drop all above

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

uneavaluatedProperties instead

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
