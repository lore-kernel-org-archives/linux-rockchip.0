From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next] net: phy: improve handling link_change_notify
 callback
Date: Wed, 20 Mar 2019 10:50:10 -0700 (PDT)
Message-ID: <20190320.105010.192905616973367477.davem@davemloft.net>
References: <85f94f2f-8d1b-214f-a4af-afaf26d68ca0@gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <85f94f2f-8d1b-214f-a4af-afaf26d68ca0@gmail.com>
Sender: netdev-owner@vger.kernel.org
To: hkallweit1@gmail.com
Cc: andrew@lunn.ch, f.fainelli@gmail.com, heiko@sntech.de, david.wu@rock-chips.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiner Kallweit <hkallweit1@gmail.com>
Date: Tue, 19 Mar 2019 19:56:51 +0100

> Currently the Phy driver's link_change_notify callback is called
> whenever the state machine is run (every second if polling), no matter
> whether the state changed or not. This isn't needed and may confuse
> users considering the name of the callback. Actually it contradicts
> its kernel-doc description. Therefore let's change the behavior and
> call this callback only in case of an actual state change.
> 
> This requires changes to the at803x and rockchip drivers.
> at803x can be simplified so that it reacts on a state change to
> PHY_NOLINK only.
> The rockchip driver can also be much simplified. We simply re-init
> the AFE/DSP registers whenever we change to PHY_RUNNING and speed
> is 100Mbps. This causes very small overhead because we do this even
> if the speed was 100Mbps already. But this is negligible and
> I think justified by the much simpler code.
> 
> Changes are compile-tested only.
> 
> A little bit problematic seems to be to find somebody with the
> hardware to test the changes to the two PHY drivers. See also [0].
> David may be able to test the Rockchip driver.
> 
> [0] https://marc.info/?t=153782508800006&r=1&w=2
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

I'm just going to apply this, let's see what happens as I don't really see
any value after all of this time of waiting for testing that may or may not
happen.

We can always revert.

Thanks.
