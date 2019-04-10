From: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH net-next] net: phy: switch drivers to use dynamic feature
 detection
Date: Wed, 10 Apr 2019 12:33:01 -0700
Message-ID: <239c0f2c-3be3-bcd4-9b76-7cbde75bc0ef@gmail.com>
References: <0cc96fab-e102-c0d1-ade0-90e3e06dc9f1@gmail.com>
 <20190409.135944.1516944884952068835.davem@davemloft.net>
 <cbd952f0-117f-8418-e82f-5460dc0d99d0@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <cbd952f0-117f-8418-e82f-5460dc0d99d0@gmail.com>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: Heiner Kallweit <hkallweit1@gmail.com>, David Miller <davem@davemloft.net>, f.fainelli@gmail.com
Cc: andrew@lunn.ch, rjui@broadcom.com, sbranden@broadcom.com, richardcochran@gmail.com, khilman@baylibre.com, heiko@sntech.de, bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On 4/10/2019 12:31 PM, Heiner Kallweit wrote:
> On 09.04.2019 22:59, David Miller wrote:
>> From: Heiner Kallweit <hkallweit1@gmail.com>
>> Date: Sun, 7 Apr 2019 11:57:13 +0200
>>
>>> Recently genphy_read_abilities() has been added that dynamically detects
>>> clause 22 PHY abilities. I *think* this detection should work with all
>>> supported PHY's, at least for the ones with basic features sets, i.e.
>>> PHY_BASIC_FEATURES and PHY_GBIT_FEATURES. So let's remove setting these
>>> features explicitly and rely on phylib feature detection.
>>>
>>> I don't have access to most of these PHY's, therefore I'd appreciate
>>> regression testing.
>>>
>>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>>
>> This appears to need to be done differently.
>>
>> A question was asked as to why fast ethernet PHY identification from the
>> source is important, well I'd say it's important for someone working on
>> the PHY code to see how "all fast ethernet PHY drivers do or handle X"
>>
> Then, what we could do: Change all occurrences of
> .features = PHY_XXX_FEATURES
> to
> /* PHY_XXX_FEATURES */
> 
> Would this be an acceptable option?

Yes absolutely, I was not thinking about anything more complicated than
that, should have made it more obvious in my replies. Thanks!
-- 
Florian
