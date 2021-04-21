Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D8EAC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 15:14:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BCC616144B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 15:14:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BCC616144B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mezUwguIFI4zp2yvx9Bz45wdxa6OoVpMfSul6QAj9Fk=; b=KP7Deo33LcN88vlRo1uxKNAbY
	7meZrJoIDX7DWbwBtJz2iBKK7DhKym0NPTjdtnR1MaMRvavhf+4WKb5ayX3wEpH5FFVfvIJJoPOZQ
	KPiB0UGx1CW15qig4YCAj8/3UT82o8t8IXlTB37ljc/xt9TeRTXPfa8kwgc2/bbp0xBHKQcAwqaLD
	E3zpognKZkRspdPOrFp/K9IvWuFAnUUyJzwewRvq/nkrcR4UitF98Rtg2xfg491NBx9Z+GZucHlFC
	0zVqpkL00goYd/53/4eDmihLiHM3Iy5GsxTjvAu0sjE2zNGdJzJeMMhe4oGIPWUdUtPYil9ZLDKiQ
	8JcG9iJig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZEYN-00EeQe-Cc; Wed, 21 Apr 2021 15:14:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZEYB-00EePX-NN
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 15:13:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bXPVXy/1jXKrltuMJNC38xdPZ2uBC+6lqk1pZ76QL1U=; b=aK+Wve4zsuQcBEGLdeAEHoaJhU
 ZpC0FLTJs+pVO67em5uLACQpgR1rjfkiU2WSte6XwmRR2C4gjEeQeHsBCpI+ZtCty4wwnNpYtWEOp
 U6cuS3f50RmCF36ht+0Wo+aeDEKYjxdlA9PcyXTtfdqP/oypAwOpp2dVYsPwLGogw6Kq2f1KEXchB
 1PxmJ6K4Q8beTN4KveY2XJKJzXg5Xt29/odLYzqbWMw8QmXB0ICPRz9ry74RfOW745mL8CA9yrVhe
 pAi/6wCPCDpXp7Z/Hk7hdyE6QtVR8JC4u3uqQ2gleswpSPDEo7+ik/Tf57NnhkqSGNAAKaLMth5aE
 SGAAlc9w==;
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZEY6-00CzNn-N4
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 15:13:58 +0000
Received: by mail-yb1-xb33.google.com with SMTP id k73so41299649ybf.3
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 08:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bXPVXy/1jXKrltuMJNC38xdPZ2uBC+6lqk1pZ76QL1U=;
 b=BW3+XWMr5mN2mKApFiwj7vayhL5WXOHJvcgip9ht9GaAcZdgUv/6PY5VNfWU+sop5B
 O6kvK+Yy7L4hTiyo++b3bkXmTltJVKq7NFOCzUPHL2iYebSazwLh6GNh1+g/1T+cc41i
 Yj5f1a3+egNr3reEx6rS2ujUvgVOBCx+YhCtcGep6hTK4fFgjWVOq76bVE+rvPGlPMvn
 xYS1x+sMMWsUOTZzV9tB83Cl3zMJXsVl+K+Cwb1i115/Mga08utgzW7uUS42k5I9FjwB
 +KWDXoXV+PS0KJBNXunt2Ll3Epd6yioqTrWMU88+2tV9wwuCLhYvussofDhhsheZPPXu
 S0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bXPVXy/1jXKrltuMJNC38xdPZ2uBC+6lqk1pZ76QL1U=;
 b=tP6e0VojhyCrYi0tccQexVFEbcd13v7dQTuMP1i68rYxt9un724aLoWQfeElWSt7XB
 trgLHVstYNJOUUTeWY9LVO/kdNu4YgMVXkvfLYr7gzQA2TuojjFyttJcwf910bAMqRIL
 IWy/cJvEzZGFK8v1e6X6ixKt5Z3KfNK1K6ZJ87Mfu8/L57uxX2pBy1NknEopI/kd3SEr
 F7j1OdYGsAfavht1dM+I4jme2Bj4+HnUn3drzwgSo0Lcha2pEiQogRve7hWg2Ho/0coR
 I6+EbdMY8syW+/ZBl+RyUiBtvfN2c6bqiJmiNmo9clyuq5Sg0m0TG7gcBQuTfmmzuck2
 fPSA==
X-Gm-Message-State: AOAM531KmGklSwwTaqjyWzj89X9kyrNiRM/MXgD38bXxUoGFSmAgp1SB
 9pYkh18w0ysMHitcAaNVTwTYY8G7vnoLRzuMdgSrnw==
X-Google-Smtp-Source: ABdhPJyTdWO6d+q9fhd07IL8nMwHUj2gsRujzQ7X0vesq+RzLMGAAF5jMlqXYtBOrbLZuoSHBig0sSqGcEuhxpz0/H4=
X-Received: by 2002:a25:1905:: with SMTP id 5mr32679392ybz.302.1619018032125; 
 Wed, 21 Apr 2021 08:13:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210412223617.8634-1-jbx6244@gmail.com>
