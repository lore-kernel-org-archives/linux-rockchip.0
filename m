Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C436F109C02F
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 15:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSJRQIfdbytWvTGZHDWG0v3NQ33lC+pG6uClTae4BBE=; b=feqCq9cg68P2b8
	qMkkquexLM/qF0txYxeRJ1AMMywi4K4FDFv66h3+E3fDw5SgneJBb+GyGi3Chatj/zup9Qz1UGkb4
	rp8vvX9CbOIIC4deOYA+hLWX7nP1Of3lJnM7ucg0FdoeE0Gf71xAAdalcjZsgF/WRuX1mDEzdbksj
	MLeis1yvf4oXKdexsDshoWqDF0MP6n/IjcCP9CkA+hZZDSbP0e95CrpIt91ROmaPEQLRxI60HdJ68
	lOELg5b2aJmMi3cGMbBBkkyVsWK4NZhlzBoY7bsotUoTA3UYWQZ0xMUm1kg9AZ9XuwBTW3GA7sAPG
	tTdGlfULY9o6CYiQMidw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Puy-00000003kmG-2TZZ;
	Wed, 25 Mar 2026 15:13:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Puw-00000003klT-27ix;
	Wed, 25 Mar 2026 15:13:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DF74B600C4;
	Wed, 25 Mar 2026 15:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F0B7C4CEF7;
	Wed, 25 Mar 2026 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774451589;
	bh=K7TzBX/q1XwvUhD9Psm0P5f4ncQ+WOH4GmJMJmXDjUQ=;
	h=Date:Cc:To:From:Subject:References:In-Reply-To:From;
	b=OqOJTe2NPRk7csjnxf5jwiW92DOlbSQ2D6ijigRGEjmcK3nophEMcIOJIaVYe/jV6
	 RRq7yBsg+FzRe+Fzsv8l1NB5uQ7msYF4iEdl5ewEsnXKxbQkh41RTlMycrB053j4rD
	 KT53qmxCphZ3cApZM3yv1G6molPuah80zE0d+89zzPuxwKUhBYJthImx0+QtFM/Zhz
	 0JPYh01YKgOZtZY1de8DkD/O1X2p98fwuj2HjsU0sTiVchb6NWbuPcdhst5oYgNLen
	 y1hPdC/Xm8m5ucOwC71g8RvaZnI+Ax5dlCrUlAeStI43sKjPE0KnYtNUVMpUYvY4SY
	 Cw9NzJyV3y5IQ==
Mime-Version: 1.0
Date: Wed, 25 Mar 2026 16:13:03 +0100
Message-Id: <DHBYL7Y262J2.263EOC2JNN4RK@kernel.org>
Cc: "Robin Murphy" <robin.murphy@arm.com>, "Manivannan Sadhasivam"
 <mani@kernel.org>, "Manivannan Sadhasivam"
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
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
From: "Danilo Krummrich" <dakr@kernel.org>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
 <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org>
 <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
 <acNgUoWWMCi1oLU4@google.com>
In-Reply-To: <acNgUoWWMCi1oLU4@google.com>
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

On Wed Mar 25, 2026 at 5:13 AM CET, Dmitry Torokhov wrote:
> That means that you are kicking the majority devices (for now) into
> deferral path. I do not think this is optimal.

That's not necessary, we'd only need to kick those into the deferral path that
have PROBE_FORCE_SYNCHRONOUS, no?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
