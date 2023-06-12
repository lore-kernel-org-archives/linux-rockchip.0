Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5994C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 08:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SNCKoJtg1DBm/hU1KJsx7NfuYBQYIttJ1N1cR6No1A=; b=y7wnwGvsev6WHF
	DgW5htN91pBCH/LumqV02nlFDX1tZRHYHXnbr95R7uFUhpKIyyKhLyYbtT7bljDb3rKOJQXcX/MqK
	0UmzLIYkLxR3S3Z3HqhMMroe07H3T/BrcEsL5m7LkgTDJT7Hpes3Df6ggKxn9lJHCkM2G9cID+38h
	VQsQvEpsl23QRVdlfMfGJDGH6A5coojmUFedjsqeZXtoIDkGM3xQ8PPTTWfeyCgZAb+zgL45EE7m8
	dP1HEmiK9Aqp4mC+X3ryPBgEJg9slKUJ/8ZnMBvxfn/ZExpGmf16bfj1MwYrg7R4Ud+51ww/4GJu5
	vtVLs0i1xvqYAfnroP6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8d1e-0037vr-2e;
	Mon, 12 Jun 2023 08:35:46 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8d1Y-0037v5-2v;
	Mon, 12 Jun 2023 08:35:44 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f6255ad8aeso4715808e87.2;
        Mon, 12 Jun 2023 01:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686558939; x=1689150939;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MDpjBLQGC3gMirLkcnPZdPRPRXte4njImOP0NWtJdEA=;
        b=H6Ey9jTloHjRG1mS9yoFp7ky8frmRUP9qm3Ijv+dOndhI56cD8PHwjddcRnvGovfmL
         7u6uK6716blbkmPwBvIr0cotyJl/+jkpuRDvQNHbD+CQNkdnyfVcEGQ883ThMgbrKKbO
         9k/Yb4b8SdRYZukI/vJmfHKhavI1SZryIvnD7wDgjCLtToqyyXlr9PhQL45YeS2lQry3
         +uoWPZXwb56ukqTmxgoQ0CpPqn0TJc6gx8urk/FO93Bgw8pHv79vlR14dNpYHQrq0/3w
         e0L/p3q/b9nCXmxUgC66q6YNCy/o2dsZLJATRfDlBzl5oiW4klf6q/KrxZIbsnioUgm/
         +H0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558939; x=1689150939;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDpjBLQGC3gMirLkcnPZdPRPRXte4njImOP0NWtJdEA=;
        b=RYJh99FEtVz2oUE1XTpfinXws9WSQulyS5YNMEMNhNDyRIw2vhTyhNhnCum6/F6QZ/
         0qU726iFcKutuhV4qVfOdt5wp3Twv+g6MAZkRd7lkHNwFSMMeLFtvYid7Zgh3gBWy+8r
         w7ARm/C71OxAFOHykD2mSuIDSfw64huc5YduuIEp2bSnlTi7DgHFdc4AOuTP30l16ZIF
         He7l5YvszhgzqVqDUGOPqQQl30F70Nw+j/NfZKkYK0pD9dcXyvm4scQ4EMbyd1haaTtI
         hpPHuotb7MPkQi+XDJmT2sRfO9DwdGC+yHVJXfHBI7j+VadxzlxQlu7y/4LO4GTsS92o
         wAqQ==
X-Gm-Message-State: AC+VfDzT6VJcChN/A3nPtplyPRWk7AFiwxQa+2027v6377jBxpCVkH7P
	Mt8U2doeyHEpafwy9Mhy7Qo=
X-Google-Smtp-Source: ACHHUZ7QYZL5AtYxXYviU5KMKIXtoukGzE0SX6NjEUMs5Z9It2omQJA72i/UdaCfskj/t+1leyf9dw==
X-Received: by 2002:a19:6918:0:b0:4f6:19e0:8ab7 with SMTP id e24-20020a196918000000b004f619e08ab7mr3188712lfc.62.1686558938839;
        Mon, 12 Jun 2023 01:35:38 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id n5-20020ac24905000000b004eed68a68efsm1383548lfi.280.2023.06.12.01.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 01:35:38 -0700 (PDT)
Date: Mon, 12 Jun 2023 11:35:36 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v3 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Message-ID: <20230612083536.q3sq7w6cyiuxaqtv@mobilestation>
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-3-sebastian.reichel@collabora.com>
 <4c914503-c2e5-a5d8-97af-daaee0b4ec7c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c914503-c2e5-a5d8-97af-daaee0b4ec7c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_013540_945324_90900971 
X-CRM114-Status: GOOD (  15.43  )
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

On Mon, Jun 12, 2023 at 10:24:06AM +0200, Krzysztof Kozlowski wrote:
> On 08/06/2023 18:22, Sebastian Reichel wrote:
> > This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> > allowed clocks without bloating the generic binding, the description
> > of Rockchip's AHCI controllers has been moved to its own file.
> > 
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> 
> ...
> 
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - rockchip,rk3568-dwc-ahci
> > +          - rockchip,rk3588-dwc-ahci
> > +      - const: snps,dwc-ahci
> > +
> > +  ports-implemented:
> > +    const: 1
> > +
> > +patternProperties:
> > +  "^sata-port@[0-9a-e]$":
> > +    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
> > +
> > +    unevaluatedProperties: false
> 

> You should be able to skip this patternProperties entirely, because it
> comes from dwc-ahci-common -> ahci-common schema. Did you try the patch
> without it?

Please see my message about this. The "sata-port@[0-9a-e]$" sub-node
bindings could be updated with the "reg" property constraint which,
based on the "ports-implemented" property value, most likely is
supposed to be always set to const: 1.

-Serge(y)

> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - ports-implemented
> > +
> 
> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
