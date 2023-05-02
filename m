Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C094C77B73
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 08:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSSxyRutCjBi1bbUtIG8ucmUg85D8GVUbTOojpmwwG8=; b=chPcCW88F9WKaa
	E0hjKMubzdI6Qkvbcu4BjXS6E69zJmgeoypb6h9eq68+3UK3GUnnWFq+TZ0WYqf7XQMdE9QpSzKY4
	IMypoCz+yaQ8qqt00o05/FjxQNBX16o+RqVCZ42x58jdxVzOcXjW4nij1fezGUkI1lV3alEMXdXNL
	GN2qNXr03cW7PiZUurfknOiPnb4XkyJMDEWxFPi6PX9Jxr7mSvq6MkC8EOK8g0MdvhYzO1+/vDqPJ
	3tAZIQM7aVarwMjgQzu33LQqzjv56gqehU3Tzg3eZb2KEp7fLmgZuH+MoX/Vw7+F5Nlqgy6fjbwpT
	ehXhm3aC+aknC5lcHOYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlft-000fey-1q;
	Tue, 02 May 2023 08:47:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlfp-000feB-18;
	Tue, 02 May 2023 08:47:50 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ptlfj-0006Pn-4p; Tue, 02 May 2023 10:47:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject:  Re: [PATCH 3/8] nvmem: rockchip-otp: Add clocks and reg_read to rockchip_data
Date: Tue, 02 May 2023 10:47:41 +0200
Message-ID: <6064284.AJdgDx1Vlc@diego>
In-Reply-To: <20230501084401.765169-4-cristian.ciocaltea@collabora.com>
References:  <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-4-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_014749_387515_572E94CD 
X-CRM114-Status: GOOD (  16.59  )
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

Am Montag, 1. Mai 2023, 10:43:55 CEST schrieb Cristian Ciocaltea:
> In preparation to support new Rockchip OTP memory devices with different
> clock configurations and register layout, extend rockchip_data struct
> with the related members: clocks, num_clks, reg_read.
> 
> Additionally, to avoid managing redundant driver data, drop num_clks
> member from rockchip_otp struct and update all references to point to
> the equivalent member in rockchip_data.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/nvmem/rockchip-otp.c | 79 ++++++++++++++++++++++--------------
>  1 file changed, 49 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> index 9f53bcce2f87..a5b234e60735 100644
> --- a/drivers/nvmem/rockchip-otp.c
> +++ b/drivers/nvmem/rockchip-otp.c
> @@ -54,21 +54,19 @@
>  
>  #define OTPC_TIMEOUT			10000
>  
> +struct rockchip_data {
> +	int size;
> +	const char * const *clocks;
> +	int num_clks;

nit: might be nice to use either "clocks" or "clks" as part for both names


other than that
Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
