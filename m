Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 672E0C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 23:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hi5ydbT29Dp0Q2EhU/T0qGwtXcH0bLu5i5gTa2yBHw0=; b=Kh3Xe/Nh7fgJOL
	/tQsuY8TjGEQ+poIEhrZKbjAN/kiEf2Vo4oGLc0QoCfpkoUHnjcgZZd4Bzwh3zNdUzO+R8ASiavWR
	yA0E+ltmZsdoY+Eyr7w3OGYDv1pzVN/1eHe5mygzl8EfdLxO5BuGomoeV2YfX0AlSqZ1m/IOHDuKh
	GI83T3FtbQFFo+Lq+ECLFKU3R7/de8HFEqJqg4GIDNXlHLlYjmVm+C6kvW54Bgxy6ae4mOxVrpZCz
	rPM3P3122jY2/eHv82bDQmFNuPU67pyQd4ehIJTxdDgkvcJ9wAF1t4z6I60EoOcMFUAeU8mCEg07Z
	ccF3kgtrGNi64CG9QAcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvnET-00000004Doi-0kqV;
	Sat, 13 Apr 2024 23:56:29 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvnEQ-00000004Dnk-1uwf;
	Sat, 13 Apr 2024 23:56:28 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5a4930d9c48so1033208eaf.1;
        Sat, 13 Apr 2024 16:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713052581; x=1713657381; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qlo8iiW9XzNbwgCxhCI3oz9F/KupitoTXB2VwtVn9QI=;
        b=DJEk4n0e9umtnRvQswam1SmOKrisWuc3sxWXE509K6a7zORAu2Suk7HqGZO78KW9R1
         6pIV9qkYcTePnZPLg+0KD+RGy6qzpL+EF6fYGXkRLmk0oLvXtOGBM1Wpy4XFNqW2tf4C
         nUMDFzuwzxriWflanADOrGhONik63YNZ1EKAYA0zEJVv1MNqDd4htHi7vO4u8WdspPIc
         ccGTR7fY65p4xeng+Eyb3/6MCO1rved2jNw+H2Wjt16Zjj02lMU4cBZbqWpJBvq37+80
         ZvCqTE66d5L4/cf8lCRfOGaxbqkTKatQIOMD5Dao88THiblZ8iJHOaoIUwzp50V5BobM
         D8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713052581; x=1713657381;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qlo8iiW9XzNbwgCxhCI3oz9F/KupitoTXB2VwtVn9QI=;
        b=rZQKlwM7dYZA9lVf4l3/VxgqvAaucdc1ciPlXx2X/LaMIx8JWcwo6QEE72HtfEaLZA
         VNouRJUvGPyxXfrDPNo1h4ukeIeUzswfqpkpNpSd7cUjVabJBRTBihRbQ2ujostk+TUT
         vmXVvY1IHLFqd1ys0tV0pONW8avHGM7SSm6p9C5A1GYxslQPmLGD45Y7iLCw71gvwLyk
         EhAIS5sjy+P9ntXnsgIQTUjfErPfPK5CsjWV9ytzohtQY0iWsTDUAMJCeTvcZtSlJ1Og
         HTo+e/EfbLs4V739NiMg22dJz4jRdpUHiFtAkoJJCWGfW+0vJhatHsv3wig3NOFGa4if
         pORQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsW8BTQmxikWKJ4aNY6AlcVpcfQwmUuYvACV24TSTbMBWUm7Sh1vnGb84H1RimV4ACSy9LOyPchg8ZL5VWwsDKujt3gyXqi3QwMDu9O/oUA/whznY=
X-Gm-Message-State: AOJu0YxlQckIPpdIn3UDnlPOK6kZYBYdJ8pq0CV1YNK+Ke4emaFjvAS0
	hVraeh99aR8IseLN40HLzfAULEunjom08M84XXHJbuqUjtI4jYRq
X-Google-Smtp-Source: AGHT+IHZLfmH4vSy+8/9v9lUfqHzU8MYj0rSF/HuiKH+LCO8N1xSWPVyVEi/YRDpE7ZqFqyuslnwGw==
X-Received: by 2002:a05:6808:2204:b0:3c6:394:2334 with SMTP id bd4-20020a056808220400b003c603942334mr7431610oib.2.1713052580988;
        Sat, 13 Apr 2024 16:56:20 -0700 (PDT)
