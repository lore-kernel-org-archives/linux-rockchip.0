From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [BUG] PCI: rockchip: rk3399: pcie switch support
Date: Tue, 14 Apr 2020 13:28:05 +0100
Message-ID: <d02e0b72-5fb3-dd47-468c-08b86db07a9a@arm.com>
References: <4d03dd8c-14f9-d1ef-6fd2-095423be3dd3@web.de>
 <3e9d2c53-4f0d-0c97-fbfa-6d799e223747@arm.com>
 <b088ad0e-bab1-0cff-dc43-eb5709555902@web.de>
 <1f180d4b-9e5d-c829-555b-c9750940361e@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <1f180d4b-9e5d-c829-555b-c9750940361e@web.de>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Soeren Moch <smoch@web.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org, Andrew Murray <amurray@thegoodpenguin.co.uk>
List-Id: linux-rockchip.vger.kernel.org

On 2020-04-14 12:35 pm, Soeren Moch wrote:
> On 06.04.20 19:12, Soeren Moch wrote:
>> On 06.04.20 14:52, Robin Murphy wrote:
>>> On 2020-04-04 7:41 pm, Soeren Moch wrote:
>>>> I want to use a PCIe switch on a RK3399 based RockPro64 V2.1 board.
>>>> "Normal" PCIe cards work (mostly) just fine on this board. The PCIe
>>>> switches (I tried Pericom and ASMedia based switches) also work fine on
>>>> other boards. The RK3399 PCIe controller with pcie_rockchip_host driver
>>>> also recognises the switch, but fails to initialize the buses behind the
>>>> bridge properly, see syslog from linux-5.6.0.
>>>>
>>>> Any ideas what I do wrong, or any suggestions what I can test here?
>>> See the thread here:
>>>
>>> https://lore.kernel.org/linux-pci/CAMdYzYoTwjKz4EN8PtD5pZfu3+SX+68JL+dfvmCrSnLL=K6Few@mail.gmail.com/
>>>
>> Thanks Robin!
>>
>> I also found out in the meantime that device enumeration fails in this
>> fatal way when probing non-existent devices. So if I hack my complete
>> bus topology into rockchip_pcie_valid_device, then all existing devices
>> come up properly. Of course this is not how PCIe should work.
>>> The conclusion there seems to be that the RK3399 root complex just
>>> doesn't handle certain types of response in a sensible manner, and
>>> there's not much that can reasonably be done to change that.
>> Hm, at least there is the promising suggestion to take over the SError
>> handler, maybe in ATF, as workaround.
> Unfortunately it seems to be not that easy. Only when PCIe device
> probing runs on one of the Cortex-A72 cores of rk3399 we see the SError.
> When probing runs on one of the A53 cores, we get a synchronous external
> abort instead.
> 
> Is this expected to see different error types on big.LITTLE systems? Or
> is this another special property of the rk3399 pcie controller?

As far as I'm aware, the CPU microarchitecture is indeed one of the 
factors in whether it takes a given external abort synchronously or 
asynchronously, so yes, I'd say that probably is expected. I wouldn't 
necessarily even rely on a single microarchitecture only behaving one 
way, since in principle it's possible that surrounding instructions 
might affect whether the core still has enough context left to take the 
exception synchronously or not at the point the abort does come back.

In general external aborts are a "should never happen" kind of thing, so 
they're not necessarily expected to be recoverable (I think the RAS 
extensions might add a more robustness in terms of reporting, but aren't 
relevant here either way).

At this point I'm starting to wonder whether it might be possible to do 
something similar to the Arm N1SDP workaround using the Cortex-M0, 
albeit with the complication that probing would realistically have to be 
explicitly invoked from the Linux driver due to clocks and external 
regulators... :/

Robin.
