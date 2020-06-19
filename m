From: Jack Mitchell <ml-psbXN780rFT10XsdtD+oqA@public.gmane.org>
Subject: rk3399_dmc - anybody has it working?
Date: Fri, 19 Jun 2020 11:16:18 +0100
Message-ID: <7cec9a61-b131-52e5-0d6a-e8223d5724bd@embed.me.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Language: en-US-large
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Cc: Phillip Karls <prkarls-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, gael.portay-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi all,

Has anybody had any success in enabling the rk3399_dmc devfreq driver.
I've been hacking on it for a few days now with very limited success.

Our board has single channel lpddr4 which can run stable at either
400/800 MHz when set from the u-boot rk3399 sdram driver.

I've tried numerous combinations such as:

1) mainline u-boot v2020.07-rc4 TPL (RAM init)/SPL+proper + mainline ATF
+ linux mainline 5.5.8

This locks up when attempting to set the ddr clock rate at this point:

		/* PHY_LOW_FREQ_SEL */
		/* DENALI_PHY_913 1bit offset_0 */
		if (timing_config->freq > 400)
			mmio_clrbits_32(PHY_REG(i, 913), 1);
		else
			mmio_setbits_32(PHY_REG(i, 913), 1);

https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/rockchip/rk3399/drivers/dram/dfs.c#L1521

2) rockchip DDR init + mainline uboot SPL+proper + mainline ATF + linux
mainline 5.5.8

This locks up at the same point as above.

3) rockchip DDR init + mainline uboot SPL+proper + rockchip binary ATF +
linux mainline 5.5.8

This manages to set the rate but then instantly crashes the system,
probably something to do with ram config options in the reconfiguration
stage, but I have no view to this as the ATF is proprietary.

If anybody has any documentation on this, or could point me in the
direction of someone who does have documentation that would help a lot.
Any war stories for others who have this working would also be
appreciated, there have been some changes to this code fairly recently,
so even though there are no current users in kernel, I assume someone
somewhere has this working?

Regards,
Jack.
