Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6727CCA48B
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 10:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NppygiisLRBMULbEHwCW+ZtUUXddcb6+aC8e+1AWLt8=; b=Xe1OjV4zd0edGY
	R5jONDjgd07oSeptf5LagkOSCeRhL5QBuh5MZUaQzZZhBqITl8BvL0TBvN/wnhNV4A7raj7Za3+Q/
	iYbnyCflIZavMuicQX1W2EW5MDZgehAyieZp/DY4XFpJcGvK5P1XE/5N07KLTjGtIPaSfbBINy3gi
	auZ/EAhCCGp3K9qH5Zc71QD3itwVWIDPHcGi2IQ2Oknwf5EMv/UuTdkvL306RvhHVmHXSd2k19i5y
	U5nygCceZCXvCcA/Hnjn0ZZ7wVJQ7um4TiOu2S5YcBy9TCglbMCzhHjl5+eXP0KXI0fFiwSjaBz8+
	AhPxQ032FXqRJ8aEn4KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfPq-00000002hIG-043L;
	Fri, 16 Oct 2026 10:43:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfPo-00000002hHZ-30TX
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 10:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=C4YkMEnEcFAsesSJUaufOq7VhqrmQqlZmujS8ZU12sw=; b=kURA2vo25/m7MygP8q4xjQfS6F
	uI7afq3i8mNPC0EvyW06Lh7l2+eBBZYesQDG609B27+c9sh6Tkdcgc5uvG8W0lfJcBKsfuhg6fdTh
	4+KsWcBwvk/GZ3//TI38iToD9RouqsGnhTcXDJZp4ohP9e6JNOVUefJh2jKz123xjmjD1yDJYOj2D
	DZmDgn2xY5EopjWxjnwISIlVN89RexhoXPjy6kuuVB01fS+zh3KuAG1ZVHJ0Iliv8PZwbTfWDin7p
	DKqhQkpo98+LMwssVHtHnhSf9lvjH/13XL8Kp1RfvRjIbS7eV2//1h4lMWqq88oZhae4P8PZdzPUO
	NgbawDsg==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHfPf-00000001P4F-2suy
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 10:43:51 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4a16c1608faso10271445e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 03:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792147426; x=1792752226; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=C4YkMEnEcFAsesSJUaufOq7VhqrmQqlZmujS8ZU12sw=;
        b=JnLOtINQkuc89/x+8oAm+JVtma69/HdhGSkl9Mo5Ro2uvYWgdaiTF8Om/Pp0bw5kfd
         MhEyNR4BUMMny3hkz/mwf1Mz3LcQEJDDSGijopXnYXJXcf30dMMV7DrEFB1176HUPX4A
         lEqbjNZ+fGgGUVpPB6BVYeyI++tFo90pNOvW+f+MBWTs7tccqO1gYWReE6Mtb5lp1v2N
         zOpqIi/GWn5GnEf2Y2umIV27i0pthifJCHZqINqX4dZj7ik6gdEl0F0ZNamcs90Le5Tv
         WoJYgU/CnjfWSvvjOiytn8B7cnUOUBF44EoKN611430exWrjNqZyJwoKkSYb28Evu75X
         o2kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792147426; x=1792752226;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C4YkMEnEcFAsesSJUaufOq7VhqrmQqlZmujS8ZU12sw=;
        b=JeCZWeEoqB6qEvYctSBp8ynAqEnhBHpDssCN4zmWVr3gby2h8iVdCEDN5/VJdPEY2K
         vNf1PluAvsJcBquKsa2wmeWslHDUQ/nM9lKfFYd3vVfT0AIja0dZuPaAwNYs33AvFy4c
         tB4oX3mvQBiulXSv+n07O0qIj6m1Uvhr82CTgkcljUfq9QobJto16CQtScbeJ9OGznQt
         dH7tOF43zZDFd5QfwxbET8RKyLl3HfzxO1FS0jrVMb9HCOznEjmY5Ucf2eEqDcc9Hfrj
         RUzEkT1tsAnuPP2gQ7A4RC45Jwm9FOzastEmNK4SHNJvGToiGk2PvVv8K2pSgm4skymT
         MFdg==
X-Forwarded-Encrypted: i=1; AKwUvBzgFzSISCb/ia753vCiAl/i3iQDq19yqLRnDT4MgJrToFAhRza/JMIMTkxHw0kqhYmAdVM8/coyUR5ZqTJThg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJhZJ87r+92/Z570VvD/Y4oCyW4IP8QH9unQLfwObSS88cYXTUs
	iuFdTz7d9atF0vh08jcV7LOzqIbk3n3yoe796uMQiJL9yE3aIPTDN0gcD5FOxBhkWzc=
