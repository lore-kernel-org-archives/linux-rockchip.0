From: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next] net: phy: switch drivers to use dynamic feature
 detection
Date: Mon, 8 Apr 2019 20:12:49 +0200
Message-ID: <20190408181249.GH15267@lunn.ch>
References: <0cc96fab-e102-c0d1-ade0-90e3e06dc9f1@gmail.com>
 <20190407221312.GA14347@lunn.ch>
 <bc5c192e-78ce-89b1-eeae-541836f5f0fb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <bc5c192e-78ce-89b1-eeae-541836f5f0fb@gmail.com>
Sender: netdev-owner@vger.kernel.org
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>, David Miller <davem@davemloft.net>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Richard Cochran <richardcochran@gmail.com>, Kevin Hilman <khilman@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

> Splitting the series and waiting for a Tested-by, as proposed by Richard,
> may be problematic because most PHY drivers don't have a dedicated
> maintainer, and we lack the hardware to test.

Well, we could split out those we know are likely to get tested.  I
have a number of boards with Marvell devices i can test. Florian has
Broadcom boards. I also have a couple of boards with Micrel KSZ8041,
which would be interesting because they are Fast Ethernet. Bootlin can
test some of the mscc PHYs.

We also might want to get some targeted testing. The microchip_t1.c
could be interesting, since it is a T1 device. There was another T1
added in the last year, but i forget which.

Just doing this testing might give us an idea if we really should
expect problems.

      Andrew