In-Reply-To: <20210412223617.8634-1-jbx6244@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 21 Apr 2021 17:13:41 +0200
Message-ID: <CAMpxmJX7=A++ubOr3xQ3_Taau2G1-k0q5Xj3k8Hd14tH_762Fg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: gpio: add YAML description for
 rockchip, gpio-bank
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 linux-gpio <linux-gpio@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>, 
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_081354_763409_34C1C23C 
X-CRM114-Status: GOOD (  24.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Apr 13, 2021 at 12:36 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Current dts files with "rockchip,gpio-bank" subnodes
> are manually verified. In order to automate this process
> the text that describes the compatible in rockchip,pinctrl.txt
> is removed and converted to YAML in rockchip,gpio-bank.yaml.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   changed example gpio nodename
> ---
>  .../bindings/gpio/rockchip,gpio-bank.yaml          | 82 ++++++++++++++++++++++
>  .../bindings/pinctrl/rockchip,pinctrl.txt          | 58 +--------------
>  2 files changed, 83 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
>
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> new file mode 100644
> index 000000000..d993e002c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/rockchip,gpio-bank.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip GPIO bank
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,gpio-bank
> +      - rockchip,rk3188-gpio-bank0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  gpio-controller: true
> +
> +  "#gpio-cells":
> +    const: 2
> +
> +  interrupt-controller: true
> +
> +  "#interrupt-cells":
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - gpio-controller
> +  - "#gpio-cells"
> +  - interrupt-controller
> +  - "#interrupt-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    pinctrl: pinctrl {
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges;
> +
> +      gpio0: gpio@2000a000 {
> +        compatible = "rockchip,rk3188-gpio-bank0";
> +        reg = <0x2000a000 0x100>;
> +        interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clk_gates8 9>;
> +
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +      };
> +
> +      gpio1: gpio@2003c000 {
> +        compatible = "rockchip,gpio-bank";
> +        reg = <0x2003c000 0x100>;
> +        interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clk_gates8 10>;
> +
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> index d3eae61a3..4719a6a07 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> @@ -50,23 +50,7 @@ Deprecated properties for iomux controller:
>          Use rockchip,grf and rockchip,pmu described above instead.
>
>  Required properties for gpio sub nodes:
> -  - compatible: "rockchip,gpio-bank"
> -  - reg: register of the gpio bank (different than the iomux registerset)
> -  - interrupts: base interrupt of the gpio bank in the interrupt controller
> -  - clocks: clock that drives this bank
> -  - gpio-controller: identifies the node as a gpio controller and pin bank.
> -  - #gpio-cells: number of cells in GPIO specifier. Since the generic GPIO
> -    binding is used, the amount of cells must be specified as 2. See generic
> -    GPIO binding documentation for description of particular cells.
> -  - interrupt-controller: identifies the controller node as interrupt-parent.
> -  - #interrupt-cells: the value of this property should be 2 and the interrupt
> -    cells should use the standard two-cell scheme described in
> -    bindings/interrupt-controller/interrupts.txt
> -
> -Deprecated properties for gpio sub nodes:
> -  - compatible: "rockchip,rk3188-gpio-bank0"
> -  - reg: second element: separate pull register for rk3188 bank0, use
> -        rockchip,pmu described above instead
> +See rockchip,gpio-bank.yaml
>
>  Required properties for pin configuration node:
>    - rockchip,pins: 3 integers array, represents a group of pins mux and config
> @@ -127,43 +111,3 @@ uart2: serial@20064000 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&uart2_xfer>;
>  };
> -
> -Example for rk3188:
> -
> -       pinctrl@20008000 {
> -               compatible = "rockchip,rk3188-pinctrl";
> -               rockchip,grf = <&grf>;
> -               rockchip,pmu = <&pmu>;
> -               #address-cells = <1>;
> -               #size-cells = <1>;
> -               ranges;
> -
> -               gpio0: gpio0@2000a000 {
> -                       compatible = "rockchip,rk3188-gpio-bank0";
> -                       reg = <0x2000a000 0x100>;
> -                       interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> -                       clocks = <&clk_gates8 9>;
> -
> -                       gpio-controller;
> -                       #gpio-cells = <2>;
> -
> -                       interrupt-controller;
> -                       #interrupt-cells = <2>;
> -               };
> -
> -               gpio1: gpio1@2003c000 {
> -                       compatible = "rockchip,gpio-bank";
> -                       reg = <0x2003c000 0x100>;
> -                       interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> -                       clocks = <&clk_gates8 10>;
> -
> -                       gpio-controller;
> -                       #gpio-cells = <2>;
> -
> -                       interrupt-controller;
> -                       #interrupt-cells = <2>;
> -               };
> -
> -               ...
> -
> -       };
> --
> 2.11.0
>

Applied, thanks!

Bartosz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
