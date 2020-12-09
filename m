Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E275C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 20:29:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28AAE23B99
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 20:29:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 28AAE23B99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sTu5JfpQCKN7aWOsJPJ2mEydxeJe49hN5oIwT5CcUvI=; b=e0tT/Vwpzp1q3eobg0pB9kx6M
	cjvxvR6Hes0Cy5DeDNQ5u34271fkYff2x1JBB/GkX4lcakmvPLADlAaheGZhcrKXgPyem4X3ACai3
	5cuAvNa9VYRmw78JNHA5NqRk3p5ubtp02JRAWVZO3LglxYDdn+tQkVDOPOSiF4Pu6mTbUwUXh1T5g
	6tpmWkiahMvb7DrjDOQB6l1GhWnyxCleXCVGi9f1AZLMFHt9vQXGMN5p7yr0/+SWT1kss9uAV2fqy
	TO3vt7zSxVZkYlJI3V80WCKuHTUEoMxd+hIEGB8Cife21BSA0lS4LLZvhX7S4+ir8K76O9wpqDFvi
	C2wCHTB9A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn65R-0003N7-J9; Wed, 09 Dec 2020 20:29:22 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn65E-0003LP-Ls; Wed, 09 Dec 2020 20:29:16 +0000
Received: by mail-ed1-x544.google.com with SMTP id b73so3006109edf.13;
 Wed, 09 Dec 2020 12:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XvOrQQikyFZP1dk0scKROHnor8nIKA0FBCn4xEGM88M=;
 b=p/Mr4hZKnBQ6uMkLv/CYnrS0YCPHBmDNnePF3xjqOqeLMDfoFmFMHs18zRt3Myy2q/
 dD+l28ROgymioziTk+pCGPXIXK/rxMxy/9S8AMSWXtVoi5dLif9DChBMyVTYo+I+EPGp
 OWtAISkZKGHIOicwWQlnAj584YDSFfW7tDs61pLWm5h1fEwEWN1uvlDIaIsP6Ey8rykh
 EnIVim4eaRKtXZMXL09J8gizza2qhc0k5DovtvsPD2xRy1rTmmOoi6VWuw3oricdB2wd
 3zopf0xJsgRi5vlfM+J8R6Q0EgtRnJB1c9eeBLyhijE3a4v7seo2D2fFtJdplN2/AofW
 iH1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XvOrQQikyFZP1dk0scKROHnor8nIKA0FBCn4xEGM88M=;
 b=rajGOjq0iZ3AfFs6WvWPAndby1IUdMl0ps7vD1o4Std5b1xL3w6Rq8R5ZKyNR13ydi
 pELiOcEVO9T0zhAlcK/Nv5wa/lHnoiMv4oi4PgCbIv9Jc2FBKoH1H9MYVlQPV4uQC7MG
 2KHxo4X77GffZKdXMjSgEc7vLBRav/+niJOSNGoiRTbY9EzfZOBqwKzHUOZMt+SCyf/6
 4GZWF/LpE+EIn1xYMEFQE6vDJ/AHBJBWv9EBNVM8uBgbv+6O7GVKTW2eDQDdCeCGHmgy
 fsMMYkjmHiQjos3LBB6KXKFeb74kjqbq+Y5Uzafoz8m8IFMUyu0zo4Ou/Q38urw/baqi
 rDCQ==
X-Gm-Message-State: AOAM532ItdWdK/oiJcK0NXYliKoXGSFuN4oNOjhsgywneR2XtAWIMaV7
 T8mhulhSSwLJf7rLViPGttM=
X-Google-Smtp-Source: ABdhPJxJHVQbiVMn08uFjPNqG+711U3u24nhX3cqdu63kSPfA1/wHWjtXpncjioK1RckcCEw9PQcFw==
X-Received: by 2002:a50:d2d2:: with SMTP id q18mr3643551edg.346.1607545746987; 
 Wed, 09 Dec 2020 12:29:06 -0800 (PST)
Received: from skbuf ([188.25.2.120])
 by smtp.gmail.com with ESMTPSA id z12sm2551375ejr.17.2020.12.09.12.29.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 12:29:06 -0800 (PST)
Date: Wed, 9 Dec 2020 22:29:04 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <20201209202904.2juzokqhleusgsts@skbuf>
References: <20201209145707.GA2521966@bjorn-Precision-5520>
 <c6d067abcdd5278f259bd7300730dc76@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6d067abcdd5278f259bd7300730dc76@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_152914_728167_97C88538 
