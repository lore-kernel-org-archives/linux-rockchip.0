Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AED49CCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 11:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9/+WaLMTnggInvtjagcl5K+/3P/aEnfLTygfh6eBcM=; b=oDJDKkWvNCce8Y
	uPWKFsLOlxLTWGLf6YWD0bNgJv/DI22atytMKUvZnnrFah0hBif7VgWuH/QskO/ngaADZD6Qhn+SM
	7AfNFBAMv+bmwAcknS5RRAwAJDz+4Wn3AVRqBDc53VJixOCAeENFfC4vaSI3KaG+TCs84MbFqfImm
	KLeOD857pWKq9YWjIpkXAGTp7JASLIYASLfUTd05Ko19G62vdCWWHpRC4ndNRrerKmlzGUeSwHOLC
	U87B8RCxfGgudQepUQRd268YBY/tym1/hlnGyF/55zSjQXUv0NR0Qw2IU/YWFiIsPDp3Qvv4H2Yha
	pbM88pqLqB9QiGAoLRIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8zbj-00000001POu-1dVJ;
	Wed, 15 Oct 2025 11:23:51 +0000
Received: from out-183.mta1.migadu.com ([2001:41d0:203:375::b7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8zbg-00000001PMl-0TMr
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 11:23:49 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1760527411;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u7suAm308V4lZ0hWGhrJ2JZyDcNujKQFY+XgzAQyH74=;
	b=Ns/qkxdG4Rn4EJ6K7SljnQBvNEjMaDrTB1/ElfNZiulj3sQwibhvq0PesIrmmY9Q+1Fjyh
	W6KEAEZMP4FHHqQXoPQkIGtpTnZTo3mGwN+zRnb9//J8E8WST3wXkpfQhVAP5YmQ4XUseb
	2ZoztiG2+qY0MkG4AoM+KPkAjPkwwWLx8yPwhvjnfrkQ8xeOEgQoyCQRF+2yAEEanIgmyb
	WbOxFaMqFU0rqn7Gs8QJBI21LssXjs1jwsEp9rMbsWRQkvhQo902VwYlMmEANvpyOsP3qP
	76AQOGgWsDq0ZZrJe2F+dNLnvCGZlyTWU2VtEEQ2Uk4m/zine4e/pTswHh4E4Q==
Date: Wed, 15 Oct 2025 13:23:10 +0200
Message-Id: <DDIUVHT9W10K.2SHEZ7YWCDXL3@cknow-tech.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Manivannan Sadhasivam" <mani@kernel.org>, "Dragan Simic"
 <dsimic@manjaro.org>
Cc: "Bjorn Helgaas" <helgaas@kernel.org>, "FUKAUMI Naoki" <naoki@radxa.com>,
 <manivannan.sadhasivam@oss.qualcomm.com>, "Bjorn Helgaas"
 <bhelgaas@google.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>,
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Rob
 Herring" <robh@kernel.org>, <linux-pci@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>, "David E.
 Box" <david.e.box@linux.intel.com>, "Kai-Heng Feng"
 <kai.heng.feng@canonical.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Heiner Kallweit" <hkallweit1@gmail.com>, "Chia-Lin Kao"
 <acelan.kao@canonical.com>, <linux-rockchip@lists.infradead.org>,
 <regressions@lists.linux.dev>
References: <20251014184905.GA896847@bhelgaas>
 <0899e629-eaaf-1000-72b5-52ad977677a8@manjaro.org>
 <fxakjhx7lrikgs4x3nbwgnhhcwmlum3esxp2dj5d26xc5iyg22@wkbbwysh3due>
In-Reply-To: <fxakjhx7lrikgs4x3nbwgnhhcwmlum3esxp2dj5d26xc5iyg22@wkbbwysh3due>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_042348_424060_3F3EE803 
X-CRM114-Status: GOOD (  41.34  )
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

On Wed Oct 15, 2025 at 8:22 AM CEST, Manivannan Sadhasivam wrote:
> On Wed, Oct 15, 2025 at 01:33:35AM +0200, Dragan Simic wrote:
>> On Tuesday, October 14, 2025 20:49 CEST, Bjorn Helgaas <helgaas@kernel.org> wrote:
>> > On Wed, Oct 15, 2025 at 01:30:16AM +0900, FUKAUMI Naoki wrote:
>> > > I've noticed an issue on Radxa ROCK 5A/5B boards, which are based on the
>> > > Rockchip RK3588(S) SoC.
>> > > 
>> > > When running Linux v6.18-rc1 or linux-next since 20250924, the kernel either
>> > > freezes or fails to probe M.2 Wi-Fi modules. This happens with several
>> > > different modules I've tested, including the Realtek RTL8852BE, MediaTek
>> > > MT7921E, and Intel AX210.
>> > > 
>> > > I've found that reverting the following commit (i.e., the patch I'm replying
>> > > to) resolves the problem:
>> > > commit f3ac2ff14834a0aa056ee3ae0e4b8c641c579961
>> > 
>> > <snip>
>> > 
>> > Do you know if any platforms other than Radxa ROCK 5A/5B have this
>> > problem?
>> > 
>> After thinking quite a bit about it, I think we should revert this
>> patch and replace it with another patch that allows per-SoC, or
>> maybe even per-board, opting into the forced enablement of PCIe
>> ASPM.  Let me explain, please.
>
> ASPM is a PCIe device specific feature, nothing related to SoC/board. Even if
> you limit it to certain platforms, there is no guarantee that it will be safe as
> the users can connect a buggy device to the slot and it could lead to the same
> issue.
>
>> When a new feature is introduced, it's expected that it may fail
>> on some hardware or with some specific setups, so quirking off such
>> instances, as time passes, is perfectly fine.  Such a new feature
>> didn't work before it was implemented, so it's acceptable that it
>> fails in some instances after the introduction, and that it gets
>> quirked off as time passes and more testing is performed.
>
> ASPM is not a new feature. It was introduced more than a decade before. But we
> somehow procastinated the enablement for so long until we realized that if we
> don't do it now, we wouldn't be able to do it anytime in the future.

Do you mean literally *now* or more like "we need to do it sometime"?

>> However, when some widespread feature, such as PCIe, has already
>> been in production for quite a while, introducing high-risk changes
>> to it in a blanket fashion, while intending to have the incompatible
>> or not-yet-ready platforms quirked off over time, simply isn't the
>> way to go.  Breaking stuff intentionally to find out what actually
>> doesn't work is rarely a good option.
>
> The issue is due to devices exposing ASPM capability, but behaving erratically
> when enabled. Until, we enable ASPM on these devices, we cannot know whether
> they are working or not. To avoid mass chaos, we decided to enable it only for
> devicetree platforms as a start.
>
>> Thus, I'd suggest that this patch is replaced with nother patches,
>> which would introduce an additional ASPM opt-in switch to the PCI
>> binding, allowing SoCs or boards to have it enabled _after_ proper
>> testing is performed.  The PCIe driver may emit a warning that ASPM
>> is to be enabled at some point in the future, to "bug" people about
>> the need to perform the testing, etc.
>
> Even if we emit a "YOUR DEVICE MAY BREAK" warning, nobody would care as long as
> the device works for them. We didn't decide to enable this feature overnight to
> trouble users. The fact that ASPM saves runtime power, which will benefit users
> and ofc the environment as a whole, should not be kept disabled.
>
> But does that mean, we wanted to have breakages, NO. We expected breakages as
> not all devices will play nicely with ASPM, but there is only one way to find
> out. And we do want to disable ASPM only for those devices.

I understand this logic. And I'm very much in favor of changes that
reduce power usage.
I suspect that 6.18 will become a LTS kernel, so introducing a change
which may break many devices, sounds less then ideal for such a kernel.
Kernel 6.19 OTOH sounds perfect for that. Then there's plenty of time to
encounter and fix issues which may/will come up before there is another
LTS kernel, namely ~ a year.

My 0.02.

Cheers,
  Diederik

PS: will send my bug/debug report separately

>> With all that in place, we could expect that in a year or two PCIe ASPM
>> could eventually be enabled everywhere. Getting everything tested is a
>> massive endeavor, but that's the only way not to break stuff.
>> 
>> Biting the bullet and hoping that it all goes well, I'd say, isn't
>> the right approach here.
>
> Your two year phased approach would never work as that's what we have hoped for
> more than a decade.
>
> - Mani


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
