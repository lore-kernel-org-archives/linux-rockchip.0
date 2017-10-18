From: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 4/4] phy: rockchip-typec: Do the calibration more
 correctly
Date: Wed, 18 Oct 2017 16:49:27 +0530
Message-ID: <e357cfd7-b5a3-29d8-02d7-2bf75a05aa19@ti.com>
References: <20170922164406.27606-1-dianders@chromium.org>
 <20170922164406.27606-5-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170922164406.27606-5-dianders@chromium.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Douglas Anderson <dianders@chromium.org>, heiko@sntech.de, zyw@rock-chips.com
Cc: shawnn@chromium.org, linux-kernel@vger.kernel.org, dnschneid@chromium.org, linux-rockchip@lists.infradead.org, groeck@chromium.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On Friday 22 September 2017 10:14 PM, Douglas Anderson wrote:
> Calculate the calibration code as per the docs.  The docs talk about
> reading and averaging the pullup and pulldown calibration codes.  They
> also talk about adding in some adjustment codes.  Let's do what the
> docs say.
> 
> In practice this doesn't seem to matter a whole lot.  On a device I
> tested the pullup and pulldown codes were nearly the same (0x23 and
> 0x24) and the adjustment codes were 0.
> 
> Reviewed-by: Chris Zhong <zyw@rock-chips.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

merged the 3rd and 4th patch to next. Thanks!

-Kishon
> ---
> 
> Changes in v3: None
> Changes in v2:
> - Removed extra blank line.
> 
>  drivers/phy/rockchip/phy-rockchip-typec.c | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
> index 95f8f23676b4..a96635447d48 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -560,24 +560,33 @@ static void tcphy_dp_aux_calibration(struct rockchip_typec_phy *tcphy)
>  	u16 val;
>  	u16 tx_ana_ctrl_reg_1;
>  	u16 tx_ana_ctrl_reg_2;
> -	s32 pu_calib_code;
> -
> -	/* disable txda_cal_latch_en for rewrite the calibration values */
> -	tx_ana_ctrl_reg_1 = readl(tcphy->base + TX_ANA_CTRL_REG_1);
> -	tx_ana_ctrl_reg_1 &= ~TXDA_CAL_LATCH_EN;
> -	writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);
> +	s32 pu_calib_code, pd_calib_code;
> +	s32 pu_adj, pd_adj;
> +	u16 calib;
>  
>  	/*
> -	 * read a resistor calibration code from CMN_TXPUCAL_CTRL[5:0] and
> -	 * write it to TX_DIG_CTRL_REG_2[5:0].
> +	 * Calculate calibration code as per docs: use an average of the
> +	 * pull down and pull up.  Then add in adjustments.
>  	 */
>  	val = readl(tcphy->base + CMN_TXPUCAL_CTRL);
>  	pu_calib_code = CMN_CALIB_CODE_POS(val);
> +	val = readl(tcphy->base + CMN_TXPDCAL_CTRL);
> +	pd_calib_code = CMN_CALIB_CODE_POS(val);
> +	val = readl(tcphy->base + CMN_TXPU_ADJ_CTRL);
> +	pu_adj = CMN_CALIB_CODE(val);
> +	val = readl(tcphy->base + CMN_TXPD_ADJ_CTRL);
> +	pd_adj = CMN_CALIB_CODE(val);
> +	calib = (pu_calib_code + pd_calib_code) / 2 + pu_adj + pd_adj;
> +
> +	/* disable txda_cal_latch_en for rewrite the calibration values */
> +	tx_ana_ctrl_reg_1 = readl(tcphy->base + TX_ANA_CTRL_REG_1);
> +	tx_ana_ctrl_reg_1 &= ~TXDA_CAL_LATCH_EN;
> +	writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);
>  
>  	/* write the calibration, then delay 10 ms as sample in docs */
>  	val = readl(tcphy->base + TX_DIG_CTRL_REG_2);
>  	val &= ~(TX_RESCAL_CODE_MASK << TX_RESCAL_CODE_OFFSET);
> -	val |= pu_calib_code << TX_RESCAL_CODE_OFFSET;
> +	val |= calib << TX_RESCAL_CODE_OFFSET;
>  	writel(val, tcphy->base + TX_DIG_CTRL_REG_2);
>  	usleep_range(10000, 10050);
>  
> 
