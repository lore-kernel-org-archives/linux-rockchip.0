Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AB89EB64D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 17:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2bvmygphhvPTKQn36S8qOFzGZyD/syPD8c7rNqfK88=; b=H/KeyvyKwsyzrv
	/nIqD+5dulzsJq/2Pi/e+tFhDrGouuUQRDdmQdd2ZVMeTUriR8NuzBgVz3FE70irzkCx3zNFdJx0w
	JiJXBmKyFvX63bQTfMS5Y4YolTb66etpIKa5nSPWg9iXq2VZUco/B3JUUiHGeB3q6k8vZ4CDcQdVX
	mqGywLeKu8oVtZf+6JHWJ7NYTfaOUb5ARasBpZi9GLGvnAkHhOrKHWOAG1MvGhg+JDZPtFPeFI0xS
	6Gr9iAYKEw4DmnNyP/kTZKtpVGnMq3/UrwGmfalWmelyQSnlbTZe25c6/OosfUw/fH9tHfqW1JU9l
	MDiHuXF/fgLar2ZPg04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBer9-00BtU1-2L;
	Tue, 20 Jun 2023 17:09:27 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBer7-00BtSF-0f;
	Tue, 20 Jun 2023 17:09:26 +0000
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-77e364a9a87so141765039f.3;
        Tue, 20 Jun 2023 10:09:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687280962; x=1689872962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=13Dm6ish5ljtrNKR8ShIOYakHPs79RL05/Hxe+Nwj2s=;
        b=XAgxqjXyl2EHOdFV+EP7nPzfnmh+huNPN/TWmYGcDg9G7XVgfZ+g67bzEQ+vYajFtA
         ++C9XvMapqrhkz9074xYah7A7KBa/rJu/IRFwL5Y8/6UBFrMoGNwal6bgd4E1Zqxwk8a
         C5EHLNsZm9tluDNIqnja9iXPQVGSg+9aiUDNoAs0q8bMkdic+bkXFfhWxrsodef2PARR
         o3Hovf+OwrKs0SWGm/OBrUpR74jHCBk1ciM256d5kSxewR8+Ci11OzflwBVvVvOVsTwJ
         Bbc416L+UA8hpUAAh0YIcnRmzcBg2+4oAQUjDQM0dQFuJF9YPmiNpQdhg93QebyQ477i
         sm1Q==
X-Gm-Message-State: AC+VfDz9cY0xtb6rVv/a+gWsA7aik9HIm5qBkVlnlMtlGBCiJdPc5/aO
	hqyvpN+pJlJl/WehJ4lAGw==
X-Google-Smtp-Source: ACHHUZ5lP+cTWutXtE25nut8TrfmSUmgxv8iwy7NyrWlNqCqNPgb4GFtdJW/ia41WEsVOwU5fBbnCA==
X-Received: by 2002:a05:6602:2995:b0:777:a581:e0b4 with SMTP id o21-20020a056602299500b00777a581e0b4mr13657910ior.14.1687280960608;
        Tue, 20 Jun 2023 10:09:20 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id h1-20020a5e8401000000b0077e35ffac2fsm780858ioj.32.2023.06.20.10.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 10:09:19 -0700 (PDT)
Received: (nullmailer pid 3834673 invoked by uid 1000);
	Tue, 20 Jun 2023 17:09:18 -0000
Date: Tue, 20 Jun 2023 11:09:18 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: dwc: rockchip: Add missing
 legacy-interrupt-controller
Message-ID: <20230620170918.GA3833779-robh@kernel.org>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
 <20230616170022.76107-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616170022.76107-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_100925_247922_CB6B323D 
X-CRM114-Status: GOOD (  14.93  )
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

On Fri, Jun 16, 2023 at 07:00:20PM +0200, Sebastian Reichel wrote:
> Rockchip RK356x and RK3588 handle legacy interrupts via a ganged
> interrupts. The RK356x DT implements this via a sub-node named
> "legacy-interrupt-controller", just like a couple of other PCIe
> implementations. This adds proper documentation for this and updates
> the example to avoid regressions.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 98e45d2d8dfe..bf81d306cc80 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -67,6 +67,22 @@ properties:
>        - const: legacy
>        - const: err
>  
> +  legacy-interrupt-controller:
> +    description: Interrupt controller node for handling legacy PCI interrupts.
> +    type: object

       additionalProperties: false

With that, 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
