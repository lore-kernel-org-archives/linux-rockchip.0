Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F9D1C4452D
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 23:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4SPyaIv3x4oBsRXA3xTsGvTle6ecFym1VLQsSdYg4E=; b=bpMFSF5N0Wne16
	GXiOZLOE0rHfE2RcOR5MRF2bGVe6Yj3JljhJSzWmwGoJrVHYRQrGQFcOoBmQecoAcov3q6ZsKjsnU
	rKWmDkIxQpXM/YOKikf/vMt8G0B93d7iDE54goFD3p0Yz0kf5FdQikeEbNXk2mJMDHw3LfBmgzQha
	fxaXqOjzVJt7FY94Zm6BPXdhffEfAo8sjHcrxaw/8P+vqg9AVNjGmPco2FjaZ4EIl1RsUA4vJbbVf
	2ye1K/ir+bAHVXxafnKqHMt4JipyjBSZt5hggZ8sv2pvu5BWm3YoyxovgPgfiumVGo3TpKf5UKKXR
	/VFas1O/yRwST/8Pr/8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJlQ-0000000Aa1t-1BXr;
	Tue, 21 Jul 2026 23:20:40 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJlN-0000000Aa12-3rEs
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 23:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1784676036;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZBvF4sHXwwFEFaVeA6IZnlYB/+c+MHkK63AEWgH6t/g=;
	b=b3Q8TgQXKmX5YGc5NU1eav9/m1SfuKo+NDp8LpkJOHCO73SuvyRmzEsFr/70VzGFCK4WPR
	K454fDz9z2Fjt7b4IKWNIkcvCO0Nwq6DtUgNKf1eoKBqw3jgnhE2t6t49F03xVnOgoI5SF
	k+673HpKErforf1F5FJ4Qcv5NZ/t24Q=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-63-nDiM18NoOLGR1diFYkkZjQ-1; Tue, 21 Jul 2026 19:20:35 -0400
X-MC-Unique: nDiM18NoOLGR1diFYkkZjQ-1
X-Mimecast-MFC-AGG-ID: nDiM18NoOLGR1diFYkkZjQ_1784676035
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8ec45d9628aso160510336d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 16:20:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784676035; x=1785280835;
        h=user-agent:in-reply-to:content-disposition:content-type
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZBvF4sHXwwFEFaVeA6IZnlYB/+c+MHkK63AEWgH6t/g=;
        b=DiDJXVKEhFJvCahoL1wXwl7vbMV6Ra5RJ/OVZATP+mrT2sT40XmUgjERFhoVcvkxud
         EyrVbPXdMGyVvo2lvRKGVShg0aWwIqd2o64oegCMLAnVGlbW5jPG2xGj7Gaxa5C52CyZ
         80sgn1b7e/wIxdAbGTZSE8xXHOsRSlU7m/N6tOr9sdwrf5jBCOKKAH3KLHajDU15f1p+
         fR7Ua1MzUL4JoeTH2nsJnbRV+iwLNSEsZKBw2iTiShDNiHXq84WBifEOQd9FDUn0Q00t
         i6JrzT+rbav3nOxO56TSXQDXewe/k+cxye1m6sV828EzVwWmqUkKXdr8KjTJgmOd7x7S
         z5PQ==
X-Forwarded-Encrypted: i=1; AHgh+RpvXagbWztQliQxtCOvhvN1ZUf4KPbpDLbVqAGMQRt+5+5uxJM8KvV2KIycD5943S+Vn+xTSXMfMMwbm0fUGg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8svpVXsGqnKzkuQFB3v3s2T14PdcaYqTJB9FVzw05ZsPmqxXq
	Atv6JVLAUBQYOyJ5CwWTHYaxzWPGpXGo5hy0byElqKJzBxHaUwYUygmhvuZcwMxVYCZ4Ay5xaes
	8apkhvkfIFK+k6n6HW+dT1vEiVI6uiQ50PHeiWWGClcYg9Sd1N6J0xiRoHTs09XFlepJqloE/mA
	==
X-Gm-Gg: AR+sD13O1y5s+tD2OgNSvZdbOzXayBYBxirzpjPGyT7jINNYuiUi6UxG0PZJuvovLiH
	bARtP10mEqAZ9hJlxJW8sN7AT2m0K7BPgZB/pfCK6SCtXZcYRwxn2GNFk+K/PxXLmpdYMwO/rbp
	KLwv40ZrG1yE2+8bz0JkKBwjlGOXzsw0X2UuLXHkUIYa+XF2TeMP81OYXfiht31lmnsyzZcSplC
	htiqXUodT0/nJBM+uIaNmCZfta3G+2JL1WconFXU00zBowqTr46pf4IZoyTEwmkKfwjEStJmu9o
	fP2irCLrBQP9twA9QWB64UFRLRM+3HuP7NHqXtMAOaTeRuprcuI+tmrLMpfqV2N3guPhXirpvEX
	BoNAbpsVZAEHxBUon4O+cVs3W18MIRH3A7uM=
