Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547DFC11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 18:50:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 228356142C
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 18:50:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 228356142C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=aBpgLnVQIrW5BZZ/2Lmqc1cZDAJRqhtwQKRDn2azVcI=; b=eNC/1A29HmZZex
	Tvrfz9gYXqN3v/VciJveNwkRLYnAEGz16Y99N2t7kY0R6EDyNngpBzSZcLmAJ6ImmR+ZcMwGzdjgg
	PzC6wJctu9G9BjFx1AGgsPfK+WRJtSelmZJPbm8ygRB6EuWv/+6qg3YVMVCb4TinKuncYtxci69Hj
	scYriI24+xzjxlZir9UyY02OP+Kv+NjF5qipbKG6ldU1N5j/WwMPrYF0Q2UM6E4Trc3vZlBqatRDN
	PXRRaxQohDWOq1bCPpMhztoKMSSfREaFFsm9+x3Rm99QjPv+4ut4XI5y0xtBHe3Vlm5mna7ecY5Cp
	TBG2eL/dKStg0W1agCUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyfHn-00F2kW-8e; Wed, 30 Jun 2021 18:50:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyfHZ-00F2hV-IF; Wed, 30 Jun 2021 18:49:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 09F9361426;
 Wed, 30 Jun 2021 18:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625078996;
 bh=KG5Bqyi3jxIYrNsBw3UY3iU1TyTs0dI1AHQH1CTlP64=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=CFRO26B8UzegkPMTQBrMAKRXhkzPFZxRCW3DZesVDQR2m9NbxLWdLHuWRsSDIwyaG
 aE4cOx0n52hYXGBrXbsrIRS0aUEz1ANdHGxl1dtP20+JDKhJI6qgv6uYjABRLIPVCe
 NFttkrr9UheWlTihMLH5ZJexzX1MC1GBE1wNQ3r0djrOxl63MQ7zkGAyBdz2L01FW0
 6BJBL/zBjF4FEQ4/0zuQPu0wpWHHv1JFiXmTbytq5g/6YF5kouXy1fCvkczksZnrp4
 BgyFjavilOZ4wAq9gbQBlcE5yZymxNo/omBtYH74fKk3znEawB7q4db4tqT/qHEF20
 TCM79k+8xTEnA==
Date: Wed, 30 Jun 2021 13:49:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>,
 Ley Foon Tan <ley.foon.tan@intel.com>, rfi@lists.rocketboards.org,
 Jingoo Han <jingoohan1@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
Message-ID: <20210630184954.GA4169648@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d5a983f-bfdd-d79b-4ec9-357ea26dd2c8@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_114957_660907_B28D636A 
X-CRM114-Status: GOOD (  12.69  )
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

On Tue, Jun 29, 2021 at 11:52:44AM +0100, Robin Murphy wrote:

> Well, it does use devm_request_irq() so the handler should be unregistered
> by devres *after* ->remove has finished, however that does still leave a
> potential race window in which a pending IRQ could be taken during the later
> part of rockchip_pcie_remove() after it has started turning off critical
> things. Unless the clocks and regulators can also be delegated to devres, it
> might be more robust to explicitly manage the IRQs as well. Mixing the two
> schemes can be problematic when the exact order of both setup and teardown
> matters.

Thanks for this.  I missed this problem.  We have lots of PCI
controller drivers that use some devm interfaces but use the non-devm
clk_prepare_enable(), and they generally turn things off in their
.remove() methods, which is obviously before any devm unregistration.

Many .suspend() methods turn off clocks and power while leaving the
IRQ handler installed.  Should we get an interrupt from our device
after .suspend()?  *Probably* not, but it makes me a little queasy to
rely on that, or to rely on the assumption that the IRQ is not shared.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
