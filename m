From: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next] net: phy: switch drivers to use dynamic feature
 detection
Date: Mon, 8 Apr 2019 00:13:12 +0200
Message-ID: <20190407221312.GA14347@lunn.ch>
References: <0cc96fab-e102-c0d1-ade0-90e3e06dc9f1@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <0cc96fab-e102-c0d1-ade0-90e3e06dc9f1@gmail.com>
Sender: netdev-owner@vger.kernel.org
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>, David Miller <davem@davemloft.net>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Richard Cochran <richardcochran@gmail.com>, Kevin Hilman <khilman@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Sun, Apr 07, 2019 at 11:57:13AM +0200, Heiner Kallweit wrote:
> Recently genphy_read_abilities() has been added that dynamically detects
> clause 22 PHY abilities. I *think* this detection should work with all
> supported PHY's, at least for the ones with basic features sets, i.e.
> PHY_BASIC_FEATURES and PHY_GBIT_FEATURES. So let's remove setting these
> features explicitly and rely on phylib feature detection.

Hi Heiner

We could make this a two step process, to avoid regressions. For one
cycle compare genphy_read_abilities() against .features and raise a
WARN_ON() if they differ. And keep using the .features value.

Then a release late, complete the swap removing .features and the
WARN_ON.

	Andrew
