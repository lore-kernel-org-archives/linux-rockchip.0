Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C15CFC35FE7
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 06:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hynkDncyxFk5wLZu/P6xx43FWlCGp7kYLclF+oi3jN0=; b=ZZko5vDsiN5ZwA
	fRJtb14rO3sJFVqLO7YUpDENi811JIJOuyMHyG2LqlLTgS5zvGigh8Vws4gvIENalnA8T5uTZ4edp
	RazzFQeEHX/aipqw1vErhK5XlkWo7/u3xja6gzZLGXTIEHndd3UYRFdYtSGxZqVvO8xTSmCYtkF0U
	XGsrw6ZlXwuYtYrN+gV2J1ttKEUC7bvDoA9J4Tg7nFGblVSMCAa7IA95BvBE2iB3qdRlQaHFBRSsK
	Wh3ICc678tjaJCfKfMdrs1ZGAjRxjc0cDOZ17HOQCEL6hMdxBYF3PFgXtR3LKBxwp9Md3S5N3Q90h
	8bJ9WpTKVkqhwtbQhI2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqo5c-00000007XWY-1Bkn;
	Wed, 18 Sep 2024 06:23:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqo4V-00000007XKA-0QzG;
	Wed, 18 Sep 2024 06:21:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 72EB65C4A9F;
	Wed, 18 Sep 2024 06:21:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66B9FC4CEC3;
	Wed, 18 Sep 2024 06:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1726640509;
	bh=oyYt8Xngaj7P/IOreZdbBQsMi8xb97lu/A7vj7k2qzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i4aKd0TVlrwE+0/JKPUU9enWLM2kYvKt/BCRQT3+c2/SSNDafYzYLbTCxJr2wFMvR
	 7ue3ZVkq+YE2R3f3szzEoNN0AIspwLjbnX3bAaubBmf1wQMKWqRaR5i5DVcmH25Jlu
	 jgWGRzafFSQ/ILc2SZOaw1W2/Zl7SHu8LbL7pdlE=
Date: Wed, 18 Sep 2024 08:21:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, Yao Zi <ziyao@disroot.org>,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH v4 0/4] Add initial support for Rockchip RK3528 SoC
Message-ID: <2024091817-art-splashy-f547@gregkh>
References: <20240829092705.6241-1-ziyao@disroot.org>
 <ZunjLMQGEcES2zIV@pineapple>
 <23655990.6Emhk5qWAg@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23655990.6Emhk5qWAg@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_232151_233403_229C6C1F 
X-CRM114-Status: GOOD (  29.57  )
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

On Wed, Sep 18, 2024 at 01:13:25AM +0200, Heiko Stuebner wrote:
> Hey,
> 
> Am Dienstag, 17. September 2024, 22:14:36 CEST schrieb Yao Zi:
> > On Thu, Aug 29, 2024 at 09:27:01AM +0000, Yao Zi wrote:
> > > Rockchip RK3528 is a quad-core ARM Cortex-A53 SoC designed for
> > > multimedia application. This series add a basic device tree with CPU,
> > > interrupts and UART nodes for it and is able to boot into a kernel with
> > > only UART console.
> > > 
> > > Has been tested on Radxa E20C board[1] with vendor U-boot, successfully
> > > booted into initramfs with this log[2].
> 
> > Ping on this thread. Is it possible to get this merged in v6.12? Or
> > anything else I need to do?
> 
> sadly nope. From a timeline point of view things should ideally be in the
> Rockchip tree by -rc6 . Which then move to the soc tree and from there
> to Linus' tree.
> 
> There is this rule that all new development for a -rc1 kernel should be
> present in linux-next _before_ the merge-window opens.
> 
> The thing we need to figure out for your series is the uart binding,
> because that _should_ go through the tree handling serial drivers.
> Greg is in your cc list but with the amount of mail he gets, I don't
> think he has single-parts of patch series on his radar.

Yeah, I missed this as it was part of a larger series.

> So I guess the easiest way would be to send the uart-binding from patch 1
> as a completely separate patch with adapted Cc list, so that it's obvious
> this should go through the serial tree.

Yes, please just send that one patch and I can pick it up.

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
