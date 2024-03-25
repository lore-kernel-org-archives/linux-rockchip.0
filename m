Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49A31C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 15:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDCF+qz0yPzmmYPWujleCX/d6g/m2ZmdcepZBqwWzHg=; b=gnZA855UOSP0A1
	SaIICc45y7+XzCVn8ZXUMDAOnhuC84PWNRESJwdvh56GvrNoTjjtjnycbZjL4FI1ZxcgzUhvr/k7k
	yoagtM+exUxyF7BaO9VE+Fkr+P1bdflQLojLdt3fPWwXcpdrdfkC1yTlTlnClu1AbqrQtUW5FoRTn
	44eiKj92cr7l6nATbe0W2pvfNw1um2uCXhyWvVaFgE+Qvi/Qiq+6PEMUpXb2FmjYN1ZVn6/mxbqiu
	o8opC79ILzYQ3GZT0g2HWYg9fthAM0n0+QlPDLl0gg8D8FQtuum7VDYogoAKDlq3XJY750/64BaKs
	Yd17TQmftoxmeJLk347g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romSc-00000000YSV-19S8;
	Mon, 25 Mar 2024 15:42:06 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romSX-00000000YQ2-2WCk;
	Mon, 25 Mar 2024 15:42:03 +0000
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4V3H9z469xz6K9T0;
	Mon, 25 Mar 2024 23:37:27 +0800 (CST)
Received: from lhrpeml500005.china.huawei.com (unknown [7.191.163.240])
	by mail.maildlp.com (Postfix) with ESMTPS id 01EF9140B39;
	Mon, 25 Mar 2024 23:41:52 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.35; Mon, 25 Mar
 2024 15:41:51 +0000
Date: Mon, 25 Mar 2024 15:41:50 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Shimrra Shai <shimmyshai00@gmail.com>
CC: <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<max.schwarz@online.de>, <niyas.sait@huawei.com>
Subject: Re: [PATCH 0/0] (proposed?) Add ACPI binding to Rockchip RK3xxx I2C
 bus
Message-ID: <20240325154150.00003bde@Huawei.com>
In-Reply-To: <20240322155146.22755-1-shimmyshai00@gmail.com>
References: <20240322103521.00001a12@Huawei.com>
	<20240322155146.22755-1-shimmyshai00@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100001.china.huawei.com (7.191.160.183) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_084201_987114_D51D4229 
X-CRM114-Status: GOOD (  46.42  )
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

On Fri, 22 Mar 2024 10:51:46 -0500
Shimrra Shai <shimmyshai00@gmail.com> wrote:

> Jonathan Cameron <Jonathan.Cameron@Huawei.com> wrote:
> 
> For
> 
> > It would be good to highlight in this description what is missing for
> > doing a standard ACPI binding and not using any specific hacks in the
> > driver (get clocks as normal etc).
> > 
> > There are ACPI clock bindings, but Linux doesn't support the yet (I think?)
> > See ACPICA commit
> > https://github.com/acpica/acpica/commit/661feab5ee01a34af95a389a18c82e79f1aba05a
> > 
> > I've seen prototype code but was a while back.  I'd like to see that
> > work compled rather than having every driver need to paper over the hole.
> > 
> > The alias is a different question that needs to be addressed.
> > If this is a common pattern, push it up in to the i2c core, not
> > a specific driver.  I see there is already code related to that
> > in i2c_add_adapter - that just wants an ACPI option.
> > 
> > Jonathan  
> 
> and
> 
> > That implies that the kernel can cope with the device tree wrapped up in
> > ACPI path.  If that's the case, why do you need RKCP3001 as you can
> > match on the compatible?  
> 
> This was all based on how the people working on the firmware project wrote
> the ACPI binding. That said, since I've got a foot in it too I can 
> definitely submit them an updated binding. The binding for the I2C in the
> project looks like this:
> 
>   Device (I2C1) {
>     Name (_HID, "RKCP3001")
>     Name (_CID, "PRP0001")
>     Name (_UID, 1)
>     Name (_CCA, 0)
> 
>     Method (_CRS, 0x0, Serialized) {
>       Name (RBUF, ResourceTemplate() {
>         Memory32Fixed (ReadWrite, 0xfea90000, 0x1000)
>         Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive) { 350 }
>       })
>       Return (RBUF)
>     }
>     Name (_DSD, Package () {
>       ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
>       Package () {
>         Package (2) { "i2c,clk-rate", 198000000 },
>         Package (2) { "rockchip,bclk", 198000000 },
>         Package (2) { "#address-cells", 1 },
>         Package (2) { "#size-cells", 0 },
>       }
>     })
>   }
>   
> (there are others, e.g. I2C2, I2C3, etc. one for each I2C bus, with
> correspondingly different _UID and some different numbers for interrupts
> etc.)
> 
> From what I'm gathering from reading the documentation at
> https://uefi.org/specs/ACPI/6.5/19_ASL_Reference.html
> which is admittedly quite terse and doesn't provide nearly enough examples
> for my liking, and given I have not been able to find a "in the wild" ACPI
> using ClockInput, I presume a better binding would be like this, correct?:

