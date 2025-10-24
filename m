Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AAB5CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 15:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6smW7Giz4ochNBMh/D8FNZMg/YNVTaS3laKmkS/gVGo=; b=l2qnCOqmTSa+W+
	2sX6vOwKPwwR/gDHKHYNG2V2oZv8m/JwuHRmqPYHKYFWRtUMCHjVD6NZ1pFIyC+x0zIH7dJ6tcPH8
	xrYYqM5OgiZVdQojRYfpqEsXh1b70DxHeKkDCpOZ7RZJD/h3ZJnPLhLNVR/NIkgeh07g850mLfUj2
	tM+er/wSyC/WOQrl9/JO61JN5y8P2Uaa4mFMU+yduGVL95B7BE2xWfuIxoKaE10DiLDBMTMC4yAhK
	0nU0H39IfZDV0rWihIX+ltCPXTXU7lL0J/mh4QyL1N23iq7e65OrJhpMVPF+/st8tlTNkN95dgckD
	crmuGbezODX3BN7p+RIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCJT0-00000009lrD-2dU7;
	Fri, 24 Oct 2025 15:12:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCJSz-00000009lqf-0B5i
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 15:12:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 30B3C602A4;
	Fri, 24 Oct 2025 15:12:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D11BBC4CEF1;
	Fri, 24 Oct 2025 15:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761318751;
	bh=UZIPf66k/1+SxC28rDg1HdR6h2ZzeGZdZt38ixelz0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MidoN/rjVDsT2uZ0vhICv+XEKOtW7Bk+aov/uZhFq91KaJ0UMHT1VK6KiWJlid7Sk
	 ncU0CtDsFxZKgmN/5ncxknbGz+efAMnwXEET5Lc05JYzweDlZdhBxNTN0huGNRaFPX
	 KdVMri2sn2zcLNerlNe5EMph6C4R4dbYihIksTBf2YTZGocoevCPgb73SKSymGcal0
	 Pcmsn4UBYkgzG6PMribcDK5V8eTNCtkZ4PMfuQtyVP4vxL6c3dTG2qc6WQjDEtZ7HI
	 BrUqW1yNEsrIVeA9b7EBSWPatgdWguDrDWL9hUP8YzjWabWUR4vZIS01EY/wwVD/EM
	 NKQV0sztncCBQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vCJT4-000000003NV-3WvI;
	Fri, 24 Oct 2025 17:12:38 +0200
Date: Fri, 24 Oct 2025 17:12:38 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-pci@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Christian Zigotzky <chzigotzky@xenosoft.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dragan Simic <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Message-ID: <aPuXZlaawFmmsLmX@hovoldconsulting.com>
References: <20251023180645.1304701-1-helgaas@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251023180645.1304701-1-helgaas@kernel.org>
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

On Thu, Oct 23, 2025 at 01:06:26PM -0500, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree
> platforms") enabled Clock Power Management and L1 PM Substates, but those
> features depend on CLKREQ# and possibly other device-specific
> configuration.  We don't know whether CLKREQ# is supported, so we shouldn't
> blindly enable Clock PM and L1 PM Substates.
> 
> Enable only ASPM L0s and L1, and only when both ends of the link advertise
> support for them.
> 
> Fixes: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> Reported-by: Christian Zigotzky <chzigotzky@xenosoft.de>
> Link: https://lore.kernel.org/r/db5c95a1-cf3e-46f9-8045-a1b04908051a@xenosoft.de/
> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> Closes: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com/
> Reported-by: Herve Codina <herve.codina@bootlin.com>
> Link: https://lore.kernel.org/r/20251015101304.3ec03e6b@bootlin.com/
> Reported-by: Diederik de Haas <diederik@cknow-tech.com>
> Link: https://lore.kernel.org/r/DDJXHRIRGTW9.GYC2ULZ5WQAL@cknow-tech.com/
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Tested-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> I intend this for v6.18-rc3.

Note that this will regress ASPM on Qualcomm platforms further by
disabling L1SS for devices that do not use pwrctrl (e.g. NVMe). ASPM
with pwrctrl is already broken since 6.15. [1]

Reverting also a729c1664619 ("PCI: qcom: Remove custom ASPM enablement
code") should avoid the new regression until a proper fix for the 6.15
regression is in place.

Johan


[1] https://lore.kernel.org/lkml/aH4JPBIk_GEoAezy@hovoldconsulting.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
