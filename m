Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03651C04A95
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 16:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfHXOzy6pOFrs97Ss1K//cV3A+CjZlrrC7I+XAwKgmU=; b=WNqmj40G6aO+fD
	YbKRYF+Lmkzyu+r0w+lsuhXhdDvKMCXZjFLMLTrsvk8hT08AKGLTWYZHJgq/MrB6RXnbayTBpUfZ1
	1YpOc731KZSvB7P0fZ9G+RtHapxH7IV+GGnoWVhcRC+gZss/YXJcKd3XHB8+F82fyULeHD5ToLofm
	EAESIMgDI/8ywkgKpuSYB7z/t078ZlbbXzxCvsfbqJADq9ZC+iFltzUCgTUC+AVtfvzuqOHU4Bh6l
	N4q98I3E7iGzhHRW7V6z4mTNKAZDlaudV8zSlEvSjgYl1aA6ICwtrF3QRcd9d8riYlpGMM269GxZJ
	be8bcMCQ6wqLZat9CXuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omHZe-00DI9Q-UT; Sat, 22 Oct 2022 16:42:14 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omHZR-00DI2l-Cs; Sat, 22 Oct 2022 16:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1666456915; bh=easYh1vEZAlN+URHpmcYGDfF+UB13mI51xyxD8/sAOA=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=TdsAG375XGmOwEjBEOBQ2rIGfS7ENvyVGW025PSCO//+eDyW/BCTaZ0suRHtw08Hr
	 XJV1tzYa8Swfln9LLnFirOxi7XsSp2Fo9iBYAHEXHKFZbcJskWj1tTEXIcYDWO87/g
	 VdCo1FO7D1MUCKA9CIEgAnme1FoHba5ULfXZRaKU=
Date: Sat, 22 Oct 2022 18:41:54 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Mark Kettenis <mark.kettenis@xs4all.nl>, heiko@sntech.de,
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, michael.riesch@wolfvision.net,
	frattaroli.nicolas@gmail.com, s.hauer@pengutronix.de,
	frank-w@public-files.de, ezequiel@vanguardiasur.com.ar,
	yifeng.zhao@rock-chips.com, jbx6244@gmail.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
Message-ID: <20221022164154.kxcqsx5izr5yx5wj@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Peter Geis <pgwipeout@gmail.com>,
	Mark Kettenis <mark.kettenis@xs4all.nl>, heiko@sntech.de,
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, michael.riesch@wolfvision.net,
	frattaroli.nicolas@gmail.com, s.hauer@pengutronix.de,
	frank-w@public-files.de, ezequiel@vanguardiasur.com.ar,
	yifeng.zhao@rock-chips.com, jbx6244@gmail.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20221005085439.740992-1-megi@xff.cz>
 <CAMdYzYrEXEqOmMeozGBbAAvrujZcOxLh4VYOmu5DSjPWTS-5zQ@mail.gmail.com>
 <20221005220812.4psu6kckej63yo2z@core>
 <4679102.Wku2Vz74k6@phil>
 <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com>
 <20221021153913.l5ry6v4mcnzcmj2v@core>
 <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com>
 <20221021193248.2he6amnj7knk4biu@core>
 <87edv0sxup.fsf@bloch.sibelius.xs4all.nl>
 <CAMdYzYp6ShLqKxdiAjaRFiRF5i+wzfKiQvwPMzyQLAutWZbApg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYp6ShLqKxdiAjaRFiRF5i+wzfKiQvwPMzyQLAutWZbApg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_094201_934578_0F20462D 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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

On Sat, Oct 22, 2022 at 08:19:57AM -0400, Peter Geis wrote:
>
> [...]
> 
> reg = <0x3 0xc0000000 0x0 0x00400000>,
>       <0x0 0xfe260000 0x0 0x00010000>,
>       <0x0 0xf4000000 0x0 0x00100000>;
> 
> ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
> <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x01e00000>,
> <0x03000000 0x0 0x40000000 0x3 0x00000000 0x0 0x40000000>;

... more data:

Diff of my v2 vs the above ranges for my 2xwifi card + nvme setup:

--- switch.lspciv	2022-10-05 10:36:33.924838688 +0200
+++ switch-pg.lspciv	2022-10-22 18:30:33.412025097 +0200
@@ -5 +5 @@
-	Memory behind bridge: 00000000-002fffff [size=3M] [32-bit]
+	Memory behind bridge: f4200000-f44fffff [size=3M] [32-bit]
@@ -7 +7 @@
-	Expansion ROM at 300300000 [virtual] [disabled] [size=64K]
+	Expansion ROM at f4500000 [virtual] [disabled] [size=64K]
@@ -22 +22 @@
-	Memory behind bridge: 00000000-002fffff [size=3M] [32-bit]
+	Memory behind bridge: f4200000-f44fffff [size=3M] [32-bit]
@@ -38 +38 @@
-	Memory behind bridge: 00000000-000fffff [size=1M] [32-bit]
+	Memory behind bridge: f4200000-f42fffff [size=1M] [32-bit]
@@ -53 +53 @@
-	Memory behind bridge: 00100000-001fffff [size=1M] [32-bit]
+	Memory behind bridge: f4300000-f43fffff [size=1M] [32-bit]
@@ -83 +83 @@
-	Memory behind bridge: 00200000-002fffff [size=1M] [32-bit]
+	Memory behind bridge: f4400000-f44fffff [size=1M] [32-bit]
@@ -96 +96 @@
-	Memory at 300000000 (64-bit, non-prefetchable) [size=16K]
+	Memory at f4200000 (64-bit, non-prefetchable) [size=16K]
@@ -111 +111 @@
-	Memory at 300100000 (64-bit, non-prefetchable) [size=64K]
+	Memory at f4300000 (64-bit, non-prefetchable) [size=64K]
@@ -123 +123 @@
-	Flags: bus master, fast devsel, latency 0, IRQ 80
+	Flags: bus master, fast devsel, latency 0, IRQ 76
@@ -125 +125 @@
-	Memory at 300200000 (64-bit, non-prefetchable) [size=1M]
+	Memory at f4400000 (64-bit, non-prefetchable) [size=1M]

