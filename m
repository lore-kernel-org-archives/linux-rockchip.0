Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7067AC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+3L4CsvJ7oa8uYjExgUJ/l1dvvAiTvdNyJiBtmxqYA=; b=p9zKCf9INO7BOd
	7Ejg1+JazIHrjm4kAqLVfBSgFThedsf8NrBCsYDTDKm9Ty5WyU56godJBU93pd65h7Os2Y4ODFPvy
	yhtd/16d5q9scoeveWa2kRvAgk2UBt1zpZKgr4eH3Yx0u+PHZsGV4193wI58DfQRYlqgf3MFzTsio
	HSDPJ5lmhGir3DHx9dSzkdaC0GPidNBo2Ry/Dn2ejbpe2sA0gSivUvDvBx0nByCeAaWoXDGZu7v7J
	tvNjUPgYfNvOjrgUDnGoPWdmuyP5N41C+nQOkrcXirAA5M43qoadCHu9kW3YUis20/ZOio3/49uu5
	vRiCiRku1t8xQB+xAVxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1F5f-00Bc5P-UV; Tue, 14 Jun 2022 22:32:51 +0000
Received: from mail-io1-f45.google.com ([209.85.166.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1F5c-00Bc4K-Tm; Tue, 14 Jun 2022 22:32:50 +0000
Received: by mail-io1-f45.google.com with SMTP id h8so10903382iof.11;
        Tue, 14 Jun 2022 15:32:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CVcb2QfZlvcldcNaLh32HL82gx/d45G76khp2L61DK4=;
        b=h4smxfcnhJxlQX6lpfCY+j3RSL3wCDhThYdq63jRKjmw/pGPuaM+G13bgpJm3pdk5y
         /nazUwE4YLS2W7WY/gqMYi7iP5D9ExydFDkYie/UefWux8Zsz52rf6hMLs7s1iJV5Ubh
         XU/0NWnm2DSqYS/WdTJHp6JAFNWsCIn5wssJWywbnKeUCYtXcAF9y/Dd+qaPHiijhANP
         xBaSd7fy+tN5TDbFSNFSvjECxnWI6OYbPFns0EXiMZpMtHwpmopnIKbBnMeTnYZty+bf
         i0qhdDcp/ftBDC0KFCcONnvkHnhgVEJhEqV9lnFOyV7hIWkVbn3WLSrgI/u4mGLaE1dg
         hOrg==
X-Gm-Message-State: AOAM530mjUXpKgXZX+X12Qwkc+y3T4tEfZCYJyyLTZM5yZitJjIk1r03
	uMckbVqkdeyRLzg4E5TJsw==
X-Google-Smtp-Source: ABdhPJyq0EVA3Gxzc2qJ8HO4/M8DLzAPSmeeI6l+hyZb/y7hNm8hyd6w4gg3LC5iya2L+50YOqknZg==
X-Received: by 2002:a05:6638:1411:b0:331:ac08:5ae3 with SMTP id k17-20020a056638141100b00331ac085ae3mr4141226jad.162.1655245964991;
        Tue, 14 Jun 2022 15:32:44 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id u9-20020a92da89000000b002d4032b41casm5974649iln.32.2022.06.14.15.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 15:32:44 -0700 (PDT)
Received: (nullmailer pid 2848738 invoked by uid 1000);
	Tue, 14 Jun 2022 22:32:42 -0000
Date: Tue, 14 Jun 2022 16:32:42 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>, Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>, Frank Wunderlich <frank-w@public-files.de>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-mediatek@lists.infradead.org, DENG Qingfang <dqfext@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>, Landen Chao <Landen.Chao@mediatek.com>, linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>, =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>, Jakub Kicinski <kuba@kernel.org>, Vladimir Oltean <olteanv@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Greg Ungerer <gerg@kernel.org>
Subject: Re: [PATCH v4 1/6] dt-bindings: net: dsa: convert binding for
 mediatek switches
Message-ID: <20220614223242.GA2848631-robh@kernel.org>
References: <20220610170541.8643-1-linux@fw-web.de>
 <20220610170541.8643-2-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610170541.8643-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_153248_986333_0E81BD47 
X-CRM114-Status: GOOD (  16.85  )
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

On Fri, 10 Jun 2022 19:05:36 +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Convert txt binding to yaml binding for Mediatek switches.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v4:
> - fix squash of port 5 as cpu-port
> - drop type from interrupt-controller and add depency for this
> - use ethernet-ports in examples
> - drop address-/size-cells
> 
> v3:
> - include standalone patch in mt7530 series
> - drop some descriptions (gpio-cells,reset-gpios,reset-names)
> - drop | from descriptions
> - move patternProperties above allOf
> 
> v2:
> - rename mediatek.yaml => mediatek,mt7530.yaml
> - drop "boolean" in description
> - drop description for interrupt-properties
> - drop #interrupt-cells as requirement
> - example: eth=>ethernet,mdio0=>mdio,comment indention
> - replace 0 by GPIO_ACTIVE_HIGH in first example
> - use port(s)-pattern from dsa.yaml
> - adress/size-cells not added to required because this
>   is defined at mdio-level inc current dts , not switch level
> ---
>  .../bindings/net/dsa/mediatek,mt7530.yaml     | 406 ++++++++++++++++++
>  .../devicetree/bindings/net/dsa/mt7530.txt    | 327 --------------
>  2 files changed, 406 insertions(+), 327 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/dsa/mt7530.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
