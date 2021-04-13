Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3EDC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 23:37:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D92F961220
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 23:37:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D92F961220
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:Date:
	In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZHYd7i6VgoNV/PPLXia82+Zp/helcaCtRHJQas5oRKE=; b=ZeZkORFuGHexqx
	H+woBp4hzutxSOxRRXf3H916kK5SwmsyzoHSgg0rs0U3N8fViVPRKM1rY9CB3H9GG71HwcHQFyqJY
	V93avv33+iJ8df2XEZvhZCY+mARfUtzYoYgGZaXgfUTfEDA0pb1bLS84Pp4lkXoUaOkjA1oCjSi9N
	mUMmahgq45zgJ1YLQt8pBs33VZj+kZagKOdskfJKCsr4ZpUATNvmnJ7JSMG+3ztWjU6LTFT8Kxm0b
	QFmxzf1QwpUz4SJOzTYF8f5S0PdTp6CjnvZ12qFYJ2QP14/Pfgx/zl6pz6rFE8CxepqnXXlPCUObB
	Mf+YWn0EqPQCnI+Qraxg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWSbM-00Apuh-Ie; Tue, 13 Apr 2021 23:37:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWSbI-00AptU-2R
 for linux-rockchip@desiato.infradead.org; Tue, 13 Apr 2021 23:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:Subject:
 Message-ID:MIME-Version:To:Cc:Date:Content-Type:In-Reply-To:From:Sender:
 Reply-To:Content-ID:Content-Description:References;
 bh=Ux7wvWqUgDipvlUJxhmTxvOMJJiEIRCV+85GZ1yC1QY=; b=QAfUFW6p7vbsIr8z2/IjH76wpu
 Nx8ONfjKxBbwWTLpwsyfycusU+o9Uee/YtP4+FuLtiHNjJXXyvgx6FHXE+u+kTHsdJFkKT/maurA8
 b+OHaaJsfdZLxzho++bNfs0aPyd0tzqrB/yVaJpIiONYdQmSYbNY+fm/VsHnQ0lUMcaADimp35L7A
 tjd3avtNjRvwDzxbBYiSSC+q39PPZvHObegMspk3devSrhKg9HRxy0kw1d175JJQc4BNByMI9Rs6+
 qm++oVYUzD6LsN78UgeRiixxv9jAC9AFKPgrBBc/+oCuCQNWQBHnZHCV1LwZqAX6RAzPH76LJLj5g
 cIWoNlpQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWSbE-007O2T-JQ
 for linux-rockchip@lists.infradead.org; Tue, 13 Apr 2021 23:37:42 +0000
Received: from chickenburger.collabora.co.uk (chickenburger.collabora.co.uk
 [46.235.227.242])
 by bhuna.collabora.co.uk (Postfix) with ESMTP id 2B14A1F42385;
 Wed, 14 Apr 2021 00:37:37 +0100 (BST)
From: "Ezequiel Garcia" <ezequiel@collabora.com>
In-Reply-To: <CAMdYzYpv0dvz4X2JE4J6Qg-5D9mnkqe5RpiRC845wQpZhDKDPA@mail.gmail.com>
X-Forward: 190.2.107.97
Date: Wed, 14 Apr 2021 00:37:36 +0100
Cc: "Linux Kernel Network Developers" <netdev@vger.kernel.org>,
 =?utf-8?q?open_list=3AARM/Rockchip_SoC...?=
 <linux-rockchip@lists.infradead.org>, "Jose Abreu" <joabreu@synopsys.com>,
 "Heiko Stuebner" <heiko@sntech.de>, "David S . Miller" <davem@davemloft.net>,
 "Jakub Kicinski" <kuba@kernel.org>, "David Wu" <david.wu@rock-chips.com>,
 kernel@collabora.com
To: "Peter Geis" <pgwipeout@gmail.com>
MIME-Version: 1.0
Message-ID: <1412-60762b80-423-d9eaa5@27901112>
Subject: =?utf-8?q?Re=3A?= [PATCH net-next 3/3] =?utf-8?q?net=3A?=
 =?utf-8?q?_stmmac=3A?= Add RK3566/RK3568 SoC support
User-Agent: SOGoMail 5.0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_163740_935452_E7282C93 
X-CRM114-Status: GOOD (  29.25  )
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

On Tuesday, April 13, 2021 19:51 -03, Peter Geis <pgwipeout@gmail.com> wrote: 
 
