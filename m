Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EB7606A329
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 00:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LSg9dDQ4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=IIQsVqy7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vnN+/FIitmoEiWvid6E/KnDlzhA6r5G696bWTzUvLws=; b=LSg9dDQ4O/PqsTnYiO8Cwi9f96
	jQ+u8IeTx5THBrt+vOd4tf/4+Var1Pk4If3lkP6r9lxJktOgDXxCamfyfm41V+HN/ke92PkH0xxIp
	4slpIlBsnRoIS+gbboDrECDkfFVBaqVWY+al79FcsYX/qnXJA1l4iTUVDJmvKBX+ow7tIzQyTfn1Q
	TEqdLqGrijDAZQhS851tKx27yB7hQC1FTi26dY3xbFqyyINOLreg2mriaoPsm69h0zJKktFDMcuaA
	EmsjRt32yHeJbNSE6uxXH2X09aGfncykt8KG4wB0gzLxNxVmqjv8Jlyper8vBnaieuTaCfNqvRLU0
	xmYw13Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSOac-0000000Gwf2-33rF;
	Sun, 15 Nov 2026 00:59:26 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSOaY-0000000GwdJ-2bkB
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 00:59:24 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-37071c0f42aso3341528eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 16:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794704361; x=1795309161; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H5gORA8lBWNt/FrQUIrrCLOfomvpdlfZQU675IOPv9o=;
        b=IIQsVqy7ezbIhv59mZFjJlKzsA9+Wk2vK15WZ6RPfTBYcN2cmvzRV8sdvByTKEy8uU
         +gFW3EHm9bayLUHiinEr03VmOxAfMTQ5tirlMZQBuOO51xIVfhaWf9xlBhbItETAJmpx
         xfFEkgeBeVqv1wlSrv7UbbXpXapqv3Q6ENCIlxkKvFcknscRueix0crZ0TvfgwTbFQO4
         lWsMqqIub9r84w8XzyzLK0jGNPCao1m/LuXB2vXIQaCaHJ4cDM+Hi3VgZGCz6jEnm8G3
         LjZdyKnnnCfmtyJw7mKy3RE5IU3tJ6DwbYQO8VMvonVbJSnq2NLgGSD6FBFcoqn7uXGi
         Iurg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794704361; x=1795309161;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=H5gORA8lBWNt/FrQUIrrCLOfomvpdlfZQU675IOPv9o=;
        b=Z6yocEAHYm+mNhcHWBlYtiBJJrJ7LMmUR0V424BvI9l0fsY3x6+qhvaMpDIV+ABnHQ
         EC7eG/JnTLOq66MPIsJVLZHilyr8fQKzpWUnxyWVrOlfaDnNXjBibQbKC1tzNd/wN6Vm
         AWiqnxqGaJzfC62c5xSdkGxS0paYbfGaVKtvB1B5N1xJbAiDkFqtIaOKpHh/bWBO8aen
         uOhZQSzgu8iALGt71s1dqfqsv3mGt1XWlj5aIvARLtoYVyLu+IGB1oYDTF5qM6Jbp18z
         8Pv2pcinAD1R4PtHXN19jT1vOXO8QpWfqCYz6jD4k84g1IYnQVV2yUhonSzP3PF5oleb
         M60Q==
X-Forwarded-Encrypted: i=1; AL+hErFt1Z5owkO0jjg0ALwMc1F1EhoGdgIFvvaaG4vF3dmXXd/fB6ucwSb1kUUW1xwEajlZTqAj9/dYFJkBI9mNTQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8etls5aRaMRp9KeBzH1Dv+C3+OWX9TPpTuxEPq+w73BqwKfeje
	Cz9nlG1zr39KwrUlrqnInuo3Qj01Kj93hjmjMd6zby99FbbWGMFzaV0r
X-Gm-Gg: AYBFou2pbWfK3Qg7Osmc1lYbkTZjkKIVCTrRNxerhXdHt/NoLJReFXHQXU9CwGpX1lg
	AokR4Qm4KgTg6WBzlL5LdU3sX6XM5aB8IBsJ+3qfyYRLGDhwdgKjptwWzeaP5SQR+ZsFQ753UR2
	9hCvQLAx+eTO3FD/7clUeEkX8ljd3Go27lp9fuMRVwS2PyEKA+1NOyN8Rg8EJj5KLpUwugBUxwB
	EFA8+C9K1WTp2MdpmT+qzJ2B2ADSCkzXW5B1eD+m6RVKQT6d2eprKxrbOwVkgpCjRzovk8HZYpm
	zkSuN9jUDuU7LTFzN3QBIEn1Y9Kxf0MJRfV9uaxxvy/TVLVjQGFjd7UJv2MDz7C5BupLPxTjtou
	T1pHHq6xAz750Mw2Nxu+mnmk0SOsbjZ8SA++ht9WaCy6QA8T5GdNerxvo1x925ba+VhvZMLZ1i2
	ZpUDE7Y+PWct0v3km1VBYWKeVZ4ziJi0w2XpCssK7da4OhR58xdn8gFS0X7hBLTyzlWsBny+5P8
	QtUltjG8+iZPpN7bGohLKz0r8L88fusQcNMUHVA13SI9qDb5fTBg33friGNPZ61IotrnzDZkDoQ
	YHRw20JZxZe99WMWirYOK6zqYNyocuf5N7TAsoQMme5M0PajPfCgE4f1dp+4gUF1TQCKuj7o5d+
	w5YNxaSmbklB1
X-Received: by 2002:a05:7300:231c:b0:36f:3c7e:3c13 with SMTP id 5a478bee46e88-37967ae7f85mr9538114eec.22.1794704361510;
        Sat, 14 Nov 2026 16:59:21 -0800 (PST)