Received: from SDF-ThinkCentre-M93p.localdomain (c-76-17-255-148.hsd1.mn.comcast.net. [76.17.255.148])
        by smtp.googlemail.com with ESMTPSA id x64-20020a25ce43000000b00dc74258241fsm1375829ybe.45.2024.04.13.16.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 16:56:20 -0700 (PDT)
From: Shimrra Shai <shimmyshai00@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Max Schwarz <max.schwarz@online.de>,
	Paul Diefenbaugh <paul.s.diefenbaugh@intel.com>,
	Niyas Sait <niyas.sait@huawei.com>,
	Shimrra Shai <shimmyshai00@gmail.com>
Subject: [PATCH 0/0] [v2] Add ACPI binding to Rockchip RK3xxx I2C bus
Date: Sat, 13 Apr 2024 19:03:55 -0500
Message-Id: <20240414000355.10984-1-shimmyshai00@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_165626_545404_BEDE4A9D 
X-CRM114-Status: GOOD (  37.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

This is a second version of the patch that I submitted a few weeks ago for
adding an ACPI binding for I2C bringup on the Rockchip RK3xxx
(specifically, RK3588) platforms for compatibility with the newfangled
TianoCore EDK2 firmwares. This was previously discussed here:

https://lore.kernel.org/linux-kernel/20240321173447.15660-1-shimmyshai00@gmail.com/

After some convo with the maintainer of the firmware, it was suggested I
should have a kernel patch ready and approvable here before he can amend
the ACPI tables in it. The following patch accepts an ACPI table entry for
the I2C busses that looks like this:

  Device (I2Cx) {
    Name (_HID, "RKCP3001")
    Name (_CID, "PRP0001")
    Name (_UID, x)
    Name (_CCA, 0)

    Method (_CRS, 0x0, Serialized) {
      Name (RBUF, ResourceTemplate() {
        Memory32Fixed (ReadWrite, 0xfea90000, 0x1000)
        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive) { 350 }
        ClockInput (198000000, 1, Hz, Fixed, "\\_SB_.CRU_", PCLK_I2Cx)
        ClockInput (198000000, 1, Hz, Fixed, "\\_SB_.CRU_", BCLK_I2Cx)
      })
      Return (RBUF)
    }
    Name (_DSD, Package () {
      ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
      Package () {
        Package (2) { "compatible", Package (2) { "rockchip,rk3588-i2c", "rockchip,rk3399-i2c" } },
        Package (2) { "i2c,clk-rate", 198000000 },
        Package (2) { "rockchip,bclk", 198000000 },
        Package (2) { "#address-cells", 1 },
        Package (2) { "#size-cells", 0 },
      }
    })
  }

where "x" above in the name, _UID, and bindings should be replaced with the
bus number (0..8). There was some debate about how to specify the clock
rates in the first proposed version of this patch - in particular,
regarding the inclusion of the "i2c,clk-rate" and "rockchip,bclk" settings
in the _DSD section above. It was determined through correspondence with
the firmware team that the reason for the inclusion of these settings was
for compatibility with Microsoft Windows, but the kernel team here
suggested it would be better to use ClockInput bindings, introduced as of
ACPI 6.5. Hence, this patch is based on the assumption such bindings are
available and is designed to fetch the clock rates from them. Note how the
above example maintains both methods of specifying rates in parallel; this
is also documented in the patch and it is noted that the _DSD settings
should NOT be used in the kernel. The code to use ClockInput bindings is
based off a base patch suggested by Niyas Sait, as in the linked thread.

Signed-off-by: Shimrra Shai <shimmyshai00@gmail.com>
---

 Documentation/firmware-guide/acpi/dsd/soc/general.rst | 32 +++++++++
 Documentation/firmware-guide/acpi/dsd/soc/soc-i2c.rst | 59 +++++++++++++++++
 drivers/acpi/Makefile                                 |  1 +
 drivers/acpi/acpi_clk.c                               | 93 +++++++++++++++++++++++++++
 drivers/i2c/busses/i2c-rk3x.c                         | 79 ++++++++++++++++++++---
 include/linux/acpi.h                                  |  8 +++
 6 files changed, 262 insertions(+), 10 deletions(-)
 
