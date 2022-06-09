Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 817E4C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jun 2022 17:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6yio+I1f2BF5kFhJ5oqcgluFKmCORr5PbJMTTUDozc=; b=eNqZGXuL2yOr+0
	6iuabGW/GRQcL85AxPmOWHmb1UFsNpKKCfUX8dE80D5uwAU9TwFG+N/0RcfA3LD/5QYEhiXXXGnCn
	d/tDutOJTKf9llp8+6wyZAV+YuX3BK2DZCu+df5V66I/diumdQXqgA8oL71kU8IM66mTgMsT+bCdw
	44FtkqX3rmX82Jfdw1ezjVyuf1MQCnNb6JG6vYc14/5qK5iNn5UKeezk8IiPfkDSuqm59DCGOZ2pa
	PitmwZvzV8DPmx6Wo1axo8uyah1ykwfdQeLqnsjnBtpRSZCV46E3PavJFFjkuP1gEES1Dw6sw/2Va
	Dag4m+quruSy36RwO33A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzMJ1-003KX9-Ji; Thu, 09 Jun 2022 17:50:51 +0000
Received: from mail-io1-f49.google.com ([209.85.166.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzMIx-003KTE-AH; Thu, 09 Jun 2022 17:50:50 +0000
Received: by mail-io1-f49.google.com with SMTP id a10so22892745ioe.9;
        Thu, 09 Jun 2022 10:50:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HnAifctYdNaT/poGeGfhLUmDWMrLaMg17cclIAxPNog=;
        b=RJ60eVFLMpQfg0HeMLvbnp+1casJIp94bOhkHiPEBY2i9ykb4WjQhKVzHTI5r/ko6e
         pkkgjY/10GMCYo+aby9fvJzrGs9n8lUmabnDMefP4gKD0UmZh2QPh0f7VLvDZFO6HWJT
         rCrMTIe5dCnvxqlgFmnGcq8SgFK887T8oPUMfKf3ASsIQFKdK2ougPABuF7JA842YORx
         JX9fcejfGmNjvRwAGZK3EySiGD2gXEQYJ7aNwmw5DfRy5g+EDD02W0qyL4WAEBvicOz5
         zQvavNeIRrDR1Qq/Cx/S4Pzows8B8NUi8j3twbTdNkU4JQukP9rLwdANqAW+FUfNGkp/
         nbDw==
X-Gm-Message-State: AOAM5312+l28x+JknSkbc4K8TNxRSZGXqehIPkj3oNbNiQyC35fW75BL
	I/hFiQz9nU+KPqfDPFCUCw==
X-Google-Smtp-Source: ABdhPJxAiTUZAr56YxyBVP43w4ziAPRPbjtV7Scut9p9XeaOHBavU3f1WWiKaf+TI5dVsV/oPBVYzA==
X-Received: by 2002:a5d:88c8:0:b0:662:b25a:49b7 with SMTP id i8-20020a5d88c8000000b00662b25a49b7mr18756600iol.159.1654797045693;
        Thu, 09 Jun 2022 10:50:45 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id b28-20020a056638389c00b00331ab545889sm5305064jav.45.2022.06.09.10.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 10:50:45 -0700 (PDT)
Received: (nullmailer pid 4024412 invoked by uid 1000);
	Thu, 09 Jun 2022 17:50:42 -0000
Date: Thu, 9 Jun 2022 11:50:42 -0600
From: Rob Herring <robh@kernel.org>
To: Sjoerd Simons <sjoerd@collabora.com>
Cc: linux-rockchip@lists.infradead.org, kernel@collabora.com, Akash Gajjar <akash@openedev.com>, Alex Bee <knaerzche@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, Frank Wunderlich <frank-w@public-files.de>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Levin Du <djw@t-chip.com.cn>, Liang Chen <cl@rock-chips.com>, Michael Riesch <michael.riesch@wolfvision.net>, Peter Geis <pgwipeout@gmail.com>, Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add ROCK Pi S DTS support
Message-ID: <20220609175042.GA4021841-robh@kernel.org>
References: <20220606082629.79682-1-sjoerd@collabora.com>
 <20220606082629.79682-2-sjoerd@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220606082629.79682-2-sjoerd@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_105047_426946_9B3372AC 
X-CRM114-Status: GOOD (  13.41  )
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

On Mon, Jun 06, 2022 at 10:26:27AM +0200, Sjoerd Simons wrote:
> From: Akash Gajjar <akash@openedev.com>
> 
> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
> 
> This patch enables
> - Console
> - NAND Flash
> - SD Card
> 
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> [sjoerd: Sort dt nodes, drop properties duplicated from dtsi]
> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
> ---
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +

Bindings should be a separate patch.

>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 204 ++++++++++++++++++
>  3 files changed, 210 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
