Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A4A1CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 20:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xV6Nq/sAPMSpfrRX0NN/08wfiiZt9LTMRDqSsqhsQtI=; b=5Fx5tPzgSaRVLk
	/dNxqYG8SwA3CiEREHsh4c0U1bTlvihWknCyVWIrzF3x4JMgB/EYsji/+7ZWyke303z4r1meN5HQ0
	mvo1HjhhvKcdgfFdECnjRKnnziE8TE/5KEQp7DoMrs3XNOsqa/hAQoZ8fV/aX3tvXkQStwroH2pZ/
	bi/2SSuK+90ETsKm7DmULhQup7xPnTKWoLBRNJ7LyHWp+au3v1xZgt3ZTnVGrcRSGMI2z6/R5EfHu
	udCdauMQ7s6fjW5lnoopaGpWWiXgteIUrRoDtPd07T6Zbocvn3AOUUBgnf1OFEUv+ByHjJSKMSKBD
	ip/SbX4Tzu8hNQwWqNOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC24C-00000007Xy0-1JuI;
	Thu, 23 Oct 2025 20:37:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC24A-00000007Xxb-0n8c
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 20:37:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6A68F405AE;
	Thu, 23 Oct 2025 20:37:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EB97C4CEE7;
	Thu, 23 Oct 2025 20:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761251865;
	bh=2YM0+zsZqGChetS9GwXiepmm69IizY2zwtiVz39WIsI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=h3ytV2vZuMNv8NoTWdIl5ICqjQTyzWf22mdhyoQLj6r6nQTkeuImhgjjVp+9kAsea
	 u/KtDwgCJX7Rv5r5N8EmyG/qFIzkjgRzfL79dc5OSALqP4VnXy+rk7HVW73zoDfRm3
	 MLD5BEPsiDjqUXqb627Wsfl+m8sUplWrlcPyHz9YkdbTXB7LKnj49VlwA99i5KbSNj
	 g36nO+KzdgUVocdlOSqwj7dZfHLbJgV7FuGC1O12G3dJaX/okmmegIjm0SA9ByE0YL
	 WcNv4RrCiz868Z38yxnQ0rQXAFQcBAaVHfsK6Se/ACNsHmKKVCspkE0nuLYKvLtkBV
	 bWYzcXP4eN/ew==
Date: Thu, 23 Oct 2025 15:37:44 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-pci@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Christian Zigotzky <chzigotzky@xenosoft.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	linuxppc-dev@lists.ozlabs.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Message-ID: <20251023203744.GA1314513@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da79f38f-fdb9-0101-67cc-144ef8d6e1d1@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_133746_269521_CED843D8 
X-CRM114-Status: GOOD (  22.26  )
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

On Thu, Oct 23, 2025 at 08:27:25PM +0200, Dragan Simic wrote:
> On Thursday, October 23, 2025 20:06 CEST, Bjorn Helgaas <helgaas@kernel.org> wrote:
> > From: Bjorn Helgaas <bhelgaas@google.com>
> > 
> > f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree
> > platforms") enabled Clock Power Management and L1 PM Substates, but those
> > features depend on CLKREQ# and possibly other device-specific
> > configuration.  We don't know whether CLKREQ# is supported, so we shouldn't
> > blindly enable Clock PM and L1 PM Substates.
> > 
> > Enable only ASPM L0s and L1, and only when both ends of the link advertise
> > support for them.
> > 
> > Fixes: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> > Reported-by: Christian Zigotzky <chzigotzky@xenosoft.de>
> > Link: https://lore.kernel.org/r/db5c95a1-cf3e-46f9-8045-a1b04908051a@xenosoft.de/
> > Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> > Closes: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com/
> > Reported-by: Herve Codina <herve.codina@bootlin.com>
> > Link: https://lore.kernel.org/r/20251015101304.3ec03e6b@bootlin.com/
> > Reported-by: Diederik de Haas <diederik@cknow-tech.com>
> > Link: https://lore.kernel.org/r/DDJXHRIRGTW9.GYC2ULZ5WQAL@cknow-tech.com/
> > Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> > Tested-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> > I intend this for v6.18-rc3.
> > 
> > I think it will fix the issues reported by Diederik and FUKAUMI Naoki (both
> > on Rockchip).  I hope it will fix Christian's report on powerpc, but don't
> > have confirmation.  I think the performance regression Herve reported is
> > related, but this patch doesn't seem to fix it.
> > 
> > FUKAUMI Naoki's successful testing report:
> > https://lore.kernel.org/r/4B275FBD7B747BE6+a3e5b367-9710-4b67-9d66-3ea34fc30866@radxa.com/
> 
> I'm more than happy with the way ASPM patches for DT platforms and
> Rockchip SoCs in particular are unfolding!  Admittedly, we've had
> a rough start with the blanket enabling of ASPM, which followed the
> theory, but the theory often differs from practice, so the combined
> state of this and associated patches from Shawn should be fine.
> 
> Thank you very much for all the effort that included quite a lot
> of back and forth, and please feel free to include
> 
> Acked-by: Dragan Simic <dsimic@manjaro.org>

Added your ack; thanks for all your help!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
