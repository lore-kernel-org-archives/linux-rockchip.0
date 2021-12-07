Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81BFAC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 18:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxN82XmJNtHxEIyGBodWfDXZ5VFjwtRKYV9/Vw5j3ig=; b=bDK63wrSzNjrC6
	7VsNF9g46vAG0cDf9h2ghO7whizwg5l21D7FYveMhev9hjosywpG2sw+bxKH0dMHOsjcPS7jtHilV
	BSmEhqYmGkFMmolXULUOKld9GmIsG/QM8BSrosA7lzgnuGfTwB0FVTXNem8cMYav14BWXjEllfEjz
	5dl9Hk9ZbtLH8Lu3lbnxBaOo9PoYIUDa7Tllf0ZU2oTTnZXDf9btfbePtx3orB4dI2sxrstkKqMwz
	iukUOuCIF3hgtZiOAzLV7JWHD+1B2XsPzLlXWj5ohYDIYLDlmshLFbDwnMe67ehaO5gB4LOlQYgxw
	5fa5UdE6Ui/93L6Cz/7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mufPC-009pMH-Jx; Tue, 07 Dec 2021 18:41:34 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mufOx-009pIM-2D; Tue, 07 Dec 2021 18:41:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 34CF2B81DFC;
 Tue,  7 Dec 2021 18:41:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 746D1C341CF;
 Tue,  7 Dec 2021 18:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638902474;
 bh=BD7y6nHDHYvwF8F0ey/Mk8ZBpokO5pKuXGZlYMItmjk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XYRyupyxYqJ1J2Xzzy1fbDAcK8U9EmRcrld67xacdQOCmUHzbODW7peeYiDwZrj3u
 AAkkDDnUYN3tbSBkG8UlHGdxboK6IuLb2BAQQASbgdWxGCFISUaZRIGDhgLbnG48cz
 siNPn1nu/axEkF9uldG4y4g9XdJ7SG3qoGjVeK/8chFCXZ8bMNRTKgdW1BAny1jfzx
 EcrXYOZj3qZrX28TtJJ+5tU4GTVkhF0tWH7ald/YdXYQWmXgLM05MTqOf7Eb+8HuTo
 8xt6IKmU4dJOc//poaAiHnlFV10RNIqgr6tpoX5NFDhg2CZOq3jm7pIxEq/uR2U41l
 M3la7iG9doIFQ==
Received: by mail-ed1-f44.google.com with SMTP id y13so60497878edd.13;
 Tue, 07 Dec 2021 10:41:14 -0800 (PST)
X-Gm-Message-State: AOAM530YOjmLKjfrJOvYfpyF5Oy6tUDSuN4gakmZzj8XHaIoFigjxgOr
 CJ8dHyoq4Y3yVwggcJL0DjuJh4X414G1z+xfwQ==
X-Google-Smtp-Source: ABdhPJzcwDO/upO0y0Heow+dDIweLmSN4XLEBMezQBu999RnN0nYR8CEhaX/FQ9NPwIz30CbYJUz7q1kPpylgv6jWiU=
X-Received: by 2002:a17:906:5e14:: with SMTP id
 n20mr1338660eju.466.1638902472240; 
 Tue, 07 Dec 2021 10:41:12 -0800 (PST)
MIME-Version: 1.0
References: <20211126181500.3404129-1-daniel.lezcano@linaro.org>
 <20211126181500.3404129-2-daniel.lezcano@linaro.org>
In-Reply-To: <20211126181500.3404129-2-daniel.lezcano@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 7 Dec 2021 12:41:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK1tsOqUYrLkZCo95BC=AXwZxai947x41zYpeHbodvwFg@mail.gmail.com>
Message-ID: <CAL_JsqK1tsOqUYrLkZCo95BC=AXwZxai947x41zYpeHbodvwFg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: Add powerzones definition
 for rock960
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: arnd@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org, 
 rjw@rjwysocki.net, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, lukasz.luba@arm.com, 
 Robin Murphy <robin.murphy@arm.com>, Johan Jonker <jbx6244@gmail.com>, 
 Helen Koike <helen.koike@collabora.com>,
 Brian Norris <briannorris@chromium.org>, 
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, 
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_104119_424932_224209DD 
X-CRM114-Status: GOOD (  20.02  )
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

On Fri, Nov 26, 2021 at 12:15 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
> Add the powerzones description. This first step introduces the big,
> the little and the gpu as a powerzone place.
>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>    V1: Initial post
>    V2:
>      - Move description in the SoC dtsi specific file
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index d3cdf6f42a30..3c0dbc0cb2bc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -76,6 +76,8 @@ cpu_l0: cpu@0 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <100>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       #powerzone-cells = <0>;
> +                       powerzone = <&PKG_PZ>;
>                 };
>
>                 cpu_l1: cpu@1 {
> @@ -88,6 +90,8 @@ cpu_l1: cpu@1 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <100>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       #powerzone-cells = <0>;
> +                       powerzone = <&PKG_PZ>;
>                 };
>
>                 cpu_l2: cpu@2 {
> @@ -100,6 +104,8 @@ cpu_l2: cpu@2 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <100>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       #powerzone-cells = <0>;
> +                       powerzone = <&PKG_PZ>;
>                 };
>
>                 cpu_l3: cpu@3 {
> @@ -112,6 +118,8 @@ cpu_l3: cpu@3 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <100>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       #powerzone-cells = <0>;
> +                       powerzone = <&PKG_PZ>;
>                 };
>
>                 cpu_b0: cpu@100 {
> @@ -124,6 +132,8 @@ cpu_b0: cpu@100 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <436>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       #powerzone-cells = <0>;
> +                       powerzone = <&PKG_PZ>;
>
>                         thermal-idle {
>                                 #cooling-cells = <2>;
> @@ -142,6 +152,8 @@ cpu_b1: cpu@101 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <436>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       #powerzone-cells = <0>;
> +                       powerzone = <&PKG_PZ>;
>
>                         thermal-idle {
>                                 #cooling-cells = <2>;
> @@ -791,6 +803,17 @@ spi5: spi@ff200000 {
>                 status = "disabled";
>         };
>
> +       powerzones {
> +
> +               PKG_PZ: pkg {
> +                       #powerzone-cells = <0>;
> +                        powerzone = <&SOC_PZ>;
> +               };
> +
> +               SOC_PZ: soc {
> +               };
> +       };
> +
>         thermal_zones: thermal-zones {
>                 cpu_thermal: cpu-thermal {
>                         polling-delay-passive = <100>;
> @@ -2027,6 +2050,8 @@ gpu: gpu@ff9a0000 {
>                 clocks = <&cru ACLK_GPU>;
>                 #cooling-cells = <2>;
>                 power-domains = <&power RK3399_PD_GPU>;
> +               #powerzone-cells = <0>;
> +               powerzone = <&PKG_PZ>;

Every CPU and the GPU are in the same powerzone. What is the point? Do
you really have to be told that CPUs and GPU are a source of heat and
might need to be limited?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
