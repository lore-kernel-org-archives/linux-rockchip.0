From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v2 net-next] net: phy: switch drivers to use dynamic
 feature detection
Date: Mon, 15 Apr 2019 17:20:17 -0700 (PDT)
Message-ID: <20190415.172017.1299396646743801898.davem@davemloft.net>
References: <3179601a-c58d-4df3-5d90-eb3598d2827b@gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <3179601a-c58d-4df3-5d90-eb3598d2827b@gmail.com>
Sender: netdev-owner@vger.kernel.org
To: hkallweit1@gmail.com
Cc: andrew@lunn.ch, f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, richardcochran@gmail.com, khilman@baylibre.com, heiko@sntech.de, bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiner Kallweit <hkallweit1@gmail.com>
Date: Fri, 12 Apr 2019 20:47:03 +0200

> Recently genphy_read_abilities() has been added that dynamically detects
> clause 22 PHY abilities. I *think* this detection should work with all
> supported PHY's, at least for the ones with basic features sets, i.e.
> PHY_BASIC_FEATURES and PHY_GBIT_FEATURES. So let's remove setting these
> features explicitly and rely on phylib feature detection.
> 
> I don't have access to most of these PHY's, therefore I'd appreciate
> regression testing.
> 
> v2:
> - make the feature constant a comment so that readers know which
>   features are supported by the respective PHY
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Applied, thanks Heiner.
