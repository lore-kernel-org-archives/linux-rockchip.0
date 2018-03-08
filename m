From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] usb: dwc3: core: power on PHYs before initializing core
Date: Thu, 8 Mar 2018 08:49:18 -0800
Message-ID: <20180308164916.GA65031@rodete-desktop-imager.corp.google.com>
References: <1515729616-8639-1-git-send-email-william.wu@rock-chips.com>
 <87ina6vodf.fsf@linux.intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <87ina6vodf.fsf@linux.intel.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Felipe Balbi <balbi@kernel.org>
Cc: William Wu <william.wu@rock-chips.com>, gregkh@linuxfoundation.org, Roger Quadros <rogerq@ti.com>, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, briannorris@google.com, groeck@google.com, daniel.meng@rock-chips.com, John.Youn@synopsys.com, lin.huang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Mar 08, 2018 at 12:43:40PM +0200, Felipe Balbi wrote:
> William Wu <william.wu@rock-chips.com> writes:
> > The dwc3_core_init() gets the PHYs and initializes the PHYs with
> > the usb_phy_init() and phy_init() functions before initializing
> > core, and power on the PHYs after core initialization is done.
> >
> > However, some platforms (e.g. Rockchip RK3399 DWC3 with Type-C
> > USB3 PHY), it needs to do some special operation while power on
> > the Type-C PHY before initializing DWC3 core. It's because that
> > the RK3399 Type-C PHY requires to hold the DWC3 controller in
> > reset state to keep the PIPE power state in P2 while configuring
> > the Type-C PHY, otherwise, it may cause waiting for the PIPE ready
> > timeout. In this case, if we power on the PHYs after the DWC3 core
> > initialization is done, the core will be reset to uninitialized
> > state after power on the PHYs.
> >
> > Fix this by powering on the PHYs before initializing core. And
> > because the GUID register may also be reset in this case, so we
> > need to configure the GUID register after powering on the PHYs.
> >
> > Signed-off-by: William Wu <william.wu@rock-chips.com>
> 
> does this cause any regressions for your boards?

I'm not Roger, but I believe it was determined we don't need this for
the Rockchip systems for which William was originally sending this. At
least not right now. I believe our PHY init problems were mostly
resolved in other ways.

(Although I hear USB is currently pretty broken around suspend/resume
for us on -next. Likely unrelated.)

I guess we never clearly replied stating the above. I hope this isn't
merged anywhere? Or I guess it's no problem to me at the moment, but it
might be needless churn.

Brian