Received: from [192.168.35.43] ([218.50.238.131])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-379508762a5sm20244703eec.0.2026.11.14.16.59.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Nov 2026 16:59:21 -0800 (PST)
Message-ID: <0a8c0d90-9d80-4688-83b3-faf6bf04ca06@gmail.com>
Date: Sun, 15 Nov 2026 09:59:16 +0900
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] PM / devfreq: rockchip-dfi: move register offsets
 to variant struct
Content-Language: ko
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260921-b4-rockchip-dfi-rk3576-support-v2-0-04f847016321@collabora.com>
 <20260921-b4-rockchip-dfi-rk3576-support-v2-5-04f847016321@collabora.com>
From: Choi Chanwoo <cwchoi00@gmail.com>
In-Reply-To: <20260921-b4-rockchip-dfi-rk3576-support-v2-5-04f847016321@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_165922_673100_EEC857EE 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: chanwoo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/22/2026 6:15 AM, Sebastian Reichel wrote:
> DDRMON in version 0x40 (found in RK3576) has two control registers,
> which moves the register addresses. Move the register offsets from the
> defines to the varaint struct to ease supporting the newer version.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 34 ++++++++++++++++++++++++----------
>  1 file changed, 24 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 380361a231a2..8490219f61be 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -42,12 +42,6 @@
>  #define DDRMON_CTRL_TIMER_CNT_EN	BIT(0)
>  #define DDRMON_CTRL_LP5_BANK_MODE_MASK	GENMASK(8, 7)
>  
> -#define DDRMON_CH0_WR_NUM		0x20
> -#define DDRMON_CH0_RD_NUM		0x24
> -#define DDRMON_CH0_COUNT_NUM		0x28
> -#define DDRMON_CH0_DFI_ACCESS_NUM	0x2c
> -#define DDRMON_CH1_COUNT_NUM		0x3c
> -#define DDRMON_CH1_DFI_ACCESS_NUM	0x40
>  
>  #define PERF_EVENT_CYCLES		0x0
>  #define PERF_EVENT_READ_BYTES		0x1
> @@ -128,6 +122,10 @@ struct rockchip_dfi {
>   * @clocks_optional: whether not finding the clocks is non-fatal. Set if the
>   *                   DT binding for this variant didn't require clocks in the
>   *                   past, so that the driver remains compatible with old DTs.
> + * @reg_write_access: register offset for writes access
> + * @reg_read_access: register offset for read access
> + * @reg_access: register offset for read/write access
> + * @reg_clock_cycles: register offset for clock cycles
>   */
>  struct rockchip_dfi_variant {
>  	int (*init)(struct rockchip_dfi *dfi);
> @@ -137,6 +135,10 @@ struct rockchip_dfi_variant {
>  	const char * const *clk_names;
>  	unsigned int num_clks;
>  	bool clocks_optional;
> +	u8 reg_write_access;
> +	u8 reg_read_access;
> +	u8 reg_access;
> +	u8 reg_clock_cycles;
>  };
>  
>  static int rockchip_dfi_ddrtype_to_ctrl(struct rockchip_dfi *dfi, u32 *ctrl)
> @@ -275,13 +277,13 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
>  		res->c[i].read_access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_RD_NUM + i * dfi->variant->stride);
> +				dfi->variant->reg_read_access + i * dfi->variant->stride);
>  		res->c[i].write_access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_WR_NUM + i * dfi->variant->stride);
> +				dfi->variant->reg_write_access + i * dfi->variant->stride);
>  		res->c[i].access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_DFI_ACCESS_NUM + i * dfi->variant->stride);
> +				dfi->variant->reg_access + i * dfi->variant->stride);
>  		res->c[i].clock_cycles = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_COUNT_NUM + i * dfi->variant->stride);
> +				dfi->variant->reg_clock_cycles + i * dfi->variant->stride);
>  	}
>  }
>  
> @@ -829,6 +831,10 @@ static const struct rockchip_dfi_variant rk3399_variant = {
>  	.max_channels = 2,
>  	.clk_names = rk3399_clk_names,
>  	.num_clks = ARRAY_SIZE(rk3399_clk_names),
> +	.reg_write_access = 0x20,
> +	.reg_read_access = 0x24,
> +	.reg_clock_cycles = 0x28,
> +	.reg_access = 0x2c,
>  };
>  
>  static const struct rockchip_dfi_variant rk3568_variant = {
> @@ -836,6 +842,10 @@ static const struct rockchip_dfi_variant rk3568_variant = {
>  	.stride = 0x0,
>  	.ctrl_single = true,
>  	.max_channels = 1,
> +	.reg_write_access = 0x20,
> +	.reg_read_access = 0x24,
> +	.reg_clock_cycles = 0x28,
> +	.reg_access = 0x2c,
>  };
>  
>  static const struct rockchip_dfi_variant rk3588_variant = {
> @@ -845,6 +855,10 @@ static const struct rockchip_dfi_variant rk3588_variant = {
>  	.clk_names = rk3588_clk_names,
>  	.num_clks = ARRAY_SIZE(rk3588_clk_names),
>  	.clocks_optional = true,
> +	.reg_write_access = 0x20,
> +	.reg_read_access = 0x24,
> +	.reg_clock_cycles = 0x28,
> +	.reg_access = 0x2c,
>  };
>  
>  static const struct of_device_id rockchip_dfi_id_match[] = {
> 

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>	

-- 
Best Regards,
Chanwoo Choi
Principal Engineer, Samsung Electronics

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
