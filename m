Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 356D4C25B67
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 18:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LL5/ppRiNqNTkEvhe1TRe8y96O9MGS7uyI1PN4clag=; b=FQ1oKpVy+1xFLZ
	ESUvufNo+lQH6VhPujsN6MyipjQ4M4KEzuofoyuBAYU529oGXLtn0KyA0srsZSIl7zUHKwFP6ou49
	zcquIxlu/Nvv6C+I9/plUC/fqzY1KQnqVpjdIw4jQ114AMpzFGOd8gz4+MDDHVz4TTEIvbqeqWzJj
	iHQFYCmKtMKZGJC+gJ+lAbuu6AwjoJ2U907iWAmuI6JiRxGoJRg8cBVbDV5jk3m5vJvMCba4dZQVt
	VMxwBhitQXkZiQ7qx8H81kC9C0C1/2M5QLJSgCvgioRJP4TcIr7BmQ6M85eM2Iv7TXi9NH1HZulyT
	UTrVMIxN/dG3lU7uHApQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw4yD-00Ez0m-1v;
	Thu, 26 Oct 2023 18:20:37 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw4yB-00Ez0M-0v;
	Thu, 26 Oct 2023 18:20:36 +0000
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6ce2eaf7c2bso787186a34.0;
        Thu, 26 Oct 2023 11:20:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698344433; x=1698949233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ood2wjAFr9c2YYzIF56zDlRuErbteiBNJ4oHI3QTnvI=;
        b=w9Sa56J+pgeviGzevLC5LVTUWLJniKV5kIAhG9eJi7Nj9SD7ajLGnIPy8uCEDYVCxu
         ANGmiv7WJWNJcqtaNKFaAWUI65tjIHN8bH4Nl0zLDa48Xc3cJmrl3vwkmQszVdS+sGqD
         Vf+Wi06K6rYPGmqL8+1Ds+iM8I9OPMyI0KXwbCxxJM9rgVmgvSjyMGL+VCTMaCJbtJHq
         rBBVDtXnSZ+ZSdDQGrdpwU60sh7GLRFfCsXmY7irEmC57H25dMi/OngUxck9QUgWSpLT
         9JfC0o5xU8Tdb0PY+DV7D7jv27I4MuIjxITZU7PQr0UF6zBXtqVqent/WMmOBT0rrNbb
         rXoA==
X-Gm-Message-State: AOJu0YycxH3gcWxbVSALg1L2RJJyNcofZe6mBtZiRD7z4mu8oYNcJcxh
	oxyd53Dl+Yjboe3UvSP0SQ==
X-Google-Smtp-Source: AGHT+IFilH+8BNmVOEr0Rff4h4fNbwordTsCWo+2TOP8WEVPgauyDgRPInCa2nkoy6QxT5B2QVDx6w==
X-Received: by 2002:a05:6830:270b:b0:6c9:efe0:261f with SMTP id j11-20020a056830270b00b006c9efe0261fmr176796otu.12.1698344433307;
        Thu, 26 Oct 2023 11:20:33 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g1-20020a9d6481000000b006ce4612fef0sm2184819otl.16.2023.10.26.11.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 11:20:32 -0700 (PDT)
Received: (nullmailer pid 4138902 invoked by uid 1000);
	Thu, 26 Oct 2023 18:20:31 -0000
Date: Thu, 26 Oct 2023 13:20:31 -0500
From: Rob Herring <robh@kernel.org>
To: Niklas Cassel <nks@flawful.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Niklas Cassel <niklas.cassel@wdc.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: PCI: dwc: rockchip: Add atu property
Message-ID: <20231026182031.GA4122054-robh@kernel.org>
References: <20231024151014.240695-1-nks@flawful.org>
 <20231024151014.240695-2-nks@flawful.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231024151014.240695-2-nks@flawful.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_112035_326993_B9142EC2 
X-CRM114-Status: GOOD (  17.59  )
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

On Tue, Oct 24, 2023 at 05:10:08PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>

The subject says 'atu property', but 'atu' is not a property.

> 
> Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> using:
> 
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
> 
> and snps,dw-pcie.yaml does have the atu property defined, in order to be
> able to use this property, while still making sure 'make CHECK_DTBS=y'
> pass, we need to add this property to rockchip-dw-pcie.yaml.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 1ae8dcfa072c..229f8608c535 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -29,16 +29,20 @@ properties:
>            - const: rockchip,rk3568-pcie
>  
>    reg:
> +    minItems: 3
>      items:
>        - description: Data Bus Interface (DBI) registers
>        - description: Rockchip designed configuration registers
>        - description: Config registers
> +      - description: iATU registers
>  
>    reg-names:
> +    minItems: 3
>      items:
>        - const: dbi
>        - const: apb
>        - const: config
> +      - const: atu
>  
>    clocks:
>      minItems: 5
> -- 
> 2.41.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
