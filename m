From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] mfd: RK808: Fetch PMIC variant from chip id register
Date: Tue, 9 Aug 2016 10:57:56 +0100
Message-ID: <20160809095756.GZ5243@dell>
References: <1468496557-26309-1-git-send-email-w.egorov@phytec.de>
 <20160809095601.GY5243@dell>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20160809095601.GY5243@dell>
Sender: linux-kernel-owner@vger.kernel.org
To: Wadim Egorov <w.egorov@phytec.de>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, 09 Aug 2016, Lee Jones wrote:

> On Thu, 14 Jul 2016, Wadim Egorov wrote:
> 
> > Add and use the chip id registers to determine the PMIC variant.
> 
> Yes, much better.
> 
> Interrogating the h/w for its model/version number is always
> preferred.
> 
> Applied, thanks.

Ah!  Slight change of plan.  Patch does not apply on v4.8-rc1.

Please rebase, apply Andy's Tested-by and re-submit.

> > Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> > ---
> > 
> > This patch is based on top of
> > 
> > [v6,1/5] mfd: RK808: Add RK818 support
> > (https://patchwork.kernel.org/patch/9172223/)
> > 
> > ---
> >  drivers/mfd/rk808.c       | 17 +++++++++--------
> >  include/linux/mfd/rk808.h |  6 ++++--
> >  2 files changed, 13 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> > index 66f7b08..fbec1d8 100644
> > --- a/drivers/mfd/rk808.c
> > +++ b/drivers/mfd/rk808.c
> > @@ -291,8 +291,8 @@ static void rk808_device_shutdown(void)
> >  }
> >  
> >  static const struct of_device_id rk808_of_match[] = {
> > -	{ .compatible = "rockchip,rk808", .data = (void *) RK808_ID },
> > -	{ .compatible = "rockchip,rk818", .data = (void *) RK818_ID },
> > +	{ .compatible = "rockchip,rk808" },
> > +	{ .compatible = "rockchip,rk818" },
> >  	{ },
> >  };
> >  MODULE_DEVICE_TABLE(of, rk808_of_match);
> > @@ -302,7 +302,6 @@ static int rk808_probe(struct i2c_client *client,
> >  {
> >  	struct device_node *np = client->dev.of_node;
> >  	struct rk808 *rk808;
> > -	const struct of_device_id *match;
> >  	const struct rk808_reg_data *pre_init_reg;
> >  	const struct mfd_cell *cells;
> >  	int nr_pre_init_regs;
> > @@ -315,12 +314,14 @@ static int rk808_probe(struct i2c_client *client,
> >  	if (!rk808)
> >  		return -ENOMEM;
> >  
> > -	match = of_match_device(rk808_of_match, &client->dev);
> > -	if (!match) {
> > -		dev_err(&client->dev, "Unable to match OF ID\n");
> > -		return -ENODEV;
> > +	rk808->variant = i2c_smbus_read_word_data(client, RK808_ID_MSB);
> > +	if (rk808->variant < 0) {
> > +		dev_err(&client->dev, "Failed to read the chip id at 0x%02x\n",
> > +			RK808_ID_MSB);
> > +		return rk808->variant;
> >  	}
> > -	rk808->variant = (long)match->data;
> > +
> > +	dev_dbg(&client->dev, "Chip id: 0x%x\n", (unsigned int)rk808->variant);
> >  
> >  	switch (rk808->variant) {
> >  	case RK808_ID:
> > diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
> > index e5ae21d..fc5db6f 100644
> > --- a/include/linux/mfd/rk808.h
> > +++ b/include/linux/mfd/rk808.h
> > @@ -69,6 +69,8 @@ enum rk808_reg {
> >  #define RK808_RTC_INT_REG	0x12
> >  #define RK808_RTC_COMP_LSB_REG	0x13
> >  #define RK808_RTC_COMP_MSB_REG	0x14
> > +#define RK808_ID_MSB		0x17
> > +#define RK808_ID_LSB		0x18
> >  #define RK808_CLK32OUT_REG	0x20
> >  #define RK808_VB_MON_REG	0x21
> >  #define RK808_THERMAL_REG	0x22
> > @@ -318,8 +320,8 @@ enum {
> >  };
> >  
> >  enum {
> > -	RK808_ID,
> > -	RK818_ID,
> > +	RK808_ID = 0x0000,
> > +	RK818_ID = 0x8181,
> >  };
> >  
> >  struct rk808 {
> 

-- 
Lee Jones
Linaro STMicroelectronics Landing Team Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
