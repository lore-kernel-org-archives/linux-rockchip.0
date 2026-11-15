Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFA0606A327
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 01:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pSbViBB+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cAujmSE1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eGW38jwHxOf9E48ChtQNnFLYFQ3x9CwJqspt8rmHF4U=; b=pSbViBB+HkC2hnC/7W/9WEYb2y
	swiNhgsJuCYBPANFgo7cLikh/QXGzmQiLu0Z5kbi4zroVQw3zhx2cYkZPIXpR8890oZDmkZBCtwIo
	0d5LEiIxM+CjN89MckMvJOGXdH35XkCT88smf90x5/+mq6DAlJvdi6wB8ofkL2zZbir1nvpeeDIGp
	V4R4TEfqOlKODXI92aK34+R3//t6jIPcCWToICqCPE1p6uzPWTffV/OQbLJeleGEgCaNTM4Y1Zldv
	rYAbDtdyf0sG7bOP0BBHRga3HhVu9wwMreE7izuS/0xuofYfWxyWWrsT2hjuF2FHKh0p8J9jgrehz
	ZlkRzS/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSObS-0000000Gwwj-1E14;
	Sun, 15 Nov 2026 01:00:18 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSObQ-0000000GwvF-14ys
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 01:00:17 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-36dbde64409so3370807eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 17:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794704415; x=1795309215; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5JVcksrPn6+Ig6tuNU22o2qjR3uSsPz6hcIi+8PBA4g=;
        b=cAujmSE15aZ5xZXr/wHFxqA2ajAM5F8+EDLwklq7LNXgnUkiOF8CMXiiPgyFqBpGsJ
         ZWl22Iw80Pe2f232mX+AVnWxuEbjpWOnImsW3zB/yZ9JwDDwGgo1/5bnL6gahXM6+KNM
         o/mOOi//rCBOLVFV0sUfGEuSV1T7ptGMUXfpTyhfsFlwYqdAl1tpP4NmGK4NtXbqZZZp
         ZTRq3rCV+bTHiTqPaQiliI+PDnb0OiDf1j4l7lh+kgNx5ssOTChOBzhHCu1W76ZShOLb
         T5H4HjSwrpc74VVhNDB8i4keegwJgaNLEmk03G6DNBAwM36mwi+pAFFcj1Z503ecQFSE
         1aYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794704415; x=1795309215;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5JVcksrPn6+Ig6tuNU22o2qjR3uSsPz6hcIi+8PBA4g=;
        b=Fs0kG1F6IMBFMqvXG9CXhJNRbFt5g2XEt9HaQzH5pVKnTc0EzbnyoVvkVETLdUUEHx
         KuNVnTmxNcfHVGMvGHw6EFJLmiAUX8jv9OjYv3AobdhNG154w73tF22ExCr4xM+JV4KB
         GngB2Axh2yAUfFCNEM3qjyf55ZVBtK3KeelY3JcmCGwkSsUE7W4haKr3EoskTKwPLObQ
         C/JvcquEaWNEsYIN+7cxjzLe+lpcvPBXiQU2d8ew+MZocp8R/p9o3piK+sqkQ327GH5V
         J2ajHJf6I6oK5VICiHEAUmEFO6xAFE8mNCOgf/kG/ShbHR44Ch5mRjlioTQWAfW8kr2C
         lGDQ==
X-Forwarded-Encrypted: i=1; AL+hErEF8x9Jpfvzl5soli2udH6qI11vSwLahHpu3QKSqUKFZ4AVVDbd6BRtLSoY4Ssx+T2wgy/YCZNqrOTQdX7/+Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z8j5AFbmIc6tNIlXwjImqxenpbVvMSv8UK90TT6+FLBuhZNG0pD
	4SGyPMNMi0uDbDtQKPqDE1eGyU+fvL8vFqprjLPyAbTp0XLt/6sgdF+J
