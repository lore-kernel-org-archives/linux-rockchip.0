Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D788C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 05:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NWXhhbEx/24fJ4xauiC+V3vXk8TJq1qxTSwsbx+cgU0=; b=NZMUoJDgRyCGu9MSAwHwPWBEtK
	4E5Q8HMEtLivzFzRIsqiIN+3P9zS6s2Aq42g34+z/dGvEIgnSQX9XIAZf0okAgeXrUA5XHWVgsg/j
	a6QX/1TO/EZjgOlTTVAb0cCNIP+Ro/c7ajnfSHmok/MR/aErpeKtOdeVR1Ebb40ifWsfccmXA7CRb
	nHS/rQNMMesGO5ebZjSdEA7yUfPgld29qatZoQ3z0iZ+GnAKCR1ml0TvK7bfr/58YwnkJzBa5FnWC
	Ark644qY2onrGMmkuYdvyDJ2Xv+6Ps5cqTqF7NSPBZNV60BU0lR09eBpTnON9yQ3c5Y9UlcbXpAKh
	cxrvGdPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbvim-000000078Uf-2MoJ;
	Thu, 08 Aug 2024 05:29:56 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbvii-000000078TS-2cOv
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 05:29:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 97295CE0F93;
	Thu,  8 Aug 2024 05:29:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0E3FC32782;
	Thu,  8 Aug 2024 05:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723094989;
	bh=k1asoSN3ZcnhJ7YFF5EGFbIiXfRPenkQjLfVfwhmoos=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=NhZ5Rjd2r53e2BoQdl2rEDVB1zYrc0LsZZ78wMuMOO7371x/+NkFLHtn/FTuQMjy8
	 Ai4Cp5P7UkrgcsJXlhoiPnlRPsnDoz3NevClA24HJoWMq9dasX1zsVIiPe4Sr1enZa
	 fLYMZakgOe2U0BSudBFsgvB7NjV37rlH17P0A8C25gqFs1KEEqtzwez2nE+E7Uc8xu
	 dKLx3yVN6YWCaJLqKLK2OtYYq20uXaE8UNp+Js/ultwd/Q7qA1VRtqQcgP0HH19EMB
	 ca6ILfw9uI2t1bGiwarlkmN+KlLFuvALIxsMUAKywga83YSXKS1vdkzItZipMfqYe7
	 qdwi0jJPAeMuA==
Date: Wed, 07 Aug 2024 23:29:48 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Liang Chen <cl@rock-chips.com>, 
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 "Martin K . Petersen" <martin.petersen@oracle.com>, 
 Conor Dooley <conor+dt@kernel.org>, Bart Van Assche <bvanassche@acm.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>, 
 YiFeng Zhao <zyf@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 devicetree@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Avri Altman <avri.altman@wdc.com>, 
 linux-scsi@vger.kernel.org
In-Reply-To: <1723089163-28983-3-git-send-email-shawn.lin@rock-chips.com>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-3-git-send-email-shawn.lin@rock-chips.com>
Message-Id: <172309498853.3975217.8775988957925335272.robh@kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: ufs: Document Rockchip UFS host
 controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_222953_055969_1232B012 
X-CRM114-Status: GOOD (  13.98  )
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


On Thu, 08 Aug 2024 11:52:42 +0800, Shawn Lin wrote:
> Document Rockchip UFS host controller for RK3576 SoC.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - renmae file name
> - fix all errors and pass the dt_binding_check:
>   make dt_binding_check DT_SCHEMA_FILES=rockchip,rk3576-ufs.yaml
> 
>  .../bindings/ufs/rockchip,rk3576-ufs.yaml          | 96 ++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/ufs/rockchip,ufs.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.yaml
Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.example.dts:24:18: fatal error: dt-bindings/clock/rockchip,rk3576-cru.h: No such file or directory
   24 |         #include <dt-bindings/clock/rockchip,rk3576-cru.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.lib:427: Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1430: dt_binding_check] Error 2
make: *** [Makefile:240: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1723089163-28983-3-git-send-email-shawn.lin@rock-chips.com

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
