Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0469ECCF9F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 22:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=NV+9vNuhLuaiP1SNJkY8N7tYZL9KdYwHInw1fRrA+jo=; b=wkxy1bxDfrqEZj
	xewX9PeHMd+4DIpdB1+Qnq/DyQGPRNhwhnNKicMVH3nzLlEg0DTyxMM87nsGAFxO1ELZcx2XP5xUk
	0/HdNwmmDQUMs1e903K9dkBAZ3+Rql+NRpBbYM1VWHQBktuhxZhMxHV1KkN3PEVDm10GRpI1ImFL4
	Vhtp9sh0pazzqCaI/+PMZ6odaOD4tlZVi30Hf3OOECEmz3ResF8yaNk554JNDxsv2Cp20QGaQi7CJ
	jC5YCxjvsT/42jMLelcM5R1eDhDmNSgpqSQuN2i4FqQBmcovIhwtWq9eRiq3ZNnGnG32pyYxavV/B
	T8d0fBA7s8tI5sw/dF6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEauI-000000053Ff-0gNu;
	Thu, 30 Oct 2025 22:14:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEauE-000000053FN-3b7c
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 22:14:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DC91F6024C;
	Thu, 30 Oct 2025 22:14:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C703C4CEF8;
	Thu, 30 Oct 2025 22:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761862445;
	bh=zYBfnEawIKxh7h1Pgru4AwSGlaZ86c7T3y9TiPo3iOc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=b2l+45Fv9Wd6dCv89WSzh8Knzl45x1PCcR5w5ICcK1Tcl6Xels5VtjhBiNlK08dZF
	 er+UpbieoNSkorCxXAi94mqi3t0q7cmc073k0j7XW5QduEXU4TiPHpkF/qbvo7WKNL
	 a8zTw/dQoeF+YUwq8P4FUJz2YHmSPGuiXiA5mNrb9VcAVO0kK8cTqiEIOi3+eG77BE
	 KlvbkFhtLnpPT2P6SDpJdLag/prKSgPbT3jrc85WxNZ9euBqPzWuVSF+tNL+z2F/hr
	 a9x1vH5lirMo1nkOgPLduEisfh88ufAo08zVw3O4TDcpkkajZMrklTzoMEd3RiuBDQ
	 +luCWIsYcaGVA==
Date: Thu, 30 Oct 2025 17:14:04 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: manivannan.sadhasivam@oss.qualcomm.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	"David E. Box" <david.e.box@linux.intel.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Chia-Lin Kao <acelan.kao@canonical.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <20251030221404.GA1656495@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014184905.GA896847@bhelgaas>
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

On Tue, Oct 14, 2025 at 01:49:05PM -0500, Bjorn Helgaas wrote:
> On Wed, Oct 15, 2025 at 01:30:16AM +0900, FUKAUMI Naoki wrote:
> > Hi Manivannan Sadhasivam,
> > 
> > I've noticed an issue on Radxa ROCK 5A/5B boards, which are based on the
> > Rockchip RK3588(S) SoC.
> > 
> > When running Linux v6.18-rc1 or linux-next since 20250924, the kernel either
> > freezes or fails to probe M.2 Wi-Fi modules. This happens with several
> > different modules I've tested, including the Realtek RTL8852BE, MediaTek
> > MT7921E, and Intel AX210.
> > 
> > I've found that reverting the following commit (i.e., the patch I'm replying
> > to) resolves the problem:
> > commit f3ac2ff14834a0aa056ee3ae0e4b8c641c579961
> 
> Thanks for the report, and sorry for the regression.
> 
> Since this affects several devices from different manufacturers and (I
> assume) different drivers, it seems likely that there's some issue
> with the Rockchip end, since ASPM probably works on these devices in
> other systems.  So we should figure out if there's something wrong
> with the way we configure ASPM, which we could potentially fix, or if
> there's a hardware issue and we need some king of quirk to prevent
> usage of ASPM on the affected platforms.
> 
> Can you collect a complete dmesg log when booting with
> 
>   ignore_loglevel pci=earlydump dyndbg="file drivers/pci/* +p"
> 
> and the output of "sudo lspci -vv"?
> 
> When the kernel freezes, can you give us any information about where,
> e.g., a log or screenshot?
> 
> Do you know if any platforms other than Radxa ROCK 5A/5B have this
> problem?
> 
> #regzbot introduced: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> #regzbot dup-of: https://github.com/chzigotzky/kernels/issues/17

#regzbot report: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
