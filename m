Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC76C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 14:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTR3+1L9rggUll9cFAfr+E3z6XHpMlEQK9c4WyTMhRc=; b=Xt5pikfJ7tQ6z/
	rBrtuLti41LwBP3m0aaU66CRuhzGpQ5Cm+VBI8w9sRB0SV4kuLKOfGIMybsWtj+GHT4fcwElpwqfL
	AiZvVBGm+q7ac0ll8je2LBX5OIyj+VIS5B5hyUb7hRKi2bB9QOMhB8Vzox0jRr6yNuMsAEv8Y80D1
	EGdI+aozOYWJtJJio3dtji38mnktEWRiCTj6AFbW7x1N8P8CmaXTzJNm8NYt0lSXSu0qQHw9X1atQ
	sYt/ZvSF/lKhuf2IyaultDsr5TxdOK15QoncVXNvwkG5egVLvFUbqwIFAXsd0XKYpE0ty7AqQ62o3
	mEb/aogOk1w9laZWos1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msnLj-00CdLC-OI; Thu, 02 Dec 2021 14:46:15 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msnLf-00CdIa-SP
 for linux-rockchip@lists.infradead.org; Thu, 02 Dec 2021 14:46:13 +0000
Received: by mail-lj1-x22b.google.com with SMTP id k23so199800lje.1
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Dec 2021 06:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BxPnHdJ+aJ9D33iSxb5HbYdKxpIsMl+fKEKkdpainPE=;
 b=mIeUQBnIwa+LR+DWD6zB8iXWvNe82vquVBzQ/4uKsPN/cV3MyjJG29z+LW1R/v+qG1
 +SxMk6tTwmfOd1hDqDr0LpEtlsimwo1hudzbVrN9UIXHTJQY+zgrD2qBc+nlAxNKIn/a
 C+F2KxKjS7AKpWw7EkLE9zH8r+0zp990VkAu26nwz0wJZLTRZyEQmcQlKHHDRj7jv/QV
 +7m5sI6HWXCWS4Yq/kn4PP9/CB5yQEAYVF+4RcO37o2w52wX6qIl0Ev+Ktvqzajuw16o
 sjfHXUlw1XQQQXrhXQtR6dTlFA3bW/LuS31w7jyu/ENVQLSi/kx3iUJBr9esEdWQgl5z
 Tnrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BxPnHdJ+aJ9D33iSxb5HbYdKxpIsMl+fKEKkdpainPE=;
 b=eKHjsLaREP3c8jrGDuukDtj/EwoZS+wYrgyLDQRwpKKXT5vTsFa/Qu+ZN8gB4PWosR
 t6dbnBkgB6F5GP15PNAjsJ5kijeQO0dTvIcnKDiXZffOdNWVm/pGVHLyuncb9Y2kXkHL
 iFBXQEzdY6J8n3zNnFmEWUrA6Pf6SnP/34WkYAA5v8Tx3NKkPtSqFGS685nqIpI7/jvc
 MnLaywdV/J+5ybbViUwkgaBcvgF2iNmtPeJ9fxdIHj8AMuWhgQMVXi/Nyv8qUWUiuWt8
 ZADJiZL+ikg+yUMskbKDUVDKwFMuo4FqqSOcvXxr9CFQkcuMucRpvgBMO0WvAs6LL7WL
 DUEQ==
X-Gm-Message-State: AOAM530vE2au88R+qXQaYqt4Vk5W3cFilAbq68PaXXK9VUU02ysR6uM1
 dDTeC6+vYXcqiG8VwhdR7oriyv4EjQdVsZxhaDH20g==
X-Google-Smtp-Source: ABdhPJyQIM753aEFPLW9JOZqu+gb1592ytFHS/P+BaHRLTTB+e5vALHEOang9gu8VNBPTccwpNku8gvj4H03BAXaHbM=
X-Received: by 2002:a2e:b6d1:: with SMTP id m17mr12082827ljo.273.1638456369776; 
 Thu, 02 Dec 2021 06:46:09 -0800 (PST)
MIME-Version: 1.0
References: <20211201163856.41419-1-daniel.lezcano@linaro.org>
 <20211201163856.41419-2-daniel.lezcano@linaro.org>
In-Reply-To: <20211201163856.41419-2-daniel.lezcano@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 2 Dec 2021 15:45:33 +0100
Message-ID: <CAPDyKFrx4vyiv6evTPn-j5zn_g1Rc2Azd_XX5NnXzN19NOdHQw@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] arm64: dts: rockchip: Add powerzones definition
 for rock960
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: robh@kernel.org, arnd@linaro.org, heiko@sntech.de, rjw@rjwysocki.net, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, lukasz.luba@arm.com, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>, 
 Johan Jonker <jbx6244@gmail.com>, Helen Koike <helen.koike@collabora.com>, 
 Brian Norris <briannorris@chromium.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, 
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_064611_964361_C176837E 
X-CRM114-Status: GOOD (  16.84  )
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

On Wed, 1 Dec 2021 at 17:42, Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
>
> Add the powerzones description. This first step introduces the big,
> the little as powerzone places.
>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>    V3:
>      - Remove GPU section as no power is available (yet)
>      - Remove '#powerzone-cells' conforming to the bindings change
>    V2:
>      - Move description in the SoC dtsi specific file
>    V1: Initial post
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index d3cdf6f42a30..c41b20888a44 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -76,6 +76,7 @@ cpu_l0: cpu@0 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <100>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       powerzone = <&PKG_PZ>;
>                 };
>
>                 cpu_l1: cpu@1 {
> @@ -88,6 +89,7 @@ cpu_l1: cpu@1 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <100>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       powerzone = <&PKG_PZ>;
>                 };
>
>                 cpu_l2: cpu@2 {
> @@ -100,6 +102,7 @@ cpu_l2: cpu@2 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <100>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       powerzone = <&PKG_PZ>;
>                 };
>
>                 cpu_l3: cpu@3 {
> @@ -112,6 +115,7 @@ cpu_l3: cpu@3 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <100>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       powerzone = <&PKG_PZ>;
>                 };
>
>                 cpu_b0: cpu@100 {
> @@ -124,6 +128,7 @@ cpu_b0: cpu@100 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <436>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       powerzone = <&PKG_PZ>;
>
>                         thermal-idle {
>                                 #cooling-cells = <2>;
> @@ -142,6 +147,7 @@ cpu_b1: cpu@101 {
>                         #cooling-cells = <2>; /* min followed by max */
>                         dynamic-power-coefficient = <436>;
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +                       powerzone = <&PKG_PZ>;
>
>                         thermal-idle {
>                                 #cooling-cells = <2>;
> @@ -791,6 +797,17 @@ spi5: spi@ff200000 {
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

This needs "#powerzone-cells = <0>;"

> +               };
> +       };
> +
>         thermal_zones: thermal-zones {
>                 cpu_thermal: cpu-thermal {
>                         polling-delay-passive = <100>;
> --
> 2.25.1
>

Other than the minor thing above, feel free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
