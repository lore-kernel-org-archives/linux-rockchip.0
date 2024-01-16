Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59BC0C47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 19:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/ef/WddJAeJvxTxXYzC+wYx2ErujQYTyI/86+MJ1yc=; b=TZ6S/MIKzJbU9a
	YIdaNVTYGfqLLsZrIApuvKL6GDj/GPqABhvY1z3kaub/UEz/QnP5FDVXUTn3T4JLeN3sgeoC/8TFT
	Q4DNmg1rqvf6BMgH49UM5Ijl91fqzFjs9bvjpqKlM+jctaZdstEZAFyLv5JocT84rzTl+ensVVXoq
	maEOIAIv1LrAbbCTFoItGpIB6rXLaZdEwMqeRXGQ7J8OAfwBGvvbSmAZCz40hrsx2C0lV91O6qLnX
	Va7Py2BYWm+TMMJM4KHWORJCUDvRozhoH+Ki7GFShTALAQyzf7f2DC79gvwxkbO4ZUbEGgbjbh2Qz
	zK8KhL6TQsuw1id1TBXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPpFF-00D9nw-1y;
	Tue, 16 Jan 2024 19:37:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPpFC-00D9n2-0n;
	Tue, 16 Jan 2024 19:37:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7DC23B80EAD;
	Tue, 16 Jan 2024 19:37:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 961F9C433F1;
	Tue, 16 Jan 2024 19:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705433823;
	bh=Yqhm26i3ttwzsTuBQPuzExYobWq+0zPxlrgFkTwLhD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S0di1nzspkf5zkxcuyMcBuF1jlJO/YeSBoFm106PmraSymsKFeJ8cWwBQiEjc94cr
	 xVEm4k/F6gAPJD01Z7C979z+P3vEZ6z1QW0buB95KdQNZ76wSROUmSKiPUJk6YMQu4
	 ejN0xOaPEcoqmXUWw9fJikrutJySDIn1volektWZMWtpd9CgZtAIv32pdWJHqDYpcI
	 juhk6xgGl59/TVSMNNOmAoCPldQYQgO0EbUpVp3B04Y2K4hcTLkeEBcN0bRBBkANwP
	 1NsY7jSDqI0Z1t102lHnLLCwKY/0a7SzLM7umi6CxYn6Zh23O4no0lABUCE9q3yNXb
	 HBq1o76rlX3SA==
Date: Tue, 16 Jan 2024 13:37:01 -0600
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: rockchip: Add rk809 support for rk817
 audio codec
Message-ID: <20240116193701.GA286794-robh@kernel.org>
References: <20240116084618.3112410-1-tim@feathertop.org>
 <20240116084618.3112410-2-tim@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240116084618.3112410-2-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_113706_588795_B1C5D79B 
X-CRM114-Status: GOOD (  22.89  )
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

On Tue, Jan 16, 2024 at 07:46:16PM +1100, Tim Lunn wrote:
> Rockchip RK809 shares the same audio codec as the rk817 mfd, it is also
> using the same rk817_codec driver. However it is missing from the
> bindings.
> 
> Update dt-binding documentation for rk809 to include the audio codec
> properties. This fixes the following warning from dtb check:
> 
> pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks',
>    'clock-names', 'clocks', 'codec' do not match any of the regexes:
>    'pinctrl-[0-9]+'
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
>  .../bindings/mfd/rockchip,rk809.yaml          | 30 ++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> index 839c0521f1e5..bac2e751e2f2 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> @@ -12,7 +12,7 @@ maintainers:
>  
>  description: |
>    Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
> -  that includes regulators, an RTC, and power button.
> +  that includes regulators, an RTC, a power button, and an audio codec.
>  
>  properties:
>    compatible:
> @@ -93,6 +93,34 @@ properties:
>          unevaluatedProperties: false
>      unevaluatedProperties: false
>  
> +  clocks:
> +    description:
> +      The input clock for the audio codec.

How many clocks? (maxItems: 1)

You can drop the description.

> +
> +  clock-names:
> +    description:
> +      The clock name for the codec clock.

Drop.

> +    items:
> +      - const: mclk
> +
> +  '#sound-dai-cells':
> +    description:
> +      Needed for the interpretation of sound dais.

Common property, don't need the description.


> +    const: 0
> +
> +  codec:
> +    description: |
> +      The child node for the codec to hold additional properties. If no
> +      additional properties are required for the codec, this node can be
> +      omitted.

Why do you need a child node here? Just put the 1 property in the parent 
node.

> +    type: object
> +    additionalProperties: false
> +    properties:
> +      rockchip,mic-in-differential:
> +        type: boolean
> +        description:
> +          Describes if the microphone uses differential mode.
> +
>  allOf:
>    - if:
>        properties:
> -- 
> 2.40.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
