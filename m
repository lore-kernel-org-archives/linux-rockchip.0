Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F809C3DA6D
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 09:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:From:MIME-Version:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wb7MJ0irAJdDq2ZvnQXwgtNolilBnA3yMpP1ufnXb6Y=; b=Irahu1deF4jycC
	o7N31myXMWL6Kun+B72vgzAftMdRUIEeKnQX5nNUbkFeuYevg0yeoXo5wzWIxyk1TSDwoqOs1BzcY
	EKjKLRZy7VsjeEwAvpuNOHKXBQEVDx3UaUkxxlMBTA3YBkdiTi23VOckjGmCW6KJyKoNg1RM9S1g0
	kS+HBjO/C/fygJ52XHl4eLYhJT7KDWN3SnD8gjcMJbkM6YztuOZkL/7hFMa7Weuk+U1276Jp/vvws
	ZsxqwXgKjZbF1irfUF0SseO4FdzArAdOSXduByPmTdVb0w+YuDWHw3pTxP2eQklP7PG1CCweISbx0
	a/3181fw9kf1j/3+ob6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGxEP-00000008gqh-0sBX;
	Mon, 19 May 2025 09:56:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwsr-00000008abH-12TD;
	Mon, 19 May 2025 09:34:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 76CEA4A931;
	Mon, 19 May 2025 09:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D6E4C4CEE4;
	Mon, 19 May 2025 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747647248;
	bh=AWPQKMivdFQ6QmrVDoYacp12BqW2VCLe3IzFWlx64xM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=WVWCbBnTkk0ktrvABJxuaYyiplG2vJKmYpK4HgwTkwCIEtblM/AJ0+VyDW34WxQAa
	 IpTEtWMVIuEdhVeYrBWqFMipUtdZn81FnjSXJ/HE3Pz0OdLCbGCxi969dgJztpZTv3
	 vwILvrmwOiogJwIVgIyV/qGCvBXf/llm7L6Elezxs0w1wYR49dRbu3y3gKgAT6fSZ3
	 i8vzRM0IMik4HSs5wZAZrd9o9YO3hugJ6ZxI58aEZVzRObKvZc8L/3XzuUq4tC3GNf
	 WPrunVGCIB+xLmoWb3ESebQy498xiKiknOqZFZc0uZDmOkoWrdanoq/D8PJPfp8Tus
	 uRMTlv160j9Qg==
Date: Mon, 19 May 2025 04:34:06 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
In-Reply-To: <20250516-6-10-rocket-v3-1-7051ac9225db@tomeuvizoso.net>
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
 <20250516-6-10-rocket-v3-1-7051ac9225db@tomeuvizoso.net>
Message-ID: <174742024812.3649303.12389396177218408388.robh@kernel.org>
Subject: Re: [PATCH v3 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_023409_318295_0203003B 
X-CRM114-Status: GOOD (  13.36  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
Message-ID: <20250519093406.8LV7s3M3HmaiWVzgmGyjh-Ud_a5g4N4OaBLSh5REmeI@z>


On Fri, 16 May 2025 18:53:15 +0200, Tomeu Vizoso wrote:
> Add the bindings for the Neural Processing Unit IP from Rockchip.
> 
> v2:
> - Adapt to new node structure (one node per core, each with its own
>   IOMMU)
> - Several misc. fixes from Sebastian Reichel
> 
> v3:
> - Split register block in its constituent subblocks, and only require
>   the ones that the kernel would ever use (Nicolas Frattaroli)
> - Group supplies (Rob Herring)
> - Explain the way in which the top core is special (Rob Herring)
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/npu/rockchip,rknn-core.yaml           | 162 +++++++++++++++++++++
>  1 file changed, 162 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml: properties:reg-names: 'oneOf' conditional failed, one must be fixed:
	[{'const': 'pc'}, {'const': 'cna'}, {'const': 'core'}] is too long
	[{'const': 'pc'}, {'const': 'cna'}, {'const': 'core'}] is too short
	False schema does not allow 3
	1 was expected
	3 is greater than the maximum of 2
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.example.dtb: npu-core@fdab0000 (rockchip,rk3588-rknn-core-top): compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-rknn-core-top', 'rockchip,rknn-core-top'] is too long
	'rockchip,rk3588-rknn-core-top' is not one of ['rockchip,rk3588-rknn-core']
	from schema $id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.example.dtb: npu-core@fdab0000 (rockchip,rk3588-rknn-core-top): reg: [[0, 4255842304, 0, 36864]] is too short
	from schema $id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.example.dtb: npu-core@fdac0000 (rockchip,rk3588-rknn-core): compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-rknn-core', 'rockchip,rknn-core'] is too long
	'rockchip,rk3588-rknn-core' is not one of ['rockchip,rk3588-rknn-core-top']
	from schema $id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.example.dtb: npu-core@fdac0000 (rockchip,rk3588-rknn-core): reg: [[0, 4255907840, 0, 36864]] is too short
	from schema $id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250516-6-10-rocket-v3-1-7051ac9225db@tomeuvizoso.net

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
