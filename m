Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05ECDCD6E7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 15:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3O2YofR0F6j6946KzOypljaWybcDvIC008Vym8zCI9g=; b=0Jew2/M4ZgcO9N
	n03YTz9retu8wIpfqo26EdmoAhwp/Ul5ScLPY2BP4NaJ3VRKuzNEh08LvVnQOhs1G4V4wIImlUPkY
	9Emq6JUEz0uqyyJpUrPI+zs6zjcT/F0V/iuxTJYR8iZjsNU6UkkSXIFjVB1+DiQac9eU1ydfi3b58
	QJQeWF21xXApBV6LnTXFcFqWr1DXSRWZVgjttTp+fVpWx92eKJgz30y5975f/J0pa7lcO7tE+wMGq
	eHK9eay/wAqC5nFrn2sxW+Y7+c/e/n9UEkXiewWAbKapymV71+G+ZvfURqUTs35XSuDcXGbXmFVM8
	GWMQimtEm0QCt6pbrvqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVWmI-00000000rM8-3QJx;
	Fri, 05 Jun 2026 15:48:10 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVWmG-00000000rKt-1rxQ
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 15:48:09 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-45fe59255beso1084364f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jun 2026 08:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780674486; x=1781279286; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YIe9PJTXxBHQ0XX31cWOxKtFhK/4Vta8bzAs10DDqbM=;
        b=hMkMvIjSnvZmuiVxLb8Mfk7NiurW/HFW4GRASMmlg0n/oz7MTGvqUTHOtbUQAt0J+8
         HZUtMa1qU/IEb0oeYUpAYMZRptXH18oNPiHcK2C4/GcVUVb/ASOBRbnipW2EIgyXdT7n
         Ixvps8Rbvzu7cS1EQMrbBvNlbateIA3G7w01m0WhgyfbnC6YzU4XqBNTZKt8r5/w/HGB
         uCqm3etmXXhmOzNwJsTXo/Yy+XH4/yA6lDCabrZV7BHmmiG33LvDHMQqSBHZjwG3ORiP
         yWl1LIOfeE1GLOyeSDzTa7Ubm2CKX7Y30kIRhgA4Fa4oLNMLMTMhf7G5hGHYD4nsBLY/
         Rkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780674486; x=1781279286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YIe9PJTXxBHQ0XX31cWOxKtFhK/4Vta8bzAs10DDqbM=;
        b=MVU6NzILyF0zyphie3amcXXnUN506/a/pQTC7YJ1LjN3z9l6pbi9jgpX3YWv8CLFQ3
         //eglM25q5khScB+zFAPEGciyMrt/tTHhbWvm90kVZGZ9ts+IDyyc1qppmjDwJHDPiu5
         colixzTT/mO5gsAqVw/hh81BuC87lBNlGK/+4VcYBQW1z4piAXOfMGaKjU9uCAkvPuke
         +VeqZB6VwzOU2yPtOST+zXGRQGxgqHIpragahzf6L0ACKbGr1Vbw5AGXayPpmnot8xPW
         VuvbjZ4s4NH4Ko+KCat0qCG65x00ST/6KiqiFdicqs23Y4ChpedWgY8sYjKmrHP29yaW
         /g9g==
X-Forwarded-Encrypted: i=1; AFNElJ+QYfxH5rkmYub7KVNRVy5tUYtbfVKQDS8sHCxT2X47+o1vQU+Q5SZKhcBRcNx6ctWxTgI+4FOAq7NiHo8yEg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8i2MwicKipnH5r55qgty1PIbOnJsuE5uk9lBDelezeXYI1ZPa
	fLmotkUFnpXtxPXsJ/AEmdht5Ila0rUiq7CqPBvdsasRC7quY331pyeO
