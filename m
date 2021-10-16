Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F08E0C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:47:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3314E60F36
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:47:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3314E60F36
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OQ9NKfFRQFC3eo6tS1PUvXlfi9G32hvrd8hvch+twA=; b=aoi095FSLicwBt
	ZWytJ0XXKfXdGEUbcTJnxvlKcExh69EI/eAgwv4VR3iXpCDfpIleTU+LJPMxXIOLu4/1fBxjdkc1q
	1tLP4tjjhPnLfZOKcO6hNT/Z+96jazt+BCnU+v3HYFFRjABnaWpO+PYRvcESFfFBoOOw3zHJvAkI8
	ItgX543le0anT9hIhgYxqkIPEkdeJXt+KGE7BoC3GotTpN6Dh6QcdAp5kLoSgiebaTC4i3Ws7EBNx
	Br6ecPYM+crPddbahc6/KHXqe2A8eLXurj5dhPOln0Y8PwRZ7U+zYoitSVQXNKltmvn9+r1IOCmrK
	1U4eInyLUbJ1zQ2EHe5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbluT-00Atol-RZ; Sat, 16 Oct 2021 15:47:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbluR-00AtnP-Fi; Sat, 16 Oct 2021 15:47:44 +0000
Received: from p508fce7c.dip0.t-ipconnect.de ([80.143.206.124]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mbluM-0007VR-HD; Sat, 16 Oct 2021 17:47:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: rockchip: i2s-tdm: Drop rockchip,
 cru property
Date: Sat, 16 Oct 2021 17:47:37 +0200
Message-ID: <2915547.VsDhchvPPW@phil>
In-Reply-To: <20211016105354.116513-3-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
 <20211016105354.116513-3-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_084743_564154_D18FF14E 
X-CRM114-Status: GOOD (  18.01  )
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

Am Samstag, 16. Oktober 2021, 12:53:51 CEST schrieb Nicolas Frattaroli:
> This property was only needed for a driver hack, which we can
> remove. Since the bindings were not in any kernel release yet, we
> are able to just drop the property instead of silently accepting
> and ignoring it.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Thanks for doing that change :-)
Heiko


> ---
>  .../bindings/sound/rockchip,i2s-tdm.yaml         | 16 ----------------
>  1 file changed, 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> index ce3e18b50230..6a7c004bef17 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> +++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> @@ -82,12 +82,6 @@ properties:
>          - tx-m
>          - rx-m
>  
> -  rockchip,cru:
> -    $ref: /schemas/types.yaml#/definitions/phandle
> -    description:
> -      The phandle of the cru.
> -      Required if neither trcm-sync-tx-only nor trcm-sync-rx-only are specified.
> -
>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
> @@ -144,15 +138,6 @@ required:
>    - rockchip,grf
>    - "#sound-dai-cells"
>  
> -allOf:
> -  - if:
> -      properties:
> -        rockchip,trcm-sync-tx-only: false
> -        rockchip,trcm-sync-rx-only: false
> -    then:
> -      required:
> -        - rockchip,cru
> -
>  additionalProperties: false
>  
>  examples:
> @@ -177,7 +162,6 @@ examples:
>              resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
>              reset-names = "tx-m", "rx-m";
>              rockchip,trcm-sync-tx-only;
> -            rockchip,cru = <&cru>;
>              rockchip,grf = <&grf>;
>              #sound-dai-cells = <0>;
>              pinctrl-names = "default";
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
