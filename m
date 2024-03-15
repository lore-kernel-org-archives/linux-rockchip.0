Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 670B3C54E58
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 12:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ViNUbhxuBcAVUelqyq2mPXOIj7gzcldXN4MUtaShaU4=; b=OfiNrXqegNQO9J
	PQxK1ITrXVPdVoKB48b0QwpbaNW2XwSqScNS1PfgC9Z+yjvpe5UeCfnNdPQVxqmDgo6CNug/5fbiz
	PjgYyW8CATCSiI95b3B/jhLERj462gtyjx96qA09Kk2MA82NwTr46ayFwXUm69TGypg8odSno6z8n
	Dx4AzsgC6GkLVnYD+W6xw44cvbWT2KfxECQVnfBVq6FLuNVp3Ij/40EYC9U33Jm24VJaaj/DVtFvY
	eoIifvc5Svs55PySCEE3u+Fvz8IZNg3G2Fn5RN5YNJOl64mrjfKahbl231mRQgvH8DyVswi8S5P3l
	RUrHGs0LYgHRQjFGUb8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6a8-00000000AxQ-0dYh;
	Fri, 15 Mar 2024 12:22:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6a3-00000000Avo-2UrJ;
	Fri, 15 Mar 2024 12:22:37 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rl6Zn-0000H4-Sa; Fri, 15 Mar 2024 13:22:19 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 mchehab@kernel.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: sfr@canb.auug.org.au, liujianfeng1994@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, sigmaris@gmail.com, knaerzche@gmail.com
Subject: Re: [PATCH v3 2/2] dt-bindings: media: rockchip-vpu: Add rk3588 vpu
 compatible string
Date: Fri, 15 Mar 2024 13:22:18 +0100
Message-ID: <9414316.4vTCxPXJkl@diego>
In-Reply-To: <20231231151112.3994194-3-liujianfeng1994@gmail.com>
References: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
 <20231231151112.3994194-3-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_052235_659777_7AC68CE2 
X-CRM114-Status: GOOD (  17.20  )
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

Am Sonntag, 31. Dezember 2023, 16:11:12 CET schrieb Jianfeng Liu:
> Add Hantro G1 VPU compatible string for RK3588.
> RK3588 has the same Hantro G1 ip as RK3568, which are both
> known as VDPU121 in TRM of RK3568 and RK3588.
> 
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index c57e1f488..16886bccf 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -31,6 +31,9 @@ properties:
>        - items:
>            - const: rockchip,rk3228-vpu
>            - const: rockchip,rk3399-vpu
> +      - items:
> +          - const: rockchip,rk3588-vpu
> +          - const: rockchip,rk3568-vpu

at least the rk3588 has multiple v{d/e{.}pu blocks, so this compatible
is very misleading. As you mention in the commit description already,
this describes the vdpu121, so can we please use that in the compatible
as well to distinguish this one from the others that hopefully will come
later?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
