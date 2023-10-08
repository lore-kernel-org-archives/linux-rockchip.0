Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8435E95A8E
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 22:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoOozHI7Trsp0NwEgtAP8RH38u9RhTOKf/wxA/ukeUA=; b=CPBnsxOdLP4fgs
	ybt6OVqnT1XNfc1RqBenoTUInruJ7RPm2vKZQNngqcA8G8KLMwdpLuwlvbyd/ITTle8oM+ANTwZ22
	y/CZ0bSdSybtN4HxClok9BPl8IwoOJPKnHREa9D05KGzSyOe3FuvnEyWGR+QB78SizeRgXl/968Fl
	eyRMhHYNZRJCBPOWKn68XPZjmmsUuDhTemD9pV0MtZJaOPKL2N/wEwDtBoCawrO5qs+6p8BWI3V8L
	TZiE8fLGbV/xuvZ/tjplqOBpdnzJLyBbLTe+H9AT1NjTBI1FLKSnmU9wNA87p4ddfins1tBrVwQUy
	N8wdkhtltY/qvnyQl4pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpcCE-009Ouc-0W;
	Sun, 08 Oct 2023 22:24:22 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpcCA-009Otg-0J;
	Sun, 08 Oct 2023 22:24:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id B12C5B80D40;
	Sun,  8 Oct 2023 22:24:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 772DFC433C8;
	Sun,  8 Oct 2023 22:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696803856;
	bh=ic0lnfoCXKD3WDMoscE8ipyqDiOvCXq/LX99KO34oK0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TE0jXDcdB7UBIKU2EpNEJes0q6O6zF3wHeKoiDQTl1ItJ2zZ6vepumKZLbQSHkFae
	 sE0Ldo4Lh4B+oMMl7MO0qImf2YT/aW3Rfd4E7LRl7Lc++Gj5NPPq9cjwaVzyvcgfVa
	 WOSpbJ+A/05/ASoERqq1zJUGTxmymXTAlLvcBmANicbFuSUE8Tu6SAoJjkzS5PaM8V
	 tVIEKr3XVREMiDsBtrgaopCEENmJOLC2UdGO3+CYVqZ8i7ph23zpn//ieTrU41n8BJ
	 NoYTXJNHryeQdlTGM/lX7RLvqs6bb/ChaKxxVvc7KcVH8jaxAl8yL61JRkhpulrtjQ
	 K3Zi3N+wIsH+w==
Message-ID: <a78b98e7-4261-dd08-8ca7-88a74725c191@kernel.org>
Date: Mon, 9 Oct 2023 07:24:11 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 21/26] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3568 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-22-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-22-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_152419_071736_DC735745 
X-CRM114-Status: GOOD (  15.10  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> This adds the rockchip,rk3568-dfi compatible to the binding. Make clocks
> optional for this SoC as the RK3568 doesn't have a kernel controllable
> PCLK.
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/devfreq/event/rockchip,dfi.yaml      | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> index 7a82f6ae0701e..e8b64494ee8bd 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -13,6 +13,7 @@ properties:
>    compatible:
>      enum:
>        - rockchip,rk3399-dfi
> +      - rockchip,rk3568-dfi
>  
>    clocks:
>      maxItems: 1
> @@ -34,11 +35,21 @@ properties:
>  
>  required:
>    - compatible
> -  - clocks
> -  - clock-names
>    - interrupts
>    - reg
>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - rockchip,rk3399-dfi
> +
> +then:
> +  required:
> +    - clocks
> +    - clock-names
> +
>  additionalProperties: false
>  
>  examples:

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
