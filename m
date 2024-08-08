Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76B08C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 09:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/JVHAESHEcfKFjQJPk/CSew9f8WNOqxEKKQaIN1LfnM=; b=NZmJ75epj0+pk3OHdLS20gUa6d
	E/b5YtKtZ5K774L12hIgksw4xTtfoy/qkHN9+qWpjKJvT9QFKGoBllrag1qWRtCRCRI1YPn9Ih7mr
	/iaxkAWNY+TXivrrzK5HX0XD5rqJNYw+GxEM2tdrCetLRFF3jnWSUSyfQF7TclHwu00kD05DjA6Nx
	kpRF1uOtfR8nI1i+3imZhhnw3qi923x5n0lPccHJPkqK9lnBZYMLKXGICEjKPcElX1k315qUse7JH
	BXPczBJcxTEhheY9MgTYJfC3QPnA5hbEkN8HMHeBrjctqB5tlDZhhoogxrM+ljpupyvJd7WDgcz0T
	mAoWiuLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzTq-00000007j6U-2JZz;
	Thu, 08 Aug 2024 09:30:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzTn-00000007j69-46Gs
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 09:30:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6B9136126F;
	Thu,  8 Aug 2024 09:30:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D775FC32782;
	Thu,  8 Aug 2024 09:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723109443;
	bh=G4jqWjKXWHk4kttjM43AnfkpIVmWHXiSnrUxnTSR72M=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=bC6S4FbNoqFD96hW1e0UEsT3oKHIETkWZAaOTZ2ip0pokEGcggLkyYWP0K/JG0ZY7
	 scSTgO0Xbp+YfUCNI4Lk0ORzjDwIs/q4NZ9jUMLeZNR6xtIYlmc5eie3swLndJPpB6
	 Yo9T7NuuyaEHyi7DCfYSOziJyWKdijvVXyJq9xwaECF/0c3XeNof9zYM5vbY17f1TP
	 hyxzRz/fid373mAISZje/6+tVMBEdfDe5fvqE+PtQVeZstDRTFyYx+VuPx90fOhdQY
	 YZF5PSyhJHuy8rKjY6MOo0/xYkun84YDOzRfVTTjV2KRb8sfFKOtM+f3NuOetEFeKl
	 2U0yEyBnukVTw==
Date: Thu, 08 Aug 2024 03:30:41 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-scsi@vger.kernel.org, 
 YiFeng Zhao <zyf@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
 devicetree@vger.kernel.org, Avri Altman <avri.altman@wdc.com>, 
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>, 
 Bart Van Assche <bvanassche@acm.org>, Liang Chen <cl@rock-chips.com>, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "Martin K . Petersen" <martin.petersen@oracle.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
In-Reply-To: <1723091220-29291-1-git-send-email-shawn.lin@rock-chips.com>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723091220-29291-1-git-send-email-shawn.lin@rock-chips.com>
Message-Id: <172310944186.384374.16402625285044950364.robh@kernel.org>
Subject: Re: [RESEND PATCH v2 2/3] dt-bindings: ufs: Document Rockchip UFS
 host controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_023044_153465_F9479BD6 
X-CRM114-Status: GOOD (  13.82  )
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


On Thu, 08 Aug 2024 12:27:00 +0800, Shawn Lin wrote:
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
Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.example.dts:24:18: fatal error: dt-bindings/clock/rockchip,rk3576-cru.h: No such file or directory
   24 |         #include <dt-bindings/clock/rockchip,rk3576-cru.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.lib:427: Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1430: dt_binding_check] Error 2
make: *** [Makefile:240: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1723091220-29291-1-git-send-email-shawn.lin@rock-chips.com

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