(not so dramatic differences)

But for SATA card + USB card + 2-port intel ethernet card, it's
massively better:

--- fullpci-my.lspciv	2022-10-15 17:16:55.002000065 +0200
+++ fullpci-pg.lspciv	2022-10-15 17:15:09.837000015 +0200
@@ -5 +5 @@
-	Memory behind bridge: [disabled] [32-bit]
+	Memory behind bridge: f4200000-f55fffff [size=20M] [32-bit]
@@ -7 +7 @@
-	Expansion ROM at 300000000 [virtual] [disabled] [size=64K]
+	Expansion ROM at f5600000 [virtual] [disabled] [size=64K]
@@ -22 +22 @@
-	Memory behind bridge: [disabled] [32-bit]
+	Memory behind bridge: f4200000-f55fffff [size=20M] [32-bit]
@@ -38 +38 @@
-	Memory behind bridge: [disabled] [32-bit]
+	Memory behind bridge: f5400000-f54fffff [size=1M] [32-bit]
@@ -53 +53 @@
-	Memory behind bridge: [disabled] [32-bit]
+	Memory behind bridge: f5500000-f55fffff [size=1M] [32-bit]
@@ -83 +83 @@
-	Memory behind bridge: [disabled] [32-bit]
+	Memory behind bridge: f4200000-f53fffff [size=18M] [32-bit]
@@ -95 +95,4 @@
-	Flags: fast devsel
+	Flags: bus master, fast devsel, latency 0, IRQ 74
+	Memory at f5480000 (32-bit, non-prefetchable) [size=8K]
+	Memory at f5482000 (32-bit, non-prefetchable) [size=8K]
+	Expansion ROM at f5400000 [virtual] [disabled] [size=512K]
@@ -97 +100 @@
-	Capabilities: [50] MSI: Enable- Count=1/1 Maskable- 64bit+
+	Capabilities: [50] MSI: Enable+ Count=1/1 Maskable- 64bit+
@@ -100,0 +104 @@
+	Kernel driver in use: ahci
@@ -104 +108,2 @@
-	Flags: fast devsel
+	Flags: bus master, fast devsel, latency 0, IRQ 75
+	Memory at f5500000 (64-bit, non-prefetchable) [size=4K]
@@ -106 +111 @@
-	Capabilities: [90] MSI: Enable- Count=1/4 Maskable- 64bit+
+	Capabilities: [90] MSI: Enable+ Count=1/4 Maskable- 64bit+
@@ -108,0 +114 @@
+	Kernel driver in use: xhci_hcd
@@ -112 +118,3 @@
-	Flags: fast devsel
+	Flags: bus master, fast devsel, latency 0
+	Memory at f4200000 (32-bit, non-prefetchable) [size=128K]
+	Memory at f4400000 (32-bit, non-prefetchable) [size=4M]
@@ -113,0 +122,2 @@
+	Memory at f4240000 (32-bit, non-prefetchable) [size=16K]
+	Expansion ROM at f4800000 [virtual] [disabled] [size=4M]
@@ -116 +126 @@
-	Capabilities: [70] MSI-X: Enable- Count=10 Masked-
+	Capabilities: [70] MSI-X: Enable+ Count=10 Masked-
@@ -121,0 +132 @@
+	Kernel driver in use: igb
@@ -125,2 +136,6 @@
-	Flags: fast devsel
-	I/O ports at 1020 [disabled] [size=32]
+	Flags: bus master, fast devsel, latency 0, IRQ 85
+	Memory at f4220000 (32-bit, non-prefetchable) [size=128K]
+	Memory at f4c00000 (32-bit, non-prefetchable) [size=4M]
+	I/O ports at 1020 [size=32]
+	Memory at f4284000 (32-bit, non-prefetchable) [size=16K]
+	Expansion ROM at f5000000 [virtual] [disabled] [size=4M]
@@ -128 +143 @@
-	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
+	Capabilities: [50] MSI: Enable+ Count=1/1 Maskable+ 64bit+
@@ -134,0 +150 @@
+	Kernel driver in use: igb

(Full output https://megous.com/dl/tmp/fullpci-pg.lspciv)

So it's still not testing the 0x3_0000_0000 range, but as far as I'm
concerned, it works with whatever I can throw at it (7 different
pcie devices I have and combining them behind a 4-port pcie switch).

The best reg/ranges combination so far. ;)

Tested-by: Ondrej Jirman <megi@xff.cz>

kind regards,
	o.

> Very Respectfully,
> Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
