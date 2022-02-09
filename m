Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2643C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 07:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8wP9QU4HVTTPYhhXB2Xykqoh+faBdurKXNlFxdJ5hM=; b=m2wTkTHPP88Kcb
	71ckwJrtv3u+HyanY/HBcG0OOPjjIIYH7zIRQcbOP/eYfDl6Ob/eS5wqvgDyza/EPONycY/2dH8EW
	sLXrlpaiBh0gx0TLvc3JHbBA8knuaWGQ0VvgPBuaR4jrpsz89LZqCLFbXGmLvaCCKy+LtmUkREXVz
	iEbycx5kz327ifBL03b159Wj76J36invvgDrdEz8R8l3Bb5nMuT7ivQ5ApyzLzrG6DXaI049bHT6C
	owAEr8GpLai/TarhWdzPqgwhSeoJwZt3SWamBglUF5LD03q2yRtye/16yoW74U2+KcqwMgGp2IfOs
	9+Sq0ScH92/0RqY3OAKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHh7z-00GR6H-1s; Wed, 09 Feb 2022 07:10:59 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHh7n-00GR46-L1; Wed, 09 Feb 2022 07:10:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 09873B81F03;
 Wed,  9 Feb 2022 07:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62131C340E7;
 Wed,  9 Feb 2022 07:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644390644;
 bh=rxEgYRgCwh9LFZmjFE4yFU9bmXyedf1uJf5KWKZeimw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pF2VIo0xfzFKaABIHU07EfutScT1WHJ74mvcMYGyeh2ppZzaZuX2OUOFmeRK4vLS5
 tMGbYPMhqUpkntCw9DDn0LhzGO0hx28dhQ1RC85GvbyZ66meuWY4GN4oGikBi3SKu/
 i3lQ2D12D2M0o9EMxRfLM+u/PpzxTxvhQhsR0HdfUjF/42rkEbpu+rhCbkRmQ1uU3y
 0bVc/bkWyOSApdLAg5MlbghHHade1GTfBL8JMy93OCeXXSSTogyoWGLk6VWbWdt/md
 MifcnN7HRhbzKtyRTlWu2cVdLnx303IpkLU0mXARrqmLkTPIuZhNC5pUAw+o/bun7P
 PB7/SrSP9lpzA==
Date: Wed, 9 Feb 2022 15:10:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, aford@beaconembedded.com,
 cphealy@gmail.com, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH V4 01/11] arm64: dts: imx8mq-tqma8mq: Remove redundant
 vpu reference
Message-ID: <20220209071036.GB4909@dragon>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-2-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_231047_834626_713F8C20 
X-CRM114-Status: GOOD (  11.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Jan 25, 2022 at 11:11:18AM -0600, Adam Ford wrote:
> The vpu is enabled by default, so there is no need to manually
> enable it.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
