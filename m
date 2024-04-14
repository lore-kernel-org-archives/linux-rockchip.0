Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0B58C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 18:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58yBy7sjZzjiY5ymxvCgLGZLIU1Orz/Rtg8OW5pxedA=; b=BvTnG8fhqUNOMP
	vkp9kmBxHsX0HiiHaGtpn00xXdD/eQhgBoOOEEc9yTprzQXJsLX/p4CyYM9nJptVJ7dyaGu/gaaG4
	BgeaDhgU7/QFDFe7cv5IFHRW0wa3d6OkDQ9XOMcRr/LcgYQ0NSlgkRprVZ6UZL7rcbzG44BbT0dr8
	SNm0Ez2LJwJGwis19vu3WDggGDayzGCLeVPzH71ED5cb52l8o9HtbCv59m48KGCU0mc6B/je/zaIM
	26n0T/cDFNUX3L82Gm62w8avSlvvAt3phkbH2rembtn+FPQKWN1G8I3yEWN2QrdSY2gdYHaEPU8yy
	tumJgg49yOOuDQ+aZ5TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4tR-000000067ef-32wV;
	Sun, 14 Apr 2024 18:47:57 +0000
Received: from forward500c.mail.yandex.net ([2a02:6b8:c03:500:1:45:d181:d500])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4tL-000000067bG-3qlf;
	Sun, 14 Apr 2024 18:47:55 +0000
Received: from mail-nwsmtp-smtp-production-main-37.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-37.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:3e2b:0:640:4907:0])
	by forward500c.mail.yandex.net (Yandex) with ESMTPS id 50D5D60DB6;
	Sun, 14 Apr 2024 21:41:43 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-37.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id bfj4CAaOquQ0-YSWkSvTO;
	Sun, 14 Apr 2024 21:41:41 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1713120101; bh=ncgw3ctShNCfiFpi/FXlW6n3ZHZ090VzmVPeVuJ4WG8=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=hx/WIMirvaFCrgVKL514C7kSdfwgUCLT9g1KU9X+RNRMBLfFYw8R3sVG8zDqFCx8M
	 2UyesONdvD5RNSKLbPJ5/tefVCpL7ghXTyPJdfumJxC0wRlEiR77wKffMwVmc68QZe
	 3NET90A/Xs/tX3c0BUmffpYeKTHkWj1L9Hp7HU2Y=
Authentication-Results: mail-nwsmtp-smtp-production-main-37.myt.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <0facfa2a-bff7-4cf1-b43a-349bba2f2342@yandex.com>
Date: Sun, 14 Apr 2024 20:41:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] dt-bindings: display: rockchip,dw-hdmi: Fix
 sound-dai-cells warning
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Mark Yao <markyao0591@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20240414151135.1774981-1-jonas@kwiboo.se>
 <20240414151135.1774981-4-jonas@kwiboo.se>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <20240414151135.1774981-4-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_114752_151783_4B768684 
X-CRM114-Status: GOOD (  16.04  )
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



On 4/14/24 17:11, Jonas Karlman wrote:
> The rockchip,dw-hdmi node can be used as a sound dai codec, however,
> dtbs_check may report the following issue:
> 
>   hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
>   from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
> 
> Add a reference to dai-common.yaml and add the #sound-dai-cells prop to
> resolve this warning.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---

> v2: New patch to fix #sound-dai-cells warning

Hi,

You are #4 that does an attempt on this subject.
Coincidence with my patches??
If other notifications could be fixed with the same amount of interest?
Please be welcome to pick some other random Rockchip related ones.

Johan

===

[PATCH v1 1/3] dt-bindings: display: add #sound-dai-cells property to rockchip dw hdmi
https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/

[PATCH] dt-bindings: display: rockchip: add missing #sound-dai-cells to dw-hdmi
https://lore.kernel.org/linux-rockchip/20240326172801.1163200-1-heiko@sntech.de/

[PATCH 6/6] dt-bindings: display: rockchip: dw-hdmi: Add missing sound-dai-cells property
https://lore.kernel.org/linux-rockchip/20231222-pinetab2-v1-6-e148a7f61bd1@mecka.net/

> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml           | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index af638b6c0d21..3285fff54416 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -15,6 +15,7 @@ description: |
>  
>  allOf:
>    - $ref: ../bridge/synopsys,dw-hdmi.yaml#
> +  - $ref: /schemas/sound/dai-common.yaml#
>  
>  properties:
>    compatible:
> @@ -124,6 +125,9 @@ properties:
>      description:
>        phandle to the GRF to mux vopl/vopb.
>  
> +  "#sound-dai-cells":
> +    const: 0
> +
>  required:
>    - compatible
>    - reg

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