X-Gm-Gg: AYBFou0Ojsw2wU7mTqkVUbKRqhrXq8ageCR+mpMasXFx6oxSy5IttWH2mZQYo4G032P
	fW/5JK8i/TYDQQ0ER1yhtLw1qrnc2z6dPe9GwasxPja6YvyDpOm/cOk/PfecOigLzb6HSy2lo4R
	ngLxnraNqBDUUjb81sq9Bo7FQtdiO+My270jTlGaDYFRzMw1AXfPE7pcdV1oYXRCjAulvNUsYzo
	t0+lMBmxXB1a6dGoZaUxGiiNEwwKzMJ9AaUPHqqjB+1/xAPCcXOL96riblpwoMIOOiJOxbaavPQ
	O1WS5xSeSnWhGB62cdhMDHwYrihCXyrW3mb46OoCTLlLxQcs4AI2z+thglBaR/atKLv8ZWq+sCO
	0H6bceyoSvoNlY4sAgMDmr0G4ZKaDjIfDEw8qs2qwhCJui/aFlP7bmiKkNB7Q64j+kkMqWEyh7+
	k2fV5Vqm9HET+MUedb3wswd2nMBvgMaLgzoTmvvrhJwTaEHHzBxNqC00ZEWfMwdviB69O1w8wxD
	dYUYmMT5DtHgxkv+vagT+H+GsilUn9gkAzZ4D8j1RD0L8Uub9QyreVeXyxgvusnSinf/Fk5xshf
	WRE/NFrxPFP5ysKJ/vQlSeC7HQ9Rck/mrvtr2aRhU1fQT2QbA6JextNKK+BOB69fyq8=
X-Received: by 2002:a05:7300:7481:b0:375:c5e1:931d with SMTP id 5a478bee46e88-37966e3aff8mr9267695eec.25.1794704413837;
        Sat, 14 Nov 2026 17:00:13 -0800 (PST)
Received: from [192.168.35.43] ([218.50.238.131])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-379560f5e06sm26895445eec.19.2026.11.14.17.00.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Nov 2026 17:00:13 -0800 (PST)
Message-ID: <c0b9ed82-3e30-4f53-809e-e7f35b0296d7@gmail.com>
Date: Sun, 15 Nov 2026 10:00:08 +0900
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/7] PM / devfreq: rockchip-dfi: add RK3576 support
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
 <20260921-b4-rockchip-dfi-rk3576-support-v2-7-04f847016321@collabora.com>
From: Choi Chanwoo <cwchoi00@gmail.com>
In-Reply-To: <20260921-b4-rockchip-dfi-rk3576-support-v2-7-04f847016321@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_170016_293843_ABE6685E 
X-CRM114-Status: GOOD (  15.43  )
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
> Add RK3576 support to the DFI driver exposing the same functionality
> as found on previous chips. This uses the RK3588 init for getting the
> DRAM type info from the GRF registers. In contrast to RK3588 it uses
> a newer DDRMON controller IP, though (version 0x40).
> 
> Co-developed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 8ba97af78e3d..a895e566b4b9 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -858,6 +858,10 @@ static const char * const rk3399_clk_names[] = {
>  	"pclk_ddr_mon",
>  };
>  
> +static const char * const rk3576_clk_names[] = {
> +	"pclk_ddr_mon_ch0", "pclk_ddr_mon_ch1",
> +};
> +
>  static const char * const rk3588_clk_names[] = {
>  	"pclk_ddr_mon_ch0", "pclk_ddr_mon_ch1", "pclk_ddr_mon_ch2",
>  	"pclk_ddr_mon_ch3",
> @@ -887,6 +891,18 @@ static const struct rockchip_dfi_variant rk3568_variant = {
>  	.reg_access = 0x2c,
>  };
>  
> +static const struct rockchip_dfi_variant rk3576_variant = {
> +	.init = rk3588_dfi_init,
> +	.stride = 0x10000,
> +	.max_channels = 2,
> +	.clk_names = rk3576_clk_names,
> +	.num_clks = ARRAY_SIZE(rk3576_clk_names),
> +	.reg_write_access = 0x28,
> +	.reg_read_access = 0x2c,
> +	.reg_access = 0x34,
> +	.reg_clock_cycles = 0x30,
> +};
> +
>  static const struct rockchip_dfi_variant rk3588_variant = {
>  	.init = rk3588_dfi_init,
>  	.stride = 0x4000,
> @@ -903,6 +919,7 @@ static const struct rockchip_dfi_variant rk3588_variant = {
>  static const struct of_device_id rockchip_dfi_id_match[] = {
>  	{ .compatible = "rockchip,rk3399-dfi", .data = &rk3399_variant },
>  	{ .compatible = "rockchip,rk3568-dfi", .data = &rk3568_variant },
> +	{ .compatible = "rockchip,rk3576-dfi", .data = &rk3576_variant },
>  	{ .compatible = "rockchip,rk3588-dfi", .data = &rk3588_variant },
>  	{ },
>  };
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
