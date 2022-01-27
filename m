Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF717C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 08:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKjq1nlftVXz5tWMjGkQWWzqMHE6YTKfsnAVhnyPoDA=; b=gnwEINrDWcBZT0
	eR8/ZT8c9x3Z+WKRixvS2Y28EeDAwl40GJylBUeDQ0mrMOpAN35puyTZX7+nhjYTSOdUZrqnwDL+d
	fPDV0CpsvQTZcF5hzzP5vdwjbccaN7NgA6L6Qj57749+rn09m3Lsc0CS4QEcz2oDv0Un7QyN80gxY
	1tEXAPRZYEi3ohnQnUlnmTsAoKBs2F0j8rKlYubfqus/n6M0TUk5EJoriCfchGroynUad9I/0sZr1
	xePdeNCgkwefuG7oQp0EAZtB2JgXQBh3LZapAI7r3DEe8ecT3Ztax8wk97JJf4uZ6Qin26jys34gj
	EIrB11Brk8j70OQDhvdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD0Qq-00EkQe-6n; Thu, 27 Jan 2022 08:47:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD0Qe-00EkOt-3S; Thu, 27 Jan 2022 08:46:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1BB1961AB2;
 Thu, 27 Jan 2022 08:46:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 475C8C340E4;
 Thu, 27 Jan 2022 08:46:47 +0000 (UTC)
Message-ID: <43e29322-fc4d-2c72-86b2-1f41fb05a2f9@xs4all.nl>
Date: Thu, 27 Jan 2022 09:46:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V4 02/11] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
Content-Language: en-US
To: Shawn Guo <shawnguo@kernel.org>
Cc: aford@beaconembedded.com, cphealy@gmail.com,
 Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-media@vger.kernel.org,
 Adam Ford <aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-3-aford173@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220125171129.472775-3-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_004652_235904_80A2E7C7 
X-CRM114-Status: GOOD (  15.01  )
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

Shawn,

Can you take patches 2-4 of this series or shall I? In the latter case I
need your Acked-by for these three patches.

Regards,

	Hans

On 25/01/2022 18:11, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the defines for the power domains provided by the VPU
> blk-ctrl on the i.MX8MQ.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Acked-by: Rob Herring <robh@kernel.org>
> 
> diff --git a/include/dt-bindings/power/imx8mq-power.h b/include/dt-bindings/power/imx8mq-power.h
> index 8a513bd9166e..9f7d0f1e7c32 100644
> --- a/include/dt-bindings/power/imx8mq-power.h
> +++ b/include/dt-bindings/power/imx8mq-power.h
> @@ -18,4 +18,7 @@
>  #define IMX8M_POWER_DOMAIN_MIPI_CSI2	9
>  #define IMX8M_POWER_DOMAIN_PCIE2	10
>  
> +#define IMX8MQ_VPUBLK_PD_G1		0
> +#define IMX8MQ_VPUBLK_PD_G2		1
> +
>  #endif


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
