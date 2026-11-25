Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D717606A323
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 12:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Odg7bzpa;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=QjuIEi9S
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=54byNPvjZNluOCvrdQWTmhnJgzlHSpogeBdndeZK2Ig=; b=Odg7bzpayJU7AtMUDv6bNZ3oq2
	PNG3JjC6FzZIAnnE5Q8+7aXVt0yHMyCGtMMd2FHA8wtwC74dlTQVA8tArZQ9xoFJvvcyeOMsvdnH2
	cm+M4v4+h460R4bYznfgGQnNLmFI+sKmKwkQ5GVryqPL/8NMadQsUl+GepckrBBoHs5ISjnhsRSoq
	2nEFHB8KkCvZuF7WNLusJzNpKLekTuprn2AeXNn4jEiY7Zc5aDNxOfCy5tF6aKj+6p/P9fknKgMhm
	kTOuzBO0xApqoB1USTNm1eJxbZdeayqIFkOW7GwI7IjCnAG/QQ/cWagg+hkpG5ySfSAZpKnIlOz1e
	4Xc/Z9ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBgU-00000009l5s-1AzB;
	Wed, 25 Nov 2026 12:01:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBgT-00000009l5k-0ixt
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 12:01:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B689F4098E;
	Wed, 25 Nov 2026 12:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F0AC1F000CA;
	Wed, 25 Nov 2026 12:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795608068;
	bh=bUwHBoFCV/3Z27mWEeTKGjzMbYasPj0mIvhyyLXjasY=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=QjuIEi9Sc7PuxMQCTt1tdExnmDMPnhqPqVz1KD3ClP8PdYMtvoSWuOrO6HAYxmPAz
	 CNWlZ2wE9nMs5a4tkTI+4TA+A/PnLIRIm7ZqaeIl69RJ5j4oGwsLL8q1Gqx3qsBGHg
	 Kh5VidsI4cxzflBIqnsp0rWMn/t7bxHO869pzAm5sXNEnxQt2zN1Mqx44esZ0WjAfT
	 GRMCvuQmxemAuuCvhqOuS2OeaaVAD6SXFyc5lq2q5zVx4hvNYI0GkXC9twLWMHkDy2
	 SmzeE/2Pw3QodKnU/mr+Gf4dsi4jtMVvASpsVpnIyJURg97W+G1VcrYL+nsbU+pG//
	 ADodaVfb/v4Pw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH V4 1/3] dt-bindings: power: cw2015: add cw2215, cw2217,
 and cw2218
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 shawn.lin@rock-chips.com, linux-pm@vger.kernel.org, heiko@sntech.de, 
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, sre@kernel.org, 
 t.schramm@manjaro.org, xsf@rock-chips.com, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20261124191346.434143-2-macroalpha82@gmail.com>
References: <20261124191346.434143-1-macroalpha82@gmail.com>
 <20261124191346.434143-2-macroalpha82@gmail.com>
Date: Wed, 25 Nov 2026 13:01:06 +0100
Message-Id: <179560806608.84329.5895350466243051992.b4-reply@b4>
X-Mailer: b4 0.17-dev
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-24 13:13 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add bindings for the Cellwise cw2215/cw2217/cw2218 i2C interface
> battery gauge. It is similar in function to the existing cw2015 but
> with a different register layout. Each of the cw2215, cw2217 and cw2218
> only really differ in the minor specs and the hardware ID they display
> when queried. shunt-resistor-micro-ohms is a property in use for
> multiple devices so not appending a vendor prefix to it.
> 
> Move the minItems and maxItems for the battery profile to a conditional
> based on the compatible string, as the new monitors require 80 bytes of
> firmware instead of 64 bytes.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/power/supply/cw2015_battery.yaml | 41 ++++++++++++++++---
>  1 file changed, 35 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> index f7bde324153d..992cd5f6a216 100644
> --- a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> +++ b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> @@ -14,12 +14,13 @@ description: |
>    phandle in monitored-battery. If specified the driver uses the
>    charge-full-design-microamp-hours property of the battery.
>  
> -allOf:
> -  - $ref: power-supply.yaml#
> -
>  properties:
>    compatible:
> -    const: cellwise,cw2015
> +    enum:
> +      - cellwise,cw2015
> +      - cellwise,cw2215
> +      - cellwise,cw2217
> +      - cellwise,cw2218
>  
>    reg:
>      maxItems: 1
> @@ -31,8 +32,6 @@ properties:
>        it is to mail two batteries to a test facility of CellWise and receive
>        back a test report with the binary blob.
>      $ref: /schemas/types.yaml#/definitions/uint8-array
> -    minItems: 64
> -    maxItems: 64

Nothing improved. Broadest constraints always stay here (explained also
in writing bindings).

Best regards,
Krzysztof

-- 
Krzysztof Kozlowski <krzk@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
