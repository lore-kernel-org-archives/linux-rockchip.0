Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81419E7717F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Dec 2024 09:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CemqygjeXiRiNjgRzlBpARLzXdZ41yKLdDlGpx9ejpc=; b=4BMjX4viXeuzRE
	MHCdWrXMNu3AJlJL3ur3j2go7BQHOoNwOMsS4ugTw2JtRtdUtJHetNZ0wyOgIXQIU5S3GqIi+oUY9
	DiGzB+GheJ0w4oOouE7pow7sak1iTk4y+Rp60SR3QcFvACzyCVj6hmHV48na5PfsIOn3EAgJviz+t
	n6YIN7KLJG67mB/VYZDO4yt+D+uAufLancnqafwDN+cyrU9hguGcvzc5cOPrCVybZFLzpLPhr4lhf
	4S+QTWey7+i5+0Mo5bxLrjWqBNEFw9zYDHCEWMaZg7CjWnG5FxspxCwYUtUFHAkiw+wvdPP+nakmP
	c6uajKRVmAuBt2Ph4HdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM2On-00000003LDS-1p7G;
	Fri, 13 Dec 2024 09:55:53 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM2LD-00000003KF7-1uN7
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Dec 2024 09:52:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 875D4A405FB;
	Fri, 13 Dec 2024 09:50:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D2FEC4CED0;
	Fri, 13 Dec 2024 09:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734083530;
	bh=BU/J16Ct4CwkI88Ev0nVluHMhJ7hjnowLd7wIxggf4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XpU82KBfxjjRWfMsNAY4DdgnA0/pQPGsdZG4rPLMTh4hEb4kOXYKKqj3b+4MOg78/
	 tRu+VhuRVOHuFerRLkA2FNKGrxRonw0Yt/+sJvxQ1PrgSE5efYjfU2mOlmszQ5sZ3M
	 ehjWxCiJlhCx2H/ycld1AGF/50FBD3YWNYoe77GrnEjUKWudhI2UFKb7qBklwN817l
	 d0CzhlbjGta7d67iylDTQ3qHs2UsAqJ4VElcZFCgFXKvjEe7uSXB6za3vclhDTIWq2
	 qwAFMBTfXCjwLcExb5lDXuXKOFQAORlytg9s3z8c5nGQEICnxQlzcHA0KjBop0Stwd
	 EvNWACQj9X6Ig==
Date: Fri, 13 Dec 2024 10:52:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Andy Yan <andyshrk@163.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: Add Raydium RM67200
Message-ID: <7uoc7higbx772dabs6k5zvrvgfmp2otai3bz2z62wnpv6pfa5s@jpe45f3qzyu2>
References: <20241210164333.121253-1-sebastian.reichel@collabora.com>
 <20241210164333.121253-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241210164333.121253-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_015211_562983_F676F800 
X-CRM114-Status: GOOD (  14.01  )
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

On Tue, Dec 10, 2024 at 05:41:30PM +0100, Sebastian Reichel wrote:
> The Rockchip W552793DBA-V10 display/touchscreen board contains a
> Wanchanglong W552793BAA panel, which in turn is using a Raydium
> RM67200 MIPI-DSI controller. Add a DT binding for the DSI panel.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../display/panel/raydium,rm67200.yaml        | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/raydium,rm67200.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/raydium,rm67200.yaml b/Documentation/devicetree/bindings/display/panel/raydium,rm67200.yaml
> new file mode 100644
> index 000000000000..d0a6d3207811
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/raydium,rm67200.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/raydium,rm67200.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Raydium RM67200 based MIPI-DSI panels
> +
> +maintainers:
> +  - Sebastian Reichel <sebastian.reichel@collabora.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - wanchanglong,w552793baa
> +      - const: raydium,rm67200
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: 2.8V Logic voltage
> +
> +  iovcc-supply:
> +    description: 1.8V IO voltage
> +
> +  vsp-supply:
> +    description: positive 5.5V voltage
> +
> +  vsn-supply:
> +    description: negative 5.5V voltage
> +
> +  backlight: true
> +  port: true
> +  reset-gpios: true
> +
> +additionalProperties: false

This goes after required: field, as expressed in example-schema.

With this change:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
