Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 488B9EDE9AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 18:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5zqs1pDXrFd3Ea0OoEL7dNzTVT1aDvBoUqGKiYJ+Eg=; b=X6wy7hFzWCdKa6
	e3M/z3IE63OYKedoFhUgdBCnv23q5EmwOt0qCRX9NmoCRNLuM6bpkCRcdoilLYH0Mev9HQyJjsz6s
	IeGUiFEAvfs+SqkZX3YlyubHcF6Gkf2GjMeAbYONc1VIMfcUIMMY2H4eEFLTNVumhIKcT/haZyPGp
	8xQJ1steYllb0uR0ogjkWiX6Eq+ywzh15MgcFPsIdigvxBmf+MC2rk8ZbxeQT50xj8UyzsP2KQv6+
	9SRvwNgktvjIRS3faXHgfhAN+jZ0H4zXXQ+ar1kMfGM/74rjEQ4f2X+MB024PCInrX1idY24/+Mt+
	iSZvHT5j53tJ/RnKscDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5wY-00000006njb-1tHn;
	Tue, 10 Sep 2024 18:50:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5wW-00000006ni5-1lxH
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 18:50:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Sx4FZQB8RHe3sA0KWr5nSPb/p5+LM+1JV9H4EShfOOM=; b=d5doWuWcHSbAkOJjGwQvsnD3Vo
	OTFpvF7F97FHE9ve8FsxD0zuUG2fFhSBoxbpiY6lhFxGAoBqaednIKatNYK91XEVgxHiX8POPvNBZ
	0WjIsH1aqvpa8D9rOO4qA50qKwCyUrHaMvwwPj9CyCbNLDum8x5Z0mMUFRkV1XhdEadZD9Hn6bF+o
	iJk9dyr1xM7dBIE/069+/jT3IjSCeXT/bxIK64Q925tLlT3q6PB67xSr6hsDhCL3gaT2kmdohVQJ8
	BTumjEAukRuoKEb0afjJ2XEpNSDH9/DeuJh8kYaGNe97cNWsOksqRX6spTSxchzXxW9zD6Zvg/fj5
	bA1n7VbA==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1so5wQ-0007c9-Pq; Tue, 10 Sep 2024 20:50:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v1 4/6] dt-bindings: power: rockchip: add regulator support
Date: Tue, 10 Sep 2024 20:52:47 +0200
Message-ID: <2373450.IPqQCg1nHW@diego>
In-Reply-To: <20240910180530.47194-5-sebastian.reichel@collabora.com>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
 <20240910180530.47194-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_115024_497665_2B574BF8 
X-CRM114-Status: GOOD (  19.40  )
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

Am Dienstag, 10. September 2024, 19:57:13 CEST schrieb Sebastian Reichel:
> Add optional support for a voltage supply required to enable a
> power domain. The binding follows the way it is handled by the
> Mediatek binding to keep things consistent.
> 
> This will initially be used by the RK3588 GPU power domain, which
> fails to be enabled when the GPU regulator is not enabled.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

That we have regulators supplying internal components in the soc
is the case for all Rockchip SoCs, though it looks like thankfully this
hadn't bitten us before.

So having the ability to define those supplies makes a lot of sense

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml   | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index 0d5e999a58f1..0b4c5b174812 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -131,6 +131,9 @@ $defs:
>            A number of phandles to clocks that need to be enabled
>            while power domain switches state.
>  
> +      domain-supply:
> +        description: domain regulator supply.
> +
>        pm_qos:
>          $ref: /schemas/types.yaml#/definitions/phandle-array
>          items:
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
