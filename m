Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C6C6C47082
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 15:16:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3788361260
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 15:16:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3788361260
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QzHnuGtZl1RjawPlK56l7JGK9gb5Y/lt//8s683jR4=; b=B5HFtAqRYVaqIZ
	XCl8AqKiw3Ab6G7Z20jHxMqneLMwwyN2S46FTLiopCWHHP4eZ+S0hFo2a7OXLe4GzUUpHjKHFeel/
	WYYnECX3tdWnD05sP3rJay4zkFd9VYkXbW45rCriZJPRd8LPtuoirXlRfGVSHE7q42FTC8XDKIVmG
	tHt53rTEZ4KwU6vLwz8yWj+OV234d9RrTmC1xeKD1LUq73a7R1TJpYplZINacufqBodmDC8zk+3+b
	V2S53T9mFMPvdJ7K9DwSzcAISQbB+/CZteGs9rFh/0lnPXgwf4MM4Ha3DN+amety2k+M2VqPPDG+b
	/+hrKYQ5jx7cmSLO0g1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llvGz-00FHAn-2Y; Wed, 26 May 2021 15:16:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llu5s-00EfmJ-0D; Wed, 26 May 2021 14:01:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 582A4613EC;
 Wed, 26 May 2021 14:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622037667;
 bh=XQixEcJqkOpwe4ESYHwpoRdR7IlmfOnePyEk3Qccdcc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VN9haU87LXmbdnblf0tdp02YTRe6ldF2fI4GmoAJks0kI1UunK48H82M28NXNBkDw
 wCjB3cB28moYNULUHXlAuomdRswdQj01qjamrNl5aj6Me8d7FK3cbcbh0cKupp3JMs
 19Md8slWDoYAWxX3E+rU9nOKtz85IErP+ZoXwC/Ms6AYGpt14gzATNLfKkHCHIJ1Sv
 N4UCX58ptU+Oy1rCbIZbDId2F8EamocrX8fbXArz++ZBP5K8bnSeJhOo8cbsHu8VyO
 YAyfztfcXN/bgfuJxows3nAXKcNhLwg04ZkPufLifzl1eQRx0tlbrNlumHy8TsMSSs
 bKCFL9K+qLVDA==
Received: by mail-ej1-f44.google.com with SMTP id l1so2636750ejb.6;
 Wed, 26 May 2021 07:01:07 -0700 (PDT)
X-Gm-Message-State: AOAM531sFJ3dr2k/dnhm5E7c+WyUgf3Pv+IABs3KQX7Rx8R/3ZgwHXgp
 nLUA2jpc+k+533Shh8lZjgJCwhy/ifvT0rGbNA==
X-Google-Smtp-Source: ABdhPJwq5Xa4mNWiGziRuct/zG8jcIQ+SKXltSpc6TGskq5z9ND/LavBKS9CPZmT8FJEucWbzL+3MK60qx6+FCuOBlE=
X-Received: by 2002:a17:907:76e8:: with SMTP id
 kg8mr31754948ejc.130.1622037665783; 
 Wed, 26 May 2021 07:01:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210526133457.3102393-1-punitagrawal@gmail.com>
In-Reply-To: <20210526133457.3102393-1-punitagrawal@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 26 May 2021 09:00:51 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLYdXFG11oSmrAfcRoCkSPQYY-VvTr=QVOn8DDmDjm-dQ@mail.gmail.com>
Message-ID: <CAL_JsqLYdXFG11oSmrAfcRoCkSPQYY-VvTr=QVOn8DDmDjm-dQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Update PCI host bridge window to
 32-bit address memory
To: Punit Agrawal <punitagrawal@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexandru Elisei <alexandru.elisei@arm.com>, wqu@suse.com, 
 Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>, 
 Ard Biesheuvel <ardb@kernel.org>, Brian Norris <briannorris@chromium.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>, PCI <linux-pci@vger.kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_070108_188930_A835393B 
X-CRM114-Status: GOOD (  22.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, May 26, 2021 at 8:35 AM Punit Agrawal <punitagrawal@gmail.com> wrote:
>
> The PCIe host bridge on RK3399 advertises a single address range
> marked as 64-bit memory even though it lies entirely below 4GB. While
> previously, the OF PCI range parser treated 64-bit ranges more
> leniently (i.e., as 32-bit), since commit 9d57e61bf723 ("of/pci: Add
> IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses") the
> code takes a stricter view and treats the ranges as advertised in the
> device tree (i.e, as 64-bit).
>
> The change in behaviour causes failure when allocating bus addresses
> to devices connected behind a PCI-to-PCI bridge that require
> non-prefetchable memory ranges. The allocation failure was observed
> for certain Samsung NVMe drives connected to RockPro64 boards.
>
> Update the host bridge window attributes to treat it as 32-bit address
> memory. This fixes the allocation failure observed since commit
> 9d57e61bf723.
>
> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> ---
> Hi,
>
> The patch fixes the failure observed with detecting certain Samsung
> NVMe drives on RK3399 based boards.
>
> Hopefully, the folks on this thread can provide some input on the
> reason the host bridge window was originally marked as 64-bit or if
> there are any downsides to applying the patch.

We can't require *only* a DT update to fix this. Ideally, the Rockchip
PCI driver should clear the 64-bit flag in the resources though I'm
not sure if the bridge driver would have access early enough.

This is not the first time we've had to work-around RK3399 PCI DT (see
commit d1ac0002dd297069 "of: address: Work around missing device_type
property in pcie nodes").

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
