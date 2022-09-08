Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AFE9C38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 11:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ms8DwE80o72AIlyVK/BR7qJH2YAQdFP/WnSW5MBL/t0=; b=FKCWyiDZ2DMVQS
	9R+R264e64qU8s72OsytVkR/lXgFD59VSEdvpgIrVVy9QOBa8JhU32CARCTjvaXxpfwCZVH8zXqHU
	4sXpZFT+C4+tPAMT/UgwSg0PSN18rAyDIVq0lv8GpnbB++uuigxcZbjgvhNqfunB+ufgvSEYun3m+
	mlT+FZnne9yyxAYz5JuN15KFRzeETklszgwRqT+eL2pqv+BOrhGlBj2tquhp0RxjvfT03C1GbMKbR
	jUvOZUMCtISF9MbyHmcae1h88K888TqPkBFVj41GdsoUvoTrCgcgoz3N8mXy1esOKUmCoDwpR8VHl
	ypKNKmd2hBh9k4lURAyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWG2P-002u7g-Gv; Thu, 08 Sep 2022 11:49:41 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWG2M-002u5D-Gv
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 11:49:40 +0000
Received: by mail-lf1-x134.google.com with SMTP id z25so27320634lfr.2
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 04:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=srioTK6KsCPJy0yU+c6+tCB1HEEi/KQ9lo+WsB/Dyi4=;
        b=pe7ujTnMRAtFZJxkWsN5z/obj9g6VXrSDkMirgfCrTziYv9bw0qHLSdPjKnOaBZMu2
         gFJHxrTrCEmPkpDpAoKuRyCfBfxIyeyONErIBJBGmNEtLdN1GrlbWPUHvZzUtw5CmJvO
         CobR7oIhLc4ioRiIOpMh6Gf6ZVRwlpDxyn16h8IddatEBjNJsbEfifqrjI7tLDKNaksv
         mmxNKAYOMD8xwq+7fIaDoF5ZejgFoHy9vmRUnZDu4sE6yk5aYm7ePzKx1oXcd4SsFI1A
         +9IhMt7OczyNJ75DwKHYVHqgL9qNwbGI2NvA3czQldQWgNYoviTpLAlJBZN3mX/wEKQm
         awoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=srioTK6KsCPJy0yU+c6+tCB1HEEi/KQ9lo+WsB/Dyi4=;
        b=TYPIkqtHzKTfhmeuDLF9lfUxHJ3TCpEwNaH2pRGE5Guybpdl8fmSGSwb3yBAgJH6rW
         kE41RgQIsGYhFOij8RbiGxWYmr1r63J9bJKjKWDm887UvouWzQVKQI0+yNMqCLWZOZKC
         h5P4nQmM9J4Lb+FJRLGOs2gJaM+nAjNfleP+qBkSq/tXKaOq7UuIWcsG7vUJZuMDjylK
         41+Czu3KqYxLbZqu4JL4j9WzjDdCFaGh/4+7OB1serj+EYtS0IHnIeZj66tCBhoe5P38
         47hj/AWP42nWfu7LzD3Ib2SWRbWjBbgrjeZcIFuvhtqnPNvLD68PqcIhBI8P58Qw3iwi
         z4bA==
X-Gm-Message-State: ACgBeo1zQ+nBF+u09DG74tlImfQbyxftQzKip/VGzKzyrQ3zYfXL4EcG
	0TqpTdmOe+pZVI/v9Q/dfamjSw==
X-Google-Smtp-Source: AA6agR4oUsEtw6uTpZlyCNzA5SlmDM2bsf9JfE82EcGp2pWiO/h1kTgoyWh83rCQTlx51j+HQcNLnw==
X-Received: by 2002:a05:6512:1520:b0:492:daab:8382 with SMTP id bq32-20020a056512152000b00492daab8382mr2830583lfb.151.1662637776115;
        Thu, 08 Sep 2022 04:49:36 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o9-20020a05651205c900b004947e89ae4bsm202530lfo.294.2022.09.08.04.49.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 04:49:35 -0700 (PDT)
Message-ID: <aeabc681-9416-d25d-693a-30ba99f1796d@linaro.org>
Date: Thu, 8 Sep 2022 13:49:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/8] ASoC: rockchip: rk3308: add audio card bindings
Content-Language: en-US
To: luca.ceresoli@bootlin.com, alsa-devel@alsa-project.org,
 linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
 <20220907142124.2532620-3-luca.ceresoli@bootlin.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907142124.2532620-3-luca.ceresoli@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_044938_622051_E86A3D08 
X-CRM114-Status: GOOD (  20.26  )
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

On 07/09/2022 16:21, luca.ceresoli@bootlin.com wrote:
> From: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> Add device tree bindings document for the audio card based on the internal
> I2S of the Rockchip RK3308 SoC.

Use subject prefixes matching the subsystem (git log --oneline -- ...).

> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> ---
>  .../rockchip,rk3308-audio-graph-card.yaml     | 50 +++++++++++++++++++
>  MAINTAINERS                                   |  5 ++
>  2 files changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
> new file mode 100644
> index 000000000000..8445a69dcdbb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip,rk3308-audio-graph-card.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3308 Audio card based on internal I2S
> +
> +maintainers:
> +  - Luca Ceresoli <luca.ceresoli@bootlin.com>
> +
> +allOf:
> +  - $ref: /schemas/sound/audio-graph.yaml#
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3308-audio-graph-card

Is "graph" part of device name or you just put it there because of other
schema? The compatible should reflect the device name, not some other
pieces in Linux or in bindings.

> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    sound {
> +        compatible = "rockchip,rk3308-audio-graph-card";
> +        dais = <&i2s_8ch_2_port>;
> +    };
> +
> +    i2s_8ch_2 {

No underscores in node names. Generic node names. This does not look
like related example...

> +        i2s_8ch_2_port: port {
> +            i2s_8ch_2_endpoint: endpoint {
> +                remote-endpoint = <&acodec_endpoint>;
> +                dai-format = "i2s";
> +
> +                /* The RK3308 acodec has no clock dividers, use the CPU */
> +                bitclock-master = <&i2s_8ch_2_endpoint>;
> +                frame-master = <&i2s_8ch_2_endpoint>;
> +            };
> +        };
> +    };
> +
> +    acodec {

codec or audio-codec

> +        port {
> +            acodec_endpoint: endpoint {
> +                remote-endpoint = <&i2s_8ch_2_endpoint>;
> +            };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d53a8e74cb1e..079bdd95dc49 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17594,6 +17594,11 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
>  F:	include/dt-bindings/sound/rockchip,rk3308-codec.h
>  
> +ROCKCHIP RK3308 SOUND CARD DRIVER
> +M:	Luca Ceresoli <luca.ceresoli@bootlin.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
> +
>  ROCKCHIP VIDEO DECODER DRIVER
>  M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
>  L:	linux-media@vger.kernel.org


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
