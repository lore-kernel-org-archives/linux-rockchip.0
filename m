Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 599B2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 07:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFL+xtcCMiwjRrdf85g2Z6qPV7jYyfJHCkIjlVoTdds=; b=o9Cjiyj+211Qgm
	PhTo0yACp1T88RsbPXEyLnjJ1IZuthAjkDU90PIFM9o/7N07FKYq6tmo76hRC+uBAE/d3XQ9yYpt7
	gf7YVLfsPolj9lzncTKB+1l7ZkoagvCaISxXQ4QwNq0OLsanwCcnXNiB6PTPMN5GokooIpEmVed6k
	D41Ir1kncUcqzAZYBqxSi8M3VemtmD7ylTLu2/J2xD4c6zx2UY436wDWtZU+TYtm0LuAlgubz6ihh
	vDCUwKx85RVEKKTsCKpdPDSn6SeZe7s0kXdJ3sWT2keuHerwj4MrM+LprikPSoPbNvR61bcHG1NZq
	EoOeo9vv+yNZZDapBMXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHhTq-00GUDa-LE; Wed, 09 Feb 2022 07:33:34 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHhTe-00GUAq-JH; Wed, 09 Feb 2022 07:33:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 55768B81F43;
 Wed,  9 Feb 2022 07:33:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 876DCC340E7;
 Wed,  9 Feb 2022 07:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644392000;
 bh=Rzge9oAQz4dbWS5RgHIqc15BqtGl9ShBQCtd3fASJXw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MvUqNy2tT+NEgFGw7BnwE2Dca4xIFY/4a8zTuBbAq8X+bRRoS5fd+n3jc7xHFXofs
 Iv85lAIGdgTVgh6uobVdjkdLI9yA1riob3q9a6h5KED5h4IpPHxFGj7oiiD2VJ7jSl
 5pbjHGHVB6y74cN4RNgdGmEvesH4bcNKrbyHDgnkEROJHeOfQuvXZTTD/a75QzqXF4
 65Z9uTDLZe9KKKEwyzV6aAn6bRQcs/qeGpEPyl0w+Jhfe2pAtvS1C+myuAu7jkyiNb
 /ONgmTQgPBK+l0HaxzH3wqHsBjRWu1X2VcNBCZOKj14aUvobR3mWwWp3IFuWumh0n6
 fjmEzKfij9bYw==
Date: Wed, 9 Feb 2022 15:33:12 +0800
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
Subject: Re: [PATCH V4 08/11] arm64: dts: imx8mm: Fix VPU Hanging
Message-ID: <20220209073312.GG4909@dragon>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-9-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-9-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_233322_780861_45094FEB 
X-CRM114-Status: GOOD (  12.14  )
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

On Tue, Jan 25, 2022 at 11:11:25AM -0600, Adam Ford wrote:
> The vpumix power domain has a reset assigned to it, however
> when used, it causes a system hang.  Testing has shown that
> it does not appear to be needed anywhere.
> 
> Fixes: d39d4bb15310 ("arm64: dts: imx8mm: add GPC node")
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
