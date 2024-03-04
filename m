Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36AA7C54E41
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 09:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnnW9gHdMErw/d2HHyiwnEoRweWTf7kYutqB38udiiw=; b=xwNFr5E63zGHxJ
	Ip7VnGMIhJsYPObAEH+JDSokDp2oFH+c24vXUHfLIzGIfJe97oJ+HQXYeIq4Fv/bmhxF1wSm5ZvxQ
	GO/lHj00i4+SCJCMR8x6NabkEjnZL0SQTk4UVw1QItK4o4LkTpvG9n/DCNvEkUEGAdMCWg4vgP+tx
	Vaewh86mZYs60K4RkepZovbBEpqDlRnbkCuO15+FzQrDCiZ9tCO9nFzI34vkRiM7CBk7CRnfoYCRZ
	6smMRQXb6nTtbDVuqEj7/Z4c5l8jSV6DcDLBY93bFDDDaVWZMwEwGA6XJkcQ4dvqaqyPC8+BaNxGy
	b8x9hPnSdRgvKnhC6LuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4Wf-00000008LTk-0W2C;
	Mon, 04 Mar 2024 09:22:25 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4WY-00000008LON-2KbZ;
	Mon, 04 Mar 2024 09:22:21 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6e49812ba77so2098364a34.2;
        Mon, 04 Mar 2024 01:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709544135; x=1710148935; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VIGROwElxYBDFKdR2OEr76QXPcyQLI4qLA23vfP1Gxk=;
        b=EU12HG556ysNn7dR2ky6GnkGIWnUbOuvwU2O1LIu54htO8APiJQM38/gTQ/P+U9YHM
         EhnQIbofZD/2FCh3VImOeCVuF/S2NDK/vPo2xE8tMbdYOqX3P7DaRwE0A9PXa+VbR1r7
         p5M03OYYa6+418YmyNLHg/vZQzD36/fp5eJBoC8dTtVoJmQ8wQZL6Pc0FZLwt3do05JR
         Bd2pSh3Sd+cailw1uCgU/r/vStRCrorbaXxTK8X3hMUGo27aLfQiIJlqQ8DMl4OysDS5
         qY1fJo9/LymbD1SHEnCm/ThjNrERudC//Kz5UJBkUOZFHwqDQauPutMeraJBIdm8dWVr
         NtQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709544135; x=1710148935;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VIGROwElxYBDFKdR2OEr76QXPcyQLI4qLA23vfP1Gxk=;
        b=rgTR6iQJkNN6hbXa1BphX+zQwPi/S8ClqQm4D0n48xRvT/QlX75rhmw/yvta3DYDJl
         yVC1ABxY1pivLE2Wnwnb1wJ7xha0xOB8+cnCx8Vo92u5ou3TEMk9psc4TniZKxr8keM5
         otuXLUHuuw0svAp/tFngWABiHW6/1HSrVuWZ93FPSwbrQ/gnqV6WzfCfua2zwODTmvGS
         C3MLSx9byXYPdlsukn8naoUr1MGI1dRjL2q6OnsLKL98DKzij6gNmt9V53vPNokDBjmj
         PBDRwbf3GqAPeTh6yTDrOxEVpTcjKwCNBqG8q7ikJlLG0gF+msYonjEx89Ryh91oM/+9
         l4ZA==
X-Forwarded-Encrypted: i=1; AJvYcCWR1G+TiuayvNuM47KYNDMBwAl3CwD3Aq/KoaU/o3y31pX00WBN1duEw0TXwG8j1Nq9U2P7Vimlp2SOXCGuNa1DVsSRDGGhYyGMjUVvpofD4FvNOl0=
X-Gm-Message-State: AOJu0Yz08POTit5mxL8gVBJA/meuzAJnWTLq3ModgeD7VI5SDZqCFEkJ
	OZRdlh1F4TWdAdg/t7CrMjk69bTfWAz92V2XD7YhJOibP9zJFP/b5QsXl2+vBYF+gpRSQ0+kY2r
	n0lTOHNDVa0jlv8cxvdWGeUIG2e0=
