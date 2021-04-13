Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81852C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 22:51:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 077F261003
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 22:51:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 077F261003
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B7r4rMAmaXAvfIWDuUH5Lcn6gAvdDKUjUcJGwIJWf7E=; b=WKF/m6ewcFhhE/1e1oBMUkZGT
	IqBXkUBwnl+dm+ocfW4pd9/+hg0bxogb9Q2mA8Wejwlastn30b3qFHgMa4QL3WvYASb/PptBh+NTD
	6GoHtw6clz5CNHt6udWcLc+DGGZMQ1OxuiN6n3x3qqeuibiZ/YTeTJoIjbKX8BkhGzp253H5YB7tw
	qAH+w8IbO7WgLHAtx63jNASZe10fAosJPANmG5gd+ayyIfx23fy4hlDZDcPmsUJS+QgrRUw0UlHHW
	6aqyldR4hDFVpJzXjUo235X2qysyQ68g4LssDGSrtrfTxbsWteVDjSRALicECOSGYb/0vxWPyf2b4
	cTyCBFRAQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWRsV-00AjSR-TN; Tue, 13 Apr 2021 22:51:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWRsS-00AjRN-Ok
 for linux-rockchip@desiato.infradead.org; Tue, 13 Apr 2021 22:51:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JhLRku7uljPfVfPCQhIVOFByU5l6ZV/H3UJYzNhAgBQ=; b=lKiA7KGwEp5fYPsFSy7WMl3QPx
 CxvyfOvfdzAjTa5vIjl92SVVuNsazHL6mJ2Qi7aIFa0+2jLO4StfzkCujOLqabdgs5yhFX+SIeVa0
 wat6W+fOQDhsbjUIcBPeMQ/V0isQnEL/oBtpUg5tbzItZAAl5sEnW2S8j3GjzhcXfLN1F1odApgQC
 Oyyt4nkTcFmxOlRu2C7f8IA2SRKkkwT42cHBp2MJ8zohVfeQXbW/eIsoQ4rW7Towa04JsKQdMJNrV
 nftKUsuWITtNW0zxIWS+RJqJO5bZUJc3ciDNGHqN4Ypts5wBFTUJ55PnzIAqwpEM7nlxnSmdXb8p5
 zqb2cuwA==;
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWRsP-007Mz9-PZ
 for linux-rockchip@lists.infradead.org; Tue, 13 Apr 2021 22:51:23 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id o11so8971256qvh.11
 for <linux-rockchip@lists.infradead.org>; Tue, 13 Apr 2021 15:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JhLRku7uljPfVfPCQhIVOFByU5l6ZV/H3UJYzNhAgBQ=;
 b=F+TDlK/23yvukAwMpK/p4CEH9eBRA1A18m2kNI9ihBigSkv8Ib6CphSR9qAvRWefyV
 L7cuQjhbRGXfi38SS6MUADGXVxgawGydrq2owwyKcSsChXH6TAsLwRRIJaiHvq/bfVC2
 Unt9wkzsDekgEFkGExEnRxzrr6PtHRjTIWCdapmmRkMPqtIabbi/ZR2sGDwVaDkWK+xd
 bXSd3M10LwpNf4zccoSYXzv0bWFlOdksMz+ymqCeAJHxXDYxx0Aj8uB1csZRE++YbFqb
 b9HJ/G1uCZ1jYRDKn1v+4b9AwFm1uv7RfFx1E9cAAS939ACWPh4MrT9Ya+zFNwn4Gmv0
 XrDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JhLRku7uljPfVfPCQhIVOFByU5l6ZV/H3UJYzNhAgBQ=;
 b=mExWOcKZyuJV9AD/sZA1vFz4MYaOF/b9Ov+Wtgzdx8rk8OqUX/wH5LO34IK3KF+V8n
 OBOGGypzu3gOx/Q+j8Tsm9XgI9j7n05VdVnwILZbGnXXZXG2BN3ALrDgJKagd3VYEX42
 rk+bgSDEaxjcL3SFlaj7W770c6bNlP6YQxKZWxjvJbBFrVGr8jg64Eyr4yIR9lrGGVIW
 wVWtQW/4ocHzpA3kGnv8avnpIA+/RplGh/3k/NmgGIfAO6X5sOVtATlWDk0h4SrXWLP5
 fH2Baoh9uYneSkjbNVDinhc6G0No93ou0n7cWnpfPw1A8TXkAEwMaDchDp3VDbZk011K
 XZLw==
X-Gm-Message-State: AOAM532Amhm1C3zUqg27o1RGgKETB2WF6JHIbsG5jKhtcUmIY23ynZsP
 XDCEuIR7si1n76osvC8TIAirtzP4imSO5ok3zOU=
