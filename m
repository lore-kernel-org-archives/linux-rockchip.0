Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2227C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 22:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IRnls4m3vGqwB9zv63GLWBsxaSaWqOtY5XghXbqLFA=; b=gbT1M/uHg1p9Wk
	mDE2n4U0kjQgxUrE+fs84ZE3iNaga0MCTHxUnqNa+Uwp6Ose3jRejxjZ4GHzaMBYtlFIp/XkBd0+R
	DHZ4WSV5tFfyj0YMSiquTcRPvuYWlh6BwH61KBoPodcJDqqIglzv0RM/ZCL6xf5l8yb/5j0M/k9Ad
	Oi17JQ8CGXVfU3MXhQRzoVFuPDwFntZj6zfPh2Lnq4oEdjVKuO5b8yvbMu6lpD0NxoSdYzve+YM/+
	Cpz00Oug9uZ0ghyaOIVVlfmcDHMi/tq874AzG6W25NKS9Ajdx/Yaj9OkktSatntODITAfduDa/FEF
	Y0e2oFzfIry6IyTlvY5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o72Gm-001jRG-6U; Thu, 30 Jun 2022 22:04:16 +0000
Received: from mail-il1-f177.google.com ([209.85.166.177])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o72Gj-001jQA-9y; Thu, 30 Jun 2022 22:04:14 +0000
Received: by mail-il1-f177.google.com with SMTP id n14so262152ilt.10;
        Thu, 30 Jun 2022 15:04:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=s6vayCRK86CE7qgYDkxjb+ihTq54Ky6YWbFQEP1rvh0=;
        b=WfZkzY33Y4Ce8lYtBxmEIpxTsSM2nQQbu92BVu+0qPhsi+O83cL0Oyx7qWNsrk2Lj4
         KBaPWy5P0wB0eH28Er24GCp+H7f5W6cul7hHHnFaYR7mQAqZZM3ibQNupROSOf7iJ4Te
         Z7CEda6g/XN0P71b/4Ow9THYjDLLOwmozLehAzRO981fRbZUAu8ekkPjDtw3xNgWEaYq
         H3ealBnVEJNxSzCbrg27c0kVKxg2BYj4xzGPxJDYi3s0mpMJRXpECLjf4YTMvu430xvD
         iYz30QN8A9JJkx2BYNrQbdg3wzSXRV7qy5cb/kjd9/mPLpnzzQC1CMFyqQ/QALYvR+Wr
         t4Hw==
X-Gm-Message-State: AJIora9W+UtPZEB/ETpje/HGRpZBpwqPz0CPWXcPrQtikNru/ko8o4sM
	ikrtJRtvFyEMKVZNmQNLPQ==
X-Google-Smtp-Source: AGRyM1vW3dsEogT9Co/H9kmqJP0E9h2BYpxtiVWrLbrM0vHhTIpjSAk9Y6napPhEV50x1ZxpZ78c1g==
X-Received: by 2002:a05:6e02:1c27:b0:2d9:4d66:8541 with SMTP id m7-20020a056e021c2700b002d94d668541mr6394281ilh.176.1656626652566;
        Thu, 30 Jun 2022 15:04:12 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id e25-20020a0566380cd900b00339ee768069sm8989348jak.74.2022.06.30.15.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 15:04:12 -0700 (PDT)
Received: (nullmailer pid 3399122 invoked by uid 1000);
	Thu, 30 Jun 2022 22:04:09 -0000
Date: Thu, 30 Jun 2022 16:04:09 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 2/6] dt-bindings: add power-domain header for rk3588
Message-ID: <20220630220409.GA3396626-robh@kernel.org>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
 <20220623162309.243766-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623162309.243766-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_150413_384699_900AF969 
X-CRM114-Status: GOOD (  15.89  )
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

On Thu, Jun 23, 2022 at 06:23:05PM +0200, Sebastian Reichel wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> According to a description from TRM, add all the power domains.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  include/dt-bindings/power/rk3588-power.h | 69 ++++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 include/dt-bindings/power/rk3588-power.h
> 
> diff --git a/include/dt-bindings/power/rk3588-power.h b/include/dt-bindings/power/rk3588-power.h
> new file mode 100644
> index 000000000000..69f7e9060250
> --- /dev/null
> +++ b/include/dt-bindings/power/rk3588-power.h
> @@ -0,0 +1,69 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Dual license please. It would be nice to get agreement from Rockchip on 
this and *all* DT headers.

> +#ifndef __DT_BINDINGS_POWER_RK3588_POWER_H__
> +#define __DT_BINDINGS_POWER_RK3588_POWER_H__
> +
> +/* VD_LITDSU */
> +#define RK3588_PD_CPU_0		0
> +#define RK3588_PD_CPU_1		1
> +#define RK3588_PD_CPU_2		2
> +#define RK3588_PD_CPU_3		3
> +
> +/* VD_BIGCORE0 */
> +#define RK3588_PD_CPU_4		4
> +#define RK3588_PD_CPU_5		5
> +
> +/* VD_BIGCORE1 */
> +#define RK3588_PD_CPU_6		6
> +#define RK3588_PD_CPU_7		7
> +
> +/* VD_NPU */
> +#define RK3588_PD_NPU		8
> +#define RK3588_PD_NPUTOP	9
> +#define RK3588_PD_NPU1		10
> +#define RK3588_PD_NPU2		11
> +
> +/* VD_GPU */
> +#define RK3588_PD_GPU		12
> +
> +/* VD_VCODEC */
> +#define RK3588_PD_VCODEC	13
> +#define RK3588_PD_RKVDEC0	14
> +#define RK3588_PD_RKVDEC1	15
> +#define RK3588_PD_VENC0		16
> +#define RK3588_PD_VENC1		17
> +
> +/* VD_DD01 */
> +#define RK3588_PD_DDR01		18
> +
> +/* VD_DD23 */
> +#define RK3588_PD_DDR23		19
> +
> +/* VD_LOGIC */
> +#define RK3588_PD_CENTER	20
> +#define RK3588_PD_VDPU		21
> +#define RK3588_PD_RGA30		22
> +#define RK3588_PD_AV1		23
> +#define RK3588_PD_VOP		24
> +#define RK3588_PD_VO0		25
> +#define RK3588_PD_VO1		26
> +#define RK3588_PD_VI		27
> +#define RK3588_PD_ISP1		28
> +#define RK3588_PD_FEC		29
> +#define RK3588_PD_RGA31		30
> +#define RK3588_PD_USB		31
> +#define RK3588_PD_PHP		32
> +#define RK3588_PD_GMAC		33
> +#define RK3588_PD_PCIE		34
> +#define RK3588_PD_NVM		35
> +#define RK3588_PD_NVM0		36
> +#define RK3588_PD_SDIO		37
> +#define RK3588_PD_AUDIO		38
> +#define RK3588_PD_SECURE	39
> +#define RK3588_PD_SDMMC		40
> +#define RK3588_PD_CRYPTO	41
> +#define RK3588_PD_BUS		42
> +
> +/* VD_PMU */
> +#define RK3588_PD_PMU1		43
> +
> +#endif
> -- 
> 2.35.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
