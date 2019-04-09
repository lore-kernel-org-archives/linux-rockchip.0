From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next] net: phy: switch drivers to use dynamic
 feature detection
Date: Tue, 09 Apr 2019 13:59:44 -0700 (PDT)
Message-ID: <20190409.135944.1516944884952068835.davem@davemloft.net>
References: <0cc96fab-e102-c0d1-ade0-90e3e06dc9f1@gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <0cc96fab-e102-c0d1-ade0-90e3e06dc9f1@gmail.com>
Sender: netdev-owner@vger.kernel.org
To: hkallweit1@gmail.com
Cc: andrew@lunn.ch, f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, richardcochran@gmail.com, khilman@baylibre.com, heiko@sntech.de, bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiner Kallweit <hkallweit1@gmail.com>
Date: Sun, 7 Apr 2019 11:57:13 +0200

> Recently genphy_read_abilities() has been added that dynamically detects
> clause 22 PHY abilities. I *think* this detection should work with all
> supported PHY's, at least for the ones with basic features sets, i.e.
> PHY_BASIC_FEATURES and PHY_GBIT_FEATURES. So let's remove setting these
> features explicitly and rely on phylib feature detection.
> 
> I don't have access to most of these PHY's, therefore I'd appreciate
> regression testing.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

This appears to need to be done differently.

A question was asked as to why fast ethernet PHY identification from the
source is important, well I'd say it's important for someone working on
the PHY code to see how "all fast ethernet PHY drivers do or handle X"

:-)
