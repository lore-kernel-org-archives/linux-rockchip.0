From: "Eric Auer, EMW-MT" <auere-OIIjM32accxuPis3aSs6BxvVK+yQ3ZXh@public.gmane.org>
Subject: tuning spi-rockchip on rk3288
Date: Sun, 19 May 2019 21:48:35 +0200
Message-ID: <20190519194649.M28435@hochschule-trier.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


Dear linux-rockchip experts,

please bear with me for a somewhat long mail about the creation of
some significant optimizations and extensions of the spi-rockchip
drivers, for which I would hope to find future usages, in part or
otherwise, thanks to the modern times of open source code licenses:

As part of a university project in the second half of 2018, I have
created extensive specialized patches for in particular the RK3288
spi-rockchip Linux driver, as well as a few related spots. Goal of
the project was fetching a high speed stream of A/D data via SPI,
ultimately sending the processed data over the GbE LAN network of
an Asus Tinker Board. While doing so, I also improved normal mode.

The modified driver features an autonomous A/D interaction mode
with a kernel thread to ask the A/D chip for data and fetch the
data when ready, then buffering it on the kernel side. This mode
is configurable for various A/D chips from the user space API.

Samples get time-stamped using the high resolution ARM counter,
using specialized code to keep the CPU overhead at a minimum.

Configurable rest times for the A/D chips are ensured by software,
to avoid the overhead of having to interact with "ready" or "busy"
flags by GPIO. Taking away control of some GPIO line or interrupt
linked to that, to reduce the driver overhead, seemed a bad idea.

There also is a matching user space tool to configure the mode,
read the data stream, process it and send it over a TCP/IP link.

In the less specialized parts of the SPI driver, I have reduced
I/O overhead where possible, while at the same time introducing
dynamic fast timeout detection of "stuck" SPI engine states. The
patched driver lacks energy saving mode support as part of trade
offs between speed and flexibility.

The driver can of course be used without the kernel thread just
like the classic spi-rockchip. Some additions for tuned A/D I/O
support can be enabled by "magic" flags while staying within the
normal context. In other words, they can work without said thread.

The idea was to change as few files as possible, hence the use of
magic flags instead of adding a whole API extension at all levels.

In the course of doing so, I also detected some issues with the
original driver, such as unsupported but reported as supported
features, or features that were easy to add. Also, I have patched
the device tree data to add the "high drive strength for higher
SPI clocks" values already expected by the SPI rockchip driver.

Long story short, I now have my grade and the permission to make
all my programming work related to it public, so I would like to
offer the sources to the SPI enthousiasts on this mailing list!

As said, the project is rather specialized, but there are plenty
of cherries to be picked for general use and maybe even somebody
from the realm of the ADC kernel drivers would be interested to
"lift" the pump thread part into that part of the kernel source.
Some bug fixes are useful for the drivers for all general uses,
not just my A/D goals. Others might enjoy the device tree fixes
or the trick to get high resolution timestamps with very low CPU
overhead.

Unfortunately I am not experienced with the linux-rockchip work
flow and community as a whole, although I have been keeping an
eye on the intense flow of patches sent to and discussed on this
list since July 2018.

So I would be glad to hear from some of you experienced kernel
experts who would have the time to receive my code, structure
the changes and put the interesting parts in the kernel or at
other places where the other Rockchip users can enjoy them.

That would be very nice of you! Thank you in advance.

My tests are based on the specs of the LTC2335, ADS8330,
ADAS3023 and LTC2357 A/D converter chips. Usually one, but
for some experiments two SPI interfaces of the Asus Tinker
Board with Rockchip RK3288 SoC / CPU with Linux 4.4.103 were
used. I am aware that this is not the newest kernel, but it
was the Tinker OS 2.0.7 Linux kernel back at the time, see
https://github.com/TinkerBoard/debian_kernel/tree/release

Using a newer compiler revealed indentation errors in some
wireless LAN drivers, so I also have patches for those:

drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b1ant.c
drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b2ant.c
drivers/net/wireless/rockchip_wlan/rtl8814au/hal/rtl8814a/usb/rtl8814au_xmit.c
drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_mlme_ext.c
drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_security.c

I have made big changes to drivers/spi/spi-rockchip.c while
keeping the include/linux/platform_data/spi-rockchip.h and
the Documentation/devicetree/bindings/spi/spi-rockchip.txt
unchanged. The other drivers/spi/spi-rockchip-... files
turned out to be abandoned parts of older Linux drivers
and include/linux/spi/spi.h stayed unchanged as well, so
at the moment, my custom user space tool is the only part
which uses new /dev/spidev... features. Otherwise, things
behaves in the classic way, plus bugfixes, minus suspend.

In experiments, while the code believed that 50 MHz SPI
clock would be feasible, the transmission was more stable
at 48 MHz. Also, as said, the "high drive strength" for
clocks above 24 MHz had to be activated via Device Tree,
in the file arch/arm/boot/dts/rk3288.dtsi as well as in
the arch/arm/boot/dts/rk3288-miniarm.dts sources.

For all changed files, I have archived original files
as reference and my patched file and unified diffs. As
said, the kernel space changes are limited to those
files mentioned in this mail. Of course I kept .config
and boot/hw_intf.conf used for my project as reference,
as well as my user space "data pump" (SPI to GbE LAN).

Of course there is a verbose paper about all activities,
but THAT is written in German. Yet of course I am happy
to answer all questions about my code by mail in English.

I would be very happy if my research and coding in 2018
would bring some insights, amusement and improvements to
the Linux Rockchip world in some way. Please contact me
to get a copy of all code, including "before", "after"
and "diff" of all changed files. As it is about 350 kB
zipped, I hesitate to send it to the whole mailing list.

Thank you for reading! I hope some of you became curious.

Regards, Eric