X-Received: by 2002:a05:6214:20e9:b0:8ed:29f2:32ea with SMTP id 6a1803df08f44-907783bee71mr224973306d6.48.1784676034709;
        Tue, 21 Jul 2026 16:20:34 -0700 (PDT)
X-Received: by 2002:a05:6214:20e9:b0:8ed:29f2:32ea with SMTP id 6a1803df08f44-907783bee71mr224972896d6.48.1784676034224;
        Tue, 21 Jul 2026 16:20:34 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-907ba9e13d1sm7307666d6.28.2026.07.21.16.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 16:20:33 -0700 (PDT)
Date: Tue, 21 Jul 2026 19:20:30 -0400
From: Brian Masney <bmasney@redhat.com>
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Fabio Estevam <festevam@nabladev.com>,
	devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, huang lin <hl@rock-chips.com>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/6] clk: rockchip: Add clock controller for the RV1106
Message-ID: <al_-vioCVeQxVo-f@redhat.com>
References: <20260714193656.2196447-1-sjg@chromium.org>
 <20260714193656.2196447-3-sjg@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20260714193656.2196447-3-sjg@chromium.org>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: e5axh1NYsfRk5XxDIOakWXICm7mNGRIXQYDaUuhPHPY_1784676035
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_162038_032023_D62FEC1A 
X-CRM114-Status: GOOD (  16.01  )
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

Hi Simon,

On Tue, Jul 14, 2026 at 01:36:39PM -0600, Simon Glass wrote:
> +static void __init rv1106_clk_init(struct device_node *np)
> +{
> +	struct rockchip_clk_provider *ctx;
> +	unsigned long clk_nr;
> +	void __iomem *reg_base;
> +	int ret;
> +
> +	clk_nr = rockchip_clk_find_max_clk_id(rv1106_clk_branches,
> +					      ARRAY_SIZE(rv1106_clk_branches)) + 1;
> +	clk_nr = max(clk_nr,
> +		     rockchip_clk_find_max_clk_id(rv1106_grf_clk_branches,
> +					ARRAY_SIZE(rv1106_grf_clk_branches)) + 1);
> +	reg_base = of_iomap(np, 0);
> +	if (!reg_base) {
> +		pr_err("%s: could not map cru region\n", __func__);
> +		return;
> +	}
> +
> +	ctx = rockchip_clk_init(np, reg_base, clk_nr);
> +	if (IS_ERR(ctx)) {
> +		pr_err("%s: rockchip clk init failed\n", __func__);
> +		iounmap(reg_base);
> +		return;
> +	}
> +
> +	rv1106_pvtpll_init(ctx);
> +
> +	rockchip_clk_register_plls(ctx, rv1106_pll_clks,
> +				   ARRAY_SIZE(rv1106_pll_clks),
> +				   RV1106_GRF_SOC_STATUS0);
> +
> +	rockchip_clk_register_armclk(ctx, ARMCLK, "armclk",
> +				     mux_armclk_p, ARRAY_SIZE(mux_armclk_p),
> +				     &rv1106_cpuclk_data, rv1106_cpuclk_rates,
> +				     ARRAY_SIZE(rv1106_cpuclk_rates));
> +
> +	rockchip_clk_register_branches(ctx, rv1106_clk_branches,
> +				       ARRAY_SIZE(rv1106_clk_branches));
> +
> +	/*
> +	 * The MMC drive and sample phase clocks have their control
> +	 * registers in the GRF region, so they can only be provided when
> +	 * the rockchip,grf property points at a valid syscon.
> +	 */
> +	if (!IS_ERR(ctx->grf)) {
> +		ret = rockchip_clk_add_grf(ctx, ctx->grf, grf_type_sys);
> +		if (ret)
> +			pr_err("%s: failed to add grf: %d\n", __func__, ret);
> +		else
> +			rockchip_clk_register_branches(ctx,
> +					rv1106_grf_clk_branches,
> +					ARRAY_SIZE(rv1106_grf_clk_branches));
> +	}
> +
> +	rockchip_register_restart_notifier(ctx, RV1106_GLB_SRST_FST, NULL);
> +
> +	rockchip_clk_of_add_provider(np, ctx);
> +}
> +
> +CLK_OF_DECLARE(rv1106_cru, "rockchip,rv1106-cru", rv1106_clk_init);

Can this be registered as a platform driver similar to
drivers/clk/rockchip/clk-rk3528.c ?

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
