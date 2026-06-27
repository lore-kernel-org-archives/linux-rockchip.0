Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C010C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 07:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qboYwIyCDWHksG6VK7541DikhynGr3lP8Hiw9J+C6I=; b=wiZJrvHkWLnRUR
	LfaKy0V36QXb8+C4Rh9PpekA/9rnb8D06jkONwdkluaOT4dS7Bti692o9b9buCht5a8xcsN0A+V0T
	AJenpoyLS9wUYABGxIqRgS7K14uc++p/rot4tsNr3K8w+w/ZOqdNrJ2ehT8lvfQ24bkua2nwGz80Y
	nS5RCK0j8NrUHnDyUoVrgG7cc8a1qwF69KGwo+xsbAV2Doy72tL5MKCEGlThT02fWiBAIEMZ/yrDj
	ciwDj/hik3soiV2oppsQE/loOvKpl1vA/LK7aVIh6YWJKBaU+MeSLFiBm9u0CrMAxp4QFHljMD1TM
	XdFHueOLdr1F4Ej5f26g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdNVK-0000000CGKY-3nsn;
	Sat, 27 Jun 2026 07:31:06 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdNVI-0000000CGJn-0gfi
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 07:31:05 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-6978f0870c9so3022170a12.3
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 00:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1782545461; x=1783150261; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QL3YlGwC31Y8JENjif0rePlWfsMeeECArxgJS8HhxD4=;
        b=Qz/JkyaxDaev+rguPn0eWJuOXcD+JT5m7AxPBOXtINIJNcwhnKqd+IaDMPqqkYOLux
         yMMhus7bJpb6MUYoSQS1nGL3U2/zUpeTBHpgOtZMpHgHhscNaKBbAf2ZO3vlm+/P96Pe
         AojrN0IGtjkyFAnuB6S3pNUaUYeXza72BaEBHwOcS/Ak6Peif1b6uzHzSsXCKRZDGsHc
         yKXe17rT3NSnFErGYjIZFVYxA1YwCzlazgJSuyvn2/6/Ooi5bfZA6qJYDntSYFQBtg9Y
         B9/+Spk8r1CCLkk8RuyQWFI1X2P/2J7DVsB81XG5tI+UFBEC+B3STXzY0v0XEMS/kB/1
         Lhjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782545461; x=1783150261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QL3YlGwC31Y8JENjif0rePlWfsMeeECArxgJS8HhxD4=;
        b=j9GV+f4sAUGCyPTUR8SxdEmF1pU7t2RSB/f8FtBClKIT9zIg5lts261khopCZ/yutr
         mJ4Bd/VGwCJif/Xd4ipe+r+yPlS9FzmbWKAig3TfRRGkOhp3TS9QVPHlEo42y8faPc5r
         3SG6Tg4pqJJoQ1SDXE3nh5eJ/ATHG+QHc7o0som1cMJaG2vT/ANrNxrn1BDCmw01bw0L
         IH+uxzqcQjOCevevrLSpl4Lh98A5SABBYfjbnM8hChrp9nBrnzEGKKxSrjp+XHRTOili
         V8dSZIF0sZ+osqeHYk7dXP7ZLZI2S+7DMOOJ3LUerwKWtnLuM3NG1G6riRVtaXqCpVtJ
         L5Dw==
X-Forwarded-Encrypted: i=1; AHgh+RrA9fdjfv5OSfxH0ObwrdR+6kqhuI+yAw67g8xg75NBkrgKgxQ02g9ZLl5r01+GPf/USlAFOD6RZq0qFd1e2w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRI9SMdvi4JIvbcNZ+RCpkc9aZCezQuXVOynDmuB7Mv4DKiuud
	EVdWn8R/3ZVVUINO2P4xhfaQzw3QEKVuaYpLXG53VpOKy87HZo4v9Tk2tC7bf/eY3A==
