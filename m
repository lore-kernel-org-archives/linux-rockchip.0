Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75523C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 07:37:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A40460ED4
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 07:37:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3A40460ED4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ssvk9GAw2gic0f/XkicxZEDaTN6H4bjaLwPo6lYbyE=; b=FwiF4+Cpg8h1ai
	mAT0HLUZ0PMDa58p2Zf86QFb9yEBw/K8Qv94RtVuKZJ3nwsB3Myi0WXLZy1WnZgTQxQEssbZ5oT9X
	NN4wz+y7QGsG9TZ7qIMrAZaZWkBDx2SbZCjdzboZ5GdtAefyGLW6+PIZ2KsXeMBnwWp354OL0Ye26
	FQWpbay0QKKsA6C7Bp6LAqZ/PXidkLYDZAuKwT3GllqapvpPnZKT/BjbRrRpTOJghy+yjXqFO6vEg
	ceXhjcsBiXnXeZAsdO4x8xJzqIb6o54ZTbgUjtna5bkyA6sGhP1KnnZHp6Z2cdZzipdJoxUqCVLEL
	+g541FGOOBxTjqV4b8bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCLK-00BoKP-WA; Tue, 12 Oct 2021 07:36:59 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCLI-00BoHe-5q; Tue, 12 Oct 2021 07:36:57 +0000
Received: by mail-lf1-x12e.google.com with SMTP id u18so83753671lfd.12;
 Tue, 12 Oct 2021 00:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vB9uYdJsN7HfFIh1EPeV/AmLli9Pcmu7LFRCY4ZOmhM=;
 b=hbUYGPANbCGobhRYJTcf/mlq+dyADWC7z6fvhcM3ER2+BCPyQcaZToBU/wADPB7b0N
 0prHdPAExgBgj1pER9QInpPSAuoEgDCa7xC2H3SEsAY5MXpdzdzFeb6SY7ChaH4S20ep
 MzDiYLrS8OUmL6hL0iVsjVkBb6BfYMX4gPwmr70cr4ozpt075mUoH7ZJEwfhVEpeF/cL
 d8o1FxWcmqIlzLLM5VqhPeYdj2Tet+fPZL13gz/S6PMzU7YUD+3vwawjczx6tKABZ0VV
 WMjxuQkuqMBjcwQtkFXHdfhpZlt0aOfD1zfmOg8xoEpv3TELSYQYi0rL22J95y4Ccw5L
 ugRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vB9uYdJsN7HfFIh1EPeV/AmLli9Pcmu7LFRCY4ZOmhM=;
 b=HgvfiVorItQz6wA+f2vxOUGN80GqUisn5aHPieIo60krOGZ+vTOVDGM8IymGM1nojw
 iKYJS0dYDe+faTJU+yW/Qe5LWKMw4mG+xc6vk7Ij1bl0fANDCc1QbpP49rjrbpFuSo1E
 80jstfIvAKL/jTdYQcTfF9JieKDGHD+2hLoclUrn/0HOm75u2ibKr+K9mEVdWbH00Uzb
 01Ln0WUJHi9UWAZsb/wZLuhAORtcIZynwbpofli2uzQtNwD/ZFuf1vBONNO+b4xiCzRd
 Xvck1+mua81sPgHPX0AcOrX3CtOVOSGotpJoj9VGniklDAusqMpeiAeZIKn3sp7Igr9I
 zhRA==
X-Gm-Message-State: AOAM531YpbtgY4wVrzLgdtxi5VrwfsyKTNBMIYBkRSR7sseluasbUHl1
 ALV5XTi2EbPwWlgWC5GRnlg=
X-Google-Smtp-Source: ABdhPJxmsAtVWTmIwhXUKqHrj680l/Z9xEbT0Q5zkjpkJtxYwr/pmbkLLqsNA5Vua7Wdkm6x2zYrAw==
X-Received: by 2002:a05:6512:1595:: with SMTP id
 bp21mr7199977lfb.188.1634024213565; 
 Tue, 12 Oct 2021 00:36:53 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id a14sm951376lfs.26.2021.10.12.00.36.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 00:36:53 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, vkoul@kernel.org, michael.riesch@wolfvision.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de
