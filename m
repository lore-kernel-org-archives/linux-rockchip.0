Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4615AC54756
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 07:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YC0XvcSenzVTIvDHpaweIP09n2f9DHHw7RqRc1HA/VU=; b=LZWG6+OUN98L5J
	nca5AqkK5d8vzUyTxIqkXi75p3FPQJ5ByjFSfOBUWItfCMgKHmKOWE3STm5LIZuc7uM1PZaMut278
	k7t5hQ9OZPKKFWDIpn8EnrU5/ftM+1tssT36tCzqCmT0Q8oI8cYXgXJDP+6uzOGEhc+o6oa+HHUnB
	+yTRwuYR5Xnj6LxbeYPUZGyu/l6vkDg57yXk4nj29hnGaYiKzGXgqBa7SMMVzFkJqtpSJFgUgNIya
	rJWNrZQYjXPAFmfFSmIn9IEVT5+u9K6IHn0EjZVY6pqPkla5mosTdgirNMGT3P6U3o5ifgHx29ETc
	6LHzmIuZkvnob4WKDF/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHWD-0000000BrtF-1qKZ;
	Tue, 20 May 2025 07:36:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHU5-0000000BrbI-2Dri;
	Tue, 20 May 2025 07:33:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C533644C8D;
	Tue, 20 May 2025 07:33:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17977C4CEE9;
	Tue, 20 May 2025 07:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747726436;
	bh=IxJDbHhoIBlRsEC8dNmFDP5+Wyd+qkC2iRVS4ulVwEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c3/DTfV+WGGKr8thDEznVcCK6Zt+adMAj/Cp+a9oYEBzujm0rNmpnQvHujGxblbzi
	 cPh3hPmAPQ+Ds/hoPqR3FXN0l6Krw+/cXqSSq0OGKZfAT+PKGA5pHB91ODH4rF2ef+
	 OcVj5zo4rUd7pOzBJWdv0jpI41xu75b4hsVLuDATYt8piVeUv3/p4RhV/IAZtAogxd
	 gvxlAINrqfxUu/KVKoTmVFOwjfPpYkoIVxI+CuFf/HEK6l75v+66vi6nt/n89dDcwW
	 ANzssYus/nb/5ItchaWbUuPm8l7t9JrbwU8qo1yTqYDbXcv/ToHcTGXa1ggFbQ3a7p
	 uTCz7CLBHQcAg==
Date: Tue, 20 May 2025 09:33:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v4 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
Message-ID: <20250520-hypnotic-pink-lori-dece51@kuoka>
References: <20250519-6-10-rocket-v4-0-d6dff6b4c0ae@tomeuvizoso.net>
 <20250519-6-10-rocket-v4-1-d6dff6b4c0ae@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250519-6-10-rocket-v4-1-d6dff6b4c0ae@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_003357_616275_ECF9BB89 
X-CRM114-Status: GOOD (  23.54  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, May 19, 2025 at 03:43:33PM GMT, Tomeu Vizoso wrote:
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
> v4:
> - Change required node name to npu@ (Rob Herring and Krzysztof Kozlowski)
> - Remove unneeded items: (Krzysztof Kozlowski)
> - Fix use of minItems/maxItems (Krzysztof Kozlowski)
> - Add reg-names to list of required properties (Krzysztof Kozlowski)
> - Fix example (Krzysztof Kozlowski)
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

This order of SoB is still odd. You as person sending it should be the
last signing person. Are you sure you are using b4 for managing
trailers? I would expect it to re-order these on every update and this
is already v4.

> ---
>  .../bindings/npu/rockchip,rknn-core.yaml           | 149 +++++++++++++++++++++

Filename matching compatible, so rockchip,rk3588-rknn-core.yaml

>  1 file changed, 149 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..fafd0b01da215c7396262012988e364ef07ea137
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml
> @@ -0,0 +1,149 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Neural Processing Unit IP from Rockchip
> +
> +maintainers:
> +  - Tomeu Vizoso <tomeu@tomeuvizoso.net>
> +
> +description:
> +  Rockchip IP for accelerating inference of neural networks, based on NVIDIA's
> +  open source NVDLA IP.
> +
> +  There is to be a node per each core in the NPU. In Rockchip's design there
> +  will be one core that is special and needs to be powered on before any of the
> +  other cores can be used. This special core is called the top core and should
> +  have the compatible string that corresponds to top cores.
> +
> +properties:
> +  $nodename:
> +    pattern: '^npu@[a-f0-9]+$'
> +
> +  compatible:
> +    oneOf:

Drop... if you followed my advice you would notice it is not necessary.

> +      - enum:
> +          - rockchip,rk3588-rknn-core-top
> +      - enum:
> +          - rockchip,rk3588-rknn-core

My comments were only partially implemented. This syntax is really not
readable and not necessary and I asked to make it part of previous enum.
This is just one enum:

compatible:
  enum:
    - foo
    - bar

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
