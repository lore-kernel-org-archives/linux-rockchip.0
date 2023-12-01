Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F42EC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 20:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UJPtSFO3QSp58/9/Qnk7H/8NGx9Xtkpw2jduz9yHCM=; b=OSfq0gBNdMbLO1
	oVWLy45mlsT75DfQvWLY41/RMetexIZVGOr/d0TSZlC/gElrMYnTjoqAqrLkZKKWjUx+cQbSHOTMC
	kWKZ0UcExP334nhG9tioBf3Osc9N5DOAgaUDOS8cF55NvzZXh9sYdg3OQY0P0jOf5OTTsF3ch4POd
	3RVZcefwFfrkVQ5vkwdFhzl21SFO0fp8ZYJbPyekO2sWq1RLN/pcD6ivx3zXTxLasBarZ6rNB9X6g
	cy3z+mJEh5YNOPuj4HNBUdwtufyKjAUIkf0pTXk0lWdQTogF78Oejp2OYxuMbdttkCUxsE1GRI+Sk
	a4+RAfHjJqypoIY5Na4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r99pP-00EZWn-1e;
	Fri, 01 Dec 2023 20:09:35 +0000
Received: from mail11.truemail.it ([2001:4b7e:0:8::81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r99pL-00EZVA-1b;
	Fri, 01 Dec 2023 20:09:33 +0000
Received: from gaggiata.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id C18BD221C6;
	Fri,  1 Dec 2023 21:09:29 +0100 (CET)
Received: from livingston (unknown [192.168.42.11])
	by gaggiata.pivistrello.it (Postfix) with ESMTP id 7993A7F8F3;
	Fri,  1 Dec 2023 21:09:29 +0100 (CET)
Received: from pivi by livingston with local (Exim 4.96)
	(envelope-from <francesco@dolcini.it>)
	id 1r99pJ-0001OL-18;
	Fri, 01 Dec 2023 21:09:29 +0100
Date: Fri, 1 Dec 2023 21:09:29 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Florian Fainelli <f.fainelli@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: defconfig: Increase SERIAL_8250_NR_UARTS to 10
Message-ID: <ZWo9ecC45DZaqVJJ@livingston.pivistrello.it>
References: <20231201191228.343230-1-heiko@sntech.de>
 <bf5c7806-7405-4728-bb10-7913368f62a0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf5c7806-7405-4728-bb10-7913368f62a0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_120931_709565_D121565E 
X-CRM114-Status: GOOD (  18.67  )
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

On Fri, Dec 01, 2023 at 11:57:53AM -0800, Florian Fainelli wrote:
> +Francesco,
> 
> On 12/1/23 11:12, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > 
> > Boards using socs like the rk3588 can use up to 10 uarts, so the default
> > of 4 is way too low. Therefore increase the maximum number to 10.
Do you have an actual need of 10, e.g. an existing board with 10 uarts
enabled supported by the mainline kernel? Just thinking at the last arm64 SoC I
am working with it should be 12 if we use this as a metric.

> > SERIAL_8250_RUNTIME_UARTS on the other hand describes the number of uart
> > data structures to prepare before registering them. This option can stay
> > at its default value of 4 since for one it can be changed via a boot
> > parameter 8250.nr_uarts but also since
> > commit 9d86719f8769 ("serial: 8250: Allow using ports higher than SERIAL_8250_RUNTIME_UARTS")
> > 
> > the kernel can register uarts dynamically that are above the
> > SERIAL_8250_RUNTIME_UARTS threshold.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> There is a competing patch set from Francesco being submitted as well:
> https://lore.kernel.org/all/20231201171544.1901-1-francesco@dolcini.it/
>
> looks like some coordination is necessary.

Yep, thanks Florian.

Heiko: should I include your needs in my patch? It looks like these are the
days of the 8250 uart, I sent my patch just one day before yours.

Francesco


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