X-Google-Smtp-Source: AGHT+IEDFS54NU7VZ0W4QeHHmuYTu3w/hkLn8CMvVMriFTFm3qXOpY52opuKvevSzwl3VFJ/WmaRMFNRsxUWAqO/50Y=
X-Received: by 2002:a9d:67cf:0:b0:6e2:dec9:2b8a with SMTP id
 c15-20020a9d67cf000000b006e2dec92b8amr9693847otn.32.1709544134755; Mon, 04
 Mar 2024 01:22:14 -0800 (PST)
MIME-Version: 1.0
References: <e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org>
In-Reply-To: <e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 4 Mar 2024 14:52:02 +0530
Message-ID: <CANAwSgRRHA=njnH5q8iiUvBn3Ogm75STEZseP7Z-pZYM-OzsTQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3328
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_012218_927848_0ED6F572 
X-CRM114-Status: GOOD (  23.03  )
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

Hi Dragan,

On Mon, 4 Mar 2024 at 00:35, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Add missing cache information to the Rockchip RK3328 SoC dtsi, to allow
> the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
> RK3328 cache information.
>
> While there, use a more self-descriptive label for the L2 cache node, which
> also makes it more consistent with other SoC dtsi files.
>
> The cache parameters for the RK3328 dtsi were obtained and partially derived
> by hand from the cache size and layout specifications found in the following
> datasheets, official vendor websites, and technical reference manuals:
>
>   - Rockchip RK3328 datasheet, version 1.4
>   - https://opensource.rock-chips.com/wiki_RK3328, accessed on 2024-02-28
>   - ARM Cortex-A53 revision r0p3 TRM, version E
>
> For future reference, here's a brief summary of the documentation:
>
>   - All caches employ the 64-byte cache line length
>   - Each Cortex-A53 core has 32 KB of L1 2-way, set-associative instruction
>     cache and 32 KB of L1 4-way, set-associative data cache
>   - The entire SoC has 256 KB of unified L2 16-way, set-associative cache
>
> The RK3328 SoC dtsi is also used for the single RK3318-based supported board.
> Unfortunately, no datasheet is available for the RK3318, but some unofficial
> sources state that its L2 cache size is the same as RK3328's, so it's perhaps
> safe to assume the same for the L1 instruction and data cache sizes.
>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---

Thanks. Please add my,

Reviewed-by: Anand Moon <linux.amoon@gmail.com>




>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 37 ++++++++++++++++++++----
>  1 file changed, 32 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 7b4c15c4a9c3..ac2846c33dc9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -46,47 +46,71 @@ cpu0: cpu@0 {
>                         cpu-idle-states = <&CPU_SLEEP>;
>                         dynamic-power-coefficient = <120>;
>                         enable-method = "psci";
> -                       next-level-cache = <&l2>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2_cache>;
>                 };
>
>                 cpu1: cpu@1 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a53";
>                         reg = <0x0 0x1>;
>                         clocks = <&cru ARMCLK>;
>                         #cooling-cells = <2>;
>                         cpu-idle-states = <&CPU_SLEEP>;
>                         dynamic-power-coefficient = <120>;
>                         enable-method = "psci";
> -                       next-level-cache = <&l2>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2_cache>;
>                 };
>
>                 cpu2: cpu@2 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a53";
>                         reg = <0x0 0x2>;
>                         clocks = <&cru ARMCLK>;
>                         #cooling-cells = <2>;
>                         cpu-idle-states = <&CPU_SLEEP>;
>                         dynamic-power-coefficient = <120>;
>                         enable-method = "psci";
> -                       next-level-cache = <&l2>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2_cache>;
>                 };
>
>                 cpu3: cpu@3 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a53";
>                         reg = <0x0 0x3>;
>                         clocks = <&cru ARMCLK>;
>                         #cooling-cells = <2>;
>                         cpu-idle-states = <&CPU_SLEEP>;
>                         dynamic-power-coefficient = <120>;
>                         enable-method = "psci";
> -                       next-level-cache = <&l2>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2_cache>;
>                 };
>
>                 idle-states {
> @@ -102,10 +126,13 @@ CPU_SLEEP: cpu-sleep {
>                         };
>                 };
>
> -               l2: l2-cache0 {
> +               l2_cache: l2-cache {
>                         compatible = "cache";
>                         cache-level = <2>;
>                         cache-unified;
> +                       cache-size = <0x40000>;
> +                       cache-line-size = <64>;
> +                       cache-sets = <256>;
>                 };
>         };
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