> On Tue, Apr 13, 2021 at 5:03 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >
> > From: David Wu <david.wu@rock-chips.com>
> >
> > Add constants and callback functions for the dwmac present
> > on RK3566 and RK3568 SoCs. As can be seen, the base structure
> > is the same, only registers and the bits in them moved slightly.
> >
> > RK3568 supports two MACs, and RK3566 support just one.
> 
> Tested this driver on the rk3566-quartz64.
> It fails to fully probe the gmac with the following error:
> [    5.711127] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
> [    5.714147] rk_gmac-dwmac fe010000.ethernet: no regulator found
> [    5.714766] rk_gmac-dwmac fe010000.ethernet: clock input or output? (input).
> [    5.715474] rk_gmac-dwmac fe010000.ethernet: TX delay(0x4f).
> [    5.716058] rk_gmac-dwmac fe010000.ethernet: RX delay(0x25).
> [    5.716694] rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
> [    5.718413] rk_gmac-dwmac fe010000.ethernet: clock input from PHY
> [    5.724140] rk_gmac-dwmac fe010000.ethernet: init for RGMII
> [    5.726802] rk_gmac-dwmac fe010000.ethernet: Version ID not available
> [    5.727525] rk_gmac-dwmac fe010000.ethernet:         DWMAC1000
> [    5.728064] rk_gmac-dwmac fe010000.ethernet: DMA HW capability
> register supported
> [    5.729026] rk_gmac-dwmac fe010000.ethernet: Normal descriptors
> [    5.729624] rk_gmac-dwmac fe010000.ethernet: Ring mode enabled
> [    5.731123] rk_gmac-dwmac fe010000.ethernet: Unbalanced pm_runtime_enable!
> [    5.873329] libphy: stmmac: probed
> [    5.905599] rk_gmac-dwmac fe010000.ethernet: Cannot register the MDIO bus
> [    5.906335] rk_gmac-dwmac fe010000.ethernet: stmmac_dvr_probe: MDIO
> bus (id: 1) registration failed
> [    5.914338] rk_gmac-dwmac: probe of fe010000.ethernet failed with error -5
> 
> This is due to the lack of setting has_gmac4 = true.
> 

You are probably missing a "snps,dwmac-4.20a" in your compatible string, i.e.:
  compatible = "rockchip,rk3566-gmac", "snps,dwmac-4.20a";

This seems to be common practice, judging from arch/arm/boot/dts/stm32***.

Let me know how that goes!
Ezequiel

