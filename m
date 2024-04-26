Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEE0DC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Apr 2024 18:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vzfzZMtsmqUPsAzFZ6l0V0qtcvvQWo+03GvzFbT/DC4=; b=oCftMTiai9Z9XmxBJ3TBJOtDdJ
	rHiDgIsezrsJy5qmu1D426y/cIVjFDewMaqggvNEYzs6y9B2nDMSsUSBheSeM7WOGitu+Kqdq6252
	ckdSbwI0LIt8/Y6DS9tAmXM+1IdfMir3MG6jmHSmmEwSkELICPfBhwz4JiyQBQXGF0VisHeQbmTM/
	jgo8Dyh+vPiOQ/zhphmwt4yuy1LK9Y+4rJc0XQsObdaV5BCZfQh2W4tARS1d/Ps3SdWOWKwM+JGYU
	kdT6dUG8S5Uqjwc57FbTzoKcx6m7cLhItELW8qGzjojpYshP18Z26GqNcx38rAXemnPDWvkuWPMMc
	OOznDfSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0QDo-0000000DeP8-1GVa;
	Fri, 26 Apr 2024 18:22:56 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0QDl-0000000DeMt-0zQn;
	Fri, 26 Apr 2024 18:22:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5471ACE1CFE;
	Fri, 26 Apr 2024 18:22:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52D08C113CD;
	Fri, 26 Apr 2024 18:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714155764;
	bh=gpyVvefeP36zHUXRz/u3ksezvgy7WEBLfXm4HyXlxF4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=QHiF19UUHS4HQggBpXjB9tUcLKKASvChWcO/TU9ERF03lEFOX55fjOkoKLunY02mh
	 KVaTfLrzfQHE2FZxc46/LFZd/Z7EudTt+BQyoROaaIM68jtOiIp2yhZ8H7kP6IlUbQ
	 IdXU89T0jhpxU1J99MeF/qym4SIwazsrlWAgzqZZiQcurclxDkJVZWgljgzVFvIs3v
	 nbL7qzdw9y5DFrGb4AZHtvWQ1inN3eibcPoD3yl62csWMDUfaSMW+ld2DaWZtyX/R6
	 B4Q33L3o2z/JFtuGWnqmTOl85SlbO2aEtKeODR7SBYFdHIPG8PEDc6StAFu2yu++D/
	 EFtpRtBmSvc3g==
Date: Fri, 26 Apr 2024 13:22:41 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, linux-rockchip@lists.infradead.org, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, Peter Rosin <peda@axentia.se>, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240426-dev-mule-i2c-mux-v1-2-045a482f6ffb@theobroma-systems.com>
References: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
 <20240426-dev-mule-i2c-mux-v1-2-045a482f6ffb@theobroma-systems.com>
Message-Id: <171415576010.2476476.2469508869846775606.robh@kernel.org>
Subject: Re: [PATCH 2/7] dt-bindings: i2c: mux: mule: add dt-bindings for
 mule i2c multiplexer
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_112253_545194_42DEC141 
X-CRM114-Status: GOOD (  14.27  )
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


On Fri, 26 Apr 2024 18:49:33 +0200, Farouk Bouabid wrote:
> This patch adds support for the Mule I2C multiplexer.
> 
> Mule is an mcu that emulates a set of i2c devices which are reacheable
> through an i2c-mux.
> 
> The emulated devices share a single i2c address with the mux itself where
> the requested register is what determines which logic is executed (mux or
> device).
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
> ---
>  .../devicetree/bindings/i2c/i2c-mux-mule.yaml      | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/i2c-mux-mule.example.dtb: fan@18: '#cooling-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240426-dev-mule-i2c-mux-v1-2-045a482f6ffb@theobroma-systems.com

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
