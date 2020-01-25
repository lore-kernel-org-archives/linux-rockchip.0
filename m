From: Adam Joseph <adam-FEgOTC+cuHmFhqYwkx2y8jh339VZgyU0@public.gmane.org>
Subject: [Question] rk3399-gru-kevin post-kexec() severe screen flickering
Date: Sat, 25 Jan 2020 13:24:47 -1000
Message-ID: <20200125132447.48f01721@kleene>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello all,

My daily driver is a linux on a Samsung XE513 aka "Chromebook Plus"
aka rk3399-gru-kevin, using coreboot (loaded from SPI NOR) with a
hardwired linux kernel FIT image compiled into the coreboot.rom.
I'm moving towards this "burned-in" kernel being merely a first-stage
bootloader that loads the real kernel from non-eeprom storage, checks
its hash, and then kexec()'s it.

I've managed to get this working; the magic incantation is to add
"irqchip.gicv3_nolpi=1" for the first-stage kernel, and pull this
patch when compiling it:

  https://lore.kernel.org/patchwork/cover/933456/

This works great, except that after loading the second kernel the
screen flickers very badly and continuously.  The flicker is
especially bad if I use the touchscreen.  This doesn't happen if the
exact same "second kernel" image is booted directly out of NOR flash
by coreboot.  Is there some way to totally power down the touchscreen
digitizer, and if so would that help?  I could live without the
touchscreen if I had to.  Can cut PCB traces if necessary.

I noticed that eballetbo (to whom I am eternally grateful for all the
work he does to make mainline linux on gru-kevin possible) came across
the same problem, as documented here:

  https://freenode.irclog.whitequark.org/linux-rockchip/2018-11-20#23524255

Has there been any more progress on this?  If not, can anybody get me
pointed in the right direction to try to fix this myself?

I'm guessing the "clocks" here refer to PLL registers -- VCO taps,
dividers, etc.  I'm very familiar with that sort of stuff from the
FPGA world, although the last time I did any kernel hacking was before
devicetrees were popular.  Is there some way to brute-force dump the
state of all the rk3399's clocking-related registers so I can diff the
results from a post-kexec() and pre-kexec() kernel?

I see a lot of comments from rockchip employees about flicker being
caused by the resident ATF code deciding to fiddle with the DRAM DVFS
settings outside of the vertical blanking interval; is this relevant?
For example:

  https://groups.google.com/a/chromium.org/d/msg/chromium-os-reviews/8SD-sEw5_-Y/uJaXssVqFQAJ

On a related note, is there any way to have the ATF code delete itself
from memory after returning control to the coreboot ramstage?  I went
many months without usable suspend-to-ram and invested an absurd
amount of time before discovering that the intricate dance needed to
get the ATF to agree to suspend the machine only works with certain
versions of special branches of the ATF code.  It was a pretty unhappy
experience, and at this point I don't see the post-boot resident
portion of the ATF adding positive value.  If I can just boot linux
in EL3-secure-world after the ATF has set up the DRAM timings that
would seem to be simpler.

Thanks for any pointers,

  - a