X-Gm-Gg: AfdE7cnWabN5+D5ZWMVRvxwgOhL3TYAov2d5vNNzxe5/CSd/AnsrFWjDe+ksPVXRvUm
	XwfokG4/gd+fJw/rnBupgXuJ+E7eZ6GPTiX0wXrvKuYxjX0wEt0hVIGSIwQOZMXljRYWZNeREjP
	es0VjkIol5UltkbhCVLuM9FmKKbbVpa/HQFAvA8TKZPgqmk/WYrFk0LoKG9NvRIpRcTOmbx/2zZ
	o++pUkdhjivtmwaC2lwkDcmQnP0Y//7eI/MoZrw7OpsnLpLxWMO8n2qthAYElhgucpepOWef3CI
	7tMxxAUYqZuvdnua4th7Ioy+m+FocHew8ZqvhJf+tkwkpVZ4KNhqO/kfm9GqWht9rYrHcj8b8gJ
	vYLetQyaAboA5DTQnv4Sis2u6P9DQNeumclwW9d2S0GE2XvBQXPTauLj0zLqsp/WB9hbgOlez4E
	UeTU8DzRMTiKjCH9BljZ5vTximR6iEQO6sh40ebWXoN/U1ej8Yk02ti5QBYE15uDh7SjTJZCFRs
	O7bXdaUHQBkdLJVA7nZGaOFq+li7N22a5YpuNx5luAaDEUczYfDG8yRbOYoFd8L
X-Received: by 2002:a17:907:6d25:b0:c10:2eac:e839 with SMTP id a640c23a62f3a-c1233661842mr156084766b.39.1782545460756;
        Sat, 27 Jun 2026 00:31:00 -0700 (PDT)
Received: from ?IPV6:2a02:a466:4d7a:0:79f9:b7dc:8cc2:bc28? (2a02-a466-4d7a-0-79f9-b7dc-8cc2-bc28.fixed6.kpn.net. [2a02:a466:4d7a:0:79f9:b7dc:8cc2:bc28])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-697f47d5a35sm3896286a12.17.2026.06.27.00.30.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Jun 2026 00:30:59 -0700 (PDT)
Message-ID: <45e48dc7-1aa6-4214-8dcc-b3c562d61343@pardini.net>
Date: Sat, 27 Jun 2026 09:30:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] clk: rockchip: rk3588: don't disable unused I2S MCLK
 output gates
To: Daniele Briguglio <hello@superkali.me>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Diederik de Haas <diederik@cknow-tech.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
References: <20260624123914.1767374-1-hello@superkali.me>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20260624123914.1767374-1-hello@superkali.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_003104_243045_2299ECC6 
X-CRM114-Status: GOOD (  16.43  )
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

On 24/06/2026 14:39, Daniele Briguglio wrote:
> No in-tree board references these gates yet. Boards drive the codec
> MCLK through the parent I2S*_8CH_MCLKOUT, and now that the gates are
> managed clocks, clk_disable_unused() turns them off at boot. On a board
> that relied on firmware leaving the output enabled, that cuts the MCLK
> and analog audio stops working.
> 
> Mark the four gates CLK_IGNORE_UNUSED so an unreferenced gate keeps the
> state firmware left. A board that wants the kernel to own the gate can
> reference I2S*_8CH_MCLKOUT_TO_IO from DT instead.
> 
> Fixes: 02b9b0bb6269 ("clk: rockchip: rk3588: add GATE_GRF clocks for I2S MCLK output to IO")
> Reported-by: Diederik de Haas <diederik@cknow-tech.com>
> Closes: https://lore.kernel.org/linux-rockchip/DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com/
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>
> Signed-off-by: Daniele Briguglio <hello@superkali.me>

I've reproduced the failure reported by Diederik on the NanoPC-T6-LTS 
(indirect I2S0_8CH_MCLKOUT) without this patch, then with this patch 
(which fixes it), and re-tested the R58X-Pro (out-of-tree explicit 
I2S0_8CH_MCLKOUT_TO_IO consumer); it all works for me now.

Tested-by: Ricardo Pardini <ricardo@pardini.net> # on R58X-Pro+NanoPC-T6

Thanks,

-- Ricardo

