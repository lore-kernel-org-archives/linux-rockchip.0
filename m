Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D033C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 00:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ+FodMztc+142wK6+XgAixI0OsFmOgxQCKtu9qihFM=; b=29fTjvMRwxwyJF
	EzbtIGGWkpKhC2gCrDvHJ7dFXcjLrXuyl5ilXrZD9U/5+M+7UrcBY05ReB72NHq0InvEEf8b87QKH
	BaVGGcTqz0/BElbZ1WBWW9s9yREzRpMdOfHT4qJPx54O22xkgiKDffyyr9Mt8039MuyReN58GeAny
	9EZxNoyunSqOlFhumpSI2+eUVfx51NHVjUqatT2P6zSqcDcNgH7jJN6BpkoweKX11Jlosn2app5cw
	e4pi6JE2ZQDYkanDu66f3eZY7me+UTRxuYvJQWMMc/pSCTjb8GuoR8w9DGYGNz6Eq8GS8iJBEfRPD
	Izg7mTeYeVQpmbKkXkXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roY59-0000000E6TP-1Xvk;
	Mon, 25 Mar 2024 00:20:55 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roY55-0000000E6Qs-2xjy;
	Mon, 25 Mar 2024 00:20:53 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-691530609b7so11431976d6.0;
        Sun, 24 Mar 2024 17:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711326046; x=1711930846; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HTU2F5si1/OFdfjv4ATOGTW9TTEuV8rNNpxA0GmfW4s=;
        b=kLz65loSNpxtJ0f8oK0mfEuL0h+96noRpyWotI2pXUrttpqdo/+yeoG/1d/Myr3zoW
         ErM6Ew22zD2c57zuQUlI8X4pyQywEGJij2dcg1zCmXajzg6FdsIGv7S31Y6OA/RNUy1X
         uHgFdykUsInS1ZY4Xnxub948BdyGC9Dgm+bkb3P/AxSw/l+GQxtyK/lEHCk9dna42DVP
         X/kH4M7CFAh/ZY+yzePU4Nu60e8qbUzThloEpbJj6xNx5tyLFF9NvZu9sJuaxRLu2dwx
         ZWM7SSGRz+8KSNzREzo9Cvo1YK7Rr/h2Sk7LRORufuOOjI7fiWJoFUw2KFce7oMZl/Me
         bvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711326046; x=1711930846;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HTU2F5si1/OFdfjv4ATOGTW9TTEuV8rNNpxA0GmfW4s=;
        b=CTQXVSQSogCwOVDR1EhxqYbuQUrIfKPtloBo1dlEAb3SmRBEcp65JQsRBRWpgU2DKk
         XfVstOItnsAnHm6psLsDKnKbZs3iYGnUfmBLEeyqkh6e5KHrIHhNmXsddQdangirwnk3
         4llZhFrNyLnB+WphuwSugU0ogPCZMtQQ2uBdWh/3usDJ1DZgNK9F8TfJ8yxMEMNAKNVi
         UmthRqfb3FuWNjSthKS/LqCzyKAx73bGbDNcM93KMe0gIGHPu8i5FDNLAQqnNm3wVPem
         d6NBHbJVGhkpzhHApZsTVkEUzFgPZO9Tl/S4Q5nv6itCj0vBGPSJnGHARhZ6fROp0A9W
         8cmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyCrSwWIovKosewIG4U1nOv3Rfg/fXiSMWzQwZU8hY3/myN13mFyXcazBs4IwjfYAsHljbcWAx3chnHfm3vvKEauLMVm81CavNSDjSdn1b4pFDSfFrDErf5rSwuzPyEN9ggSElnDmrT9rhxVWxWQnO1bOF8DvimvI=
X-Gm-Message-State: AOJu0YyP92sFv58pf3pwJPaZd/isfkevWlMnVzUznDMJUbjN9Y3QbfDB
	C9/Y5MO71udaZ4cqLPME/JZeLrC2slaFwn6bLq8gkQPYqSpp39cV
X-Google-Smtp-Source: AGHT+IHo+rsNfqP8HY2fvRqPpR4JL8hbw89v0TQD9JmTljbeVDrpFeggGwGtqUC3PW68QS3LgOuw+A==
X-Received: by 2002:a05:6214:5d81:b0:696:74cc:646 with SMTP id mf1-20020a0562145d8100b0069674cc0646mr6534841qvb.2.1711326045984;
        Sun, 24 Mar 2024 17:20:45 -0700 (PDT)
Received: from SDF-ThinkCentre-M93p.localdomain (c-76-17-255-148.hsd1.mn.comcast.net. [76.17.255.148])
        by smtp.googlemail.com with ESMTPSA id gf15-20020a056214250f00b006912014b98dsm3497306qvb.129.2024.03.24.17.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 17:20:45 -0700 (PDT)
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
Date: Sun, 24 Mar 2024 19:26:03 -0500
Message-Id: <20240325002603.44157-1-shimmyshai00@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240322103521.00001a12@Huawei.com>
References: <20240322103521.00001a12@Huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_172051_790854_484014DB 
X-CRM114-Status: GOOD (  15.97  )
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

Hey Jonathan,

