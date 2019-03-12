From: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH net-next] net: phy: improve handling link_change_notify
 callback
Date: Tue, 12 Mar 2019 10:56:45 -0700
Message-ID: <e7e1b161-9cbc-66f9-e548-08528cf14db0@gmail.com>
References: <411b1c33-a245-0706-8afd-c4bea1b90f68@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <411b1c33-a245-0706-8afd-c4bea1b90f68@gmail.com>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>, David Miller <davem@davemloft.net>, Heiko Stuebner <heiko@sntech.de>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 3/3/19 10:58 AM, Heiner Kallweit wrote:
> Currently the Phy driver's link_change_notify callback is called
> whenever the state machine is run (every second if polling), no matter
> whether the state changed or not. This isn't needed and may confuse
> users considering the name of the callback. Therefore let's change
> the behavior and call this callback only in case of an actual
> state change.
> 
> This requires changes to the at803x and rockchip drivers.
> at803x can be simplified so that it reacts on a state change to
> PHY_NOLINK only.
> The rockchip driver can also be much simplified. We simply re-init
> the AFE/DSP registers whenever we change to PHY_RUNNING and speed
> is 100Mbps. This causes very small overhead because we do this even
> if the speed was 100Mbps already. But this is neglectable and
> I think justified by the much simpler code.
> 
> Changes are compile-tested only.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

While you are it, we should probably audit all drivers making use of
PHYLIB and see whether the logic to compare the previous link with the
current link parameters is still necessary, and if it is, we should
consider moving that to the core PHYLIB.

> ---
>  drivers/net/phy/at803x.c   | 26 +++++++++-----------------
>  drivers/net/phy/phy.c      |  8 ++++----
>  drivers/net/phy/rockchip.c | 31 ++-----------------------------
>  3 files changed, 15 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> index f3e96191e..f315ab468 100644
> --- a/drivers/net/phy/at803x.c
> +++ b/drivers/net/phy/at803x.c
> @@ -324,8 +324,6 @@ static int at803x_config_intr(struct phy_device *phydev)
>  
>  static void at803x_link_change_notify(struct phy_device *phydev)
>  {
> -	struct at803x_priv *priv = phydev->priv;
> -
>  	/*
>  	 * Conduct a hardware reset for AT8030 every time a link loss is
>  	 * signalled. This is necessary to circumvent a hardware bug that
> @@ -333,25 +331,19 @@ static void at803x_link_change_notify(struct phy_device *phydev)
>  	 * in the FIFO. In such cases, the FIFO enters an error mode it
>  	 * cannot recover from by software.
>  	 */
> -	if (phydev->state == PHY_NOLINK) {
> -		if (phydev->mdio.reset && !priv->phy_reset) {
> -			struct at803x_context context;
> +	if (phydev->state == PHY_NOLINK && phydev->mdio.reset) {
> +		struct at803x_context context;
>  
> -			at803x_context_save(phydev, &context);
> +		at803x_context_save(phydev, &context);
>  
> -			phy_device_reset(phydev, 1);
> -			msleep(1);
> -			phy_device_reset(phydev, 0);
> -			msleep(1);
> +		phy_device_reset(phydev, 1);
> +		msleep(1);
> +		phy_device_reset(phydev, 0);
> +		msleep(1);
>  
> -			at803x_context_restore(phydev, &context);
> +		at803x_context_restore(phydev, &context);
>  
> -			phydev_dbg(phydev, "%s(): phy was reset\n",
> -				   __func__);
> -			priv->phy_reset = true;
> -		}
> -	} else {
> -		priv->phy_reset = false;
> +		phydev_dbg(phydev, "%s(): phy was reset\n", __func__);
>  	}
>  }
>  
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 3745220c5..5938c5acf 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -891,9 +891,6 @@ void phy_state_machine(struct work_struct *work)
>  
>  	old_state = phydev->state;
>  
> -	if (phydev->drv && phydev->drv->link_change_notify)
> -		phydev->drv->link_change_notify(phydev);
> -
>  	switch (phydev->state) {
>  	case PHY_DOWN:
>  	case PHY_READY:
> @@ -940,10 +937,13 @@ void phy_state_machine(struct work_struct *work)
>  	if (err < 0)
>  		phy_error(phydev);
>  
> -	if (old_state != phydev->state)
> +	if (old_state != phydev->state) {
>  		phydev_dbg(phydev, "PHY state change %s -> %s\n",
>  			   phy_state_to_str(old_state),
>  			   phy_state_to_str(phydev->state));
> +		if (phydev->drv && phydev->drv->link_change_notify)
> +			phydev->drv->link_change_notify(phydev);
> +	}
>  
>  	/* Only re-schedule a PHY state machine change if we are polling the
>  	 * PHY, if PHY_IGNORE_INTERRUPT is set, then we will be moving
> diff --git a/drivers/net/phy/rockchip.c b/drivers/net/phy/rockchip.c
> index 95abf7072..9053b1d01 100644
> --- a/drivers/net/phy/rockchip.c
> +++ b/drivers/net/phy/rockchip.c
> @@ -104,41 +104,14 @@ static int rockchip_integrated_phy_config_init(struct phy_device *phydev)
>  
>  static void rockchip_link_change_notify(struct phy_device *phydev)
>  {
> -	int speed = SPEED_10;
> -
> -	if (phydev->autoneg == AUTONEG_ENABLE) {
> -		int reg = phy_read(phydev, MII_SPECIAL_CONTROL_STATUS);
> -
> -		if (reg < 0) {
> -			phydev_err(phydev, "phy_read err: %d.\n", reg);
> -			return;
> -		}
> -
> -		if (reg & MII_SPEED_100)
> -			speed = SPEED_100;
> -		else if (reg & MII_SPEED_10)
> -			speed = SPEED_10;
> -	} else {
> -		int bmcr = phy_read(phydev, MII_BMCR);
> -
> -		if (bmcr < 0) {
> -			phydev_err(phydev, "phy_read err: %d.\n", bmcr);
> -			return;
> -		}
> -
> -		if (bmcr & BMCR_SPEED100)
> -			speed = SPEED_100;
> -		else
> -			speed = SPEED_10;
> -	}
> -
>  	/*
>  	 * If mode switch happens from 10BT to 100BT, all DSP/AFE
>  	 * registers are set to default values. So any AFE/DSP
>  	 * registers have to be re-initialized in this case.
>  	 */
> -	if ((phydev->speed == SPEED_10) && (speed == SPEED_100)) {
> +	if (phydev->state == PHY_RUNNING && phydev->speed == SPEED_100) {
>  		int ret = rockchip_integrated_phy_analog_init(phydev);
> +
>  		if (ret)
>  			phydev_err(phydev, "rockchip_integrated_phy_analog_init err: %d.\n",
>  				   ret);
> 


-- 
Florian
