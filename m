From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
Date: Thu, 12 Dec 2019 00:12:56 +0000
Message-ID: <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Vicente Bergas <vicencb@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Frederick Lawler <fred@fredlawl.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>, Andrew Murray <andrew.murray@arm.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Mika Westerberg <mika.westerberg@linux.intel.com>, =?UTF-8?Q?Stefan_M=c3=a4tje?= <stefan.maetje@esd.eu>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Vicente,

On 2019-12-11 11:38 pm, Vicente Bergas wrote:
> Hi,
> since v5.5-rc1 the google kevin chromebook does not boot.
> Git bisect reports 5e0c21c75e8c PCI/ASPM: Remove pcie_aspm_enabled() 
> unnecessary locking
> as the first bad commit.
> 
> In order to revert it from v5.5-rc1 i had to also revert some dependencies:
> 5e0c21c75e8c08375a69710527e4a921b897cb7e
> aff5d0552da4055da3faa27ee4252e48bb1f5821
> 35efea32b26f9aacc99bf07e0d2cdfba2028b099
> 687aaf386aeb551130f31705ce40d1341047a936
> 72ea91afbfb08619696ccde610ee4d0d29cf4a1d
> 87e90283c94c76ee11d379ab5a0973382bbd0baf
> After reverting all of this, still no luck.
> So, either the results of git bisect are not to be trusted, or
> there are more bad commits.
> 
> By "does not boot" i mean that the display fails to start and
> the display is the only output device, so debugging is quite difficult.

Assuming it's a manifestation of the same PCI breakage that Enric and 
Lorenzo figured out, there's a proposed fix here: 
https://lkml.org/lkml/2019/12/11/199

Robin.

> v5.5-rc1 as is (reverting no commits at all) works fine when disabling PCI:
> # CONFIG_PCI is not set
> 
> Regards,
>   Vicente.
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
