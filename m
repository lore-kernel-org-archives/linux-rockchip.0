Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B02A5C02185
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jan 2025 04:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yuu+LgDMdfGmzSmrBjk+BFWEQ0i2vivqlykHIMP1mRM=; b=NcBEVW7g5qyVOeuYbM/hq1UH6w
	aUlbsAny8MFa61rJ1ixQIXVGWnxjvY4oAqfXbEitcIRSsyIszNrVR7sdqO96cDIG2dSnOMAjHQOGE
	rv1EsxZnBKPplE8OGba9/qJWMVFIVk1M2DVdEpxVqbVvU0gv0xFGC2pIUsqTIABqIVk3QtnYN2SIV
	bdHup8wkYZILFPa4WRgYmJQK4gDWzTY2CrnM/E7yOJBa0WoDRjn9EnzOEE8yxxIKs8ennHovDRc5v
	4bxspbifjXxMHZ02S710XZgc200IF2G41/HV+Zg60H1NiBesrLZGY/GV7VRNOW0G0cVpqDZThf2b4
	5d/mgeoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta5yT-00000006sAi-0iTT;
	Tue, 21 Jan 2025 04:34:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta5yR-00000006sAM-0XC3
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jan 2025 04:34:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F0ED35C495C;
	Tue, 21 Jan 2025 04:34:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0496C4CEDF;
	Tue, 21 Jan 2025 04:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737434086;
	bh=ic2Vj9clbccTWpFYpYbpq3VVbXcpDTrMDm0/0NZg7Ug=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=RnuzQM3DXktPnklWQtlLdFDBZugcN+9yBDvezfwfwmkdmn8a9fLfmQpzGNvbpG2FG
	 oAlnEMrh5/uweTxegEfC9uTTRmPP1D9Dn4rJjtqYGiKIZl4P9akOkzd2gbfi2HoWgz
	 cwbmjXgG5Kc+pHgBLkXjHoyXl/TDwO52raTS89fNZnFbPCi1tjXuWtUhRqILIGQUI0
	 mrfXK/dN6yibPywWcMXxEiQcGuBXcWcj7eJFChr7yZAuJ75+giOfTI822HouQs3gDY
	 C7C5C6eeYic/Vv2hK5tBetF17tGaPY40p6WYcB39yymWfXwcW+1pFi3BmQaUbk2vIq
	 iujUnx7lk6aug==
Date: Mon, 20 Jan 2025 22:34:44 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, linux-rockchip@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 linux-pm@vger.kernel.org, 
 "Martin K . Petersen" <martin.petersen@oracle.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Liang Chen <cl@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, 
 linux-scsi@vger.kernel.org, YiFeng Zhao <zyf@rock-chips.com>, 
 "Rafael J . Wysocki" <rafael@kernel.org>, 
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1737428427-32393-2-git-send-email-shawn.lin@rock-chips.com>
References: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
 <1737428427-32393-2-git-send-email-shawn.lin@rock-chips.com>
Message-Id: <173743408485.1359379.11212838152081459014.robh@kernel.org>
Subject: Re: [PATCH v6 1/7] dt-bindings: ufs: Document Rockchip UFS host
 controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_203447_259479_E7A27E80 
X-CRM114-Status: GOOD (  16.29  )
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


On Tue, 21 Jan 2025 11:00:21 +0800, Shawn Lin wrote:
> Document Rockchip UFS host controller for RK3576 SoC.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Changes in v6: None
> Changes in v5:
> - fix indentation to 4 spaces suggested by Krzysztof
> - use ufshc for devicetree example suggested by Mani
> 
> Changes in v4:
> - properly describe reset-gpios
> 
> Changes in v3:
> - rename the file to rockchip,rk3576-ufshc.yaml
> - add description for reset-gpios
> - use rockchip,rk3576-ufshc as compatible
> 
> Changes in v2:
> - rename the file
> - add reset-gpios
> 
>  .../bindings/ufs/rockchip,rk3576-ufshc.yaml        | 105 +++++++++++++++++++++
>  1 file changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml:91:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml: ignoring, error parsing file
./Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml:91:1: found character '\t' that cannot start any token
make[2]: *** Deleting file 'Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.example.dts'
Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml:91:1: found character '\t' that cannot start any token
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1506: dt_binding_check] Error 2
make: *** [Makefile:251: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1737428427-32393-2-git-send-email-shawn.lin@rock-chips.com

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