> ---
>   drivers/clk/rockchip/clk-rk3588.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
> index 2ba9976654c..86953f9ffee 100644
> --- a/drivers/clk/rockchip/clk-rk3588.c
> +++ b/drivers/clk/rockchip/clk-rk3588.c
> @@ -895,7 +895,7 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
>   	MUX(I2S2_2CH_MCLKOUT, "i2s2_2ch_mclkout", i2s2_2ch_mclkout_p, CLK_SET_RATE_PARENT,
>   			RK3588_CLKSEL_CON(30), 2, 1, MFLAGS),
>   	GATE_GRF(I2S2_2CH_MCLKOUT_TO_IO, "i2s2_2ch_mclkout_to_io", "i2s2_2ch_mclkout",
> -			0, RK3588_SYSGRF_SOC_CON6, 2, GFLAGS, grf_type_sys),
> +			CLK_IGNORE_UNUSED, RK3588_SYSGRF_SOC_CON6, 2, GFLAGS, grf_type_sys),
>   
>   	COMPOSITE(CLK_I2S3_2CH_SRC, "clk_i2s3_2ch_src", gpll_aupll_p, 0,
>   			RK3588_CLKSEL_CON(30), 8, 1, MFLAGS, 3, 5, DFLAGS,
> @@ -912,7 +912,7 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
>   	MUX(I2S3_2CH_MCLKOUT, "i2s3_2ch_mclkout", i2s3_2ch_mclkout_p, CLK_SET_RATE_PARENT,
>   			RK3588_CLKSEL_CON(32), 2, 1, MFLAGS),
>   	GATE_GRF(I2S3_2CH_MCLKOUT_TO_IO, "i2s3_2ch_mclkout_to_io", "i2s3_2ch_mclkout",
> -			0, RK3588_SYSGRF_SOC_CON6, 7, GFLAGS, grf_type_sys),
> +			CLK_IGNORE_UNUSED, RK3588_SYSGRF_SOC_CON6, 7, GFLAGS, grf_type_sys),
>   	GATE(PCLK_ACDCDIG, "pclk_acdcdig", "pclk_audio_root", 0,
>   			RK3588_CLKGATE_CON(7), 11, GFLAGS),
>   	GATE(HCLK_I2S0_8CH, "hclk_i2s0_8ch", "hclk_audio_root", 0,
> @@ -942,7 +942,7 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
>   	MUX(I2S0_8CH_MCLKOUT, "i2s0_8ch_mclkout", i2s0_8ch_mclkout_p, CLK_SET_RATE_PARENT,
>   			RK3588_CLKSEL_CON(28), 2, 2, MFLAGS),
>   	GATE_GRF(I2S0_8CH_MCLKOUT_TO_IO, "i2s0_8ch_mclkout_to_io", "i2s0_8ch_mclkout",
> -			0, RK3588_SYSGRF_SOC_CON6, 0, GFLAGS, grf_type_sys),
> +			CLK_IGNORE_UNUSED, RK3588_SYSGRF_SOC_CON6, 0, GFLAGS, grf_type_sys),
>   
>   	GATE(HCLK_PDM1, "hclk_pdm1", "hclk_audio_root", 0,
>   			RK3588_CLKGATE_CON(9), 6, GFLAGS),
> @@ -2229,7 +2229,7 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
>   	MUX(I2S1_8CH_MCLKOUT, "i2s1_8ch_mclkout", i2s1_8ch_mclkout_p, CLK_SET_RATE_PARENT,
>   			RK3588_PMU_CLKSEL_CON(9), 2, 2, MFLAGS),
>   	GATE_GRF(I2S1_8CH_MCLKOUT_TO_IO, "i2s1_8ch_mclkout_to_io", "i2s1_8ch_mclkout",
> -			0, RK3588_SYSGRF_SOC_CON6, 1, GFLAGS, grf_type_sys),
> +			CLK_IGNORE_UNUSED, RK3588_SYSGRF_SOC_CON6, 1, GFLAGS, grf_type_sys),
>   	GATE(PCLK_PMU1, "pclk_pmu1", "pclk_pmu0_root", CLK_IS_CRITICAL,
>   			RK3588_PMU_CLKGATE_CON(1), 0, GFLAGS),
>   	GATE(CLK_DDR_FAIL_SAFE, "clk_ddr_fail_safe", "clk_pmu0", CLK_IGNORE_UNUSED,
> 
> base-commit: 7edfb7fb58ee058298e18fde76a6077ef17d19d8


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
