Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05F59C36002
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Mar 2025 02:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojubLJWJmvFYAONXi4U+LTk+cYC4r8/nxmKdQkMKqG0=; b=OWyPZ6CB4633WR
	NoRdZslKkpxmm2kcy1IjpmF+lYR9mxGonRITHfGTmIb3Ary0wlswstnex4AOHYnMrhFFIq0NqaYto
	Nlt8qeaU+1QhRMqCgRbekbZjZ+eJI3K/2sqhBP+QsuyP7ATs7YlpccDtn4GVkmDxb6Hs6Zlx8lLuH
	90uBTJ6dyEHvN7j7Xntsqcxo6ewbcokADorCjcGDMLYcIEEBVaJowOeE6JKlWJ/PqUt/WNWIj7ZIc
	sAArHzlNAtP7A5vD63KuQ5uD6ZHgCqTMjQct2Y6JxcCxytzYaJ+kx4LavB23rpomMmVVIVAnlYUma
	kFO8TczVQ/wJJGnuVrFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twuO7-00000004i9T-29QL;
	Tue, 25 Mar 2025 02:51:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twuMO-00000004i0j-0dRu;
	Tue, 25 Mar 2025 02:49:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7409E5C585E;
	Tue, 25 Mar 2025 02:47:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5F37C4CEDD;
	Tue, 25 Mar 2025 02:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742870987;
	bh=kzEDoLXYoRLg4bIFcw01+2FmmdfSHx/Mqfyj4i5mSJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G6k6WhZwnR8EXCsrq4/rrPLd3oVKgxxPC4tvPKQ/220SRREdm3++oCCG3eE6gDe4m
	 M8p6zv3nKFNSdTFGJWndCQOYPYyZTi7LziREVsW+nH27li4kSdLTMDJbu8OtGTET9p
	 l5ckX40XxsIqwBxkAEEwf5B5bdtmkUWqnFY5LWGvNHSyFUpAXQCEDzFU649/Z9x+z3
	 2KGeK1ZhKt9ZKPCZmxv9E8/SiFBuQD9vp+J1FJvGW+CZS+w+Jr3DgAwmzJn/s3+yEO
	 +BFgNPQTmbGXy7oQ+dq2G5D4Q7ZylEGLxTZeY5WIU6aDxsnyobIhdqcNWeCGWSCuDk
	 n1sDAvEUO1QaQ==
Date: Mon, 24 Mar 2025 21:49:46 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
Message-ID: <20250325024946.GA1544352-robh@kernel.org>
References: <20250324-rock5bp-for-upstream-v1-0-6217edf15b19@kernel.org>
 <20250324-rock5bp-for-upstream-v1-3-6217edf15b19@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250324-rock5bp-for-upstream-v1-3-6217edf15b19@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_194948_231748_45E12566 
X-CRM114-Status: GOOD (  13.86  )
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

On Mon, Mar 24, 2025 at 06:04:24PM +0100, Sebastian Reichel wrote:
> The Radxa ROCK 5B+ is an improved version of the ROCK 5B.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Same patch has already been acked here:

https://lore.kernel.org/all/20241226005845.46473-1-naoki@radxa.com/

> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 650fb833d96ef67ea1bba33c0767777378a38fa7..fe1fe8fe52fa3594a0da8e0263cb46949436a021 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -946,6 +946,11 @@ properties:
>            - const: radxa,rock-5b
>            - const: rockchip,rk3588
>  
> +      - description: Radxa ROCK 5B+
> +        items:
> +          - const: radxa,rock-5b-plus
> +          - const: rockchip,rk3588
> +
>        - description: Radxa ROCK 5C
>          items:
>            - const: radxa,rock-5c
> 
> -- 
> 2.47.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
