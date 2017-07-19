From: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [RFC PATCH v4 3/7] phy: rockcip-pcie: reconstruct driver to
 support per-lane PHYs
Date: Wed, 19 Jul 2017 15:07:50 +0530
Message-ID: <c3e7f755-9c36-5cec-7598-f72c9e3cba60@ti.com>
References: <1500448979-93067-1-git-send-email-shawn.lin@rock-chips.com>
 <1500448979-93067-4-git-send-email-shawn.lin@rock-chips.com>
 <81b03327-e720-ed51-87d1-9ac0c7a9dc0a@ti.com>
 <5497c3e0-a74e-f4ae-dd02-ba321182a9ec@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <5497c3e0-a74e-f4ae-dd02-ba321182a9ec@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Brian Norris <briannorris@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org



On Wednesday 19 July 2017 03:06 PM, Shawn Lin wrote:
> Hi Kishon,
> 
> On 2017/7/19 16:08, Kishon Vijay Abraham I wrote:
>> Hi Shawn,
>>
>> On Wednesday 19 July 2017 12:52 PM, Shawn Lin wrote:
>>> This patch reconstructs the whole driver to support per-lane
>>> PHYs. Note that we could also support the legacy PHY if you
>>> don't provide argument to our of_xlate.
>>
>> one comment below which I failed to notice before..
> 
> I will fix it and respin v5.
> 
> BTW, are you fine with all these patches merged via Bjorn's
> PCI tree in order to narrow down the timing gap for testing
> linux-next? If yes, could you kindly ack patch 3 of V5
> if it looks good to you? :)

sure!

Thanks
Kishon