X-Gm-Gg: AYBFou22rLikJVIT7tRPIGw7WOXCLip4AUFN9Jxi46/6WMsw8vdnqKFkAUNgCINmwlS
	I7/dcmWldB8tDL/DnjFV9HEkZeYFRXb+q/t4mGPSbc7jju0+KiDc/pHwK82OtQ/u9SOaQ8vA+rQ
	hIIXaKhU4Z180q9nY1NV2yEi2EzjC5RaeuMpq8N+V9+fzgDsNr+cs+eRiSmyIUK9t3KXRfKhuyQ
	wURYAJTwoxq93EdshxYa9tEWNSSWFWdwYdUePZGzWHLT3wSZhKnDmX/4mBvsRFKWHR5h9Ivrjnr
	HYuEeDDatNb+WHI37G3Jh6SdqmvrajlyRlr6+AL1zSNOkJr+gvir1Sb5jr2+ergOdI7d6DJbscK
	IzDAmZS2j7yLpd1hOIWo0mMGyklcmqNDG5V9QJN4/xCMHNZATSOMdZyWkiNXAbhEcveVFCGMaWZ
	udOvyDYRlhfEUEOeSVdoAfFWNCSL5KlIlDttJ5u8sWIBZ0Wo1dFQqJdUe0MWch241Ydw1DtgISr
	gESuXbCDmyg
X-Received: by 2002:a7b:c3c1:0:b0:4a1:8849:17ae with SMTP id 5b1f17b1804b1-4a1c663b460mr49457595e9.1.1792147425952;
        Fri, 16 Oct 2026 03:43:45 -0700 (PDT)
Received: from [192.168.0.167] ([109.78.92.136])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4f9c41sm4500725f8f.38.2026.10.16.03.43.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 03:43:45 -0700 (PDT)
Message-ID: <f337f41f-2ada-4958-b0f9-379e78e96a3d@linaro.org>
Date: Fri, 16 Oct 2026 11:43:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
To: Jason Yang <jason98166@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_114347_855522_1B7B50E4 
X-CRM114-Status: GOOD (  25.11  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 16/10/2026 09:56, Jason Yang wrote:
> The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
> for DSI and a receiver for CSI-2, and two consumers can use them at the
> same time. 

Two consumers use them - which them ? Two consumers use the receivers at 
the same time ?

Its minor but instead of "them" define what the them is.

The single cell of this binding selects the mode and refers
> to the transmitter, so the receiver cannot be described.
> 
> Allow a second cell that selects the transmitter or the receiver. With
> D-PHY:
> 
> 	/* the MIPI DSI host, driving the transmitter */
> 	phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_TX>;
> 
> 	/* the MIPI CSI-2 host, driving the receiver */
> 	phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_RX>;
> 
> and with C-PHY:
> 
> 	phys = <&mipidcphy0 PHY_TYPE_CPHY PHY_DIRECTION_TX>;
> 	phys = <&mipidcphy0 PHY_TYPE_CPHY PHY_DIRECTION_RX>;
> 
> The transmitter and the receiver cannot operate in different modes [1],
> so the first cell must match in both consumers.
> 
> Two cells describe the receiver as well. A single cell keeps referring
> to the transmitter, so existing device trees are unaffected.
> 
> [1] RK3588 TRM: section 22.1 (overview): "The TX and RX only support
>      operate in the same PHY mode."
> 
> Signed-off-by: Jason Yang <jason98166@gmail.com>
> ---
>   .../bindings/phy/rockchip,rk3588-mipi-dcphy.yaml     | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> index c8ff5ba22a86..6e8cc56e4986 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> @@ -20,11 +20,25 @@ properties:
>       maxItems: 1
>   
>     "#phy-cells":
> -    const: 1
> +    enum: [1, 2]
>       description: |
> -      Argument is mode to operate in. Supported modes are:
> +      The first cell selects the mode to operate in:
>           - PHY_TYPE_DPHY
>           - PHY_TYPE_CPHY
> +
> +      A single cell refers to the transmitter and is kept for existing
> +      device trees.
> +
> +      The second cell selects the transmitter or the receiver, so that a

The second cell, if present

-> you want to make clear it is optional.

> +      MIPI DSI host and a MIPI CSI-2 host can be described as independent
> +      consumers of the same PHY node:
> +        - PHY_DIRECTION_TX
> +        - PHY_DIRECTION_RX
> +
> +      The transmitter and the receiver cannot operate in different modes,
> +      so when both are described, the first cell must match in both
> +      consumers.
> +

Not really related to this patch but how do you envision that 
requirement being enforced, per driver ?
>         See include/dt-bindings/phy/phy.h for constants.
>   
>     clocks:
> @@ -82,6 +96,6 @@ examples:
>                    <&cru SRST_S_MIPI_DCPHY0>;
>           reset-names = "m_phy", "apb", "grf", "s_phy";
>           rockchip,grf = <&mipidcphy0_grf>;
> -        #phy-cells = <1>;
> +        #phy-cells = <2>;
>         };
>       };
> 

Looks pretty good to me I'm interested in adding an RB here - please 
include me in CC for next versions so I may do so.

---
bod


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