Niyas is in the CC but is OoO for next few days I think.
He wrote the ACPICA patches for this and can provide better answers than me.

> 
>   Device (I2C1) {
>     Name (_HID, "RKCP3001")
>     /* _CID is gone now because we are no longer assuming mirror of DT */
>     Name (_UID, 1)
>     Name (_CCA, 0)
> 
>     Method (_CRS, 0x0, Serialized) {
>       Name (RBUF, ResourceTemplate() {
>         Memory32Fixed (ReadWrite, 0xfea90000, 0x1000)
>         Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive) { 350 }
>         ClockInput (198000000, 1, Hz, Fixed, "PCLK", 0)
>         ClockInput (198000000, 1, Hz, Fixed, "BCLK", 0)
>       })
>       Return (RBUF)
>     }
>     Name (_DSD, Package () {
>       ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
>       Package () {
>         Package (2) { "#address-cells", 1 },
>         Package (2) { "#size-cells", 0 },
>       }
>     })
> 
>     Device (PCLK) {
>       Name (_ADR, 0x0)
>     }
> 
>     Device (BCLK) {
>       Name (_ADR, 0x1)
>     }
>   }
> 
> Note now I added two device nodes for the clocks and use ClockInput to
> describe the frequencies. I'm unsure though about the device node part,
> however; I know that the .DTB has a central node for the CRU (the actual
> clock generator on the RK3588), so should we instead have a top-level
> Device node "CRU_" and reference the ClockInputs to that, e.g. something
> like
> 
>         ClockInput (198000000, 1, Hz, Fixed, "CRU_", I2C1_PCLK)
>         ClockInput (198000000, 1, Hz, Fixed, "CRU_", I2C1_BCLK)
> 
> ? (Note the obvious analogy to rk3588s.dtsi for the labels, which would be
> #defined constants.) Though in this case I'd ask if someone here would be
> kind enough to supply the structure for the top-level CRU binding so that I
> don't have to guess the "best" form for the kernel like the makers of the
> firmware were doing which is what led to this disagreement in the first
> place.
> 
> FWIW, I'd also be willing to help lend a hand to finish out the support for
> the ClockInput binding in the ACPI reader subsystem. There already seems to
> be some support, e.g. in drivers/acpi/acpica/rsinfo.c and a few other
> places, but I'm not sure what else is needed to get it going and would need
> to study that subsystem in much more depth.

That would be great. It's been on my backlog to take a better look at this, but
it won't happen any time soon.

Niyas, could you forward what you had to Shimrra? (I can find
it if you don't have it any more).

Thanks,

Jonathan

> 
> - Shimmy
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
