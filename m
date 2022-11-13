Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FB5DC4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Nov 2022 14:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ciP2fv66BcdYOnFh0eZc19dnToI8d5F72e2w1ob8FRQ=; b=dxJS0a+uDx6bal
	+W5NujADqHXkrTKUW+pNydxmcNvGPdwUTuyoO54jSBGDThrhDDHZPFJaUAl657qNZBorNYaSuT7Gi
	th47OPaD0yacZg8/h7u1FgLiKsz/IlS7a9HLEoyulS4Q714u/DCGIk5Ww+YT8PlCD7xKgRjZ2bRdA
	JHWRyFRBwULmki56EZCo+BjHAwqOMa2ovolF4nivNpY8uQsP2iP/6ujPnQ75SxkwVYk042NV3CTDV
	7k8SyUyxJheZgmiALKqAVUQbscgX8ap/qVB4wzAc2EpA6ktq00Nv+al1xAens1JtiIfpu9XIQT0JV
	AdWS4p2KgL5TUN0YKJDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouDXx-00BjBU-L8; Sun, 13 Nov 2022 14:01:17 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouDXj-00Bj7U-TC; Sun, 13 Nov 2022 14:01:07 +0000
Received: by mail-oi1-f181.google.com with SMTP id c129so9191560oia.0;
        Sun, 13 Nov 2022 06:00:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZKsttX7dR/kj4LzS1HqgSrInqnD5E8Kl3NokubvYYsw=;
        b=1TEfdkzN9Rgtu6S/oaVrG6/OSd3MOPSVZZxLiUBPSScXavQwdIUeDPUVmfd4tBnMRO
         r01BwnorLS3efsF43sEFqJwq9nNkhPMI9Pwhzw8I8xJrdFdL/79myIn9iOKa9Lmx2c9D
         MaqFH6ixGqf5NGuqJBXfnXxmnmW8KZzO3CZc1hsWCvWskQHKYovYPqLVlRS/6Zmcvib9
         zVzcPqe0wnuB+24JZ8Knx3I4N+8WO6zmG2KFcREBt6VPdWWsnqmllXDuIly2Db8CvTZG
         kZjUztGCa/BGl/x/+xkD+oqFQGAG++Z+0mEC0rnIbE2bwMdkGZCVnYMEPOVLqsPM2pjD
         dKhw==
X-Gm-Message-State: ANoB5plYCiTpIZtoZbksX9YJ7KltKPdo+tHH6vAFC6XJZjzAXCTcvTgO
	qMNrNgR5uQs5VsCjL9wlWg==
X-Google-Smtp-Source: AA0mqf7sBsExjDIonPC+fh7PURcCdxGNOaw+XYBJlszceX2eXK+nZPWs46yN6CXtpbCaWJArJ/pPnA==
X-Received: by 2002:aca:4487:0:b0:35a:7dd3:cfa7 with SMTP id r129-20020aca4487000000b0035a7dd3cfa7mr4228912oia.226.1668348057762;
        Sun, 13 Nov 2022 06:00:57 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t30-20020a056870609e00b001417f672787sm2958000oae.36.2022.11.13.06.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 06:00:57 -0800 (PST)
Received: (nullmailer pid 3392130 invoked by uid 1000);
	Sun, 13 Nov 2022 14:00:59 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Aurelien Jarno <aurelien@aurel32.net>
Cc: Lin Jinhan <troy.lin@rock-chips.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Olivia Mackall <olivia@selenic.com>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org
In-Reply-To: <20221112141059.3802506-2-aurelien@aurel32.net>
References: <20221112141059.3802506-1-aurelien@aurel32.net>
 <20221112141059.3802506-2-aurelien@aurel32.net>
Message-Id: <166834780489.3385723.11805626394561676880.robh@kernel.org>
Subject: Re: [PATCH v1 1/3] dt-bindings: RNG: Add Rockchip RNG bindings
Date: Sun, 13 Nov 2022 08:00:59 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_060104_070528_B0CC191A 
X-CRM114-Status: GOOD (  12.38  )
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


On Sat, 12 Nov 2022 15:10:57 +0100, Aurelien Jarno wrote:
> Add the RNG bindings for the RK3568 SoC from Rockchip
> 
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  .../devicetree/bindings/rng/rockchip-rng.yaml | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rng/rockchip-rng.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/rng/rockchip-rng.yaml: properties:compatible:oneOf: [{'const': 'rockchip,rk3568-rng'}] should not be valid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['const']}}
	hint: Use 'enum' rather than 'oneOf' + 'const' entries
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
./Documentation/devicetree/bindings/rng/rockchip-rng.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/rng/rockchip-rng.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/rng/rockchip-rng.example.dtb: rng@fe388000: reg: [[0, 4265115648], [0, 16384]] is too long
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/rng/rockchip-rng.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/rng/rockchip-rng.example.dtb: rng@fe388000: clock-names:0: 'clk' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/rng/rockchip-rng.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/rng/rockchip-rng.example.dtb: rng@fe388000: clock-names:1: 'hclk' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/rng/rockchip-rng.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