Since I haven't heard a reply from you so far, and I've also done some more
research on the ClockInput options and stuff I'm soon going to ask the
firmware developers to commit the following updated ACPI bindings unless I
get comment there is still something wrong with them. I'm posting about it
here because this is going to have to be the base for any revisions to
these kernel patches I propose later and so I really want to make sure I
get both "sides" of this right (i.e. both the firmware and kernel). If I
don't hear back within a few days I'm going to just send this as-is and
see if it gets accepted by the firmware team.

Note also that the kernel CRU driver currently won't be able to do anything
with all the info in the CRU binding right now, but the UEFI firmware also
pre-initializes the unit so it isn't super necessary I think, I just
thought to add the binding so it can be referenced elsewhere in the tables.
I believe this is the "proper" way from comparing the descriptions of the
ClockInput tag and "clocks" DTB option; the DTB clocks options all
reference the CRU (which makes sense from description of the physical
hardware itself), so I am fairly confident this is "best", but if anyone
objects on this side I still want to hear it as soon as possible.

ACPI binding for the CRU:

  Device (CRU_) {
    /* coining a new _HID is unnecessary so long as compatible string exists */
    Name (_CID, "PRP0001")
    Name (_UID, 0)
    Name (_CCA, 0)

    Method (_CRS, 0x0, Serialized) {
      Name (RBUF, ResourceTemplate() {
        Memory32Fixed (ReadWrite, 0xfd7c0000, 0x5c000)
        ClockInput (1100000000, 1, Hz, Fixed, "CLK0", 0)
        ClockInput (786432000, 1, Hz, Fixed, "CLK1", 0)
        ClockInput (850000000, 1, Hz, Fixed, "CLK2", 0)
        ClockInput (1188000000, 1, Hz, Fixed, "CLK3", 0)
        ClockInput (702000000, 1, Hz, Fixed, "CLK4", 0)
        ClockInput (400000000, 1, Hz, Fixed, "CLK5", 0)
        ClockInput (500000000, 1, Hz, Fixed, "CLK6", 0)
        ClockInput (800000000, 1, Hz, Fixed, "CLK7", 0)
        ClockInput (100000000, 1, Hz, Fixed, "CLK8", 0)
        ClockInput (400000000, 1, Hz, Fixed, "CLK9", 0)
        ClockInput (100000000, 1, Hz, Fixed, "CLKA", 0)
        ClockInput (200000000, 1, Hz, Fixed, "CLKB", 0)
        ClockInput (500000000, 1, Hz, Fixed, "CLKC", 0)
        ClockInput (375000000, 1, Hz, Fixed, "CLKD", 0)
        ClockInput (150000000, 1, Hz, Fixed, "CLKE", 0)
        ClockInput (200000000, 1, Hz, Fixed, "CLKF", 0)
      })
      Return (RBUF)
    }

    Name (_DSD, Package () {
      ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
      Package () {
        Package (2) { "compatible", "rockchip,rk3588-cru" },
      }
    })

    // PLL_PPLL
    Device (CLK0) {
      Name (_ADR, 0x0)
    }
    
    // PLL_AUPLL
    Device (CLK1) {
      Name (_ADR, 0x1)
    }
    
    // PLL_NPLL
    Device (CLK2) {
      Name (_ADR, 0x2)
    }
    
    // PLL_GPLL
    Device (CLK3) {
      Name (_ADR, 0x3)
    }
    
    // ACLK_CENTER_ROOT
    Device (CLK4) {
      Name (_ADR, 0x4)
    }
    
    // HCLK_CENTER_ROOT
    Device (CLK5) {
      Name (_ADR, 0x5)
    }
    
    // ACLK_CENTER_LOW_ROOT
    Device (CLK6) {
      Name (_ADR, 0x6)
    }
    
    // ACLK_TOP_ROOT
    Device (CLK7) {
      Name (_ADR, 0x7)
    }
    
    // PCLK_TOP_ROOT
    Device (CLK8) {
      Name (_ADR, 0x8)
    }
    
    // ACLK_LOW_TOP_ROOT
    Device (CLK9) {
      Name (_ADR, 0x9)
    }
    
    // PCLK_PMU0_ROOT
    Device (CLKA) {
      Name (_ADR, 0xa)
    }
    
    // HCLK_PMU_CM0_ROOT
    Device (CLKB) {
      Name (_ADR, 0xb)
    }
    
    // ACLK_VOP
    Device (CLKC) {
      Name (_ADR, 0xc)
    }
    
    // ACLK_BUS_ROOT
    Device (CLKD) {
      Name (_ADR, 0xd)
    }
    
    // CLK_150M_SRC
    Device (CLKE) {
      Name (_ADR, 0xe)
    }
    
    // CLK_GPU
    Device (CLKF) {
      Name (_ADR, 0xf)
    }
  }
  
ACPI bindings for I2C (I2C1 as example):

  Device (I2C1) {
    Name (_HID, "RKCP3001")
    /* _CID is no longer required */
    Name (_UID, 1)
    Name (_CCA, 0)

    Method (_CRS, 0x0, Serialized) {
      Name (RBUF, ResourceTemplate() {
        Memory32Fixed (ReadWrite, 0xfea90000, 0x1000)
        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive) { 350 }
        ClockInput (198000000, 1, Hz, Fixed, "\_SB_.CRU_", PCLK_I2C1)
        ClockInput (198000000, 1, Hz, Fixed, "\_SB_.CRU_", BCLK_I2C1)
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
  }

---
Shimmy


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
