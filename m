Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B624C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 09:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObyvlAglaRZ1DYm5wryVEadoJL3AfQ0XtAbZiussbJU=; b=10hwn4tkAHwuHa
	c4Q2WR8tKxjRzwt5PgHSl4GCVunDJPvl5cSw3BWrlYLfplumMxXPqLDnGJtsc93odXDWwhy1sZz4r
	Pr9tX0faX0fMZIGaCB2qeaulQGAkVLX9DvUVXDp5k6RGLB/c3ZIjgQXXbepV7g3LtVee3U6oabvyA
	ZEpEhB4wBmSAYcJkDMDp3hwILJzDis3LoDEIIULbpxrwCodA0pahnbfatDN+3Eun/XdASgCHpbmNh
	MMbvkK2+63lOKK9hAJ2qpu96P+32LBhx7LHrXYACZ/uITexzsxSXoim7XlKSJGMmmnJI6Ywbc+dAI
	6GoRKd850fMT+Gn/RxgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4WP-00000008LKV-1kul;
	Mon, 04 Mar 2024 09:22:09 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4WM-00000008LIN-3wvC;
	Mon, 04 Mar 2024 09:22:08 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5a132ce36ebso437765eaf.3;
        Mon, 04 Mar 2024 01:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709544122; x=1710148922; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JAr4YTs6OYz4sHdNR8I3/fL33pJVohw/dbBd1K+RGHM=;
        b=K9M3lbfkcSn63QRaFaYGEtSgpaM2PPfw2N/lCQE/zYn/9Py4SCBB5f1JNomhMBFcXp
         WWCfPFT02b8NGxOmSKhE11pBbKZMewpnlSI6o6JOJZl6pa7H7N8eGrB7KbYi769J6IkP
         eYLuTRBnxfv/mFzntp29E3L8HYe1IoWhmCBpRDqmq7wNQcy+j3caYKTVWXMdlFRfj8Ce
         dVU7VjFsw9sYZdixVzr48y5Xz7l07lyfGGuSkr4RrK8CBFz7ZG1RTKYr2cvO8+Y+qtNW
         u5lBqVQcw0zO0la1iKxDmdQ868UxJjNn5I9g/ChcEYK7Izje7VHhCCpRE7GUCz7Fr8H1
         tAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709544122; x=1710148922;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JAr4YTs6OYz4sHdNR8I3/fL33pJVohw/dbBd1K+RGHM=;
        b=JEjfZvcR3m6iUdPL/A+aq7qQoWEopOedsZme0LlTQ1purVO7N4HX3lpj4vZ1p+ZMnM
         O86NEwXSF+150QRQAaZvtEGbNoy+rO6FM/Y9T47kVH/7ch+gMitawPMnTXozU18VEbtu
         vZRR3SKOqblTrDFFO1BluW3OjmpPpycqGpaYaELfFSDk4Ql9owPkUASqedLnE4bAhQbw
         8CfMClF3vMKWx2AdTiXxkr/VG0yr5PGz1YNA79AwsAcaK4Tr1PqyGvMzH735JJ7ZDNBN
         GP6eU2kkEMLR9ZPeJQ2PY4cLHFWgDgbKLeN2YXofDxBkFO8M5F1BQafvtgOImxLLAzc0
         sASg==
X-Forwarded-Encrypted: i=1; AJvYcCWIFvzfI4WW1IjtQV7XXutORez1ivZxLGolJfOOpgwELnRNzUwcAURu4UyW+Vk4L75ALXGfX5lCZFKOaUaeQVl0K4TdiWzBYmyUZW24HqoP2FWRn3A=
X-Gm-Message-State: AOJu0YzEEbFP65tHrxelKMyBsA8C+w0VW8sh7EsY5qNuBcnbXF4NX0aW
	n4VmiHMCd+RAGz9e2XqzBf0yuA7umTWP7VlA9V3LTVe4Epy7vUeGjNOXImvZJ3toyTnyQte9WDL
	ejXjUWNB0ULkbGAzcXU4ziXro5hw=
