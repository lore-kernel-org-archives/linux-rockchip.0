From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next] net: phy: improve handling link_change_notify
 callback
Date: Mon, 04 Mar 2019 11:30:25 -0800 (PST)
Message-ID: <20190304.113025.1437399524067140375.davem@davemloft.net>
References: <411b1c33-a245-0706-8afd-c4bea1b90f68@gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <411b1c33-a245-0706-8afd-c4bea1b90f68@gmail.com>
Sender: netdev-owner@vger.kernel.org
To: hkallweit1@gmail.com
Cc: andrew@lunn.ch, f.fainelli@gmail.com, heiko@sntech.de, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiner Kallweit <hkallweit1@gmail.com>
Date: Sun, 3 Mar 2019 19:58:57 +0100

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

Someone please review this.
