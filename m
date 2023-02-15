Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6063C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 10:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08xKEJOE3qyD+65oex1QgGNM0Jl0FMF4M36+pVJxX1A=; b=dbMkvvILhO4r8D
	CCc/DogOfg0MqiBu94WVivB7ASHmmdaAK4j4laFPkdYnjpCHF9jz0A7zGdsmVhSu5fXutZxRcwxoP
	YIVsc+XACn3VJvfVIHBBykbldtWT66RwDvBhV0so1gU4hNqfl76KxHNE/JcU1RSWdM2f5YcfQsOF1
	aGfhWqkfhCbqVPVE/tswKW7iaQ3YFQgFm6FY+/P/v/Oevn6uu8JE6+UyiDijaX9TCQBBeM9jWg18P
	US9dU7briJote9Q6Z5T9BwKxXDKsoYzv87ZFnxrWkzNZfPNIRe0eZ+hYhH4UsS1RiwfzQuBRiiTAN
	UJgqvizFV0jZtN7p2suA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSF1w-005SGa-1r; Wed, 15 Feb 2023 10:28:52 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSF1l-005SDt-Nm; Wed, 15 Feb 2023 10:28:43 +0000
Received: by mail-oi1-x236.google.com with SMTP id w11so706128oiv.5;
        Wed, 15 Feb 2023 02:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6yB8OFTfKD97aA5eOyH0KqfD+FWu2DzdqnSZBMyYeG0=;
        b=jb760RmY2mhZp9FN8h0OdqgTxR3SOPTWq/yiTljm6AokXf9of5Gzv2bZsDnFB23SQH
         E7USeo8jaYplkVWJOUaLwEPAR9Ccu0/8A9wKEn/E03VxuuUjod2y4rMkrGqhOPz28sm7
         kKtAi0E5Da+z/RKtyYLW+/4MVWi9o5SChsWjkf692ZGyLOFZEXmSL7qZtTXJrOTYbA+6
         Z0UwlZWYVQP8KbvPipWLrXrFNxzPIs9/ELq0n0JEYbvZCZC/Bb/7NsMGrJr1tLYYjyGR
         dG4t//fwr+t3G451kZLqYVDupbCSADFd2k+PvX6Uk2L5Jjn3lzuOmIHJCPYnGLSWUC5D
         a/GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6yB8OFTfKD97aA5eOyH0KqfD+FWu2DzdqnSZBMyYeG0=;
        b=E8bhNEkL3LijBrvaLjnSAXRaLk2Cgu3hcE6Ow1inaOkbNlunHEQPTBGe5kCe6Ku2H+
         JhozxX4V81zzz1/kZJstvxbEFl+B/xFym9clZQ24yMImoYoF/OTaVqfrLREWDHzhnV4/
         E6CknfDo+YSovYXvvjvratcxbWRrmMlydy35V3ek7+ZdWy4ORAC5CBQmkbcIlhRVPyka
         N9xfD+b5M5YJzOCUM0ML/H8dZkeknvqEACAq6HugJQg0LcA3C9j97fhDdlmqItcPsatM
         zszaLk4CwA04sJc9CbGPIhtqyP8ItBYlIUFEAY0fvkah+Hs7lT/iYQOhFksH4d6jp/Of
         0G8w==
X-Gm-Message-State: AO0yUKX9/Ema7urkPNY3QHDDM1eHIP7mZirolxvu+95lqUdy18fD4WGf
	rEOAUzFjHXSurCdzKInyf8pqjF0znKHjnHeMQ3M=
X-Google-Smtp-Source: AK7set8o82EF1RLdVxbKXwpb+W7OYj03kXyJab+ucP4FZwnFuHDzcmNItuleSEY+TdxxhHbCBhAnK/CkOwkljsDsIn8=
X-Received: by 2002:a54:4508:0:b0:37d:8b23:1d1b with SMTP id
 l8-20020a544508000000b0037d8b231d1bmr167210oil.110.1676456920180; Wed, 15 Feb
 2023 02:28:40 -0800 (PST)
MIME-Version: 1.0
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com> <7b8a8d38-feef-d2af-f23f-6b2b46f78110@opensource.wdc.com>
In-Reply-To: <7b8a8d38-feef-d2af-f23f-6b2b46f78110@opensource.wdc.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Wed, 15 Feb 2023 11:28:03 +0100
Message-ID: <CAAEEuhrzysR-xfx7X-gVqUdi17R1YiWxyBM+0asQxtyZ9PQozg@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] PCI: rockchip: Fix RK3399 PCIe endpoint controller driver
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Mikko Kovanen <mikko.kovanen@aavamobile.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_022841_809916_17C17AA7 
X-CRM114-Status: GOOD (  31.81  )
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

On Wed, Feb 15, 2023 at 2:51 AM Damien Le Moal
<damien.lemoal@opensource.wdc.com> wrote:
>
> Note about that: with your series applied, nothing was working for me on
> my pine Rockpro64 board (AMD Ryzen host). I got weird/unstable behavior
> and the host IOMMU screaming about IO page faults due to the endpoint
> doing weird pci accesses. Running the host with IOMMU on really helps in
> debugging this stuff :)

Thank you for testing, I have also tested with a Ryzen host, I have IOMMU
enabled as well.

>
> With the few fixes to your series I commented about, things started to
> work better, but still very unstable. More debugging and I found out that
> the pci-epf-test drivers, both host and endpoint sides, have nasty
> problems that lead to reporting failures when things are actually working,
> or outright dummy things being done that trigger errors (e.g. bad DMA
> synchronization triggers IOMMU page faults reports). I have a dozen fix
> patches for these drivers. Will clean them up and post ASAP.
>
> With the test drivers fixed + the fixes to your series, I have the
> pci_test.sh tests passing 100% of the time, repeatedly (in a loop). All solid.
>

Good to hear that it now works, I'll try them as well.

> However, I am still seeing issues with my ongoing work with a NVMe
> endpoint driver function: I see everything working when the host BIOS
> pokes at the NVMe "drive" it sees (all good, that is normal), but once
> Linux nvme driver probe kicks in, IRQs are essentially dead: the nvme
> driver does not see anything strange and allocates IRQs (1 first, which
> ends up being INTX, then multiple MSI one for each completion queue), but
> on the endpoint side, attempting to raise MSI or INTX IRQs result in error
> as the rockchip-ep driver sees both INTX and MSI as disabled. No clue what
> is going on. I suspect that a pci reset may have happened and corrupted
> the core configuration. However, the EPC/EPF infrastructure does not
> catch/process PCI resets as far as I can tell. That may be the issue.
> I do not see this issue with the epf test driver, because I suspect the
> host BIOS not knowing anything about that device, it does not touch it.
> This all may depend on the host & BIOS. Not sure. Need to try with
> different hosts. Just FYI :)
>

Interesting that you are working on this, I started to patch the RK3399 PCIe
endpoint controller driver for a similar project, I want to run our NVMe
firmware in a Linux PCIe endpoint function.

For the IRQs there are two things that come to mind:
1) The host driver could actually disable them and work in polling mode,
I have seen that with different versions of the Linux kernel NVMe driver
sometimes it would choose to use polling instead of IRQs for the queues.
So maybe it's just the
2) The RK3399 PCIe endpoint controller is said to be able only to generate
one type of interrupt at a given time. "It is capable of generating MSI or
Legacy interrupt if the PCIe is configured as EP. Notes that one PCIe
component can't generate both types of interrupts. It is either one or the
other." (see TRM 17.5.9 Interrupt Support).
I don't know exactly what the TRM means the the controller cannot
use both interrupts at the same time, but this might be a path to explore

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
