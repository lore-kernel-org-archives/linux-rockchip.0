Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1624EC02181
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfNu04aIPllBpPaJ8EekhLGAEwIrmqAPwdWHbu0n95Y=; b=jFC6z7hnQqaYz4
	MKsZBU5ncoKlRtNH3hKYGNIGZ+MFR3wlkhdHzgzjVmI/9tR600kNFj3XlBV3FQQEqvxfhlLUgkj+g
	Yz0CMgFFfcHWzAe+lQRqzZzKdVjLu6XJqGIpwXZKeQOwefKORlOhjrNXl7w6zoaCUb0VxJQvbFytA
	pZESkWPI0+KQ30Rcxyth5aR2KDG0jgZ6iu9adWgQpYLLjZWlIMZuSF9mlOGLhNKmHVGQN3nA42Ggv
	i64hWcFW5ykN9URd00JrZ5xlPUAArQqWzzMlp6HI/5GZbiNWyUufkVFJzvMvjhyeDmmGNHlg6Jhj5
	B0eeeN9hfn2JOJEqraLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taVkp-00000009faI-2heL;
	Wed, 22 Jan 2025 08:06:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taVjT-00000009fKf-0ExK;
	Wed, 22 Jan 2025 08:05:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 223CA5C06E8;
	Wed, 22 Jan 2025 08:04:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 733C0C4CED6;
	Wed, 22 Jan 2025 08:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737533102;
	bh=1/e0OSzJAkm9egv4lYiRA3flNXYIZL51hjzunRXP6Yw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uLKfsMmMhpnUUg6byVeYeaga1dPXE6WfDsDg3HAw127zk6NflkfKW4HaemNncVg5D
	 6zOzAktmQZNYP51oC5GopHcrtC/AY2O3RfboDaQGrBHKwLoTMUx/UZE+t1lr5noVoI
	 ge0S2i0NO9j2aFQ0oGFqE4IJrRrxG8jjKgsAKB5JVoYnbtOB38FDwmUAXXFcKNJLHR
	 MAokw5APZMy+e9aLDtdb5ECzM9q9m12kRXRy7yr57fuin78poFhD7dDt6aoKA82jdB
	 CEnHsZ+6Eq9NosSOPF6dlSHTeSuWSzS3Ceyb6un+maKhw3GpyuDxPJU2nYik9V8u32
	 C+d5W+1HWP4Yw==
Date: Wed, 22 Jan 2025 09:04:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, detlev.casanova@collabora.com, daniel@fooishbar.org, 
	robh@kernel.org, sebastian.reichel@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v12 12/13] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <20250122-amber-moth-of-upgrade-fa8331@krzk-bin>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103500.2528258-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250121103500.2528258-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_000503_183644_AB7A9901 
X-CRM114-Status: GOOD (  21.60  )
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

On Tue, Jan 21, 2025 at 06:34:57PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop found on rk3576, the main difference between rk3576 and the
> previous vop is that each VP has its own interrupt line.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v12:
> - Split from patch 10/13

Order your patches finally. It's v12 and you still send binding after
the user. Read carefully submitting bindings/patches.

> 
> Changes in v11:
> - Remove redundant min/maxItems constraint
> 
> Changes in v10:
> - Move interrupt-names back to top level
> - Add constraint of interrupts for all platform
> - Add constraint for all grf phandles
> - Reorder some properties
> 
> Changes in v9:
> - Drop 'vop-' prefix of interrupt-names.
> - Add blank line between DT properties
> - Remove list interrupt-names in top level
> 
> Changes in v8:
> - Fix dt_binding_check errors
> - ordered by soc name
> - Link to the previous version:
>   https://lore.kernel.org/linux-rockchip/6pn3qjxotdtpzucpul24yro7ppddezwuizneovqvmgdwyv2j7p@ztg4mqyiqmjf/T/#u
> 
> Changes in v4:
> - describe constraint SOC by SOC, as interrupts of rk3576 is very
>   different from others
> - Drop Krzysztof's Reviewed-by, as this version changed a lot.
> 
> Changes in v3:
> - ordered by soc name
> - Add description for newly added interrupt
> 
> Changes in v2:
> - Add dt bindings
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 55 ++++++++++++++++++-
>  1 file changed, 52 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 157a37ed84da..a2a6369c7b6f 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -21,6 +21,7 @@ properties:
>      enum:
>        - rockchip,rk3566-vop
>        - rockchip,rk3568-vop
> +      - rockchip,rk3576-vop
>        - rockchip,rk3588-vop
>  
>    reg:
> @@ -38,10 +39,21 @@ properties:
>        - const: gamma-lut
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
>      description:
> -      The VOP interrupt is shared by several interrupt sources, such as
> -      frame start (VSYNC), line flag and other status interrupts.
> +      For VOP version under rk3576, the interrupt is shared by several interrupt
> +      sources, such as frame start (VSYNC), line flag and other interrupt status.
> +      For VOP version from rk3576 there is a system interrupt for bus error, and
> +      every video port has it's independent interrupts for vsync and other video
> +      port related error interrupts.
> +
> +  interrupt-names:
> +    items:
> +      - const: sys
> +      - const: vp0
> +      - const: vp1
> +      - const: vp2
>  
>    # See compatible-specific constraints below.
>    clocks:
> @@ -135,6 +147,8 @@ allOf:
>          interrupts:
>            maxItems: 1

So this change moves to this patch.

>  
> +        interrupt-names: false
> +
>          ports:
>            required:
>              - port@0
> @@ -148,6 +162,39 @@ allOf:
>        required:
>          - rockchip,grf
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3576-vop
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5

No. You did not implement my comment at all.

So again:
"Why minItems? Nothing in this patch makes sense for me. Neither changing
existing binding nor new binding for rk3576."

To address such comment, come with reasonable answer to "why". Not just
send the same. It's a waste of my time to keep reviewing the same.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