diff --git a/Documentation/firmware-guide/acpi/dsd/soc/general.rst b/Documentation/firmware-guide/acpi/dsd/soc/general.rst
new file mode 100644
index 000000000..9c287e838
--- /dev/null
+++ b/Documentation/firmware-guide/acpi/dsd/soc/general.rst
@@ -0,0 +1,32 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==========================================
+System-on-Chip (SoC) facility descriptions
+==========================================
+
+These documents describe how to create ACPI profiles for devices composed into
+system-on-chip (SoC) architectures. Currently, we only describe the options
+availed in the _DSD block for select platforms; other considerations are not
+yet applied. The inspiration for these documents are based around the advent
+(as of March 2024) of hefty, non-Apple ARM SoC systems such as the Rockchip
+RK3588 and newer chips that have desktop-like performance and thus are prime
+candidates for a UEFI-based desktop-like boot system with the goal being to
+deliver the same user-friendly ease of loading operating systems as on the
+Intel x86 sphere. Open-source UEFI-based firmware engines, such as TianoCore
+[1], mean it is possible on such platforms for the open-source developer to
+control both firmware and kernel simultaneously, which is not the case for
+the situation with Intel-based PC boards where boards are provided with pre-
+baked, vendor-selected and opaque firmwares.
+
+The description of ACPI usage here is not meant to suggest that ACPI replace
+Device Tree altogether for such SoCs; rather, we recognize that given they
+often will have a variety of applications that may include embedded usage where
+that more hard-wired boot loader setups such as U-Boot still shine, the
+maintenance of ACPI and DTB-based configuration options should be in parallel,
+and it may be possible for the same firmware to deploy both options.
+
+References
+==========
+
+[1] EDK2-RK3588 port of TianoCore EDK2 firmware.
+    https://github.com/edk2-porting/edk2-rk3588
diff --git a/Documentation/firmware-guide/acpi/dsd/soc/soc-i2c.rst b/Documentation/firmware-guide/acpi/dsd/soc/soc-i2c.rst
new file mode 100644
index 000000000..0e6c5df65
--- /dev/null
+++ b/Documentation/firmware-guide/acpi/dsd/soc/soc-i2c.rst
@@ -0,0 +1,59 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=================
+I2C buses on SoCs
+=================
+
+This document describes the ACPI _DSD parameters currently being employed for
+Inter-Integrated Circuit (I2C) buses in the Linux kernel. It is based off the
+conventions used in the Rockchip RK3588 firmware project [1], which is also the
+first SoC documented here.
+
+General considerations
+======================
+
+For general use, we recommend indicating I2C busses in the ACPI firmware table
+in the following manner. First, they should be named I2Cx, where "x" is the bus
+index, and that index should also be used for the _UID component, e.g. on
+Rockchip RK3588 (see below), we use:
+
+  Device (I2Cx) {
+    Name (_HID, "RKCP3001")
+    Name (_CID, "PRP0001")
+    Name (_UID, x)
+    Name (_CCA, 0)
+
+    ...
+  }
+
+Interrupts should be specified in the usual ACPI manner. Likewise, as of ACPI
+6.5, clock rates should be given in ClockInput resources. Parameters specific to
+the Rockchip and I2C devices are indicated in the _DSD block as given below.
+The parameters are a curated selection from the Device Tree Blob (DTB)
+representation.
+
+_DSD parameters for different SoCs
+==================================
+
+Rockchip RK3588
+---------------
+
+The following parameters are indicated here for the I2C on Rockchip RK3588.
+
+- i2c,clk-rate 	Describe the pclk rate for the I2C bus, in Hz.
+- rockchip,bclk	Describe the bclk rate for the I2C bus, in Hz.
+
+These two parameters describe the peripheral (pclk) and bus (bclk) clock rates
+for the I2C bus. It is NOT recommended to use these clock rate parameters in the
+kernel, as they are intended for compatibility with Microsoft Windows. They are
+ONLY mentioned here for documentation's sake. Instead, the method mentioned
+earlier should be used to provide the clock rates; in the current revisions of
+the i2c-rk3x driver, the first clock resource appearing (resource 0) will be
+treated as giving the bclk rate, and the second clock resource (resource 1)
+appearing will be treated as giving the pclk rate.
+
+References
+==========
+
+[1] EDK2-RK3588 port of TianoCore EDK2 firmware.
+    https://github.com/edk2-porting/edk2-rk3588
diff --git a/drivers/acpi/Makefile b/drivers/acpi/Makefile
index 8cc8c0d9c..26343ffce 100644
--- a/drivers/acpi/Makefile
+++ b/drivers/acpi/Makefile
@@ -48,6 +48,7 @@ acpi-$(CONFIG_PCI)		+= pci_root.o pci_link.o pci_irq.o
 obj-$(CONFIG_ACPI_MCFG)		+= pci_mcfg.o
 acpi-$(CONFIG_PCI)		+= acpi_lpss.o
 acpi-y				+= acpi_apd.o
