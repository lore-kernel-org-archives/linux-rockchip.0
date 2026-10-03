Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39CA9CA5FE3
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Oct 2026 10:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jafFzErJmAOOGxVhMI3dnDlDp9M9IEZ5K6yPyEIHVQ=; b=iPsJM+M/G6za3P
	gHMAVkzfFaC+uKguN6bM3YEAKFGXlX9rILJPXkX+6upihw00JACp3gYv5Sb/iOmXmXJTJuv9c3p5/
	atBAu/oJv1Dmfp2tUO0tw05ytcNgQ1NxMiPTZ0sWsPWclbSJARWbRgEFdTSUZzAe5W3ThU3Divwv1
	THcRimqw34k1K9wiZwBYnyxlADkqhwjBu1Mj4MzcJ2PZks3UynhcqE4UjvMdrLea1AAxCxQU62OaB
	/Q0211IRDjAmmBUra0rviYcwllFu4y6q/QaZOcaYLxvGPC5oiCSufDX97meujOVUujEoQWwkDARzw
	fGYT36Y4YmHNcTR3MhYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxGI-0000000DO3x-2Mc0;
	Sat, 03 Oct 2026 10:46:38 +0000
Received: from mail-ej2-x0d.google.com ([2a00:1450:4864:34::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxGD-0000000DO0C-0baC
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Oct 2026 10:46:37 +0000
Received: by mail-ej2-x0d.google.com with SMTP id a640c23a62f3a-c2e3dcfe205so85218466b.0
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Oct 2026 03:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791024391; x=1791629191; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=RwKHh70JY+GXTFZ9akuGUGzP+mt92O/1MI1gWM+jXbk=;
        b=xRGDbdFysW8TdBdSKvddTkMIdCq81c+tLWRd9K7poTrx7fjauewEGfPQ38qEUD1G0K
         rCkRyqK1s51L05PAcIF7dFWEO2sOZa2/IiZpFIIiBFUcSt2bhpedTlvzZEPAXw4t+joG
         Lb2HEWbWpNDqs8LKyuurHYqQd4GWIkB0phz5wDSgt5vpB2Z2PRjWan1ptuaWGtlx+dhP
         t1CWuqzVUkr4wEg6c/jaXUCpaJKhYohsY+eYmJSBQyjYiSW7dKWabCrS57+DZuWEA5hg
         Q9lbtwgSbJo3P5xuXXJ1OrYRWWz0q7AFrAxAXKd/Md85F5i9bTySg6fl49y1HPlD7Vsi
         unLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791024391; x=1791629191;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RwKHh70JY+GXTFZ9akuGUGzP+mt92O/1MI1gWM+jXbk=;
        b=GNVziuYcWTIEscHKkL+bVZWqKVoZ0NIFjbhgRk2rTk9IEdZNu1C+XH3RqzShujCu6J
         nYjoQ3vkt/p2W9Et6IGbLhA5aE//eVodOWL2ptAhERaw/CaBYchONfXhH6f2lQ8DRA1A
         9YkEWumg+Sr6UOM9arNEUdKKMuQ+961sCeHf3v1cuQdJluawf7ZWHI4NLcU7YqMyifwG
         izAfSpBTn7+xrZYpMVCegQRiyu5fnV6duRgJHnPfSTwr0xYCCMzgjFpousD8tlKCR+KF
         kn+1teZxAa1IZjiqBtMVTjTSLTc+xOy943gNbrhTidQs5rPPrLavKxTv91Lrzkp5UrFZ
         DFmQ==
X-Forwarded-Encrypted: i=1; AKwUvBy5nMt9yM/Bp1nCu0ay6m56Nl9BE214dIBeIf34Z5NSI6j/Q6/jL40rkVXx5E+o5KFEqfR2U/yVjLEW4z4fmA==@lists.infradead.org
X-Gm-Message-State: AFuF++kjO16p3VIUF3UyEfXjreuL77mCq6z55q3+aTYyOTDLJk+0d7sT
	mfq9xqN+hZSXJBco41Eyl8EXIjYyK8V6N6EjYBCNFD6ISBpEgrdgZImu9Gzpq4Rx2Mc=
X-Gm-Gg: AYBFou35oCJD3EL/HKN+8QMlR4Rf8LiRQ7vnARex80vr2S8qap0qvP5gNiu0hGf2RTm
	KgQZ5Q7a6UP+XzJ/Oyh8k1u0kdDeKfHE0zjntac+zV6H4JxId/7p7U9S7hiF9NeX7sDXiKwjlOS
	uKO+a5NZHL4K6CM4MzRNXLYq4mZs7r2QiZcI0WFCDn6k5z4kxg5ZRC/JcV5KNaTeahqV6Z5IxNo
	VF80rUBt0tG6mr1ORg4BU1nzWBeEIlc3beeN+g/sVUwecPuHFnHmFEvnTNt1EBZUcck1vRxM10J
	NsmJ59Bni3YcrlgG5UTb3sQ2mttHOnJfHaoo99+C6No1ACWNhF5ulHGd/rHTrbUKK+hdjLmHWwV
	LM4SyBy6XIy3QrUkJVF465VSor2i89fTbz8steGbI3SijylI7hquylC4l5tkcW8JzYbpkJrnOKY
	rbWKwwfjdMI9QIsw3ba7Zn/7kiJxOqZDTBlXhQ8hXduEZtzYMEZjBrtMoojNI4VvbhMeq4dTaA9
	s1AgpY5Mc4=
X-Received: by 2002:a17:906:f58b:b0:c2e:30a9:c04f with SMTP id a640c23a62f3a-c2e4ad155a4mr454607266b.13.1791024391402;
        Sat, 03 Oct 2026 03:46:31 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e4cf5f4e4sm192822066b.42.2026.10.03.03.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 03:46:30 -0700 (PDT)
Message-ID: <61a2d75e-4061-4be9-ad8a-a85c5bf7368c@linaro.org>
Date: Sat, 3 Oct 2026 11:46:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rk3576 variant
To: Amin Gattout <amin.gattout@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
 <Vv2QfKmkyPTU5VXXS1TYn-cg7DX3OD7InbT-5UjiZLMHVPPDWcj-0hgl7PJxI7ugjmudNTZJfhXCisY2fExubQ==@protonmail.internalid>
 <20260915-rk3576-dphy-v2-2-b56e68b54b8c@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260915-rk3576-dphy-v2-2-b56e68b54b8c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_034633_229906_A0A56050 
X-CRM114-Status: GOOD (  18.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 15/09/2026 11:42, Amin Gattout wrote:
> The Rockchip RK3576 features two MIPI CSI-2 DPHYs compatible with this
> binding. Unlike the RK3588 variant, each PHY instance only has an APB
> reset line, so add the new compatible to the single-reset group as
> well.
> 
> No fallback compatible is used because the RK3576 DPHYs match neither
> existing variant: their control bits sit in a dedicated CSI-DPHY GRF as
> on RK3588 (rather than in the shared VI GRF used on RK3568), while only
> a single APB reset is wired up, as on RK3568. Falling back to
> "rockchip,rk3588-csi-dphy" would make the driver request a second,
> non-existent reset, and falling back to "rockchip,rk3568-csi-dphy"
> would make it write to the wrong GRF offsets, so dedicated match data
> is required.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
> ---
>   Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> index 03950b3cad08..92d0c961f4c4 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> @@ -21,6 +21,7 @@ properties:
>         - rockchip,rk3326-csi-dphy
>         - rockchip,rk3368-csi-dphy
>         - rockchip,rk3568-csi-dphy
> +      - rockchip,rk3576-csi-dphy
>         - rockchip,rk3588-csi-dphy
> 
>     reg:
> @@ -89,6 +90,7 @@ allOf:
>                 - rockchip,rk3326-csi-dphy
>                 - rockchip,rk3368-csi-dphy
>                 - rockchip,rk3568-csi-dphy
> +              - rockchip,rk3576-csi-dphy
>       then:
>         properties:
>           resets:
> 
> --
> 2.43.0
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