X-CRM114-Status: GOOD (  21.99  )
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
Cc: kw@linux.com, heiko@sntech.de, benh@kernel.crashing.org,
 shawn.lin@rock-chips.com, Alexandru Marginean <alexm.osslist@gmail.com>,
 paulus@samba.org, thomas.petazzoni@bootlin.com, jonnyc@amazon.com,
 toan@os.amperecomputing.com, will@kernel.org, robh@kernel.org,
 lorenzo.pieralisi@arm.com, mpe@ellerman.id.au, michal.simek@xilinx.com,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Bjorn Helgaas <helgaas@kernel.org>, rjui@broadcom.com, f.fainelli@gmail.com,
 linux-rpi-kernel@lists.infradead.org, Jonathan.Cameron@huawei.com,
 bhelgaas@google.com, jonathan.derrick@intel.com, sbranden@broadcom.com,
 wangzhou1@hisilicon.com, rrichter@marvell.com, linuxppc-dev@lists.ozlabs.org,
 nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 09, 2020 at 04:40:52PM +0100, Michael Walle wrote:
> Hopefully my mail client won't mess up the output that much.

I can reproduce on my LS1028A as well. The following fixes the bug for
me. I did not follow the discussion and see if it is helpful for others.
I don't understand how the bug came to be. There might be more to it
than what I'm seeing. If it's just what I'm seeing, then the patch was
pretty broken to begin with.

-----------------------------[cut here]-----------------------------
From b184da4088c9d39d25fee2486941cdf77688a409 Mon Sep 17 00:00:00 2001
From: Vladimir Oltean <vladimir.oltean@nxp.com>
Date: Wed, 9 Dec 2020 22:17:32 +0200
Subject: [PATCH] PCI: fix invalid window size for the ECAM config space

The blamed commit forgot that pci_ecam_create() calculates the size of
the window for the ECAM's config space based on the spacing between two
buses. The drivers whose .bus_shift from struct pci_ecam_ops was changed
to zero in this commit are now using this invalid value for bus_shift
in calculating the window size.

Before (broken):
pci_ecam_create: remapping config space from addr 0x1f0000000, bus_range 0x1, bsz 0x1
After (fixed/restored):
pci_ecam_create: remapping config space from addr 0x1f0000000, bus_range 0x1, bsz 0x100000

Fixes: f3c07cf6924e ("PCI: Unify ECAM constants in native PCI Express drivers")
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/pci/ecam.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/ecam.c b/drivers/pci/ecam.c
index 59f91d434859..9fda0d49bc93 100644
--- a/drivers/pci/ecam.c
+++ b/drivers/pci/ecam.c
@@ -28,11 +28,19 @@ struct pci_config_window *pci_ecam_create(struct device *dev,
 		struct resource *cfgres, struct resource *busr,
 		const struct pci_ecam_ops *ops)
 {
+	unsigned int bus_shift = ops->bus_shift;
 	struct pci_config_window *cfg;
 	unsigned int bus_range, bus_range_max, bsz;
 	struct resource *conflict;
 	int i, err;
 
+	/*
+	 * struct pci_ecam_ops may omit specifying bus_shift
+	 * if it is as per spec
+	 */
+	if (!bus_shift)
+		bus_shift = PCIE_ECAM_BUS_SHIFT;
+
 	if (busr->start > busr->end)
 		return ERR_PTR(-EINVAL);
 
@@ -46,14 +54,14 @@ struct pci_config_window *pci_ecam_create(struct device *dev,
 	cfg->busr.end = busr->end;
 	cfg->busr.flags = IORESOURCE_BUS;
 	bus_range = resource_size(&cfg->busr);
-	bus_range_max = resource_size(cfgres) >> ops->bus_shift;
+	bus_range_max = resource_size(cfgres) >> bus_shift;
 	if (bus_range > bus_range_max) {
 		bus_range = bus_range_max;
 		cfg->busr.end = busr->start + bus_range - 1;
 		dev_warn(dev, "ECAM area %pR can only accommodate %pR (reduced from %pR desired)\n",
 			 cfgres, &cfg->busr, busr);
 	}
-	bsz = 1 << ops->bus_shift;
+	bsz = 1 << bus_shift;
 
 	cfg->res.start = cfgres->start;
 	cfg->res.end = cfgres->end;
-----------------------------[cut here]-----------------------------

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