X-Google-Smtp-Source: ABdhPJw2grOjTvRxpHzf8850rArVeCa5pcxDv3kPFbOVwN5Hb8QXaOXeaRe7GhGH7+XvqmYx91NOb84sFjg+yauBz9E=
X-Received: by 2002:a05:6214:165:: with SMTP id
 y5mr35138828qvs.59.1618354280499; 
 Tue, 13 Apr 2021 15:51:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210413210235.489467-1-ezequiel@collabora.com>
 <20210413210235.489467-4-ezequiel@collabora.com>
In-Reply-To: <20210413210235.489467-4-ezequiel@collabora.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 13 Apr 2021 18:51:08 -0400
Message-ID: <CAMdYzYpv0dvz4X2JE4J6Qg-5D9mnkqe5RpiRC845wQpZhDKDPA@mail.gmail.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add RK3566/RK3568 SoC support
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jose Abreu <joabreu@synopsys.com>, 
 Heiko Stuebner <heiko@sntech.de>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, 
 David Wu <david.wu@rock-chips.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_155121_858611_3A2391C3 
X-CRM114-Status: GOOD (  26.54  )
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

On Tue, Apr 13, 2021 at 5:03 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> From: David Wu <david.wu@rock-chips.com>
>
> Add constants and callback functions for the dwmac present
> on RK3566 and RK3568 SoCs. As can be seen, the base structure
> is the same, only registers and the bits in them moved slightly.
>
> RK3568 supports two MACs, and RK3566 support just one.

Tested this driver on the rk3566-quartz64.
It fails to fully probe the gmac with the following error:
[    5.711127] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
[    5.714147] rk_gmac-dwmac fe010000.ethernet: no regulator found
[    5.714766] rk_gmac-dwmac fe010000.ethernet: clock input or output? (input).
[    5.715474] rk_gmac-dwmac fe010000.ethernet: TX delay(0x4f).
[    5.716058] rk_gmac-dwmac fe010000.ethernet: RX delay(0x25).
[    5.716694] rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
[    5.718413] rk_gmac-dwmac fe010000.ethernet: clock input from PHY
[    5.724140] rk_gmac-dwmac fe010000.ethernet: init for RGMII
[    5.726802] rk_gmac-dwmac fe010000.ethernet: Version ID not available
[    5.727525] rk_gmac-dwmac fe010000.ethernet:         DWMAC1000
[    5.728064] rk_gmac-dwmac fe010000.ethernet: DMA HW capability
register supported
[    5.729026] rk_gmac-dwmac fe010000.ethernet: Normal descriptors
[    5.729624] rk_gmac-dwmac fe010000.ethernet: Ring mode enabled
[    5.731123] rk_gmac-dwmac fe010000.ethernet: Unbalanced pm_runtime_enable!
[    5.873329] libphy: stmmac: probed
[    5.905599] rk_gmac-dwmac fe010000.ethernet: Cannot register the MDIO bus
[    5.906335] rk_gmac-dwmac fe010000.ethernet: stmmac_dvr_probe: MDIO
bus (id: 1) registration failed
[    5.914338] rk_gmac-dwmac: probe of fe010000.ethernet failed with error -5

This is due to the lack of setting has_gmac4 = true.