+acpi-y				+= acpi_clk.o
 acpi-y				+= acpi_platform.o
 acpi-y				+= acpi_pnp.o
 acpi-y				+= power.o
diff --git a/drivers/acpi/acpi_clk.c b/drivers/acpi/acpi_clk.c
new file mode 100644
index 000000000..fbb1c4a4a
--- /dev/null
+++ b/drivers/acpi/acpi_clk.c
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * drivers/acpi/acpi_clk.c - ACPI device clock resources support.
+ *
+ * (C) 2023 Niyas Sait <niyas.sait@huawei.com>
+ * (C) 2024 Shimrra Shai <shimmyshai00@gmail.com>
+ *
+ */
+
+#include <linux/acpi.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
+
+struct acpi_clk_lookup {
+	u16 freq_div;
+	u32 freq_num;
+	u8 scale;
+	u8 mode;
+	int index;
+	bool found;
+	int n;
+};
+
+static uint64_t calc_clock_rate(u32 freq_num, u16 freq_denom, u8 scale)
+{
+	uint32_t scale_factor[3] = { 1, 1000, 1000000 };
+	uint64_t rate = 0;
+
+	if (scale < ARRAY_SIZE(scale_factor))
+		rate = DIV_ROUND_UP(freq_num * scale_factor[scale], freq_denom);
+
+	return rate;
+}
+
+static int acpi_populate_clk_lookup(struct acpi_resource *ares, void *data)
+{
+	struct acpi_clk_lookup *lookup = data;
+	struct acpi_resource_clock_input *resource = &ares->data.clock_input;
+
+	if (ares->type != ACPI_RESOURCE_TYPE_CLOCK_INPUT)
+		return 1;
+
+	if (lookup->n++ != lookup->index)
+		return 1;
+
+	lookup->mode = resource->mode;
+	lookup->freq_div = resource->frequency_divisor;
+	lookup->freq_num = resource->frequency_numerator;
+	lookup->scale = resource->scale;
+	lookup->found = true;
+
+	return 1;
+}
+
+struct clk *acpi_clk_register(struct acpi_device *adev, int index,
+			      const char *name)
+{
+	struct acpi_clk_lookup lookup;
+	struct list_head list;
+	struct clk *clk;
+	uint64_t rate;
+	int ret;
+
+	INIT_LIST_HEAD(&list);
+
+	memset(&lookup, 0, sizeof(lookup));
+	lookup.index = index;
+
+	ret = acpi_dev_get_resources(adev, &list, acpi_populate_clk_lookup,
+				     &lookup);
+	if (ret < 0)
+		return ERR_PTR(-ENODEV);
+
+	acpi_dev_free_resource_list(&list);
+
+	/* register fixed clocks only */
+	if (!lookup.found || lookup.mode != 0)
+		return ERR_PTR(-EINVAL);
+
+	rate = calc_clock_rate(lookup.freq_num, lookup.freq_div, lookup.scale);
+
+	const char *regname = name;
+
+	if (name == NULL)
+		regname = dev_name(&adev->dev);
+
+	clk = clk_register_fixed_rate(&adev->dev, regname, NULL, 0, rate);
+	clk_register_clkdev(clk, regname, NULL);
+
+	return clk;
+}
+EXPORT_SYMBOL_GPL(acpi_clk_register);
+
diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 086fdf262..1aaf2daba 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -17,6 +17,7 @@
 #include <linux/io.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
+#include <linux/acpi.h>
 #include <linux/spinlock.h>
 #include <linux/clk.h>
 #include <linux/wait.h>
@@ -1235,6 +1236,15 @@ static const struct of_device_id rk3x_i2c_match[] = {
 };
 MODULE_DEVICE_TABLE(of, rk3x_i2c_match);
 
+#ifdef CONFIG_ACPI
+/* for RK3588 and at least when loaded with EDK2-RK3588 Tianocore firmware */
+static const struct acpi_device_id rk3x_i2c_acpi_match[] = {
+	{ .id = "RKCP3001", .driver_data = (kernel_ulong_t)&rk3399_soc_data },
+	{ },
+};
+MODULE_DEVICE_TABLE(acpi, rk3x_i2c_acpi_match);
+#endif
+
 static int rk3x_i2c_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -1243,6 +1253,8 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 	int ret = 0;
 	int bus_nr;
 	u32 value;
