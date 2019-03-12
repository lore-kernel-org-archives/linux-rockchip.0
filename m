From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH net-next] net: phy: improve handling link_change_notify callback
Date: Tue, 12 Mar 2019 13:27:27 +0100
Message-ID: <3079158.ITs3Wk0qno@phil>
References: <411b1c33-a245-0706-8afd-c4bea1b90f68@gmail.com> <20190304.113025.1437399524067140375.davem@davemloft.net> <20190304200630.GJ26378@lunn.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20190304200630.GJ26378@lunn.ch>
Sender: netdev-owner@vger.kernel.org
To: Andrew Lunn <andrew@lunn.ch>, david.wu@rock-chips.com, zonque@gmail.com
Cc: David Miller <davem@davemloft.net>, hkallweit1@gmail.com, f.fainelli@gmail.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Andrew, Heiner,

Am Montag, 4. März 2019, 21:06:30 CET schrieb Andrew Lunn:
> On Mon, Mar 04, 2019 at 11:30:25AM -0800, David Miller wrote:
> > From: Heiner Kallweit <hkallweit1@gmail.com>
> > Date: Sun, 3 Mar 2019 19:58:57 +0100
> > 
> > > Currently the Phy driver's link_change_notify callback is called
> > > whenever the state machine is run (every second if polling), no matter
> > > whether the state changed or not. This isn't needed and may confuse
> > > users considering the name of the callback. Therefore let's change
> > > the behavior and call this callback only in case of an actual
> > > state change.
> > > 
> > > This requires changes to the at803x and rockchip drivers.
> > > at803x can be simplified so that it reacts on a state change to
> > > PHY_NOLINK only.
> > > The rockchip driver can also be much simplified. We simply re-init
> > > the AFE/DSP registers whenever we change to PHY_RUNNING and speed
> > > is 100Mbps. This causes very small overhead because we do this even
> > > if the speed was 100Mbps already. But this is neglectable and
> > > I think justified by the much simpler code.
> > > 
> > > Changes are compile-tested only.
> > > 
> > > Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> > 
> > Someone please review this.
> 
> Hi David
> 
> We should probably wait for a Tested-by: from Daniel Mack
> <zonque@gmail.com> and David Wu <david.wu@rock-chips.com>, or
> equivalent.

We should probably add them to the list of recipients if we want
tests from them, which I've done now.

@David: patch in question that changes the Rockchip eth-phy is
https://patchwork.kernel.org/patch/10837217/

Sadly I don't have matching hardware to test this myself.


Heiko
