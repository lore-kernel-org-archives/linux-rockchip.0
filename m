Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28780C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 07:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxz72zZR8nHY5Gl22kqJ594RYCRIhAgb8Vgb6AWhzaQ=; b=AhRKpLAsP02JSS
	w7yh8xz9HNaqdTfZg46n5PDdXb8SpC7Y6xoFkUMXjxn0ZS+HVxt+vfhIUgZdCLKeAr5a229UHULVi
	DLOtHM4jv9Jyf+hh2wlRJ/6SR+W3Uqwans+wbpG/6uOLQzjYkUu4u+ujUfFwguYaNmc9tODugojLh
	LLQDr7r0+pixBsltBCi1ZGAqWXlbdZZ4xvd1Gmh+o8+KYdTWZgO/cixY5SmSgtpqlwtklmk8xnmmW
	/mp9CgAcVyu/AtTaEln7UdX5ap/22Z9WOpiDBqN49JjQ1u1mnEUyynpxuDfEe6tNBGF46VYjf6NAg
	mO1guiiNMhsnbmpLIgxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHhGA-00GSUO-JW; Wed, 09 Feb 2022 07:19:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHhFz-00GSRg-DQ; Wed, 09 Feb 2022 07:19:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6783961758;
 Wed,  9 Feb 2022 07:19:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D64C340E7;
 Wed,  9 Feb 2022 07:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644391153;
 bh=bV1suCOlTh6KO9wlo9F1fSD0ym9tsftnqUQOzGts2tE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GrnQU/kBbBDXMnpom8wMOZqk/RecGdO/MYrY2WrJZAMnhQMZ1ZNsKwiZIU+bhkHJO
 9U68KcjoZW5ycfR9FrdzIJ/wRamRoI4DQ18fItEZroRcj25/VEWoGFDuVyCGe/YOpR
 6Wb5CLFNrG7/M6FarvHiUbffE5zRQEFnJ6WaGGepxqORyGoOaFltuCjOfUFWBUalRk
 zlwNhnU7C8LtdeD72TauwOvPWBSkxSxeeiFClSKlqbq/uai9AGnzQZhCdRV/m+iwVL
 am2YNj9YAKusLtQw5ngbR3kUsF6EIhx21aLtWtjzSjeqN0e20geWKy7m4fli7BJweZ
 QxeCHvizZ6w5A==
Date: Wed, 9 Feb 2022 15:19:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, aford@beaconembedded.com,
 cphealy@gmail.com, Lucas Stach <l.stach@pengutronix.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH V4 04/11] soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU
 blk-ctrl
Message-ID: <20220209071906.GE4909@dragon>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-5-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_231915_510123_4D1B5748 
X-CRM114-Status: GOOD (  11.41  )
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

On Tue, Jan 25, 2022 at 11:11:21AM -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the necessary bits to drive the VPU blk-ctrl on the i.MX8MQ, to
> avoid putting more of this functionality into the decoder driver.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
