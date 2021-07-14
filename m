Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26C09C12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:25:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2DAA660E08
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:25:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2DAA660E08
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LsyZ5CCswygyEyIumZRqGba/XXVM6eLQ/hJ9OOOBzk=; b=vkyYbBLh9TJzG/
	S4HbUMhS/FnXlzShY+Og3UGnRqnynWCpUBK3MF4tMANI1kWOV9L1zBJjvJJc4ilZv9CcwrnwrmKlg
	DnVuoG44WyidIKzoFnhzYmyP0Vh5AKUNWDFoR0dnBosnMap4KuyOcAIWmhepy4uOhpNPoKT/l2zh3
	Tql1Uiuhh6aOGUegT2oTy8UEqlIkyqJEiRzKu+Ot6zGdTIeC1hE7xHMXLnLVT/OUMm081PuM2/l5M
	FJx/dhxT7zCb7BlHyUeWzAIbUiAzEjBTElR/RDcFkPONYbLxoy3x9yc3Hk9+RDRf6s4uuXx8ONUpD
	nDv3PAaYPi9WFzh/ct3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3oGG-00GGan-Cr; Wed, 14 Jul 2021 23:25:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3l0d-00Elbe-1X; Wed, 14 Jul 2021 19:57:32 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m3l0X-0007dL-3M; Wed, 14 Jul 2021 21:57:25 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: cl@rock-chips.com, lee.jones@linaro.org
Cc: robh+dt@kernel.org, jbx6244@gmail.com, zhangqing@rock-chips.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Liang Chen <cl@rock-chips.com>
Subject: Re: [PATCH v1 2/3] dt-binding: mfd: syscon: add rk3568 QoS register
 compatible
Date: Wed, 14 Jul 2021 21:57:24 +0200
Message-ID: <5440081.dumfJixkPq@diego>
In-Reply-To: <20210624114719.1685-3-cl@rock-chips.com>
References: <20210624114719.1685-1-cl@rock-chips.com>
 <20210624114719.1685-3-cl@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_125731_150934_19FEDAE4 
X-CRM114-Status: GOOD (  14.76  )
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

Am Donnerstag, 24. Juni 2021, 13:47:18 CEST schrieb cl@rock-chips.com:
> From: Liang Chen <cl@rock-chips.com>
> 
> Document rk3568 compatible for QoS registers.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>

@Lee: I guess this one is yours :-)


> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index f14ae6da0068..206f73ffc249 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -48,6 +48,7 @@ properties:
>                - rockchip,rk3066-qos
>                - rockchip,rk3288-qos
>                - rockchip,rk3399-qos
> +              - rockchip,rk3568-qos
>                - samsung,exynos3-sysreg
>                - samsung,exynos4-sysreg
>                - samsung,exynos5-sysreg
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
