Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C22F3C36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 17:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7IR+05tmzHfX9wJv/6D9QDUUoszHA1sMzIL1B8dEerg=; b=VzYKXWo7/dKUhq
	A9tp2VuqFwVeDV0QLBWQ95FAgVwY2XzX/tX7+EJD0vRmZwUNkvm9vZyFtcRt6KKQ5yv6zL2FzOMsv
	Pr2ZqS+5nUgTBEWAb8RKyfILXNgcUe8eLZGkStNXS/EAqbjzysVpZjRYPIRM/VoY8HcMeqIT5krt2
	19jY2nZzv5z4Jm6jDuAw31caXhW0UdBHefWxUjkelrBxHGqVgFj9qvrFy2dgCIQMdM4i0P0b7aKdW
	FU0Ofjlx3OAXWJa6nqweZ0YGgNSN91sAcakV54XJF5l8SyXJV9pLm47ACZxDQEYcuUkAHPX2Fw6MR
	JKdsr38QFo2aGFo3d0Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3I4Q-0000000EVRK-37jt;
	Fri, 11 Apr 2025 17:21:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3I4N-0000000EVPu-3z1G
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 17:21:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B75EC5C54E6;
	Fri, 11 Apr 2025 17:19:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1D23C4CEE2;
	Fri, 11 Apr 2025 17:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744392094;
	bh=H8+4VkLbIZ37bxtdO3XRXDhHx7Qt+l4gVeio16wR7/0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=FWamaEh8mlR/rHlkYmbrmabgnf9FfsVHaJTGikvZMuuaDD9F2NY6UujD0i615N0Wy
	 6ZZg0ci3mkEFW6U9NHo3CRYSZ7Gg7JbDsbtItqywnJtQeoaAw5Esw43qY5qHnJA1RG
	 wAioYnzFHjBaHLYKcS4nSWj/lzmxW10aSRUP+JMXtpCiUqWibEwRTu6S/gh/A7woH7
	 H/cxo9FC1temG66EyyO2aCo6TzRlFUaU3KQQH3iW8LEDGNqag9/Ihgq7MqgXspwxz3
	 w31p7vvy41DWYLGIcweqEzOIWHCSJR1w1qeRcudmt5EPJs7ttUKydxIVPmSpYeq4l0
	 pPodR0h9XjxxQ==
Date: Fri, 11 Apr 2025 12:21:31 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add system PM support
Message-ID: <20250411172131.GA368959@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744352048-178994-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_102136_040332_F0C4CE93 
X-CRM114-Status: GOOD (  13.21  )
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

On Fri, Apr 11, 2025 at 02:14:08PM +0800, Shawn Lin wrote:
> This patch adds system PM support for Rockchip platforms by adding .pme_turn_off
> and .get_ltssm hook and tries to reuse possible exist code.
> 
> It's tested on RK3576 EVB1 board with Some NVMes and PCIe-2-SATA/XHCI devices.
> And check the PCIe protocol analyzer to make sure the L2 process fits the spec.

Sorry I didn't see these before you fixed the 0-day bot issues.

Please wrap the above to fit in 75 columns to it doesn't wrap when
"git log" indents it.

> [    1.541394] nvme nvme0: missing or invalid SUBNQN field.
> [    1.548755] nvme nvme0: allocated 64 MiB host memory buffer (16 segments).
> [    1.562235] nvme nvme0: 8/0/0 default/read/poll queues
> [    1.563930] nvme nvme0: Ignoring bogus Namespace Identifiers
> 
> echo N > /sys/module/printk/parameters/console_suspend
> echo core > /sys/power/pm_test
> echo mem > /sys/power/state
> 
> [   58.443602] PM: suspend entry (deep)
> [   58.444005] Filesystems sync: 0.000 seconds
> [   58.445542] Freezing user space processes
> [   58.447096] Freezing user space processes completed (elapsed 0.001 seconds)
> [   58.447718] OOM killer disabled.
> [   58.448008] Freezing remaining freezable tasks
> [   58.449080] Freezing remaining freezable tasks completed (elapsed 0.000 seconds)
> 
> ...
> 
> [   58.797070] rockchip-dw-pcie 22400000.pcie: PCIe Gen.2 x1 link up
> [   58.835953] OOM killer enabled.
> [   58.836262] Restarting tasks ... done.
> [   58.839241] random: crng reseeded on system resumption
> [   58.840679] PM: suspend exit
> [   59.500036] nvme nvme0: 8/0/0 default/read/poll queues
> [   59.500909] nvme nvme0: Ignoring bogus Namespace Identifiers
> 
> time dd if=/dev/nvme0n1 of=/dev/null bs=1M count=1000
> 1000+0 records in
> 1000+0 records out
> real    0m 5.51s
> user    0m 0.00s
> sys     0m 0.71s

Please remove the timestamps because they are distracting details not
relevant to understanding the issue.

Indent all this quoted material two spaces because it's not part of
the narrative text.

There's no hurry; you can wait a few days to repost in case others
have more substantive comments.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
