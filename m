Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B4A0C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 15:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLiKbYhyZT9khO9oDPdoqcpdhHKKRq7rAx9VUnthKl4=; b=0w/X6bSGtcfBJc
	G22ZVU+cv8CtSBjWBjCpUWgPL5p/Dty1xZcgkZomaWzFZjIQtqHTmNgYO9Pp8Qkzz8bvP5E2mS8Yt
	qks/lsQcCgxwuDuP1bRCsHRzMDVXAbZNY6yg+KMlwdOe/DnraxjcP/mrWivFU13vrnPeRmSgYfI4Z
	amPKZUWNRzXZiLmQqfbMGeMoRB1XUG8IhJ6n6w5MQevcuJnL2DD+dZoP00fXRaH1zVjU4qeVFf9yS
	OEi6fsjYhKPr+wO9HPl7YgrlaSK/XDXPg37w657F3VktuRPfyoo1NvIGGGo7l3lCL7yex/ZyjB8S3
	nXJz7V/dzoOIY/3GmqGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnh6W-00000007npY-1Ydy;
	Fri, 22 Mar 2024 15:46:48 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnh6S-00000007nob-3Rtb;
	Fri, 22 Mar 2024 15:46:46 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5a4e0859b65so311285eaf.0;
        Fri, 22 Mar 2024 08:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711122402; x=1711727202; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96lv65PomJczPVcbCEzC4lSgtrlAVKdXmUyJYVWOjwA=;
        b=SdFFUZVulzjoyW6EWUQgIS9335MbSS9veR7ZAhOvF+meIDnyaoiplBHsIEbSvoqHux
         7aRrd2CPAgYvoJDTSrEZ7SS2/9mBBQnt0xIk3sOKcsIdWmrf787e1Vvjn9Zwebojr29n
         kB8b0OFenh+mzdbCtWMBrO5FG+PRNKw6QNb52fYolHF3vZkruaiQ1+1cIksHoYa506yS
         69X7ZFryZ5YOhf8m83rjuLq44DSSn1eQmX4q1g6DhAsDE5H/aC4e9YrktQrqIYo6mDOe
         oTVhDVW/M32e9GblDOWm/r1Dw/Lh6Hl4/DXIA9Ucv23S1gqW3t+tz3H5j72a9x2fGR81
         X8aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711122402; x=1711727202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=96lv65PomJczPVcbCEzC4lSgtrlAVKdXmUyJYVWOjwA=;
        b=f2k0HzagE8OM+J9APOSugTF6wypvGjRkmA0Nd9ffp8gHzFpAO0nQvgi9uAIAVLdQXK
         NL4g1uETaTGs35M+JPJFwUlUmx1olif97fEvSWZG9OY/K5jsfg/F5vUATrXilpj+iBL6
         MWbbaAzBt5ICYTdibmurchF+ZAbBTI3Ql1djMBWSnstTabfAp2dIVIO2NQU8+ilseKkC
         7Q8GAY0IsjZmanXfidaXuTIUslrCS6FuwmF9Z3XdxBeypeYt5ZkLpt/wVMT3ekWbICAC
         /vP89s+nisi+uqtWYh2UlnGdKrkJDDzjyWC8/YPx4ogHt0yuwlc58oKB5/13UetN3PaZ
         ctVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCIPrjj5PNhf1hOqqq1FzzK8i8JPVGrXwARLm85+nq/g5M7jkfIOGJ+8YQ0gwB+5Mhf7K4h/QZGPljHiY/HfB1RE3GW6/4gNbigBtHBKYjXrJr79szf1jTtJWRDPq7VzC3unZmz1Yu5A+oOSKdEodjM0a/XwHOT+M=
X-Gm-Message-State: AOJu0Yx7TwA9rdzCXmYV9XU5UdRcDLhqpC3uLp/yKWpVXa/I6NVtiqNl
	usWyMxeEOp1ZD+/27KnOAbqrBC35itp1l43V74m0OrKHaFIcze3K
X-Google-Smtp-Source: AGHT+IEv9ZxKcchGYyFvYPBWCNnIlMIW7NCeS2Ho7P/n+lG0Zf7uCRvbt7IEmfN0wg3auiwaxWph5g==
X-Received: by 2002:a05:6808:158c:b0:3c3:b109:4e9e with SMTP id t12-20020a056808158c00b003c3b1094e9emr54438oiw.5.1711122401778;
        Fri, 22 Mar 2024 08:46:41 -0700 (PDT)
Received: from SDF-ThinkCentre-M93p.localdomain (c-76-17-255-148.hsd1.mn.comcast.net. [76.17.255.148])
        by smtp.googlemail.com with ESMTPSA id ff19-20020a05622a4d9300b004312563cbb0sm971950qtb.83.2024.03.22.08.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 08:46:41 -0700 (PDT)
From: Shimrra Shai <shimmyshai00@gmail.com>
To: jonathan.cameron@huawei.com
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	max.schwarz@online.de,
	niyas.sait@huawei.com,
	shimmyshai00@gmail.com
