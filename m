Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7BC7C27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 20:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZmCObRPScB1oHu7yNnrrB191fVCT/5kCFpafwFmSrl8=; b=4pkLgyunW4a7WiS0LutDmk6V54
	+DAjoM5TKuQFa9ASCNvWI1Iws3l2gZEpubOL6ZxST23GTsuBLEcnt32NBkV4K/1wSmWrdsSEApI4W
	Xe9EcCMFq+cdbGfbN9gCP2ipw7C9xJbP0yP+06xb+C8IIcL1nkMFTP/fSaYaxteIvo6Z30W0eRAvV
	1HqwFdV0arjk1tOjWaO/QlTqJFxPLadCyKNDx0PjRSGrXDMzLtw1t0X+b0TP7sKoPRDh/Dashw86r
	8H/UP0WYEp4boK9n5Zqqte5M2uyBpGS27NMpu1/ZEsxc5Ch0H2/elYWwyORb4KZg7SL1MLU0cBK8u
	lu4BiAtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFJnO-0000000BGs5-1nOy;
	Thu, 06 Jun 2024 20:33:14 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFJnK-0000000BGqr-0cD8;
	Thu, 06 Jun 2024 20:33:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6469DCE1BE2;
	Thu,  6 Jun 2024 20:33:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C9C8C2BD10;
	Thu,  6 Jun 2024 20:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717705986;
	bh=9oouy5x9Ue5GemoAYkfq4PmU8oIHLsNd4GhUYZOdKnk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=m8mX8VVS8F5m9+fNPFhT9U7Tp+cSZUAzQXRBB8WXkOY+YlfVD9QnoArFSKUpIXnc/
	 oglUSqQp/CADGTIvBqtooUX4+18DnGe9iXVpURfW8eyb14FP2jtZKTv2XST7yWAn4q
	 RNGJ/m3842XmtWmvJnQ2hTPDalPLSkrqu9MYUlFUy5z9dOJ1/3TIgxpKVd010jWJhH
	 wnfNwvEyi4/UgD6nKSmix0nr+45jCZ3YPdGb8iGh8xcHcTRBhuoVuYaaSBf3WFlkrv
	 qw1wY85gKgLh9bB+SzGpy2v7nIRyUy+oPzH57SpFwCas1t8Yl610Yv8MbzgCoDiQtP
	 n05M4cvFHxi4w==
Date: Thu, 06 Jun 2024 14:33:05 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shresth Prasad <shresthprasad7@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 heiko@sntech.de, skhan@linuxfoundation.org, krzk+dt@kernel.org, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 conor+dt@kernel.org, javier.carrasco.cruz@gmail.com, 
 linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org
In-Reply-To: <20240606184135.11065-2-shresthprasad7@gmail.com>
References: <20240606184135.11065-2-shresthprasad7@gmail.com>
Message-Id: <171770598518.3813098.8400310988488073666.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_133310_420590_9BAA64D8 
X-CRM114-Status: GOOD (  10.30  )
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


On Fri, 07 Jun 2024 00:11:36 +0530, Shresth Prasad wrote:
> Convert txt bindings of Rockchip EMMC PHY to dtschema to allow
> for validation.
> 
> Signed-off-by: Shresth Prasad <shresthprasad7@gmail.com>
> ---
> Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
> and `rockchip/rk3399-pinebook-pro.dtb`.
> 
>  .../bindings/phy/rockchip,emmc-phy.yaml       | 78 +++++++++++++++++++
>  .../bindings/phy/rockchip-emmc-phy.txt        | 43 ----------
>  2 files changed, 78 insertions(+), 43 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.example.dtb: grf: 'reg' is a required property
	from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.example.dtb: grf: 'reg' is a required property
	from schema $id: http://devicetree.org/schemas/mfd/syscon.yaml#

doc reference errors (make refcheckdocs):
Warning: Documentation/devicetree/bindings/soc/rockchip/grf.yaml references a file that doesn't exist: Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
Documentation/devicetree/bindings/soc/rockchip/grf.yaml: Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240606184135.11065-2-shresthprasad7@gmail.com

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
