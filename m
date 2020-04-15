From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] dt-bindings: net: ethernet-phy: add desciption for
 ethernet-phy-id1234.d400
Date: Wed, 15 Apr 2020 16:21:25 -0700 (PDT)
Message-ID: <20200415.162125.2094896562695820757.davem@davemloft.net>
References: <20200415200149.16986-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20200415200149.16986-1-jbx6244@gmail.com>
Sender: netdev-owner@vger.kernel.org
To: jbx6244@gmail.com
Cc: heiko@sntech.de, robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com, hkallweit1@gmail.com, linux@armlinux.org.uk, netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Johan Jonker <jbx6244@gmail.com>
Date: Wed, 15 Apr 2020 22:01:49 +0200

> The description below is already in use in
> 'rk3228-evb.dts', 'rk3229-xms6.dts' and 'rk3328.dtsi'
> but somehow never added to a document, so add
> "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
> for ethernet-phy nodes on Rockchip platforms to
> 'ethernet-phy.yaml'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

I'll take this via my net tree, thanks.
