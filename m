From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH net-next] net: phy: switch drivers to use dynamic feature
 detection
Date: Mon, 8 Apr 2019 19:45:13 +0200
Message-ID: <bc5c192e-78ce-89b1-eeae-541836f5f0fb@gmail.com>
References: <0cc96fab-e102-c0d1-ade0-90e3e06dc9f1@gmail.com>
 <20190407221312.GA14347@lunn.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20190407221312.GA14347@lunn.ch>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <f.fainelli@gmail.com>, David Miller <davem@davemloft.net>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Richard Cochran <richardcochran@gmail.com>, Kevin Hilman <khilman@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 08.04.2019 00:13, Andrew Lunn wrote:
> On Sun, Apr 07, 2019 at 11:57:13AM +0200, Heiner Kallweit wrote:
>> Recently genphy_read_abilities() has been added that dynamically detects
>> clause 22 PHY abilities. I *think* this detection should work with all
>> supported PHY's, at least for the ones with basic features sets, i.e.
>> PHY_BASIC_FEATURES and PHY_GBIT_FEATURES. So let's remove setting these
>> features explicitly and rely on phylib feature detection.
> 
> Hi Heiner
> 
Hi Andrew,

> We could make this a two step process, to avoid regressions. For one
> cycle compare genphy_read_abilities() against .features and raise a
> WARN_ON() if they differ. And keep using the .features value.
> 
in general this is a good idea. I say in general because this would fail
with several, if not most GBit PHY's. Reason is that the hardcoded
features currently pretend we're supporting 1000BT/Half, whilst several
PHY's don't support this mode. 1000BT/Half has been specified but never
really been used. If we see it from this angle, the series is actually
a fix. The feature detection uses very basic C22 registers/bits,
therefore I consider the risk of breaking something to be relatively low.
And just in case we have the rc phase to fix support for a broken PHY.

Splitting the series and waiting for a Tested-by, as proposed by Richard,
may be problematic because most PHY drivers don't have a dedicated
maintainer, and we lack the hardware to test.

> Then a release late, complete the swap removing .features and the
> WARN_ON.
> 
> 	Andrew
> .
> 
Heiner
