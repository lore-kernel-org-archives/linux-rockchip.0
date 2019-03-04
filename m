From: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next] net: phy: improve handling link_change_notify
 callback
Date: Mon, 4 Mar 2019 21:06:30 +0100
Message-ID: <20190304200630.GJ26378@lunn.ch>
References: <411b1c33-a245-0706-8afd-c4bea1b90f68@gmail.com>
 <20190304.113025.1437399524067140375.davem@davemloft.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190304.113025.1437399524067140375.davem@davemloft.net>
Sender: netdev-owner@vger.kernel.org
To: David Miller <davem@davemloft.net>
Cc: hkallweit1@gmail.com, f.fainelli@gmail.com, heiko@sntech.de, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Mar 04, 2019 at 11:30:25AM -0800, David Miller wrote:
> From: Heiner Kallweit <hkallweit1@gmail.com>
> Date: Sun, 3 Mar 2019 19:58:57 +0100
> 
> > Currently the Phy driver's link_change_notify callback is called
> > whenever the state machine is run (every second if polling), no matter
> > whether the state changed or not. This isn't needed and may confuse
> > users considering the name of the callback. Therefore let's change
> > the behavior and call this callback only in case of an actual
> > state change.
> > 
> > This requires changes to the at803x and rockchip drivers.
> > at803x can be simplified so that it reacts on a state change to
> > PHY_NOLINK only.
> > The rockchip driver can also be much simplified. We simply re-init
> > the AFE/DSP registers whenever we change to PHY_RUNNING and speed
> > is 100Mbps. This causes very small overhead because we do this even
> > if the speed was 100Mbps already. But this is neglectable and
> > I think justified by the much simpler code.
> > 
> > Changes are compile-tested only.
> > 
> > Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> 
> Someone please review this.

Hi David

We should probably wait for a Tested-by: from Daniel Mack
<zonque@gmail.com> and David Wu <david.wu@rock-chips.com>, or
equivalent.

	Andrew
