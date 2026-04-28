Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC72FF885A
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 07:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKRO7nuGkfEHCFlRthx4FqtAExOX706THDF8VhQ/TE0=; b=OjSyl3V7By8VyL
	P8wy/VUmiBC0JANliY6FnisSPo6E5R0NkkNm3mGg2IG+2+j7ZSPF9P0qNlWeE/IwJl+Zq3frc6yv+
	CusY+CEDXFKQf790HDi+RdYW2LjaeknmRyn6xssm83T7yDSmDrms+3+Tek78zIbpdnfGkOeyCSB3Z
	qQBY1+rzzIx3FPVnjjaeGiagvC18jAZO3D0uwqKasi8kwzN8QR66R+zZxRyYPcIRJXYOPix6YiY5m
	cHZPhAqqmqQV3Cx0t8Y9SaXEK7IBN00Yvpo0xEU9OcpsI80jbD1qESEsMZWBJ1ikwJRrKJLJxPhg7
	Z8u8tGJEH/KvPJYbfelg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdCO-00000000oGI-2rWC;
	Tue, 28 Apr 2026 07:49:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdCN-00000000oEx-05p5
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 07:49:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6BEEA60154;
	Tue, 28 Apr 2026 07:49:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FD74C2BCB6;
	Tue, 28 Apr 2026 07:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777362578;
	bh=3ElNfMSZSM4UEx+D4roCAQFNWHGugNmlQtBq5aXJQ8o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QYu2LQAQ2bTwVIgJMiupZ1xKfY2vpDjaxpd8EnJGy1SX/ZZa+8niTzyTrDhCd6j3s
	 AlzDvAoAhWuB6Pwp0J8RMdWayozbqMlgxyqkM4Xs/ftQePufk0+a6WEFHcfzak3BMN
	 tDYAUtaP3/4ZYN+kmQKDaGQvbNlRbEjFYQ1sF7ermCGfdLwp/5gE5aAncpA12ApXcx
	 rxee15S0csAOCdOBIC8lC6YDePeAFd8lpnlQWfP7TOB3F784KmvosGNmlkM+3KIXri
	 17+IAykFGNqqIBFq5lcp+48EIcU7HRNJqipXN95nSiCCSaFvLjl8NpQb9WAn2vZtM3
	 Kt+hJiUL0zsBA==
Date: Tue, 28 Apr 2026 09:49:35 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, xsf@rock-chips.com, sre@kernel.org, 
	simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com, neil.armstrong@linaro.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: display: panel: document Anbernic
 TD4310 panel
Message-ID: <20260428-golden-tamarin-from-heaven-c500e8@quoll>
References: <20260427170914.5062-1-macroalpha82@gmail.com>
 <20260427170914.5062-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427170914.5062-4-macroalpha82@gmail.com>
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

On Mon, Apr 27, 2026 at 12:09:11PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The panel used by Anbernic in the RG Vita-Pro is a DSI panel based
> on the TD4310 controller IC. It measures approximately 5.5 inches
> diagonally and is 1080x1920 in resolution.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/anbernic,td4310.yaml        | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
> new file mode 100644
> index 000000000000..2da957cd5d49
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/anbernic,td4310.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Anbernic TD4310 Based Panels
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +description:
> +  Bindings for Anbernic TD4310 Based Panels, such as the RG-Vita-Pro

Description says what the bindings are for. Your description says that
bindings are for "bindings for"... Just describe the hardware.


> +  panel (a 1080x1920 5.5 inch panel).
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: anbernic,panel-vita-pro
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: Panel power supply
> +
> +required:
> +  - compatible
> +  - reg

supply as well. most likely

> +  - reset-gpios
> +  - port

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
