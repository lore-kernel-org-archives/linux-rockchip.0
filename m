Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 893E1CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 23:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0Y8hWDPmi+SqwYxiUV+YDI8A4dMrQlF393ofBY2pg8=; b=o4j54SNtW0VwJ/
	bhYsD34PoUPXXVfgU+ZWj4ia4cL2EmW31wJZsskuPoJtXn/GhXFiM0zOlfDDjaPhmdak7npekQkKA
	rZEAYnvpZefoDoyHbs1p12okls1VbZKDUlATn2I1gL4y02Tn1YU3vN9BVbWQ1Jf4byImTJZfoLZNL
	bkNmmtbFBZf9i6wJO0ANT/afzPx12YbvpOGNd0ai3Uoa79ZivMD5KpxL1cBaiGuwWKjmpn249WKh6
	h+z3MxFEyXvm0ng0b2FRt70nYAHX6kgt4VDaXKvfZCdWzzpwNtorm0I6ba2Sf0cH85m1gJupGg53q
	ZebnZDatL28BJPoOZ7hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8oWY-000000002tZ-06YR;
	Tue, 14 Oct 2025 23:33:46 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8oWV-000000002tD-0sZM
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 23:33:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id CB9AB40C22;
	Wed, 15 Oct 2025 01:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1760484819; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ahRdwrjWfMe0hKH1Tt1jKBLeldYczMpX7xtNUT0Ar2o=;
	b=vhS0cTXZ1xd5DotYvzh1ii/gTMCLq3J1q+msKWoRt8k+J3S9YpBI3ZZeFoX5RRx0tgWTIU
	bNYT5/dNi1mETlfmNXXfBd7QXUtoWx7k6OJuA955cTp6LOB9HzI255LP7a+pMsnaxi3Alv
	p+dhEKd2Gysxwwu5gPOPtsj1z9AIOYxo35JrBcZmhKjtw1qTFw7Vylz4gQUSPj1C3foD+4
	8eWrst8K+SGpfXyc8AdglJF7gGgxlC+xNb3yeCzUJ1a1jzGhWBHAv3frava2krodiSW4xe
	C6+eQ+FAQBncWvr4e17sqxI8pXinVkG/3FRbJGPJv4CnehCb0hbVAMY6I75mfg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251014184905.GA896847@bhelgaas>
References: <20251014184905.GA896847@bhelgaas>
Date: Wed, 15 Oct 2025 01:33:35 +0200
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, manivannan.sadhasivam@oss.qualcomm.com, "Bjorn Helgaas" <bhelgaas@google.com>, "Manivannan Sadhasivam" <mani@kernel.org>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Rob Herring" <robh@kernel.org>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, =?utf-8?q?David_E=2E_Box?= <david.e.box@linux.intel.com>, "Kai-Heng Feng" <kai.heng.feng@canonical.com>, =?utf-8?q?Rafael_J=2E_Wysocki?= <rafael@kernel.org>, "Heiner Kallweit" <hkallweit1@gmail.com>, "Chia-Lin Kao" <acelan.kao@canonical.com>, linux-rockchip@lists.infradead.org, regressions@lists.linux.dev
To: "Bjorn Helgaas" <helgaas@kernel.org>
MIME-Version: 1.0
Message-ID: <0899e629-eaaf-1000-72b5-52ad977677a8@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/2] =?utf-8?q?PCI/ASPM=3A?= Override the ASPM 
 and Clock PM states set by BIOS for devicetree platforms
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_163343_518661_A8060282 
X-CRM114-Status: GOOD (  26.54  )
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

Hello all,

On Tuesday, October 14, 2025 20:49 CEST, Bjorn Helgaas <helgaas@kernel.org> wrote:
> On Wed, Oct 15, 2025 at 01:30:16AM +0900, FUKAUMI Naoki wrote:
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

After thinking quite a bit about it, I think we should revert this
patch and replace it with another patch that allows per-SoC, or
maybe even per-board, opting into the forced enablement of PCIe
ASPM.  Let me explain, please.

When a new feature is introduced, it's expected that it may fail
on some hardware or with some specific setups, so quirking off such
instances, as time passes, is perfectly fine.  Such a new feature
didn't work before it was implemented, so it's acceptable that it
fails in some instances after the introduction, and that it gets
quirked off as time passes and more testing is performed.

However, when some widespread feature, such as PCIe, has already
been in production for quite a while, introducing high-risk changes
to it in a blanket fashion, while intending to have the incompatible
or not-yet-ready platforms quirked off over time, simply isn't the
way to go.  Breaking stuff intentionally to find out what actually
doesn't work is rarely a good option.

Thus, I'd suggest that this patch is replaced with nother patches,
which would introduce an additional ASPM opt-in switch to the PCI
binding, allowing SoCs or boards to have it enabled _after_ proper
testing is performed.  The PCIe driver may emit a warning that ASPM
is to be enabled at some point in the future, to "bug" people about
the need to perform the testing, etc.  With all that in place, we
could expect that in a year or two PCIe ASPM could eventually be
enabled everywhere.  Getting everything tested is a massive endeavor,
but that's the only way not to break stuff.

Biting the bullet and hoping that it all goes well, I'd say, isn't
the right approach here.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
