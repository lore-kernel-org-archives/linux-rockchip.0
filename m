Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB56D2C552
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 13:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgvoDBvwk5arUEMGqW6SPrifR6kI35CgoxZeQC2lZ4Y=; b=4DZQ39pJcckKkm
	f2Ja1zd6f21Mu3Zc2dR8kIBViNMaH9MaQijFBDHkl71iNWq3E/KJvk7cyBf2/bksTdXCHKqD9xMW8
	RXqZfGA5HFiFRi9Jn05UAYVhBtziG06FgC+9/srWDP2HvXvGmCDcCBhmjkkbuc2lPQYpf3L+gjsq0
	Ned0mfKQ/481OgIf/u1DRR4fiNYZ3TqoDv9QEj8S56AeVytVhtVkIjK4ko1Nuu81Zln3a67pYelWJ
	AssqphVy85NlbalOXBNq9VFK5KGbdr2VWsiLM22tgNsHVtYuSfjLwb+Jmg3tj1OoaXd5n/hFyNVNO
	XlRTqsKSBlfGroMsfAuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3F6i-0000000Az2T-2DSl;
	Tue, 22 Oct 2024 13:39:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Eyh-0000000AxY3-0IgL;
	Tue, 22 Oct 2024 13:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=936xC21AgwcciWwjdDPzM7HXD5fwzfqYATKWEq7i4NY=; b=SRItfhnJiuGRI9iIcdo6Aw3B2u
	sFIulNb/Xv0N/3sFKtpSgsAcTQ84WINUwclqVa9BSho6pc7eRVZ2HJDpxcVZy1qvgIvMEpchr5z4L
	JRkEQr9meMdqKMsXJlYse8YD20PcW2HEv5Nd0DAamZvnng6pF3bWwXxRNXS4g1v0bp5wcEBtd3VsJ
	3G1C5Zk0QI+w3HGNJIp2bPUfTCs+ybQg1xXYvLaen9r71m1W3bPh05dasqoNDYezKIIRunJoWmp0t
	toUjyVu+c/oJLmfOCoj27jz+Ng7ASKbz34+wKSgWmM6WaU1CZKI2RJkGgUAG0YZW7K1Jq5SSf/vVS
	+RJ/3dCQ==;
Received: from [213.70.40.217] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3Ey9-0005Km-GY; Tue, 22 Oct 2024 15:30:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 Andy Yan <andyshrk@163.com>, Tim Lunn <tim@feathertop.org>,
 Jagan Teki <jagan@edgeble.ai>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Jimmy Hon <honyuenkwun@gmail.com>,
 Cenk Uluisik <cenk.uluisik@googlemail.com>, Jing Luo <jing@jing.rocks>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Cenk Uluisik <cenk.uluisik@googlemail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum to
 Orange Pi 5 entry
Date: Tue, 22 Oct 2024 15:30:40 +0200
Message-ID: <12536302.O9o76ZdvQC@phil>
In-Reply-To: <20241015192905.28969-1-cenk.uluisik@googlemail.com>
References: <20241015192905.28969-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_063115_197672_796E0B2E 
X-CRM114-Status: GOOD (  20.02  )
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

Am Dienstag, 15. Oktober 2024, 21:28:35 CEST schrieb Cenk Uluisik:
> This extends the Xunlong Orange Pi 5 device tree binding with an enum for
> the Orange Pi 5b, which is implemented before the device tree.
> 
> How does this board differ from the original Orange Pi 5?
>   - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
>     slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
>     for the WiFi.
>   - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
>     "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
>     hooked to BT_WAKE_HOST.
>   - builtin eMMC storage
>   - no SPI NOR flash (u-boot, preboot etc. initiates
>       from within the eMMC
>       storage)
>   - ap6275p Wifi module (like the Orange Pi 5 Plus)
>   - builtin BlueTooth module
> 
> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---

In its v5, this patch received [0] a

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

which overlapped with this version getting sent out.
The patch contents look identical between that version and this one.


Heiko

[0] https://lore.kernel.org/all/172902320363.1787838.552661206100007627.robh@kernel.org/


>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 687823e58c22..62bb6587da8f 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1051,7 +1051,9 @@ properties:
>  
>        - description: Xunlong Orange Pi 5
>          items:
> -          - const: xunlong,orangepi-5
> +          - enum:
> +              - xunlong,orangepi-5
> +              - xunlong,orangepi-5b
>            - const: rockchip,rk3588s
>  
>        - description: Zkmagic A95X Z2
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