X-Google-Smtp-Source: AGHT+IEk72zj+/1J0K5EFQ8Q8bwe9XNRzyaB0LC8t4Fnpf1gaMjLEpKvM7PTriFm+IqnqnmtHrHTs5yJ1WA4B7kfmKQ=
X-Received: by 2002:a05:6820:1c8d:b0:5a1:25fc:7bdb with SMTP id
 ct13-20020a0568201c8d00b005a125fc7bdbmr4288137oob.6.1709544122385; Mon, 04
 Mar 2024 01:22:02 -0800 (PST)
MIME-Version: 1.0
References: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
In-Reply-To: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 4 Mar 2024 14:51:49 +0530
Message-ID: <CANAwSgTnsPWypWSoqzFfJBMLEdN=UdSz0n0vhDBD0QCsvXPYdA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK356x
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_012207_006092_F23A240C 
X-CRM114-Status: GOOD (  28.27  )
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
> Add missing cache information to the Rockchip RK356x SoC dtsi, to allow
> the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
> RK3566 and RK3568 cache information.  Also, it gets rid of the following
> error in the kernel log:
>
>   cacheinfo: Unable to detect cache hierarchy for CPU 0
>
> The cache parameters for the RK356x dtsi were obtained and partially derived
> by hand from the cache size and layout specifications found in the following
> datasheets and technical reference manuals:
>
>   - Rockchip RK3566 datasheet, version 1.1
>   - Rockchip RK3568 datasheet, version 1.3
>   - ARM Cortex-A55 revision r1p0 TRM, version 0100-00
>   - ARM DynamIQ Shared Unit revision r4p0 TRM, version 0400-02
>
> For future reference, here's a rather detailed summary of the documentation,
> which applies to both Rockchip RK3566 and RK3568 SoCs:
>
>   - All caches employ the 64-byte cache line length
>   - Each Cortex-A55 core has 32 KB of L1 4-way, set-associative instruction
>     cache and 32 KB of L1 4-way, set-associative data cache
>   - There are no L2 caches, which are per-core and private in Cortex-A55,
>     because it belongs to the ARM DynamIQ IP core lineup
>   - The entire SoC has 512 KB of unified L3 16-way, set-associative cache,
>     which is shared among all four Cortex-A55 CPU cores
>   - Cortex-A55 cores can be configured without private per-core L2 caches,
>     in which case the shared L3 cache appears to them as an L2 cache;  this
>     is the case for the RK356x SoCs, so let's use "cache-level = <2>" to
>     prevent the "huh, no L2 caches, but an L3 cache?" confusion among the
>     users viewing the data presented to the userspace;  another option could
>     be to have additional 0 KB L2 caches defined, which may be technically
>     correct, but would probably be even more confusing
>
> Helped-by: Anand Moon <linux.amoon@gmail.com>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
Thanks, Please add my
Reviewed-by: Anand Moon <linux.amoon@gmail.com>


>
> Notes:
>     As already agreed upon with Anand Moon, this patch replaces the submission
>     of a similar, albeit a bit incorrect patch [1] that appeared a bit earlier
>     on the linux-rockchip mailing list.
>
>     [1] https://lore.kernel.org/linux-rockchip/20240226182310.4032-1-linux.amoon@gmail.com/T/#u
>
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 41 ++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index c19c0f1b3778..6dfb2d47d3d0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -57,36 +57,77 @@ cpu0: cpu@0 {
>                         #cooling-cells = <2>;
>                         enable-method = "psci";
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <128>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l3_cache>;
>                 };
>
>                 cpu1: cpu@100 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x100>;
>                         #cooling-cells = <2>;
>                         enable-method = "psci";
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <128>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l3_cache>;
>                 };
>
>                 cpu2: cpu@200 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x200>;
>                         #cooling-cells = <2>;
>                         enable-method = "psci";
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <128>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l3_cache>;
>                 };
>
>                 cpu3: cpu@300 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x300>;
>                         #cooling-cells = <2>;
>                         enable-method = "psci";
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <128>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l3_cache>;
>                 };
>         };
>
> +       /*
> +        * There are no private per-core L2 caches, but only the
> +        * L3 cache that appears to the CPU cores as L2 caches
> +        */
> +       l3_cache: l3-cache {
> +               compatible = "cache";
> +               cache-level = <2>;
> +               cache-unified;
> +               cache-size = <0x80000>;
> +               cache-line-size = <64>;
> +               cache-sets = <512>;
> +       };
> +
>         cpu0_opp_table: opp-table-0 {
>                 compatible = "operating-points-v2";
>                 opp-shared;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
