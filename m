From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: [PATCH v0] spi: spi-rockchip spi slave mode
Date: Fri,  8 May 2020 16:37:28 +0800
Message-ID: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>, Jack Lo <jack.lo@gtsys.com.hk>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The driver spi-rockchip does not support spi slave mode, but the register map
has an entry indicate that the chip support it. An example implementation found
here: https://dev.t-firefly.com/thread-101485-1-1.html
The patch is my first approach to support slave mode which is needed
in one of our projects, the PCBA is not yet available but we think
to have it for testing very soon. Yes, the code in the patch
isn't tested yet.

I found it odd, that the num_chipselect is set fixed to the amount of 
native chip-select lines rather use the max_native_cs.
Changed it.
-   master->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
+       of_property_read_u32(np, "num-cs", &num_cs);
+       master->num_chipselect = num_cs;
+       master->max_native_cs = ROCKCHIP_SPI_MAX_CS_NUM;

That ask to enable cs_gpiods, and support gpio cs
+       master->use_gpio_descriptors = true;

Patch against next-20200505

Thanks for review!

Happy hacking
Chris

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