Subject: Re: Re: [PATCH 0/0] (proposed?) Add ACPI binding to Rockchip RK3xxx I2C bus
Date: Fri, 22 Mar 2024 10:51:46 -0500
Message-Id: <20240322155146.22755-1-shimmyshai00@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240322103521.00001a12@Huawei.com>
References: <20240322103521.00001a12@Huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_084644_902468_87476C8A 
X-CRM114-Status: GOOD (  33.64  )
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

Jonathan Cameron <Jonathan.Cameron@Huawei.com> wrote:

For

> It would be good to highlight in this description what is missing for
> doing a standard ACPI binding and not using any specific hacks in the
> driver (get clocks as normal etc).
> 
> There are ACPI clock bindings, but Linux doesn't support the yet (I think?)
> See ACPICA commit
> https://github.com/acpica/acpica/commit/661feab5ee01a34af95a389a18c82e79f1aba05a
> 
> I've seen prototype code but was a while back.  I'd like to see that
> work compled rather than having every driver need to paper over the hole.
> 
> The alias is a different question that needs to be addressed.
> If this is a common pattern, push it up in to the i2c core, not
> a specific driver.  I see there is already code related to that
> in i2c_add_adapter - that just wants an ACPI option.
> 
> Jonathan

and

> That implies that the kernel can cope with the device tree wrapped up in
> ACPI path.  If that's the case, why do you need RKCP3001 as you can
> match on the compatible?

This was all based on how the people working on the firmware project wrote
the ACPI binding. That said, since I've got a foot in it too I can 
definitely submit them an updated binding. The binding for the I2C in the
project looks like this:

  Device (I2C1) {
    Name (_HID, "RKCP3001")
    Name (_CID, "PRP0001")
    Name (_UID, 1)
    Name (_CCA, 0)

    Method (_CRS, 0x0, Serialized) {
      Name (RBUF, ResourceTemplate() {
        Memory32Fixed (ReadWrite, 0xfea90000, 0x1000)
        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive) { 350 }
      })
      Return (RBUF)
    }
    Name (_DSD, Package () {
      ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
      Package () {
        Package (2) { "i2c,clk-rate", 198000000 },
        Package (2) { "rockchip,bclk", 198000000 },
        Package (2) { "#address-cells", 1 },
        Package (2) { "#size-cells", 0 },
      }
    })
  }
  
(there are others, e.g. I2C2, I2C3, etc. one for each I2C bus, with
correspondingly different _UID and some different numbers for interrupts
etc.)

From what I'm gathering from reading the documentation at
https://uefi.org/specs/ACPI/6.5/19_ASL_Reference.html
which is admittedly quite terse and doesn't provide nearly enough examples
for my liking, and given I have not been able to find a "in the wild" ACPI
using ClockInput, I presume a better binding would be like this, correct?:

  Device (I2C1) {
    Name (_HID, "RKCP3001")
    /* _CID is gone now because we are no longer assuming mirror of DT */
    Name (_UID, 1)
    Name (_CCA, 0)

    Method (_CRS, 0x0, Serialized) {
      Name (RBUF, ResourceTemplate() {
        Memory32Fixed (ReadWrite, 0xfea90000, 0x1000)
        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive) { 350 }
        ClockInput (198000000, 1, Hz, Fixed, "PCLK", 0)
        ClockInput (198000000, 1, Hz, Fixed, "BCLK", 0)
      })
      Return (RBUF)
    }
    Name (_DSD, Package () {
      ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
      Package () {
        Package (2) { "#address-cells", 1 },
        Package (2) { "#size-cells", 0 },
      }
    })

    Device (PCLK) {
      Name (_ADR, 0x0)
    }

    Device (BCLK) {
      Name (_ADR, 0x1)
    }
  }

Note now I added two device nodes for the clocks and use ClockInput to
describe the frequencies. I'm unsure though about the device node part,
however; I know that the .DTB has a central node for the CRU (the actual
clock generator on the RK3588), so should we instead have a top-level
Device node "CRU_" and reference the ClockInputs to that, e.g. something
like

        ClockInput (198000000, 1, Hz, Fixed, "CRU_", I2C1_PCLK)
        ClockInput (198000000, 1, Hz, Fixed, "CRU_", I2C1_BCLK)

? (Note the obvious analogy to rk3588s.dtsi for the labels, which would be
#defined constants.) Though in this case I'd ask if someone here would be
kind enough to supply the structure for the top-level CRU binding so that I
don't have to guess the "best" form for the kernel like the makers of the
firmware were doing which is what led to this disagreement in the first
place.

FWIW, I'd also be willing to help lend a hand to finish out the support for
the ClockInput binding in the ACPI reader subsystem. There already seems to
be some support, e.g. in drivers/acpi/acpica/rsinfo.c and a few other
places, but I'm not sure what else is needed to get it going and would need
to study that subsystem in much more depth.

- Shimmy


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
