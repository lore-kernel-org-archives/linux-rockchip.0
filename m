Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8B4C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 07:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2yOmRgVggZOi7MgrRPNSiCA0qzWhhc/ctg+thJe8aeU=; b=j+4+DmBXuz+uHeGFOaqzwq3sA1
	DdDNTp8yh7x9QkjAWlH6dVjpVsNgjCxbgdp4I671SzOs6BbZNUgQh28G0NNL+kVS/RRxLg90+BoBv
	Oj1DVPsKAvUE+YGdVU2xkBb0Ptq5/pc3nfPX9kxT8xICWQ0JPQkWOjYISZvsrxbcvY+N9YAPSTx6X
	jwsYqHCOgJQz+OLPwOafANYxOr5YRS38xWcmy9ItFy6qSF6wnZLWvGYvuXcZWLZpoSSJMHUhnj3nG
	fEYVa0fWeKIvGlciXb7WITJIUHBVBCGAK0AEbowS4yfoaT7Hi+rV9OWK8Y5k9HQJ8kvfYXlqwTlUD
	lUesHitg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCvUz-0000000HZHb-3gWV;
	Thu, 08 May 2025 07:16:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCvOL-0000000HY6G-3m2g;
	Thu, 08 May 2025 07:10:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 05ED362A01;
	Thu,  8 May 2025 07:10:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 962B0C4CEED;
	Thu,  8 May 2025 07:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746688200;
	bh=SPCMfBae4c32mBCIvKXGGN6phuuMewMdj5VLCcFNbi4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QRKbXzjb991/iETG77YEP2lCudXojwnfdPEM9H3CydmQrg0SKEwzNOYWErlKNbNbs
	 UP/KeHE+DpSJjASyg6Aj/q+bpOMWQczFM/QxeOp5rUMW8t2xou/VoSQfEUW9Cxn8Km
	 FeAFbMH4CKCfukpBD4RxTzu+v+NvAJgosv0poH0k192XYNbPbcOY560JYpSVrl9Bv7
	 H2YpQOsjuwwUwBXslhdSCHUNHwzEHDjOKfk2HkLCs4VTAg9wOo2PgKoFd/KoR4GGZw
	 eD8UCuU4GR0FTW/YuFL6LuuZhTnFHCZYQtr1PSVcBSw3Axo8RCb8Za9UQ278YSMf37
	 44hCQRV8In2oQ==
Date: Thu, 08 May 2025 02:09:59 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
 Dragan Simic <dsimic@manjaro.org>, Andy Yan <andy.yan@rock-chips.com>, 
 Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, 
 devicetree@vger.kernel.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <20250508064304.670-3-kernel@airkyi.com>
References: <20250508064304.670-1-kernel@airkyi.com>
 <20250508064304.670-3-kernel@airkyi.com>
Message-Id: <174668819101.3553983.10022669758074843982.robh@kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: display: rockchip: Convert
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


On Thu, 08 May 2025 14:43:04 +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Convert cdn-dp-rockchip.txt to yaml.
> 
> Tested with:
> 
> 1. make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip,cdn-dp.yaml
> 
> 2. make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip,cdn-dp.yaml
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  .../display/rockchip/cdn-dp-rockchip.txt      |  74 ---------
>  .../display/rockchip/rockchip,cdn-dp.yaml     | 148 ++++++++++++++++++
>  2 files changed, 148 insertions(+), 74 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/cdn-dp-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,cdn-dp.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250508064304.670-3-kernel@airkyi.com

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
