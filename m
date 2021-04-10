Return-Path: <SRS0=4pKU=JH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE04C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 21:08:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8F68610D1
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 21:08:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8F68610D1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tRySVzfPhiTIZVv2Qu4bWMrDpKoWGixfZhcwyVlOnWE=; b=ASqGSDFUnBNJ6/RJ6M1xRFGny
	VXPcarPI6R5cVQCspk+XwRXc4g/OC9ZrH9uoedoMDE00IJbs3hVD1wySrUrfEsm8HGblZatTXvWrV
	DnVYaVG2avPl0lShHMYxPkHnrlG7boSyKC233GDqNLU/5T8YEODaoFA11a+qHrkMSPA8jhXlBrZ62
	GqByGidmY0tiWM+vWnBRfJD1sDw/CC3Nz2w36qL86Dl3ztvTZIrEaKNebwvq9nn61W5XXOFJuhZgn
	n2sniTulfmG6/aVlZLwzsDGh4iws1zn3DCNUn8caHwLM4um+rKC06SM3n1OIeAKsG6BzD/lxqtlwo
	8CIwjzF0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVKq2-003RzY-8f; Sat, 10 Apr 2021 21:08:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVKpl-003RyR-70
 for linux-rockchip@desiato.infradead.org; Sat, 10 Apr 2021 21:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=/8SeNtIXLN1ROWs2IAZS8XYK1dV1sSKbc2eaZpbkq0w=; b=pnohgoCM5f7gB8BVINgkrxJRE3
 EXNkBQYn4zLebAqZXCUwRqo+bYaPXC2eOyCzL1OHMNpPiSVzwW7K4RyFscvd4F611GROw01mce+Xl
 hU1hzR7RLlEsb+CeA1CdIYwODXM+XYQ9AJ9aIxWDVTjBXLZqwehqXVDbtokiTyySMUbz/eE5nFV2a
 nislaq4ZKP9c+qmbx+YQj0YWx33LDLi0Uaq2b8TVSnd1J1HR7/Kcf4LMC1/ETiVIUZVe7U/59cw7P
 VQ1tgGjJwBdK43239d60iEnPw5ea3zK9VLE7vkb35XiDzJw8Hjtq3UK/Ik1jvWtDqJmnNrTsET8s3
 X5PJQp2A==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVKph-005GWv-On
 for linux-rockchip@lists.infradead.org; Sat, 10 Apr 2021 21:07:58 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lVKpd-0001aH-0m; Sat, 10 Apr 2021 23:07:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Peter Geis <pgwipeout@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: Re: [PATCH] dt-bindings: pinctrl: rockchip: add RK3568 SoC support
Date: Sat, 10 Apr 2021 23:07:50 +0200
Message-ID: <2189574.bB369e8A3T@diego>
In-Reply-To: <20210410204500.18091-1-ezequiel@collabora.com>
References: <20210410204500.18091-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_140757_838802_EBA71E8E 
X-CRM114-Status: GOOD (  14.08  )
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

Am Samstag, 10. April 2021, 22:45:00 CEST schrieb Ezequiel Garcia:
> Add RK3568/RK3566 SoC support to pinctrl.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> index d3eae61a340d..91fab614c381 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> @@ -33,6 +33,7 @@ Required properties for iomux controller:
>  		"rockchip,rk3328-pinctrl":  for Rockchip RK3328
>  		"rockchip,rk3368-pinctrl":  for Rockchip RK3368
>  		"rockchip,rk3399-pinctrl":  for Rockchip RK3399
> +		"rockchip,rk3568-pinctrl":  for Rockchip RK3568
>  
>    - rockchip,grf: phandle referencing a syscon providing the
>  	 "general register files"
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
