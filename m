From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
Date: Thu, 12 Dec 2019 21:48:43 +0100
Message-ID: <1d500ac9-accd-40d5-b1c9-e3de88957557@gmail.com>
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
 <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
 <20191212005254.GE24359@e119886-lin.cambridge.arm.com>
 <CAFqH_50pJVQT3uqtpVgqn4ijfdPMzHoE1ns_KARH+_cKe+3NRg@mail.gmail.com>
 <792cf6ab-26c4-40a4-90b0-a99e620548f4@gmail.com>
 <20191212203925.GH24359@e119886-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191212203925.GH24359@e119886-lin.cambridge.arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Andrew Murray <andrew.murray@arm.com>
Cc: Enric Balletbo Serra <eballetbo@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Heiko Stuebner <heiko@sntech.de>, Frederick Lawler <fred@fredlawl.com>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Brown <broonie@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Helgaas <bhelgaas@google.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Mika Westerberg <mika.westerberg@linux.intel.com>, =?iso-8859-1?Q?Stefan_M=E4tje?= <stefan.maetje@esd.eu>, Linux ARM <linux-arm-kernel@l>
List-Id: linux-rockchip.vger.kernel.org

On Thursday, December 12, 2019 9:39:27 PM CET, Andrew Murray wrote:
> On Thu, Dec 12, 2019 at 07:40:06PM +0100, Vicente Bergas wrote:
>> On Thursday, December 12, 2019 3:16:25 PM CET, Enric Balletbo Serra wrote:=

>>> Hi Vicente,
>>>=20
>>> Missatge de Andrew Murray <andrew.murray@arm.com> del dia dj., 12 de
>>> des. 2019 a les 1:53:
>>>> On Thu, Dec 12, 2019 at 12:12:56AM +0000, Robin Murphy wrote: ...
>>>=20
>>> Another issue that is affecting current mainline for kevin is fixed
>>> with [1]. As usual, I have a tracking branch for 5.5 for different
>>> Chromebooks with some not yet merged patches that makes things work
>>> while are not fixed [2]. For kevin only the mentioned ASoC patch [1]
>>> and the pcie fix [3] should be needed. Other than that display is
>>> working for me on Kevin.
>>>=20
>>> Cheers,
>>>  Enric
>>>=20
>>> [1]=20
>>> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/commit/=
?h=3Dfor-5.5&id=3D4bf2e385aa59c2fae5f880aa25cfd2b470109093
>>> [2]=20
>>> https://gitlab.collabora.com/eballetbo/linux/commits/topic/chromeos/somew=
hat-stable-5.5
>>> [3]  https://lkml.org/lkml/2019/12/11/199
>>>=20
>>>>> ...
>>>> It's likely that any PCI driver that uses PCI IO with that=20
>>>> controller will
>>>> suffer the same fate.
>>>>=20
>>>> Vicente - can you try the patch that has been proposed and=20
>>>> verify it fixes
>>>> the issue for you?
>>>>=20
>>>> Thanks, ...
>>=20
>> Hi Robin, Andrew and Enric,
>> thank you all for the quick responses!
>> I can confirm that patch [3] fixes the issue reported in this email and
>> that [1] fixes the other issue reported on the other email.
>
> Pleased to hear this is working for you now.
>
> Are you happy to give a tested-by tag for [3]?

Yes, feel free to apply this tag.
Using it just now and the wlan at the other side of the PCIe bus is=20
detected.

Regards,
  Vicente.

> Thanks,
>
> Andrew Murray
>
>>=20
>> Regards,
>>  Vicen=C3=A7.
>>=20
>
>
