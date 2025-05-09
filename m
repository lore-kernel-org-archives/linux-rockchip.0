Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61932C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 15:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FtKud/BHGsAV3QgTty8LxVuVuR8e9KQN2qyd5bfqgsk=; b=zmtLsewWXI3GfTHtMdiCSyL/fe
	lxdF4qdiDfAUbqNemVbDAxkTtbJKvcLeKUsyeOQk4BTdchmzp67lhPl8mTeVtVJejj8EqjbEkM9+f
	FKI6O76POa24/7iJ30NusAbo2ACVhdmWkSespwGPgr52gIaNIIh1OkQdJXOOptuOcOgYN4E8odl6t
	SGKsm4n31C7M4YXlO9JHJBXk8cmEHjYJjJUoFTVCaOg4yZDFYlqAGu/yVOTCiyCN0me72c+0u1HWU
	+acW211AwvJKe1pcI44cgvcbqQv/VqJ4+25Svhfa2SHHIbAOLbyaIBi4noLYeyRcl9K68nsGnNFuh
	jinaf54w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDPKR-000000041vg-1r0b;
	Fri, 09 May 2025 15:07:59 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDO2e-00000003oZp-33De;
	Fri, 09 May 2025 13:45:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1033B62A1F;
	Fri,  9 May 2025 13:45:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42DC6C4CEEF;
	Fri,  9 May 2025 13:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746798331;
	bh=v5Uak0RcmfjhTO5Ysk+NhysPrBjg5pgA9cE1Hgd2gfE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=iHMEwdP23ywmij2dIw06QIo1o6RyOrSI+/zsCUo5nDKnUyppRzFrGEvOZ5PXwhj/F
	 HMaL5F7Jd+nsTV2PeECplWgyg998OJc2hYhu0RYzRRzdUi39Hr7hZ+dEE96nl4KanE
	 Mf7qKeRNhFFHkUHpkgMbdpEu8el4vEHEb8cjcLbIVIQgBjPQyzPpQ+gRJkfsrexTkk
	 TJUd/vwH+S6QEvA2mxVyMV4q4QIXAlQYHgAU8eek2BOkuGqMFdCL1Cu4Im9S4Y4Asy
	 X5ALlmXBPwdgyXhNwqVPVZRU5vJaVnqW2yv3ewUpZm1hFQqcPjfwNokpZNt6FarIvL
	 nAxP6/23PbmFg==
Date: Fri, 09 May 2025 08:45:29 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: David Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org, 
 Simona Vetter <simona@ffwll.ch>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Sandy Huang <hjc@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <20250509070247.868-3-kernel@airkyi.com>
References: <20250509070247.868-1-kernel@airkyi.com>
 <20250509070247.868-3-kernel@airkyi.com>
Message-Id: <174679832782.3268212.14187145716217204354.robh@kernel.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: display: rockchip: Convert
 cdn-dp-rockchip.txt to yaml
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


On Fri, 09 May 2025 15:02:47 +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Convert cdn-dp-rockchip.txt to yaml.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v2:
> - Rename binding file name to match compatible
> - Add more description about grf/phy/extcon
> - Fix coding style
> 
> 
>  .../display/rockchip/cdn-dp-rockchip.txt      |  74 --------
>  .../rockchip/rockchip,rk3399-cdn-dp.yaml      | 158 ++++++++++++++++++
>  2 files changed, 158 insertions(+), 74 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/cdn-dp-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3399-cdn-dp.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3399-cdn-dp.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/display/rockchip/rockchip,cdn-dp.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3399-cdn-dp.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250509070247.868-3-kernel@airkyi.com

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
