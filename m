From: Chris Ruehl <chris.ruehl-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>
Subject: [PATCH v1 0/3] spi: spi-rockchip spi slave mode
Date: Mon, 11 May 2020 16:30:19 +0800
Message-ID: <20200511083022.23678-1-chris.ruehl@gtsys.com.hk>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Chris Ruehl <chris.ruehl-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>, Jack Lo <jack.lo-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>
Cc: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-spi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The spi-rockchip driver does not implement spi slave mode, but the register map
have a corresponding flag. An example implementation found
here: https://dev.t-firefly.com/thread-101485-1-1.html
This patchset clean the compatiblity names and add support slave mode.
We need the slave mode for our project, but the PCBA is not yet available
in consequence the code in the patch isn't tested yet but need your review.

Patch 1/3
Cleanup, move from the compatibily layer struct spi_master over
to struct spi_controller, and rename the related function calls.

Patch 2/3
Add support for spi slave mode and support function

Patch 3/3
Use OF property num-cs and enable support for cs_gpiods

IMHO its wrong, that the num_chipselect is set fixed to the amount of 
native chip-select lines. SPI0 which has two native lines, while the others
SPIs one native cs line only.
Set max_native_cs in the controller struct with ROCKCHIP_SPI_MAX_CS_NUM seems
the correct way to do and let num-cs the OF / dts config set the CS count for
the boards.

Patch against next-20200508

Thanks for review!

Happy hacking
Chris

Signed-off-by: Chris Ruehl <chris.ruehl-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>
---