> >
> > Signed-off-by: David Wu <david.wu@rock-chips.com>
> > [Ezequiel: Add rockchip,rk3566-gmac compatible string]
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  .../bindings/net/rockchip-dwmac.txt           |   2 +
> >  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 142 ++++++++++++++++++
> >  2 files changed, 144 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.txt b/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> > index 3b71da7e8742..80203b16b652 100644
> > --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> > +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> > @@ -12,6 +12,8 @@ Required properties:
> >     "rockchip,rk3366-gmac": found on RK3366 SoCs
> >     "rockchip,rk3368-gmac": found on RK3368 SoCs
> >     "rockchip,rk3399-gmac": found on RK3399 SoCs
> > +   "rockchip,rk3566-gmac": found on RK3566 SoCs
> > +   "rockchip,rk3568-gmac": found on RK3568 SoCs
> >     "rockchip,rv1108-gmac": found on RV1108 SoCs
> >   - reg: addresses and length of the register sets for the device.
> >   - interrupts: Should contain the GMAC interrupts.
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > index d2637d83899e..096965b0fec9 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > @@ -948,6 +948,146 @@ static const struct rk_gmac_ops rk3399_ops = {
> >         .set_rmii_speed = rk3399_set_rmii_speed,
> >  };
> >
> > +#define RK3568_GRF_GMAC0_CON0          0x0380
> > +#define RK3568_GRF_GMAC0_CON1          0x0384
> > +#define RK3568_GRF_GMAC1_CON0          0x0388
> > +#define RK3568_GRF_GMAC1_CON1          0x038c
> > +
> > +/* RK3568_GRF_GMAC0_CON1 && RK3568_GRF_GMAC1_CON1 */
> > +#define RK3568_GMAC_PHY_INTF_SEL_RGMII \
> > +               (GRF_BIT(4) | GRF_CLR_BIT(5) | GRF_CLR_BIT(6))
> > +#define RK3568_GMAC_PHY_INTF_SEL_RMII  \
> > +               (GRF_CLR_BIT(4) | GRF_CLR_BIT(5) | GRF_BIT(6))
> > +#define RK3568_GMAC_FLOW_CTRL                  GRF_BIT(3)
> > +#define RK3568_GMAC_FLOW_CTRL_CLR              GRF_CLR_BIT(3)
> > +#define RK3568_GMAC_RXCLK_DLY_ENABLE           GRF_BIT(1)
> > +#define RK3568_GMAC_RXCLK_DLY_DISABLE          GRF_CLR_BIT(1)
> > +#define RK3568_GMAC_TXCLK_DLY_ENABLE           GRF_BIT(0)
> > +#define RK3568_GMAC_TXCLK_DLY_DISABLE          GRF_CLR_BIT(0)
> > +
> > +/* RK3568_GRF_GMAC0_CON0 && RK3568_GRF_GMAC1_CON0 */
> > +#define RK3568_GMAC_CLK_RX_DL_CFG(val) HIWORD_UPDATE(val, 0x7F, 8)
> > +#define RK3568_GMAC_CLK_TX_DL_CFG(val) HIWORD_UPDATE(val, 0x7F, 0)
> > +
> > +static void rk3566_set_to_rgmii(struct rk_priv_data *bsp_priv,
> > +                               int tx_delay, int rx_delay)
> > +{
> > +       struct device *dev = &bsp_priv->pdev->dev;
> > +
> > +       if (IS_ERR(bsp_priv->grf)) {
> > +               dev_err(dev, "Missing rockchip,grf property\n");
> > +               return;
> > +       }
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> > +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> > +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> > +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
> > +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> > +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> > +}
> > +
> > +static void rk3566_set_to_rmii(struct rk_priv_data *bsp_priv)
> > +{
> > +       struct device *dev = &bsp_priv->pdev->dev;
> > +
> > +       if (IS_ERR(bsp_priv->grf)) {
> > +               dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
> > +               return;
> > +       }
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> > +                    RK3568_GMAC_PHY_INTF_SEL_RMII);
> > +}
> > +
> > +static void rk3568_set_to_rgmii(struct rk_priv_data *bsp_priv,
> > +                               int tx_delay, int rx_delay)
> > +{
> > +       struct device *dev = &bsp_priv->pdev->dev;
> > +
> > +       if (IS_ERR(bsp_priv->grf)) {
> > +               dev_err(dev, "Missing rockchip,grf property\n");
> > +               return;
> > +       }
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON1,
> > +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> > +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> > +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON0,
> > +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> > +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> > +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> > +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> > +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
> > +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> > +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> 
> Since there are two GMACs on the rk3568, and either, or, or both may
> be enabled in various configurations, we should only configure the
> controller we are currently operating.
> 
> > +}
> > +
> > +static void rk3568_set_to_rmii(struct rk_priv_data *bsp_priv)
> > +{
> > +       struct device *dev = &bsp_priv->pdev->dev;
> > +
> > +       if (IS_ERR(bsp_priv->grf)) {
> > +               dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
> > +               return;
> > +       }
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON1,
> > +                    RK3568_GMAC_PHY_INTF_SEL_RMII);
> > +
> > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> > +                    RK3568_GMAC_PHY_INTF_SEL_RMII);
> 
> Same as above.
> 
> > +}
> > +
> > +static void rk3568_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
> > +{
> > +       struct device *dev = &bsp_priv->pdev->dev;
> > +       unsigned long rate;
> > +       int ret;
> > +
> > +       switch (speed) {
> > +       case 10:
> > +               rate = 2500000;
> > +               break;
> > +       case 100:
> > +               rate = 25000000;
> > +               break;
> > +       case 1000:
> > +               rate = 125000000;
> > +               break;
> > +       default:
> > +               dev_err(dev, "unknown speed value for GMAC speed=%d", speed);
> > +               return;
> > +       }
> > +
> > +       ret = clk_set_rate(bsp_priv->clk_mac_speed, rate);
> > +       if (ret)
> > +               dev_err(dev, "%s: set clk_mac_speed rate %ld failed %d\n",
> > +                       __func__, rate, ret);
> > +}
> > +
> > +static const struct rk_gmac_ops rk3568_ops = {
> > +       .set_to_rgmii = rk3568_set_to_rgmii,
> > +       .set_to_rmii = rk3568_set_to_rmii,
> > +       .set_rgmii_speed = rk3568_set_gmac_speed,
> > +       .set_rmii_speed = rk3568_set_gmac_speed,
> > +};
> > +
> > +static const struct rk_gmac_ops rk3566_ops = {
> > +       .set_to_rgmii = rk3566_set_to_rgmii,
> > +       .set_to_rmii = rk3566_set_to_rmii,
> > +       .set_rgmii_speed = rk3568_set_gmac_speed,
> > +       .set_rmii_speed = rk3568_set_gmac_speed,
> > +};
> > +
> >  #define RV1108_GRF_GMAC_CON0           0X0900
> >
> >  /* RV1108_GRF_GMAC_CON0 */
> > @@ -1512,6 +1652,8 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
> >         { .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
> >         { .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
> >         { .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
> > +       { .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
> > +       { .compatible = "rockchip,rk3566-gmac", .data = &rk3566_ops },
> >         { .compatible = "rockchip,rv1108-gmac", .data = &rv1108_ops },
> >         { }
> >  };
> > --
> > 2.30.0
> >


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
