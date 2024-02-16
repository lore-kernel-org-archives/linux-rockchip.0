Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A748AC48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 11:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VBi6RrGLjoBtPe2RCBklqN2TIEYqGcM7C8o+ECRR5tg=; b=mRh1LA3X8PTYwYXLvTS0VLpS7S
	URSWPKJ++SXMxb7YJOjbgl/bwqKXDHkEPmFN9hmc7z0vFe+Dge8C1Z3yqinIKEHs8F5EMIgMGJpE+
	S4Ly+XJiINl9vK0MZ9hO87mv+55CxmQI6ugWUckP7m/JyFGmQU3S3+2D74V+e3pWkHFl6vsnE2W9w
	SOW1H3niot+eGsUAXHgk++KI3H58ssJG6KqEOpLkUHunzQZQYQMHk/x24I/QdOJCF7BGyY9ODIb+m
	6nvwTcK0rqiT4UStSFTquul4YGUtFXEKKXWFbvy/JSi1mb1gx6hImfyT6J/eFXqbIcEXg11yZsLTh
	4BFvQPBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawQV-00000002A9X-3cPn;
	Fri, 16 Feb 2024 11:30:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawQS-00000002A8k-2gLY;
	Fri, 16 Feb 2024 11:30:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0A0AD61EB0;
	Fri, 16 Feb 2024 11:30:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 801E6C433F1;
	Fri, 16 Feb 2024 11:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708083039;
	bh=Im9oLtqekCjFldegmSJwn6Rnn4sM4mtdARjwn/lI51Y=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=tR4aEWQSnp6Vr3/wHf9zkqffISSvXW9tNn76MjaZwHLlng3tRBS3zhO+l9VXeD3zh
	 lF9Q3ODEv7cM/hx2QPxahtOWK01gr+UvDOOSfUtupjrje3Qz7HLJ3VIELvT5hl/VLz
	 DQRo1txODTjJGtpoboXBAE6e2c43gOXWrVUocRacGlx+m5tKA1tiIewY9QoBB+7i6C
	 w8qNy/JWPmzOB6RGjjHAd6WMFand+LnIX9hJboC2svl6ZRI0pHf7U/sFMl4c+9GWTP
	 Wx8JqUqtJbbiNqkIrxCsT4DQOR/qxt7DYFjgfagmioep+WE6q4c8mOfqW+3l0DMIQV
	 +ZVVhUbVHkAzg==
Date: Fri, 16 Feb 2024 05:30:38 -0600
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, p.zabel@pengutronix.de, 
 dmitry.osipenko@collabora.com, sboyd@kernel.org, 
 sebastian.reichel@collabora.com, jose.abreu@synopsys.com, 
 kernel@collabora.com, mchehab@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, linux-media@vger.kernel.org, linux-dt@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, mturquette@baylibre.com, 
 shawn.wen@rock-chips.com, linux-arm@lists.infradead.org, 
 nelson.costa@synopsys.com, devicetree@vger.kernel.org, heiko@sntech.de
In-Reply-To: <20240216094922.257674-3-shreeya.patel@collabora.com>
References: <20240216094922.257674-1-shreeya.patel@collabora.com>
 <20240216094922.257674-3-shreeya.patel@collabora.com>
Message-Id: <170808303721.2162868.14811382528537445786.robh@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: media: Document bindings for HDMI RX
 Controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_033040_752906_004473C0 
X-CRM114-Status: GOOD (  10.61  )
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


On Fri, 16 Feb 2024 15:19:20 +0530, Shreeya Patel wrote:
> Document bindings for the Synopsys DesignWare HDMI RX Controller.
> 
> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
>  .../bindings/media/snps,dw-hdmi-rx.yaml       | 128 ++++++++++++++++++
>  1 file changed, 128 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.example.dts:57.47-48 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1428: dt_binding_check] Error 2
make: *** [Makefile:240: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240216094922.257674-3-shreeya.patel@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
