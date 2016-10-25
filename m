From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH] phy: Add reset callback for not generic phy
Date: Tue, 25 Oct 2016 13:47:03 -0700
Message-ID: <8c8d86e6-a3b1-a381-dd3f-70e43768cfb9@synopsys.com>
References: <1477404934-7425-1-git-send-email-ayaka@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1477404934-7425-1-git-send-email-ayaka@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: Randy Li <ayaka@soulik.info>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Cc: "John.Youn@synopsys.com" <John.Youn@synopsys.com>, "kishon@ti.com" <kishon@ti.com>, "felipe.balbi@linux.intel.com" <felipe.balbi@linux.intel.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "randy.li@rock-chips.com" <randy.li@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 10/25/2016 7:15 AM, Randy Li wrote:
> I forget to add a dummy function in case the CONFIG_GENERIC_PHY
> is disabled.
> 
> Signed-off-by: Randy Li <ayaka@soulik.info>

Fixes: cac18ecb6f44 ("phy: Add reset callback")
Tested-by: John Youn <johnyoun@synopsys.com>

Hi Kishon,

Can you take this for 4.9-rc?

Thanks,
John



> ---
>  include/linux/phy/phy.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index ee1bed7..78bb0d7 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -253,6 +253,13 @@ static inline int phy_set_mode(struct phy *phy, enum phy_mode mode)
>  	return -ENOSYS;
>  }
>  
> +static inline int phy_reset(struct phy *phy)
> +{
> +	if (!phy)
> +		return 0;
> +	return -ENOSYS;
> +}
> +
>  static inline int phy_get_bus_width(struct phy *phy)
>  {
>  	return -ENOSYS;
> 
>
