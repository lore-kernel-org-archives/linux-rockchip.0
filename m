Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E5FCD13CF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 16:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrJm+XQEF+ACUOwumFZHYliVb/sqkprYQKk2nf+GNOI=; b=u4LbJfP1y5cfPC
	YmNQQOn9p9CLMyOvvyODdhU1YK2YIbn9rGJWs31Iz74Jx451A2T97RtAcmwWVazbK7O6TiGSvA9ky
	INsqqLJUBxxiKl1pdShjk5FktcdJk3ihip8B6WheJ8ZDumi4FYSVAlvhefspi0X+yUppl1i4+r/Vj
	RuQxAvu/7WtCaKwg4KmQ3SfEa8jwgMUBUshcOWJ9DrhMnlK0fk2FPyfBHjGPxuIcnMjWkqV/Kl+vZ
	z775XEDSZNErcWkIK5FOCyMdo+duEZYGvU8NMshXnOQ/7Z7GFCCScodP2cQ+gZid+HrQCDnAlGIyq
	rF49U5Ebab8unw1IHtjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slADc-0000000F4xr-0Q6T;
	Mon, 02 Sep 2024 16:47:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slA50-0000000F2lC-1NAW;
	Mon, 02 Sep 2024 16:39:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E10035C589C;
	Mon,  2 Sep 2024 16:38:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD0BFC4CEC2;
	Mon,  2 Sep 2024 16:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725295141;
	bh=THOWirjnif2PCoJgyUp+GH1dq/VbXAjyaMqmMGMYEYY=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=LZYQXRGGQMR4i8GrOz6Nvk9Mte2YR2JtOQ1HrrFs5dAU8NvnvkHkaLwCyexWjYdts
	 ubDoH6lTtoo3lJ3OMooT1HxkdZbjY2OsIB0QGT+ktHIytZ698mxNnQSS8fPTDY28G0
	 5iLvTPev/gqdUwsbixADfRCPPrbNp+3GDl8hm+nImdtoSaWa86BcbY+6Ei0RES8iLl
	 AOAwElrHsMcPFBvhvaafng1q0jE4Zz3SNXjQ9ZSUpJjLV86fRRbNj1QLcKXHOUcSMx
	 k95sFsMmx4WARbzCI8l80Ur743CDSkT9rtMZLfnPR3DkVwewHV8LU00ZRabUpGsRS/
	 frSCIn8VVw79Q==
From: Kalle Valo <kvalo@kernel.org>
To: Li Zetao <lizetao1@huawei.com>
Cc: <florian.fainelli@broadcom.com>,  <andrew@lunn.ch>,
  <olteanv@gmail.com>,  <davem@davemloft.net>,  <edumazet@google.com>,
  <kuba@kernel.org>,  <pabeni@redhat.com>,  <wens@csie.org>,
  <jernej.skrabec@gmail.com>,  <samuel@sholland.org>,  <heiko@sntech.de>,
  <yisen.zhuang@huawei.com>,  <salil.mehta@huawei.com>,
  <hauke@hauke-m.de>,  <alexandre.torgue@foss.st.com>,
  <joabreu@synopsys.com>,  <mcoquelin.stm32@gmail.com>,
  <wellslutw@gmail.com>,  <radhey.shyam.pandey@amd.com>,
  <michal.simek@amd.com>,  <ajay.kathat@microchip.com>,
  <claudiu.beznea@tuxon.dev>,  <u.kleine-koenig@pengutronix.de>,
  <jacky_chou@aspeedtech.com>,  <netdev@vger.kernel.org>,
  <linux-arm-kernel@lists.infradead.org>,  <linux-sunxi@lists.linux.dev>,
  <linux-rockchip@lists.infradead.org>,
  <linux-stm32@st-md-mailman.stormreply.com>,
  <linux-wireless@vger.kernel.org>
Subject: Re: [PATCH net-next 11/12] wifi: wilc1000: Convert using
 devm_clk_get_optional_enabled() in wilc_sdio_probe()
References: <20240831021334.1907921-1-lizetao1@huawei.com>
	<20240831021334.1907921-12-lizetao1@huawei.com>
Date: Mon, 02 Sep 2024 19:38:53 +0300
In-Reply-To: <20240831021334.1907921-12-lizetao1@huawei.com> (Li Zetao's
	message of "Sat, 31 Aug 2024 10:13:33 +0800")
Message-ID: <87a5gqko2q.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_093902_457692_B77C2BCD 
X-CRM114-Status: GOOD (  11.57  )
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

Li Zetao <lizetao1@huawei.com> writes:

> Use devm_clk_get_optional_enabled() instead of devm_clk_get_optional() +
> clk_prepare_enable(), which can make the clk consistent with the device
> life cycle and reduce the risk of unreleased clk resources. Since the
> device framework has automatically released the clk resource, there is
> no need to execute clk_disable_unprepare(clk) on the error path, drop
> the clk_disable_unprepare label, and the original error process can change
> to dispose_irq.
>
> Signed-off-by: Li Zetao <lizetao1@huawei.com>
> ---
>  drivers/net/wireless/microchip/wilc1000/sdio.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)

wifi patches (patches 11 and 12) go via wireless-next, please submit
those separately.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
https://docs.kernel.org/process/submitting-patches.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
