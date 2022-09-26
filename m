Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF28C04A95
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 01:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5ld2Fc5c3E/VNf+XqiXJiog23wtY5DEreqeOElhCgQ=; b=efD254PqTg32qJ
	2hncLGkXVz3nDfY++UUsiZWNmIRMvng9wj/CBkm4PLpxv1oNs3y2xEB9Ptis2OhVgKFXi4ewcKIfQ
	5TwL0Zo3gBblx90En9Zi3qrbBaL+9Tv+QQpQ3DaW0etOW2VO/jJUe99RKMk1DS0ABSNGe7tuFcvOB
	oku0SJ/VuHbkvBdfXY5xZfUuHrHm0HxNaFAWW9oV7bLicG2Umqwy0E9cYOK6/7T48+L+Ctdxca6wf
	Pg9sqgUPGYzi0MQvvm0u4qQR3w/6nVTDgX8+eAJpU341DtrDoC+JUZZqsuBqXfIaRHu2q34/IQXLs
	9J7F/soL64vFzKGnAW/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocdDb-000nTj-JV; Mon, 26 Sep 2022 01:47:35 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocdDQ-000nOb-5a; Mon, 26 Sep 2022 01:47:25 +0000
Received: by mail-wr1-x436.google.com with SMTP id cc5so8002142wrb.6;
        Sun, 25 Sep 2022 18:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=NFlUObOfmCqD6lJ8Qd3bAP3UmGiZcM4xx6wMJp41J5o=;
        b=Ow9S5prFYWmPvtPiKpPe0bfqYYKLrAlTlMASu5wBK5xmZIfU9TUzNle9zSSgolbeZI
         IL7U6CufgfIZINiu8eSv6RJOpG0KwXho4peAP4jsByWxJTz95KFvuvyLdfAUQnNOLkD2
         1R6PDNQS1+j1GrLd/PuTVMtwSkQbSuIJNYfcVLdk8wYr5ciiz9PlKjr8L4+OerxSQXQU
         bANqVqM3jGFCdp0pEoCCH5rrdzxjbUS44KD0NRt17ufml395GqZ8Xovk1JQMFfFvheBR
         1/61MrBAjQduYc91XoR44lLVPU35GxLESNISBHvIxD3AbSTTOV44b6b9RLMn1m4403Vp
         c9pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=NFlUObOfmCqD6lJ8Qd3bAP3UmGiZcM4xx6wMJp41J5o=;
        b=Aez0uJ9OvUe70LCUX5t2mea9gqnSI1z5UGRR3+J27IDhzYoMe4Sz3SXuFFbX2L8LMH
         dAH1FhzkMmzph+iltA1WzXQfCBkmtP+RbbABGJ+IMj9qKucTV7CgQDCO+GNVTc28whlI
         vmOu4l6x1N+TlVXSbf8vvCFPo/uEkRFaUD6iS0nIf0jHewwa983rnaRQkj+U2D3GFbP5
         36GQNDxReuoYoXaD0FHKOw/9TtrNyBihJf0zHNw6pQbP/hPVc48VbHMknRHFC51Uy9Qx
         8ofRkU10j1Pw9Hw3MEFkEcnqrM89Sm7QW0/pCphjjXgIcXfds27m4vbl5g7dhy1Kd16W
         QTGQ==
X-Gm-Message-State: ACrzQf1CebFzB9i0oY7LpIf3XsJ5QVz82nsZ/zBt5G2Un09nQuAXKtyo
	vZqSP+uw+wxsoIR82zd9NBiRqChCEngDn02JMQc=
X-Google-Smtp-Source: AMsMyM6f9ZiPqjhD4Ybc4bqIH6+zzZy7lakyFrC5SdA3CUJhZw6ijSwE078FUZGOhv5nLeNCyPEz3gquCHSkmYFOLUY=
X-Received: by 2002:a5d:6388:0:b0:228:c792:aabe with SMTP id
 p8-20020a5d6388000000b00228c792aabemr11741732wru.689.1664156820093; Sun, 25
 Sep 2022 18:47:00 -0700 (PDT)
MIME-Version: 1.0
References: <ce61fb9a-dcf4-27a2-ac03-62060a1512f9@manjaro.org> <20220925124825.71786-1-leo@nabam.net>
In-Reply-To: <20220925124825.71786-1-leo@nabam.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 25 Sep 2022 21:46:47 -0400
Message-ID: <CAMdYzYpdhJ-wWN9UAppQvaNqK8Y_RadYv2v67gD5S_u=1ZXw0Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
To: Lev Popov <leo@nabam.net>
Cc: Dan Johansen <strit@manjaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_184724_233140_0E589891 
X-CRM114-Status: GOOD (  18.27  )
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

On Sun, Sep 25, 2022 at 8:48 AM Lev Popov <leo@nabam.net> wrote:
>
> For "Quartz64 Model A" add missing RTS line to the UART interface used by
> bluetooth and swap bluetooth host-wakeup and device-wakeup gpio pins to
> match the boards physical layout. This changes are necessary to make
> bluetooth provided by the wireless module work.
>
> Fixes:  cd414d5ac1fdeecf0617737e688a1af00858253a (arm64: dts: rockchip: rename Quartz64-A bluetooth gpios)

Good Evening,

That patch only renamed the lines to comply with the dt-bindings, the
correct patch is the one that introduced the original line layout:
Fixes: b33a22a1e7c4 ("arm64: dts: rockchip: add basic dts for Pine64
Quartz64-A")

Very Respectfully,
Peter

>
> Signed-off-by: Lev Popov <leo@nabam.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index a05460b92415..91908081c5ed 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -740,7 +740,7 @@ &uart0 {
>
>  &uart1 {
>         pinctrl-names = "default";
> -       pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn>;
> +       pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
>         status = "okay";
>         uart-has-rtscts;
>
> @@ -748,8 +748,8 @@ bluetooth {
>                 compatible = "brcm,bcm43438-bt";
>                 clocks = <&rk817 1>;
>                 clock-names = "lpo";
> -               device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> -               host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +               host-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> +               device-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
>                 shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> --
> 2.37.3
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