X-Gm-Gg: Acq92OHrD8b/QQ2eL8ivEeNDGRbbuthnvBrhRC8RwboB+evUNGIojTrcNbHD2obmIdR
	TM8QZwfKmHgYM0Sw26IWXsVtrF6bGbuRqdWsEpAn0kNFhC9KgM68uQ7w2r/LzT8ofbNi1MVrL6t
	6EnJ4s+N1bfs8AW9t5/8ngKlqTu5pntU5OFSWeVSJ18NVZVvz4wOZ1XNxXObftPfM2C19ygb9TK
	Kz5ZTIx1eCqkPDaF/b1abZ1O1Bsc/bnGvPGr8cveNBYScryHTKaGbe2Shpkiekhbr7hBysJ0h3j
	wR3CHjILA3q3KQwP6/W+pZTN+f6UDHLjI1nAlWqrkL+5XFQA5UMlMmAO1tBh3L7dHlJjR5WD8F4
	hXU/VaWR5KRusq/4X1Q5BlNqI6ew3iA5yWz/igw1ru8xHtivYY1GLpjBF1BOjGSBLxvo21KQl9B
	m4ngjsQ1Pv3WWeluz6Qr5+gawhNbAHWs6dJBEOcysPRzoM2QvwEawz5/pU7DyVZvMfjtLqSp8Aa
	FSjUz8iH40oFqlGj70++mUsG+fihORP010R7EHf50FW6MJM8wO1EkhTcD3NrQBv7KQeL3AZauUt
X-Received: by 2002:adf:ef88:0:b0:460:1e9d:31a5 with SMTP id ffacd0b85a97d-46030631ba3mr5236539f8f.35.1780674485919;
        Fri, 05 Jun 2026 08:48:05 -0700 (PDT)
Received: from ?IPV6:2003:ea:8f14:5400:d967:4840:e11f:4ad4? (p200300ea8f145400d9674840e11f4ad4.dip0.t-ipconnect.de. [2003:ea:8f14:5400:d967:4840:e11f:4ad4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dc412sm27730653f8f.4.2026.06.05.08.48.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2026 08:48:05 -0700 (PDT)
Message-ID: <b7cc8eba-ff6e-417d-8e74-b3bb24e08a26@gmail.com>
Date: Fri, 5 Jun 2026 17:48:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: net: add Realtek r8169 family PCIe
 Ethernet
To: ricardo@pardini.net, nic_swsd@realtek.com,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-0-8a8857b39daf@pardini.net>
 <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-1-8a8857b39daf@pardini.net>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-1-8a8857b39daf@pardini.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_084808_516928_510AB28A 
X-CRM114-Status: GOOD (  20.44  )
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

On 05.06.2026 13:49, Ricardo Pardini via B4 Relay wrote:
> From: Ricardo Pardini <ricardo@pardini.net>
> 
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

The of node seems to be created by of_pci_make_dev_node(). But this
function is called for bridges only in pci_bus_add_device().
So where is the node created in your case? Did you test node creation?

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
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/realtek,r8169.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek r8169 family PCIe Ethernet Controllers
> +
> +maintainers:
> +  - Heiner Kallweit <hkallweit1@gmail.com>
> +
> +description:
> +  PCI function node properties for fixed/soldered Realtek Ethernet
> +  controllers driven by the r8169 driver.
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

This list reflects just some of the PCI id's handled by r8169.
Any specific reason for this exact selection?

> +
> +  reg:
> +    maxItems: 1
> +
> +  local-mac-address: true
> +  mac-address: true
> +  nvmem-cells: true
> +  nvmem-cell-names: true
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pcie {
> +        #address-cells = <3>;
> +        #size-cells = <2>;
> +
> +        ethernet@0,0 {
> +            compatible = "pci10ec,8125";
> +            reg = <0x10000 0 0 0 0>;
> +            local-mac-address = [00 00 00 00 00 00];
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index b539be153f6a4..6341de4fadb6c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -134,6 +134,7 @@ M:	Heiner Kallweit <hkallweit1@gmail.com>
>  M:	nic_swsd@realtek.com
>  L:	netdev@vger.kernel.org
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/net/realtek,r8169.yaml
>  F:	drivers/net/ethernet/realtek/r8169*
>  
>  8250/16?50 (AND CLONE UARTS) SERIAL DRIVER
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