+	u64 value64;
+	char name[64];
 	int irq;
 	unsigned long clk_rate;
 
@@ -1250,8 +1262,12 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 	if (!i2c)
 		return -ENOMEM;
 
-	match = of_match_node(rk3x_i2c_match, np);
-	i2c->soc_data = match->data;
+	if (acpi_disabled) {
+		match = of_match_node(rk3x_i2c_match, np);
+		i2c->soc_data = match->data;
+	} else {
+		i2c->soc_data = device_get_match_data(&pdev->dev);
+	}
 
 	/* use common interface to get I2C timing properties */
 	i2c_parse_fw_timings(&pdev->dev, &i2c->t, true);
@@ -1266,6 +1282,9 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 
 	i2c->dev = &pdev->dev;
 
+	if (!acpi_disabled)
+		ACPI_COMPANION_SET(&i2c->adap.dev, ACPI_COMPANION(&pdev->dev));
+
 	spin_lock_init(&i2c->lock);
 	init_waitqueue_head(&i2c->wait);
 
@@ -1273,8 +1292,25 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(i2c->regs))
 		return PTR_ERR(i2c->regs);
 
-	/* Try to set the I2C adapter number from dt */
-	bus_nr = of_alias_get_id(np, "i2c");
+	if (acpi_disabled) {
+		/* Try to set the I2C adapter number from dt */
+		bus_nr = of_alias_get_id(np, "i2c");
+	} else {
+		ret = acpi_dev_uid_to_integer(ACPI_COMPANION(&pdev->dev),
+					      &value64);
+		if (ret) {
+			dev_err(&pdev->dev, "Cannot retrieve UID\n");
+			return ret;
+		}
+
+		if (value64 < INT_MAX) {
+			bus_nr = (int) value64;
+		} else {
+			/* shouldn't happen!!! */
+			dev_err(&pdev->dev, "Too big UID\n");
+			return -EINVAL;
+		}
+	}
 
 	/*
 	 * Switch to new interface if the SoC also offers the old one.
@@ -1325,13 +1361,36 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, i2c);
 
-	if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {
-		/* Only one clock to use for bus clock and peripheral clock */
-		i2c->clk = devm_clk_get(&pdev->dev, NULL);
-		i2c->pclk = i2c->clk;
+	if (acpi_disabled) {
+		if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {
+			/* Only one clock to use for bus clock and peripheral
+			 * clock
+			 */
+			i2c->clk = devm_clk_get(&pdev->dev, NULL);
+			i2c->pclk = i2c->clk;
+		} else {
+			i2c->clk = devm_clk_get(&pdev->dev, "i2c");
+			i2c->pclk = devm_clk_get(&pdev->dev, "pclk");
+		}
 	} else {
-		i2c->clk = devm_clk_get(&pdev->dev, "i2c");
-		i2c->pclk = devm_clk_get(&pdev->dev, "pclk");
+		if (i2c->soc_data->calc_timings != rk3x_i2c_v0_calc_timings) {
+			snprintf(name, sizeof(name), "rk3x-i2c[%d].bclk",
+				 bus_nr);
+			i2c->clk = acpi_clk_register(ACPI_COMPANION(&pdev->dev),
+						     0, name);
+
+			snprintf(name, sizeof(name), "rk3x-i2c[%d].pclk",
+				 bus_nr);
+			i2c->pclk = acpi_clk_register(ACPI_COMPANION(&pdev->dev),
+						      1, name);
+		} else {
+			/* NB: currently not expected w/UEFI firmware given
+			 * these are not super performant RK3xxx
+			 */
+			dev_err(&pdev->dev,
+				"ACPI not supported for this RK3xxx\n");
+			return -EINVAL;
+		}
 	}
 
 	if (IS_ERR(i2c->clk))
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index 34829f2c5..13ca67d2c 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -32,6 +32,7 @@ struct irq_domain_ops;
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/fw_table.h>
+#include <linux/clk-provider.h>
 
 #include <acpi/acpi_bus.h>
 #include <acpi/acpi_drivers.h>
@@ -1569,4 +1570,11 @@ static inline bool acpi_node_backed_by_real_pxm(int nid)
 }
 #endif
 
+/* Clock support */
+
+#ifdef CONFIG_ACPI
+struct clk *acpi_clk_register(struct acpi_device *adev, int index,
+			      const char *name);
+#endif
+
 #endif	/*_LINUX_ACPI_H*/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
