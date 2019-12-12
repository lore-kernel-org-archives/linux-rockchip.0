From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
Date: Thu, 12 Dec 2019 19:40:06 +0100
Message-ID: <792cf6ab-26c4-40a4-90b0-a99e620548f4@gmail.com>
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
 <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
 <20191212005254.GE24359@e119886-lin.cambridge.arm.com>
 <CAFqH_50pJVQT3uqtpVgqn4ijfdPMzHoE1ns_KARH+_cKe+3NRg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFqH_50pJVQT3uqtpVgqn4ijfdPMzHoE1ns_KARH+_cKe+3NRg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Enric Balletbo Serra <eballetbo@gmail.com>, Andrew Murray <andrew.murray@arm.com>, Robin Murphy <robin.murphy@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Heiko Stuebner <heiko@sntech.de>, Frederick Lawler <fred@fredlawl.com>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Brown <broonie@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Helgaas <bhelgaas@google.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Mika Westerberg <mika.westerberg@linux.intel.com>, =?iso-8859-1?Q?Stefan_M=E4tje?= <stefan.maetje@esd.eu>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

On Thursday, December 12, 2019 3:16:25 PM CET, Enric Balletbo Serra wrote:
> Hi Vicente,
>
> Missatge de Andrew Murray <andrew.murray@arm.com> del dia dj., 12 de
> des. 2019 a les 1:53:
>>=20
>> On Thu, Dec 12, 2019 at 12:12:56AM +0000, Robin Murphy wrote:
>>> Hi Vicente,
>>>=20
>>> On 2019-12-11 11:38 pm, Vicente Bergas wrote:
>>>> Hi,
>>>> since v5.5-rc1 the google kevin chromebook does not boot.
>>>> Git bisect reports 5e0c21c75e8c PCI/ASPM: Remove pcie_aspm_enabled()
>>>> unnecessary locking
>>>> as the first bad commit.
>>>>=20
>>>> In order to revert it from v5.5-rc1 i had to also revert=20
>>>> some dependencies:
>>>> 5e0c21c75e8c08375a69710527e4a921b897cb7e
>>>> aff5d0552da4055da3faa27ee4252e48bb1f5821
>>>> 35efea32b26f9aacc99bf07e0d2cdfba2028b099
>>>> 687aaf386aeb551130f31705ce40d1341047a936
>>>> 72ea91afbfb08619696ccde610ee4d0d29cf4a1d
>>>> 87e90283c94c76ee11d379ab5a0973382bbd0baf
>>>> After reverting all of this, still no luck.
>>>> So, either the results of git bisect are not to be trusted, or
>>>> there are more bad commits.
>>>>=20
>>>> By "does not boot" i mean that the display fails to start and
>>>> the display is the only output device, so debugging is quite difficult.
>>>=20
>
> Another issue that is affecting current mainline for kevin is fixed
> with [1]. As usual, I have a tracking branch for 5.5 for different
> Chromebooks with some not yet merged patches that makes things work
> while are not fixed [2]. For kevin only the mentioned ASoC patch [1]
> and the pcie fix [3] should be needed. Other than that display is
> working for me on Kevin.
>
> Cheers,
>  Enric
>
> [1]=20
> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/commit/?h=
=3Dfor-5.5&id=3D4bf2e385aa59c2fae5f880aa25cfd2b470109093
> [2]=20
> https://gitlab.collabora.com/eballetbo/linux/commits/topic/chromeos/somewha=
t-stable-5.5
> [3]  https://lkml.org/lkml/2019/12/11/199
>
>>> Assuming it's a manifestation of the same PCI breakage that Enric and
>>> Lorenzo figured out, there's a proposed fix here:
>>> https://lkml.org/lkml/2019/12/11/199
>>=20
>> It's likely that any PCI driver that uses PCI IO with that controller will=

>> suffer the same fate.
>>=20
>> Vicente - can you try the patch that has been proposed and verify it fixes=

>> the issue for you?
>>=20
>> Thanks,
>>=20
>> Andrew Murray
>>=20
>>>=20
>>> Robin.
>>>=20
>>>> v5.5-rc1 as is (reverting no commits at all) works fine when=20
>>>> disabling PCI:
>>>> # CONFIG_PCI is not set
>>>>=20
>>>> Regards,
>>>>   Vicente.

Hi Robin, Andrew and Enric,
thank you all for the quick responses!
I can confirm that patch [3] fixes the issue reported in this email and
that [1] fixes the other issue reported on the other email.

Regards,
  Vicen=C3=A7.
