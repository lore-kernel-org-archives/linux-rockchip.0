Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E84F5106286B
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 11:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNh8575mb3rw1PNNsJFBh83+Pf3EHw0KHLlZlIBRp3U=; b=hRZ3P0voepvo3F
	ijtAvTyKxDKrOMmJcyDmnpPRtcp0cC0gSMQJsEyZyk72E+sF9hBoEqXc2zWWtGQGTCbcMaON0BR+3
	taMY22TTeADrdvrOvdk3oC7QhDBmwu8E6k7209LwHeNydMGwkihDyS206OvZ7FhZ//C2+P0Mek6lI
	/acJvsPegcI9X0G4UP4cQB5jxBMRxn3oJuGugSrX/rIfYHSVnXRYa88IFpTHjRDXNN2tFgBo8mqD8
	X8fBhvsucBbdYdrp7IgIjk4xUOof7TbjOmUtyQAmhPDsPL6dUCnZuPOYRAOsmtl9pilqzvXBSN6QA
	3IYTPa0pOeeGeiXHj4eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0I0x-0000000BVWm-2Mh5;
	Wed, 11 Mar 2026 11:46:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0I0w-0000000BVWZ-12UD;
	Wed, 11 Mar 2026 11:46:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1157460145;
	Wed, 11 Mar 2026 11:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79082C4CEF7;
	Wed, 11 Mar 2026 11:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773229568;
	bh=mePPF9zcPSvtBJqRo2t1V0QkuJgJRZztiTUUZcbcg0Y=;
	h=Date:Subject:Cc:To:From:References:In-Reply-To:From;
	b=LL43S37gfzT/Tm97KcgLsUXSfiOoxXzNEvUrv5x20U2bjXaNgs2ZEmAgEqPArpUoO
	 jMRBsFO1rtnAFbU7NnV1UYL2ZLu78aO4zL8Y7m8Bk2MEOzq5U5kiR9/6SUzZYukt7x
	 YCTfvAKZMs3yfoGP49cGvPDmIt42flrR6PfRuh5zAIQmyzPxgztNsbO/gK+Je4YLce
	 ciCMdoBBXH0iGc+dE87FOkoBu6Uce/jRT/Ya7GEyH4/7KkWuHPyqX8nSztSBQvw3vL
	 L8FegqH/dGZqRNCpbuvVZrTfiR676Um5mvDDVFYh66XpUXS9leC3rE1c8nNUescbmb
	 xFoVtT4VD+7vg==
Mime-Version: 1.0
Date: Wed, 11 Mar 2026 12:46:03 +0100
Message-Id: <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Cc: "Robin Murphy" <robin.murphy@arm.com>, "Manivannan Sadhasivam"
 <manivannan.sadhasivam@oss.qualcomm.com>, "Lorenzo Pieralisi"
 <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas"
 <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, "Niklas Cassel"
 <cassel@kernel.org>, "Shawn Lin" <shawn.lin@rock-chips.com>, "Hans Zhang"
 <18255117159@163.com>, "Nicolas Frattaroli"
 <nicolas.frattaroli@collabora.com>, "Wilfred Mallawa"
 <wilfred.mallawa@wdc.com>, <linux-pci@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Anand Moon" <linux.amoon@gmail.com>, "Grimmauld" <grimmauld@grimmauld.de>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, <driver-core@lists.linux.dev>, "Lukas Wunner"
 <lukas@wunner.de>
To: "Manivannan Sadhasivam" <mani@kernel.org>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
In-Reply-To: <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
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

On Wed Mar 11, 2026 at 6:24 AM CET, Manivannan Sadhasivam wrote:
> I have a contrary view here. If just a single driver or lib doesn't handle async
> probe, it cannot just force other drivers to not take the advantage of async
> probe. As I said above, enabling async probe easily saves a few hunderd ms or
> even more if there are more than one Root Port or Root Complex in an SoC.

Then the driver or lib has to be fixed / improved first or the driver core has
to be enabled to deal with a case where PROBE_FORCE_SYNCHRONOUS is requested
from an async path, etc.

In any case, applying the patch and breaking things (knowingly?) doesn't seem
like the correct approach.

> I strongly agree with you here that the underlying issue should be fixed. But
> the real impact to end users is not this splat, but not having the boot time
> optimization that this patch brings in. As an end user, one would want their
> systems to boot quickly and they wouldn't bother much about a harmless warning
> splat appearing in the dmesg log.

You mean quickly booting into a "harmless" potential deadlock condition the
warning splat tries to make people aware of? :)

(Or am I missing a subtle detail and we can never actually end up in a deadlock
for some reason?)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
