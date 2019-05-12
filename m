From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [Regression] "net: phy: realtek: Add rtl8211e rx/tx delays
 config" breaks rk3328-roc-cc networking
Date: Sun, 12 May 2019 09:34:24 +0200
Message-ID: <4c6ef3f1-a2c7-f2da-3f2a-cd28624007f8@gmail.com>
References: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
 <20190512023754.GK4889@lunn.ch>
 <ae62419b-53f1-395d-eb0e-66d138d294a8@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <ae62419b-53f1-395d-eb0e-66d138d294a8@gmail.com>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: Peter Geis <pgwipeout@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Serge Semin <fancer.lancer@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>, "David S. Miller" <davem@davemloft.net>, Serge Semin <Sergey.Semin@t-platforms.ru>, netdev@vger.kernel.org, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On 12.05.2019 04:50, Peter Geis wrote:
> On 5/11/2019 10:37 PM, Andrew Lunn wrote:
>> On Sat, May 11, 2019 at 07:17:08PM -0400, Peter Geis wrote:
>>> Good Evening,
>>>
>>> Commit f81dadbcf7fd067baf184b63c179fc392bdb226e "net: phy: realtek: Add
>>> rtl8211e rx/tx delays config" breaks networking completely on the
>>> rk3328-roc-cc.
>>> Reverting the offending commit solves the problem.
>>
>> Hi Peter
>>
>> The fix should be in net, and will soon make its way upwards.
>>
>>      Andrew
>>
> 
> 
> Good Evening,
> 
> Thanks, is there a link to the patch so I may test it?
> 
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=daf3ddbe11a2ff74c95bc814df8e5fe3201b4cb5

> Peter
> 
Heiner
