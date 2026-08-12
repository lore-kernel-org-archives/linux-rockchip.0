Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A22DC5CFEB
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 10:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e49AhfzDsrp1TKgkuuJEuyo9YsNT9yzHju+XJnJwUcA=; b=Ue1tXMvCZdoWag
	TCIDSSvlqnXgIUvv/038ZlbFBMk+EwQXLpe6cVZqdxD6yOXByrq9ziASvEK3FGCcHAVJFLn0lx52F
	tqowYVRPtmOXjC0h9PGz/rzDvO8HYthiQXT1X+vKyW61wbNs1QKtJPZEBlnmnYPRHy2ZLf8Zaqtj6
	oYTU6phwsbxSiv8myybyxCvZC1oav2nZAvMTzbZQvGIW1BRxP1xYU63y1pX3WGG/yOtLXSPUuD2YU
	WLDRKfFs0i8zuM4cGwUhhaxBEQIaamcD8oJbhWhaF200fpOeeCSqo+zusSoZQurpegiZDPFHlbTiT
	IH8fHaFi/UuuHNfJQNFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6Sn-0000000FvjT-3IiV;
	Wed, 12 Aug 2026 10:45:40 +0000
Received: from out-124.mta0.migadu.com ([2001:41d0:1004:224b::7c] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6Sh-0000000FviD-28uF
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 10:45:36 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=jEdVtLUq6P/fnp0VQPDEUME0wY+Z9SUacgM2EjSQXx8=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1786531527; v=1; x=1787136327;
 b=Lb9zeTXwfZRq4lP8U+qH94kExNo51/dTIFlKLdKVWplaZ0Dpqj+aKO/5DdeS3tnXwZ/8lEMz
 JLy5uI5E2n10ny5TIN/9/XYYOcR7IESbg03Wgh8Tl8uiyKG5o70cu4ba1RxBIUZhCTj7b1KysR0
 V5YbIGSFVNGgYBmNO0yjc8s9V/Jel2IukBV/25MC2LZawQtwHrb6dSoGjzsoHQnNSM5psGYDvbu
 7M+vONamHgUS9d44oaq0YQOnTRddVxQ66tq1PMTnIIx8z0v9GN2hb+2vPgg6pObYQVb2IJ+5onU
 FnwrfnGqJQkiRmAvxKP1SrQzN/ZxthxPChQK5BGne8LcA==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: from localhost (92.254.112.55)
	by smtp.migadu.com with ESMTPS id bdf0263f67b1a77a;
	Wed, 12 Aug 2026 10:45:27 +0000
X-Migadu-Scanner: mta11.migadu.com
Authentication-Results: mta11.migadu.com;
	none
Mime-Version: 1.0
Date: Wed, 12 Aug 2026 12:45:18 +0200
Message-Id: <DKMWKH7ECZZM.3GL6MUEUO2Q1N@cknow-tech.com>
Cc: <royalnet026@gmail.com>, <alchark@flipper.net>,
 <chaoyi.chen@rock-chips.com>, <diederik@cknow-tech.com>,
 <dri-devel@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <iommu@lists.linux.dev>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 04/10] dt-bindings: iommu: rockchip: allow the RK3576
 NPU MMU clock set
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Jiaxing Hu" <gahing@gahingwoo.com>, <tomeu@tomeuvizoso.net>,
 <heiko@sntech.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <joro@8bytes.org>, <will@kernel.org>,
 <robin.murphy@arm.com>, <ulfh@kernel.org>, <p.zabel@pengutronix.de>,
 <ogabbay@kernel.org>, <zhangqing@rock-chips.com>
X-Mailer: aerc 0.22.0-9-ge948bb7230f4
References: <20260812094106.1391698-1-gahing@gahingwoo.com>
 <20260812094106.1391698-5-gahing@gahingwoo.com>
In-Reply-To: <20260812094106.1391698-5-gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_034532_951336_594D17A4 
X-CRM114-Status: GOOD (  16.30  )
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

Hi Jiaxing,

On Wed Aug 12, 2026 at 11:40 AM CEST, Jiaxing Hu wrote:
> The RK3576 NPU MMUs need more than aclk and iface. With only those two
> enabled the MMU accepts reads but silently drops register writes: a
> DTE_ADDR value written from the power domain, while the domain clocks
> are still on, reads back correctly, and the write rk_iommu_resume() does
> microseconds later does not land at all. The vendor DT names the CBUF
> clocks as that MMU's interface clocks and its driver keeps every NPU
> clock on for as long as the device is powered.
>
> The driver side of this is already upstream, commit 841363ebb508
> ("iommu/rockchip: Take all DT clocks"), which switched rk_iommu to
> devm_clk_bulk_get_all(). Widen the schema to match so those nodes can
> be described. minItems stays at 2, so every existing devicetree, which
> all carry exactly aclk and iface, is unaffected.
>
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
> ---
>  .../devicetree/bindings/iommu/rockchip,iommu.yaml         | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> index 6ce41d11f..a3cedcaaa 100644
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -42,14 +42,22 @@ properties:
>      minItems: 1
>  
>    clocks:
> +    minItems: 2
>      items:
>        - description: Core clock
>        - description: Interface clock
> +      - description: Compute clock, RK3576 NPU MMUs only
> +      - description: Convolution buffer core clock, RK3576 NPU MMUs only
> +      - description: Convolution buffer interface clock, RK3576 NPU MMUs only

Drop the ", RK3576 NPU MMUs only" part as it is not future proof, not
needed, not enforceable and not enforced.

IIUC, only a RK3576 NPU MMU can and should have 5 clocks, but a non-NPU
RK3576 MMU should only have 2 clocks, just like any MMU for RK3568 and
RK3588.
So you'd need a new compatible for RK3576 NPU MMU and enforce that only
that one has exactly 5 clocks, while all other compatibles are only
allowed to have 2 clocks.
 
Right now, it is allowed that a ``rockchip,rk3568-iommu`` compatible has
5 clocks while a RK3576 NPU MMU only has 2. Both are incorrect.

Cheers,
  Diederik

>    clock-names:
> +    minItems: 2
>      items:
>        - const: aclk
>        - const: iface
> +      - const: npu
> +      - const: aclk_cbuf
> +      - const: hclk_cbuf
>  
>    "#iommu-cells":
>      const: 0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
