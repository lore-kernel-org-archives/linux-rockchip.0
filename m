Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 406E6C3ABB0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 14:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nI03M3JyeQWBYid7Sej46MnwuG/qOq/4oaRkXwokWGk=; b=KKgxXGIuCOW+74
	2fk/UaLqoE+NjTlcpBx9TamGoKamxHt6Vluu4xRpY+YYMaMyJWNHwMeuetAaLLtEazsCyJRL1B0Sv
	KyD9Ly1lnp74G94OpJrYSaY/bzd9gns+Sxj9LCLMzhDmo5VtS6bfZ5+yRnVq3FaFoq6YoXdkZID7y
	82eUCHWcxx6H+8XprAA12P21TBU7+9QpximYj3N7ED0L6yvCKgizMYIqrt/zijL6xzI/7k8dOOgTe
	YaNascgt8Qwho5EMibiGaxTiyAhxZPB9HjB+c5KVj8NF6NVolF5lM3Wyd7nz+4MQZY73Dct+HF7/v
	IYhk1clC1nCilnhq0zkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBwPv-00000007Ywj-1LQM;
	Mon, 05 May 2025 14:03:35 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBwOT-00000007Yoh-1WuG;
	Mon, 05 May 2025 14:02:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=zqZZf0ESF3/NtNqr6Zi2o+5PrzNELj5whdZBZp1/fVA=; b=grdYu32zN2Y6PI0stGQDgMrsZV
	ATOKUXvyjKaNcyXeCTQQCZg5IJay6vMsQTMUkiR1cW7dBuAQEmhe9FRkbDJYnbck85piHmxKYorcO
	hfa8aPPbXzNiy1Ss1gkRGfy9mEzPRtU+ZFJKaQvHBctF7ka4uIsE3JDexYhHBafXwEIE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uBwOE-00BbKS-6i; Mon, 05 May 2025 16:01:50 +0200
Date: Mon, 5 May 2025 16:01:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: John Clark <inindev@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
	heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
	detlev.casanova@collabora.com, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
Message-ID: <57654be9-aa8c-4819-bac0-bb23c8884a6b@lunn.ch>
References: <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
 <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
 <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
 <b50c68bd-9b15-412a-ac00-1df25601edd9@lunn.ch>
 <46cbdabd-b0ed-4c9b-9f01-4d2d8eceac24@gmail.com>
 <13407dae-4c73-48a9-846e-92f08449bc4d@lunn.ch>
 <44a4aef7-9d23-4a6e-a228-39bfd3e2a308@gmail.com>
 <D9O9CD8Y6QEE.1CVYGL8TZEWI0@cknow.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D9O9CD8Y6QEE.1CVYGL8TZEWI0@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_070205_402236_9513F1B8 
X-CRM114-Status: GOOD (  10.08  )
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

> I have a NanoPi R5S and I want(ed) to look at its gmac node as well,
> because it (also) has some deprecated properties ... and
> ``phy-mode = "rgmii"`` which was done deliberately in commit
> 31425b1fadb2 ("arm64: dts: rockchip: fix gmac support for NanoPi R5S")
> and the change was away from "rgmii-id" ... and it has a RTL8211F-CG.
> Unfortunately the commit message doesn't say *why* it changed.

Often the developer does not actually understand RGMII delays. They
simply try things at random until it works, and then call it done.

Over the last year or more i've been much more strict at this, looking
at more patches for .dts files and pointing out errors. Hopefully with
time the errors will become less frequent as developers start to
learn, and there are more good examples top copy/paste. But it also
require some vendors to fix their broken MAC drivers.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
