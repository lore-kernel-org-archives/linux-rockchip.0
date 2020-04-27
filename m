From: Soeren Moch <smoch@web.de>
Subject: Re: [BUG] PCI: rockchip: rk3399: pcie switch support
Date: Mon, 27 Apr 2020 21:32:29 +0200
Message-ID: <213ff8e4-0921-6e06-a98e-e7d955ca279d@web.de>
References: <4d03dd8c-14f9-d1ef-6fd2-095423be3dd3@web.de>
 <3e9d2c53-4f0d-0c97-fbfa-6d799e223747@arm.com>
 <b088ad0e-bab1-0cff-dc43-eb5709555902@web.de>
 <1f180d4b-9e5d-c829-555b-c9750940361e@web.de>
 <d02e0b72-5fb3-dd47-468c-08b86db07a9a@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <d02e0b72-5fb3-dd47-468c-08b86db07a9a@arm.com>
Content-Language: en-GB
Sender: linux-pci-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 14.04.20 14:28, Robin Murphy wrote:
> On 2020-04-14 12:35 pm, Soeren Moch wrote:
>> On 06.04.20 19:12, Soeren Moch wrote:
>>> On 06.04.20 14:52, Robin Murphy wrote:
>>>> On 2020-04-04 7:41 pm, Soeren Moch wrote:
>>>>> I want to use a PCIe switch on a RK3399 based RockPro64 V2.1 board.
>>>>> "Normal" PCIe cards work (mostly) just fine on this board. The PCIe
>>>>> switches (I tried Pericom and ASMedia based switches) also work
>>>>> fine on
>>>>> other boards. The RK3399 PCIe controller with pcie_rockchip_host
>>>>> driver
>>>>> also recognises the switch, but fails to initialize the buses
>>>>> behind the
>>>>> bridge properly, see syslog from linux-5.6.0.
>>>>>
>>>>> Any ideas what I do wrong, or any suggestions what I can test here?
>>>> See the thread here:
>>>>
>>>> https://lore.kernel.org/linux-pci/CAMdYzYoTwjKz4EN8PtD5pZfu3+SX+68JL+=
dfvmCrSnLL=3DK6Few@mail.gmail.com/
>>>>
>>>>
>>> Thanks Robin!
>>>
>>> I also found out in the meantime that device enumeration fails in this
>>> fatal way when probing non-existent devices. So if I hack my complete
>>> bus topology into rockchip_pcie_valid_device, then all existing device=
s
>>> come up properly. Of course this is not how PCIe should work.
>>>> The conclusion there seems to be that the RK3399 root complex just
>>>> doesn't handle certain types of response in a sensible manner, and
>>>> there's not much that can reasonably be done to change that.
>>> Hm, at least there is the promising suggestion to take over the SError
>>> handler, maybe in ATF, as workaround.
>> Unfortunately it seems to be not that easy. Only when PCIe device
>> probing runs on one of the Cortex-A72 cores of rk3399 we see the SError=
.
>> When probing runs on one of the A53 cores, we get a synchronous externa=
l
>> abort instead.
>>
>> Is this expected to see different error types on big.LITTLE systems? Or
>> is this another special property of the rk3399 pcie controller?
>
> As far as I'm aware, the CPU microarchitecture is indeed one of the
> factors in whether it takes a given external abort synchronously or
> asynchronously, so yes, I'd say that probably is expected. I wouldn't
> necessarily even rely on a single microarchitecture only behaving one
> way, since in principle it's possible that surrounding instructions
> might affect whether the core still has enough context left to take
> the exception synchronously or not at the point the abort does come back=
.
>
> In general external aborts are a "should never happen" kind of thing,
> so they're not necessarily expected to be recoverable (I think the RAS
> extensions might add a more robustness in terms of reporting, but
> aren't relevant here either way).
>
Okay. In an ideal world we would not need software workarounds for
hardware bugs.

@Shawn: Can you point me to the rk3399 errata you mentioned in commit
712fa1777207c2f2703a6eb618a9699099cbe37b ?

Thanks.


> At this point I'm starting to wonder whether it might be possible to
> do something similar to the Arm N1SDP workaround using the Cortex-M0,
> albeit with the complication that probing would realistically have to
> be explicitly invoked from the Linux driver due to clocks and external
> regulators... :/
>
Sounds complicated.
For me I use the patch below. Of course this hack is not intended for
merging, just as reference to conclude this discussion.

If someone comes up with a better solution, I'm happy to test this.

Thanks,
Soeren


=2D-----------------------8<------------------------------------
=46rom 9f2e26186bbf867f1baada057bcbd843c465c381 Mon Sep 17 00:00:00 2001
From: Soeren Moch <smoch@web.de>
Date: Fri, 17 Apr 2020 12:14:04 +0200
Subject: [PATCH] PCI: rockchip: rk3399: pcie switch support

Due to a hardware bug the rk3399 PCIe controller signals error conditions
to the cpu when scanning for PCIe devices, which are not available. So
PCIe bridges are not supported.

The rk3399 Cortex-A72 cores generate SError interrupts for these false
PCIe errors, Cortex-A53 cores generate Synchronuos External Aborts.

This hack enables PCIe device probing on buses behind bridges by
ignoring the generated SError. Device probing needs to be done on
Cortex-A72 cores, e.g. use
taskset -c 4 modprobe pcie_rockchip_host

Signed-off-by: Soeren Moch <smoch@web.de>
=2D--
=C2=A0arch/arm64/kernel/traps.c | 10 +++++++++-
=C2=A01 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be5c573..da2b64d2613f 100644
=2D-- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -906,8 +906,16 @@ bool arm64_is_fatal_ras_serror(struct pt_regs
*regs, unsigned int esr)
=C2=A0
=C2=A0asmlinkage void do_serror(struct pt_regs *regs, unsigned int esr)
=C2=A0{
-=C2=A0=C2=A0=C2=A0 const bool was_in_nmi =3D in_nmi();
+=C2=A0=C2=A0=C2=A0 bool was_in_nmi;
=C2=A0
+=C2=A0=C2=A0=C2=A0 /* ignore SError to enable rk3399 PCIe bus enumeration=
 */
+=C2=A0=C2=A0=C2=A0 if (esr >> ESR_ELx_EC_SHIFT =3D=3D ESR_ELx_EC_SERROR) =
{
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 pr_debug("ignoring SError Interrupt=
 on CPU%d\n",
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 smp_processor_id());
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return;
+=C2=A0=C2=A0=C2=A0 }
+
+=C2=A0=C2=A0=C2=A0 was_in_nmi =3D in_nmi();
=C2=A0=C2=A0=C2=A0=C2=A0 if (!was_in_nmi)
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 nmi_enter();
=C2=A0
=2D-
2.17.1
