Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9ACDC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 04:33:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D32D022252
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 04:33:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D32D022252
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0ICqa+Yv+VEiDZ35brj0fnP+ZFMjmHO4rtBNIIcUpuc=; b=tD1NBICOiBUb9T2hsNLFpR8Ug
	2Asq7eI41vQrkQyVemmmsbkRQ7Z1bAlyK3Cdnuk2mZMnFvGRT6Itx9Tsn8FYTlhxzhLFcpNGQkRfd
	0JaDxReOFwtYFx1KOEMn/KiutjpMWClNMoeX6bPBHWrdrfYTfkkWiK6/3dwtsfYBKUY1LINoMa3f5
	eOHMtNPnf3kJ08dyfamGC1W6tK86HSY5Mj825Z3TTSJkzEGLqHO5FrGvgBSfJcAbOJ7ukys2IAYTf
	Y6ZrZ2u81K0i8tcH9sNL3s3Zj0MgKn8D/VOCW0nVQ4HCrSMmWpwK0i8aLo1pSZp0rCrCnKjt/M/Dj
	erJd1sQAg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1ihT-0004JF-Ik; Tue, 19 Jan 2021 04:33:03 +0000
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1ihQ-0004Ih-S9; Tue, 19 Jan 2021 04:33:02 +0000
Received: by mail-lf1-f52.google.com with SMTP id o13so27231706lfr.3;
 Mon, 18 Jan 2021 20:32:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6N+mtJnAllpPqS59taAIm6aHXmVEI3uucSUB9g2qkoQ=;
 b=t0t8KfgxzxP/T397RocZtdOLwxYMfyU/gT3guk8i+4Zv/bwjBYPjILLOMTVB4GBzsy
 zgFX3osKhCsS7JB+Id5jRYcLuBhNCUqY1ffd8+DmBNOwWZ74x3kdSKi27IJPbw3dZ31o
 HkKNQ9FoT6JxV148+ZfiCUbjSpwaNea7oLO/q/GHg1x2pusWgsRnyWPWe5lS+mtNU/kw
 d7pYN2bLtaLaIiInorHsG58N25mksDGQ1ab9XwEpqQdffJ/kcizem8YhkEO2Q8wwP9qv
 homaURs9TRDRrACMfOS71hzRntu1fe3ewLnu83sbyXw2065xGfGDxADB35yGMLJzo3YI
 v39g==
X-Gm-Message-State: AOAM531kyytEzta0M5sBwuiSZAFTdHa6npe5FArxGDZnrMU8hzXiVXDY
 vE1300sIVMmY+7gxEwRooYrkqyLsODLBnw==
X-Google-Smtp-Source: ABdhPJxktC0CrULlDqMMAQngw1xbCRIVOx+Lf5tyZb8NjArIi7P6DKJY01+XfUatzRYZfVXuIuhe9g==
X-Received: by 2002:a19:c85:: with SMTP id 127mr991370lfm.240.1611030777229;
 Mon, 18 Jan 2021 20:32:57 -0800 (PST)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id c24sm2141626lfh.135.2021.01.18.20.32.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Jan 2021 20:32:56 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id o13so27231659lfr.3;
 Mon, 18 Jan 2021 20:32:56 -0800 (PST)
X-Received: by 2002:ac2:4d44:: with SMTP id 4mr1116418lfp.296.1611030776537;
 Mon, 18 Jan 2021 20:32:56 -0800 (PST)
MIME-Version: 1.0
References: <20210106134617.391-1-wens@kernel.org>
In-Reply-To: <20210106134617.391-1-wens@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 19 Jan 2021 12:32:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v64oCaS14ATUi+y6ZQTkZCqGxnskM=zFkoQp_-jVanu_Vw@mail.gmail.com>
Message-ID: <CAGb2v64oCaS14ATUi+y6ZQTkZCqGxnskM=zFkoQp_-jVanu_Vw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] arm64: rockchip: Fix PCIe ep-gpios requirement and
 Add Nanopi M4B
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Heiko Stuebner <heiko@sntech.de>, Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_233300_915107_08846E56 
X-CRM114-Status: GOOD (  30.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Wed, Jan 6, 2021 at 9:46 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> Hi everyone,
>
> This is v3 of my Nanopi M4B series. Changes since v2 include:
>
>   - Replaced dev_err() with dev_err_probe() for gpiod_get_optional() error
>   - Added Reviewed-by tag from Robin Murphy for patch 3
>
> Changes since v1 include:
>
>   - Rewrite subject of patch 1 to match existing convention and reference
>     'ep-gpios' DT property instead of the 'ep_gpio' field
>
> This series mainly adds support for the new Nanopi M4B, which is a newer
> variant of the Nanopi M4.
>
> The differences against the original Nanopi M4 that are common with the
> other M4V2 revision include:
>
>   - microphone header removed
>   - power button added
>   - recovery button added
>
> Additional changes specific to the M4B:
>
>   - USB 3.0 hub removed; board now has 2x USB 3.0 type-A ports and 2x
>     USB 2.0 ports
>   - ADB toggle switch added; this changes the top USB 3.0 host port to
>     a peripheral port
>   - Type-C port no longer supports data or PD
>   - WiFi/Bluetooth combo chip switched to AP6256, which supports BT 5.0
>     but only 1T1R (down from 2T2R) for WiFi
>
> While working on this, I found that for the M4 family, the PCIe reset
> pin (from the M.2 expansion board) was not wired to the SoC. Only the
> NanoPC T4 has this wired. This ended up in patches 1 and 3.
>
> Patch 1 makes ep_gpio in the Rockchip PCIe driver optional. This property
> is optional in the DT binding, so this just makes the driver adhere to
> the binding.
>
> Patch 2 adds a new compatible string for the new board.
>
> Patch 3 moves the ep-gpios property of the pcie controller from the
> common nanopi4.dtsi file to the nanopc-t4.dts file.
>
> Patch 4 adds a new device tree file for the new board. It includes the
> original device tree for the M4, and then lists the differences.
>
> Given that patch 3 would make PCIe unusable without patch 1, I suggest
> merging patch 1 through the PCI tree as a fix for 5.10, and the rest
> for 5.11 through the Rockchip tree.

Gentle ping. I would really like to get the PCIe controller fix merged
before -rc6 (cut-off for arm-soc -next) and be able to get the new board
into 5.12. Or we could have all of them merged for 5.12, though depending
on the order the PRs are sent and merged by Linus there would be a possible
window where PCIe doesn't work for the Nanopi M4's.


Thanks
ChenYu

> Please have a look. The changes are mostly trivial.
>
>
> Regards
> ChenYu
>
> Chen-Yu Tsai (4):
>   PCI: rockchip: Make 'ep-gpios' DT property optional
>   dt-bindings: arm: rockchip: Add FriendlyARM NanoPi M4B
>   arm64: dts: rockchip: nanopi4: Move ep-gpios property to nanopc-t4
>   arm64: dts: rockchip: rk3399: Add NanoPi M4B
>
>  .../devicetree/bindings/arm/rockchip.yaml     |  1 +
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3399-nanopc-t4.dts    |  1 +
>  .../boot/dts/rockchip/rk3399-nanopi-m4b.dts   | 52 +++++++++++++++++++
>  .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |  1 -
>  drivers/pci/controller/pcie-rockchip.c        |  5 +-
>  6 files changed, 58 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts
>
> --
> 2.29.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