Subject: Re: [PATCH v1 2/3] phy/rockchip: add naneng combo phy for RK3568
Date: Tue, 12 Oct 2021 09:36:51 +0200
Message-ID: <1807525.kHsN9XgAzY@archbook>
In-Reply-To: <20210826123844.8464-3-yifeng.zhao@rock-chips.com>
References: <20210826123844.8464-1-yifeng.zhao@rock-chips.com>
 <20210826123844.8464-3-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_003656_291670_388012EA 
X-CRM114-Status: GOOD (  18.83  )
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

On Donnerstag, 26. August 2021 14:38:43 CEST Yifeng Zhao wrote:
> This patch implements a combo phy driver for Rockchip SoCs
> with NaNeng IP block. This phy can be used as pcie-phy, usb3-phy,
> sata-phy or sgmii-phy.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> [...]
> +static int rockchip_combphy_pcie_init(struct rockchip_combphy_priv *priv)
> +{
> +	int ret = 0;
> +
> +	if (priv->cfg->combphy_cfg) {
> +		ret = priv->cfg->combphy_cfg(priv);
> +		if (ret) {
> +			dev_err(priv->dev, "failed to init phy for 
pcie\n");
> +			return ret;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int rockchip_combphy_usb3_init(struct rockchip_combphy_priv *priv)
> +{
> +	int ret = 0;
> +
> +	if (priv->cfg->combphy_cfg) {
> +		ret = priv->cfg->combphy_cfg(priv);
> +		if (ret) {
> +			dev_err(priv->dev, "failed to init phy for 
usb3\n");
> +			return ret;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int rockchip_combphy_sata_init(struct rockchip_combphy_priv *priv)
> +{
> +	int ret = 0;
> +
> +	if (priv->cfg->combphy_cfg) {
> +		ret = priv->cfg->combphy_cfg(priv);
> +		if (ret) {
> +			dev_err(priv->dev, "failed to init phy for 
sata\n");
> +			return ret;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int rockchip_combphy_sgmii_init(struct rockchip_combphy_priv *priv)
> +{
> +	int ret = 0;
> +
> +	if (priv->cfg->combphy_cfg) {
> +		ret = priv->cfg->combphy_cfg(priv);
> +		if (ret) {
> +			dev_err(priv->dev, "failed to init phy for 
sgmii\n");
> +			return ret;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int rockchip_combphy_set_mode(struct rockchip_combphy_priv *priv)
> +{
> +	switch (priv->mode) {
> +	case PHY_TYPE_PCIE:
> +		rockchip_combphy_pcie_init(priv);
> +		break;
> +	case PHY_TYPE_USB3:
> +		rockchip_combphy_usb3_init(priv);
> +		break;
> +	case PHY_TYPE_SATA:
> +		rockchip_combphy_sata_init(priv);
> +		break;
> +	case PHY_TYPE_SGMII:
> +	case PHY_TYPE_QSGMII:
> +		return rockchip_combphy_sgmii_init(priv);
> +	default:
> +		dev_err(priv->dev, "incompatible PHY type\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}

All of the _init functions appear to be the same except for the error
string.

I think it would be better to just have the init done in _set_mode,
and then use the switch case statement to show the right error
message on if (ret).

> [...]
> +
> +static int rockchip_combphy_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct rockchip_combphy_priv *priv;
> +	const struct rockchip_combphy_cfg *phy_cfg;
> +	struct resource *res;
> +	int ret;
> +
> +	phy_cfg = of_device_get_match_data(dev);
> +	if (!phy_cfg) {
> +		dev_err(dev, "No OF match data provided\n");
> +		return -EINVAL;
> +	}
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	priv->mmio = devm_ioremap_resource(dev, res);

I think devm_platform_get_and_ioremap_resource is preferred here,
using it also means you can get rid of res.

> +	if (IS_ERR(priv->mmio)) {
> +		ret = PTR_ERR(priv->mmio);
> +		return ret;
> +	}
> +
> [...]

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
