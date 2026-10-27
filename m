Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B06606A329
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 10:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QWUUELC/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Rh+DGu/x
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7AFyVb9b90M8qbOVjJ9hrIgeEZg+1tADYw47FIdL4Z4=; b=QWUUELC/B7gFBrFeKGH4FsklM9
	hfTiFI8jafMOb42pkseNkthX5ODgrYnG3q7qTnlA4tXcJCbxrC0qvStC75g+qHr/NHHgWuGrBPekO
	TLbHi+Qzn8KqQUM5CIor0yPoREgoC4V7MNy00lpC6JTH1eKYF1u+aOwRbyukwN0dccEYlER1z3NQw
	YWmsXPNBGuLsg+F3l838qYXVX9uf/MNoGIMZ0DTtK1ki1rHtZLfBlZlkSX+gnB58Evq5XiPaQNp6o
	3MpvnMK4knK8HTtSrj0ej9WYMLHcJEL6LGnyrVlC8WUxrnTjlfIwFf+sIA//RlZ/72n4/dzfyuRxS
	t7ulo8yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLeED-00000004HCZ-2Lrh;
	Tue, 27 Oct 2026 10:16:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLeEB-00000004HC3-3sZb;
	Tue, 27 Oct 2026 10:16:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EFEF660236;
	Tue, 27 Oct 2026 10:16:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A09221F01829;
	Tue, 27 Oct 2026 10:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793096182;
	bh=Nosy+usVuTRalJhDlMJRSmJy7mZ+XXkUctxepxTismw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Rh+DGu/x7G5c9120OgBPvXJmW56OvjJimMq1CE99woSfN0Z9nWU1t+pn57RzO+wbw
	 qbIDD2b4OZGV5WEvYYpuIk0anbG9bYLW+0H919KYQnPvGwAfxYYNCi9oMmXpqChO1e
	 UOT6PtxUzTkLMI4tV0ADVqrQzvlDVJDKeASDisuX3I5XvLottMo0WjcHJ+4GTOEcjX
	 Zf0NrXo414EyEKcW25WukVmNg3EhAt8fHQNTyanNNOB01ZmHYuZvsZ7aR3lYF5Ztci
	 U54TDtwXNmBEAGkFXUMqM7475GtPacqG71NnFDWTXkeVqRHBWwfuKCcdX45ed5TYgV
	 qEWJDvfQ+DShw==
Date: Tue, 27 Oct 2026 11:16:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Ulf Hansson <ulfh@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: power: rockchip: Add RK3572 power
 domains
Message-ID: <20261027-uptight-stalwart-roadrunner-339a8f@quoll>
References: <20261026-add-board-ok3572-c-pmdomain-v3-0-70d614d3d921@qq.com>
 <20261026-add-board-ok3572-c-pmdomain-v3-1-70d614d3d921@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026-add-board-ok3572-c-pmdomain-v3-1-70d614d3d921@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 26, 2026 at 11:21:38AM +0800, Cunhao Lu wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Define the RK3572 power-domain IDs. The driver uses the system GRF to
> check firmware shift-ready status after powering on a domain.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> 
> - Added the rockchip,grf property.
> - Made the phandle required only for RK3572.
> 

Some mess here. I don't get what's above, but does not fit commit msg.
Also there are no commit msg between the tags.

> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  .../bindings/power/rockchip,power-controller.yaml  | 17 ++++++++++++
>  .../power/rockchip,rk3572-power-controller.h       | 30 ++++++++++++++++++++++
>  2 files changed, 47 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index b41db576f95d..f8afb0fabe80 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -43,6 +43,7 @@ properties:
>        - rockchip,rk3528-power-controller
>        - rockchip,rk3562-power-controller
>        - rockchip,rk3568-power-controller
> +      - rockchip,rk3572-power-controller
>        - rockchip,rk3576-power-controller
>        - rockchip,rk3588-power-controller
>        - rockchip,rv1126-power-controller
> @@ -57,6 +58,22 @@ properties:
>    "#size-cells":
>      const: 0
>  
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: System GRF with firewall readiness status.

What is firewall? Is it for access control? If so, we have
access-controllers properties.

> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          const: rockchip,rk3572-power-controller
> +    then:
> +      required:
> +        - rockchip,grf
> +    else:
> +      properties:
> +        rockchip,grf: false
> +

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