>
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> [Ezequiel: Add rockchip,rk3566-gmac compatible string]
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/net/rockchip-dwmac.txt           |   2 +
>  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 142 ++++++++++++++++++
>  2 files changed, 144 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.txt b/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> index 3b71da7e8742..80203b16b652 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> @@ -12,6 +12,8 @@ Required properties:
>     "rockchip,rk3366-gmac": found on RK3366 SoCs
>     "rockchip,rk3368-gmac": found on RK3368 SoCs
>     "rockchip,rk3399-gmac": found on RK3399 SoCs
> +   "rockchip,rk3566-gmac": found on RK3566 SoCs
> +   "rockchip,rk3568-gmac": found on RK3568 SoCs
>     "rockchip,rv1108-gmac": found on RV1108 SoCs
>   - reg: addresses and length of the register sets for the device.
>   - interrupts: Should contain the GMAC interrupts.
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index d2637d83899e..096965b0fec9 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -948,6 +948,146 @@ static const struct rk_gmac_ops rk3399_ops = {
>         .set_rmii_speed = rk3399_set_rmii_speed,
>  };
>
> +#define RK3568_GRF_GMAC0_CON0          0x0380
> +#define RK3568_GRF_GMAC0_CON1          0x0384
> +#define RK3568_GRF_GMAC1_CON0          0x0388
> +#define RK3568_GRF_GMAC1_CON1          0x038c
> +
> +/* RK3568_GRF_GMAC0_CON1 && RK3568_GRF_GMAC1_CON1 */
> +#define RK3568_GMAC_PHY_INTF_SEL_RGMII \
> +               (GRF_BIT(4) | GRF_CLR_BIT(5) | GRF_CLR_BIT(6))
> +#define RK3568_GMAC_PHY_INTF_SEL_RMII  \
> +               (GRF_CLR_BIT(4) | GRF_CLR_BIT(5) | GRF_BIT(6))
> +#define RK3568_GMAC_FLOW_CTRL                  GRF_BIT(3)
> +#define RK3568_GMAC_FLOW_CTRL_CLR              GRF_CLR_BIT(3)
> +#define RK3568_GMAC_RXCLK_DLY_ENABLE           GRF_BIT(1)
> +#define RK3568_GMAC_RXCLK_DLY_DISABLE          GRF_CLR_BIT(1)
> +#define RK3568_GMAC_TXCLK_DLY_ENABLE           GRF_BIT(0)
> +#define RK3568_GMAC_TXCLK_DLY_DISABLE          GRF_CLR_BIT(0)
> +
> +/* RK3568_GRF_GMAC0_CON0 && RK3568_GRF_GMAC1_CON0 */
> +#define RK3568_GMAC_CLK_RX_DL_CFG(val) HIWORD_UPDATE(val, 0x7F, 8)
> +#define RK3568_GMAC_CLK_TX_DL_CFG(val) HIWORD_UPDATE(val, 0x7F, 0)
> +
> +static void rk3566_set_to_rgmii(struct rk_priv_data *bsp_priv,
> +                               int tx_delay, int rx_delay)
> +{
> +       struct device *dev = &bsp_priv->pdev->dev;
> +
> +       if (IS_ERR(bsp_priv->grf)) {
> +               dev_err(dev, "Missing rockchip,grf property\n");
> +               return;
> +       }
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
> +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> +}
> +
> +static void rk3566_set_to_rmii(struct rk_priv_data *bsp_priv)
> +{
> +       struct device *dev = &bsp_priv->pdev->dev;
> +
> +       if (IS_ERR(bsp_priv->grf)) {
> +               dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
> +               return;
> +       }
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> +                    RK3568_GMAC_PHY_INTF_SEL_RMII);
> +}
> +
> +static void rk3568_set_to_rgmii(struct rk_priv_data *bsp_priv,
> +                               int tx_delay, int rx_delay)
> +{
> +       struct device *dev = &bsp_priv->pdev->dev;
> +
> +       if (IS_ERR(bsp_priv->grf)) {
> +               dev_err(dev, "Missing rockchip,grf property\n");
> +               return;
> +       }
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON1,
> +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON0,
> +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
> +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));

Since there are two GMACs on the rk3568, and either, or, or both may
be enabled in various configurations, we should only configure the
controller we are currently operating.

> +}
> +
> +static void rk3568_set_to_rmii(struct rk_priv_data *bsp_priv)
> +{
> +       struct device *dev = &bsp_priv->pdev->dev;
> +
> +       if (IS_ERR(bsp_priv->grf)) {
> +               dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
> +               return;
> +       }
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON1,
> +                    RK3568_GMAC_PHY_INTF_SEL_RMII);
> +
> +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> +                    RK3568_GMAC_PHY_INTF_SEL_RMII);

Same as above.

> +}
> +
> +static void rk3568_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
> +{
> +       struct device *dev = &bsp_priv->pdev->dev;
> +       unsigned long rate;
> +       int ret;
> +
> +       switch (speed) {
> +       case 10:
> +               rate = 2500000;
> +               break;
> +       case 100:
> +               rate = 25000000;
> +               break;
> +       case 1000:
> +               rate = 125000000;
> +               break;
> +       default:
> +               dev_err(dev, "unknown speed value for GMAC speed=%d", speed);
> +               return;
> +       }
> +
> +       ret = clk_set_rate(bsp_priv->clk_mac_speed, rate);
> +       if (ret)
> +               dev_err(dev, "%s: set clk_mac_speed rate %ld failed %d\n",
> +                       __func__, rate, ret);
> +}
> +
> +static const struct rk_gmac_ops rk3568_ops = {
> +       .set_to_rgmii = rk3568_set_to_rgmii,
> +       .set_to_rmii = rk3568_set_to_rmii,
> +       .set_rgmii_speed = rk3568_set_gmac_speed,
> +       .set_rmii_speed = rk3568_set_gmac_speed,
> +};
> +
> +static const struct rk_gmac_ops rk3566_ops = {
> +       .set_to_rgmii = rk3566_set_to_rgmii,
> +       .set_to_rmii = rk3566_set_to_rmii,
> +       .set_rgmii_speed = rk3568_set_gmac_speed,
> +       .set_rmii_speed = rk3568_set_gmac_speed,
> +};
> +
>  #define RV1108_GRF_GMAC_CON0           0X0900
>
>  /* RV1108_GRF_GMAC_CON0 */
> @@ -1512,6 +1652,8 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
>         { .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
>         { .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
>         { .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
> +       { .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
> +       { .compatible = "rockchip,rk3566-gmac", .data = &rk3566_ops },
>         { .compatible = "rockchip,rv1108-gmac", .data = &rv1108_ops },
>         { }
>  };
> --
> 2.30.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
