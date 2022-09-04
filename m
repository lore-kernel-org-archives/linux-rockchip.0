Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 867FBC6FA82
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Sep 2022 15:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJpjOM0YHhYT0kzyNJ6XVpx7GwicaxmkdEB2y4IAasM=; b=LTc/Mb7jjfgwkR
	Xm8An/VSoFpbOoSB+coqBhAo6lns3vRIFvaa4Mqqx6j5rlNQ+faNkMxhKotfnqvQY6J+HBB0gmT4I
	YdoDcBvSEYDFR+JtXwC1T2xioNv1z+7vKFdADvzepTOSA5gcmATWrya5DST56qwJUyXG+3aLDiYjJ
	JusZRDTcNyVG20muacb2FVYO7SlbU5LyMZG+uwcokmkN5qh80aq8TTmSStr4kRaWRAhQVxNolJv3/
	garO2nH6mZ+8vSmpcAzTbjtm/eeVfDHhVQRRO71faJX0mdTLJBT1vbO4HkLgHheLaBl1VONU17mPv
	H7H/VJ4MrbV8vtv/FNgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrTq-007WHk-UN; Sun, 04 Sep 2022 15:24:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrTZ-007W9V-HN; Sun, 04 Sep 2022 15:23:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DDF8F60F36;
	Sun,  4 Sep 2022 15:23:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2C03C433D6;
	Sun,  4 Sep 2022 15:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662305036;
	bh=IUGYHmtAUfAccRR1FbzpWQzSqcWDUTuXiOiqyYMbwm8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZmI6XA26LGv7twEb1KC8RRUcQw/fkcoY+bq2QO/eg75ajxcW7D3f7ywPUlL0/xuxs
	 Mth5VfJmaE4tuWeXGSGR5odChRumnuzs/AbJSu7nGzMtF9gW3TT6Dy1wzhIaFa+k6E
	 bu/QYOm7qvtjuczNmt0zJehOPw8I0DUdTN4h6+BpNIGiQ+4WWEMsCZsuoK0QK/FweU
	 1AIV+GzPn+9uXgzcjb1IP7lorrSN5fsJdVGJ6b3I+/f9g07C+Y1B8A0XK1+Ptd1rC8
	 twFPNRteXX8rWj0nnR+OJ/JDV+7XNE7l5gbV3yosG5hVAgULPsvtbu9aP0BLnt72c1
	 aFp+94aDauaeQ==
Date: Sun, 4 Sep 2022 20:53:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Samuel Holland <samuel@sholland.org>,
	Markus Reichl <m.reichl@fivetechno.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] phy: rockchip-inno-usb2: Return zero after otg sync
Message-ID: <YxTDBpkllQjf0nIW@matsya>
References: <20220902184543.1234835-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902184543.1234835-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_082357_684788_606DBB96 
X-CRM114-Status: UNSURE (   9.65  )
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

On 02-09-22, 14:45, Peter Geis wrote:
> The otg sync state patch reuses the ret variable, but fails to set it to
> zero after use. This leads to a situation when the otg port is in
> peripheral mode where the otg phy aborts halfway through setup.  It also
> fails to account for a failure to register the extcon notifier. Fix this
> by using our own variable and skipping otg sync in case of failure.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
