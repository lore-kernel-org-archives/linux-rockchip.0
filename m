Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2669BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 17:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qH7ty6wLcxug0/BhZNS35D0+gwh9KyRW3RGmtkO5/Y=; b=IA2YozAnTuIrnF
	AtI0V/AbFTdrLyvT9QQOMpnctNjzaVl3vhRBpZgTqEUOcfUP3S0Ey5kpE17ROAaJcjmiQpRElZDRG
	n9S9/VtrwsFFx9HtZ7L8CVh/Ep7uSEMml1A2UQ7J74JKz3+yVjBm3MLA4kLzf8niQ6U12y8XcLmh4
	kzDhCSSwNviojlNWtVL5eqmMK+PpEb8pHr8L0yxnYA5ycjI1t0i9atKBvLNPGnO5iAfYKLgGNCoZT
	nNjrpWLYMpaKMETH3jk8rfbIvMLHR74aNcDaReHkhcMB/mmLYPDPGoYpbtT9KvuNDwNlId0JWCcz6
	IEuc/scMQRT4PNe1iaZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nf3j1-006lyu-C8; Thu, 14 Apr 2022 17:57:47 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nf3fI-006kJP-4y; Thu, 14 Apr 2022 17:53:57 +0000
Received: by mail-oi1-f179.google.com with SMTP id bj24so744039oib.11;
 Thu, 14 Apr 2022 10:53:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LDb6a54Kbel4HFnWgqEnQRC1KuI8HmYdyvPnVqEyvNM=;
 b=bkch0cDeQ/xpu2sgstAdgH3SezeBVaoikcY3x3b2FgbF+UJV7i2vsyM8S97KHyEFS7
 WXY5NVYtXix56S+3stVcZcc+5fR82b5uaqpUyOZPxa+kkDl2f/9Hi0mbIpnKiGMH2tjM
 iwtcMqb+uNW2K1SVIU7XNDv3n6tGVeBcLD3GRQ3+oN+gcfeL2y5YNHIT4Azg9XMONYjn
 5+qzyBxXDY7TPI9Tw6N+p9XRrzrGbC0sTHlToePnaXU9DNUzI1++1VI7tP9ljHyIU4dj
 r25yqZqd00TJjodTCtbEPCyCBQDhRrO9p8YeDGWmZ5A8fbDUzh/xe5oGAU3EyJgj1Ci5
 ZFrQ==
X-Gm-Message-State: AOAM531T5vpcE/KAF1kym5JLnznmsFgfw4GVbcHxCYBoeXmuX10JKX8V
 Q/FZUQJ9Xr3euqFfsH9tRw==
X-Google-Smtp-Source: ABdhPJyG5OxYiytphJidoOSVhiPpd6J458I+J5CA5KHBqlbSmUD1awtoYmV8QXhgL5wR6MeqIR3cOA==
X-Received: by 2002:aca:b507:0:b0:2fa:6d40:4b40 with SMTP id
 e7-20020acab507000000b002fa6d404b40mr1885135oif.246.1649958832439; 
 Thu, 14 Apr 2022 10:53:52 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 nd8-20020a056871440800b000e2b75759f1sm891690oab.38.2022.04.14.10.53.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Apr 2022 10:53:52 -0700 (PDT)
Received: (nullmailer pid 2307872 invoked by uid 1000);
 Thu, 14 Apr 2022 17:53:51 -0000
Date: Thu, 14 Apr 2022 12:53:51 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Message-ID: <Ylhfr51RME+YAjOG@robh.at.kernel.org>
References: <20220413133731.242870-1-pgwipeout@gmail.com>
 <20220413133731.242870-2-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220413133731.242870-2-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_105356_233919_6494800A 
X-CRM114-Status: GOOD (  17.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Apr 13, 2022 at 09:37:28AM -0400, Peter Geis wrote:
> The snps,dw-pcie binds to a standalone driver.
> It is not fully compatible with the Rockchip implementation and causes a
> hang if it binds to the device.
> 
> Remove this binding as a valid fallback.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 142bbe577763..8dc11fed8a3c 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -32,7 +32,6 @@ properties:
>    compatible:
>      items:
>        - const: rockchip,rk3568-pcie
> -      - const: snps,dw-pcie

With this, you no longer need 'select' so please drop it too.

>  
>    reg:
>      items:
> @@ -110,7 +109,7 @@ examples:
>          #size-cells = <2>;
>  
>          pcie3x2: pcie@fe280000 {
> -            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
> +            compatible = "rockchip,rk3568-pcie";
>              reg = <0x3 0xc0800000 0x0 0x390000>,
>                    <0x0 0xfe280000 0x0 0x10000>,
>                    <0x3 0x80000000 0x0 0x100000>;
> -- 
> 2.25.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
