Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05091C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 18:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dJFK+Y2i4uu8ZELRmm+BDVIv/Fa6FLtTamBcm/6aGHw=; b=B87eVePkeD4B3TsUWTeTEmEHNJ
	YjrOs31c3x3xFNLXfCtozuZxjS350DMuNMk4AkfPJrlteoXbafMHHxGwrbmBwHUChMCSI4jFQFk2g
	+CacSwGAMoj2zZJM0OxjWc+qMuJlVQdPD/DEa/DvQPwT4ZjPQc6C+7VeGRLP7kXPpEJupsYVCVRJ5
	LrplgqWXybhOq/bxYJCYkhmz84h5caGAeU/VxPTEWMnEMxuenLDNSkD7Ve4moUOkzR/O54paL20NL
	rdVZ1UpW+V0pHKZeBlYs6+SYmkVMpEeoQFvI9U8wyg6obw5cAdUAJjDF2POrbXBKi3wlruXsDTECz
	3SpwqYEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUtGQ-00000000EUd-2vnw;
	Tue, 30 Jan 2024 18:55:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUtGM-00000000ESS-2nwY;
	Tue, 30 Jan 2024 18:55:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4CB8B60F86;
	Tue, 30 Jan 2024 18:55:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0055C433F1;
	Tue, 30 Jan 2024 18:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706640913;
	bh=Rlj0+pg0eQe6xEIGarik3VfV6BkGvMIJifXOEhioQkg=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=Hn6fEUXaEH8GXha87QDzSHp+D+xYBfRxdrxWGX8XMMOXs+GAsz9eVcKa2IcWAGZBB
	 nJCYiDbdinjb22uZdGWdxQpdW2pzm7Q0zQezyECai7rZQEXvqQL35L5ySqDQHEWZRW
	 LceilFmEIc3H/dFHCI0+6xMUpY0uPC/UEQY2z5OZBWK2Dvgu7dGP2jsj4XuitTVGd5
	 KLExS/LJnNmEEZc9JlcRmVTnPNhraolk7KqYwinhyXOZZR7qwwz1WoHc31oBOciytA
	 Mn9QqB8w5bcyz6gv7DSyZcxEgZyBM6T8TL1rjm4HINtiGuSRGGDhoPhi/Sl9O5FmxJ
	 EY2fdQ02hdPMg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D5E58E3237E;
	Tue, 30 Jan 2024 18:55:12 +0000 (UTC)
Date: Tue, 30 Jan 2024 18:55:19 +0000
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
 bugs@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Message-ID: <20240130-b217334c11-7182e5f921f4@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: linux rockchip gpio2b4 (gpio2b5) gpio2b7 broken
 GRF_GPIO2BL_IOMUX GRF_GPIO2BH_IOMUX 2bits 3bits pinctrl
 rk3328_mux_recalced_data (a fix exists, for a commiter brave enough to
 commit it)
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_105514_814595_EC2016F3 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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

antwain.schneider added an attachment on Kernel.org Bugzilla:

Created attachment 305795
a program written in c that can be compiled and ran on a rk3328-based device to illustrate the problem which is bad

this program dumps the bits set in the grf for 2bl and 2bh

in comment 7, the otp-out thing is still vital to prove this point without extensive dtb modification

i've got it down to this
fdtput -t x /boot/efi/rockchip/rk3328-roc-cc.dtb /pinctrl/tsadc/otp-out rockchip,pins 02 0d 02 5a
what's being changed in this line is the mode (from 1 to 2) of gpio2b5

otp-out in the rk3328.dtsi is
                                rockchip,pins = <2 RK_PB5 1 &pcfg_pull_none>;
which when dumped by dtc is
                                rockchip,pins = <0x02 0x0d 0x01 0x5a>;
0x5a is the phandle for pcfg_pull_none for me currently, your value may vary
notice that it's using gpio2b5 which exists but doesn't have a listing in chapter 3 of the trm but is described elsewhere in the document


1 run the program and save output
2 fdtput the dtb and reboot
3 run the program again and compare outputs, and notice how the completely wrong register changed

File: poc.c (text/x-csrc)
Size: 1.53 KiB
Link: https://bugzilla.kernel.org/attachment.cgi?id=305795
---
a program written in c that can be compiled and ran on a rk3328-based device to illustrate the problem which is bad

You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
