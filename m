From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] usb: dwc3: core: power on PHYs before initializing core
Date: Wed, 17 Jan 2018 13:46:03 -0800
Message-ID: <20180117214601.GA111796@google.com>
References: <1515729616-8639-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1515729616-8639-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, groeck@google.com, daniel.meng@rock-chips.com, John.Youn@synopsys.com, lin.huang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jan 12, 2018 at 12:00:16PM +0800, William Wu wrote:
> The dwc3_core_init() gets the PHYs and initializes the PHYs with
> the usb_phy_init() and phy_init() functions before initializing
> core, and power on the PHYs after core initialization is done.
> 
> However, some platforms (e.g. Rockchip RK3399 DWC3 with Type-C
> USB3 PHY), it needs to do some special operation while power on
> the Type-C PHY before initializing DWC3 core. It's because that
> the RK3399 Type-C PHY requires to hold the DWC3 controller in
> reset state to keep the PIPE power state in P2 while configuring
> the Type-C PHY, otherwise, it may cause waiting for the PIPE ready
> timeout. In this case, if we power on the PHYs after the DWC3 core
> initialization is done, the core will be reset to uninitialized
> state after power on the PHYs.
> 
> Fix this by powering on the PHYs before initializing core. And
> because the GUID register may also be reset in this case, so we
> need to configure the GUID register after powering on the PHYs.
> 
> Signed-off-by: William Wu <william.wu@rock-chips.com>

This kinda should be part of your series:

[PATCH 0/3] Reset USB3 controller before initializing Type-C PHY on rk3399

or at least mentioned there, because the series there doesn't quite
right otherwise, no?

Anyway, I think this patch looks OK. I don't immediately see good
reasons for delaying the PHY init until later, and I do see reasons why
it could be useful earlier:

Reviewed-by: Brian Norris <briannorris@chromium.org>

> ---
>  drivers/usb/dwc3/core.c | 46 ++++++++++++++++++++++------------------------
>  1 file changed, 22 insertions(+), 24 deletions(-)
