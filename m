Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AAE4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 07:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xN/7c+N85jsqkgydQ7oUmoSuKFfc0BgfZpP3esFb3YI=; b=lnSvhkid6H6O+K
	wJz5RQCiQX5DfHsRQWC4j3BAmuXt+3yTQePuBqrzTdXPbCCWA8/iDJfWmNIEugY1jmbp0Tf0Q4cWz
	wRnBljdSQt1HkeDIc3h8EuotlSI3/geOZ3d10CA75Y6NwB0QPIeEc2iEMuLAnhqzfETbSfFnP5VmU
	JPhhDRkNghCUenemLrjqdnTTV9Q1wYsu2p/lSXGXtO499RTYkGuDEjJg3lB7vfuo8YvbYof+Q6Sf0
	CMUShncyeABxHQEXeCgjHsXxtJEFO7w5kzwlWb0/INRyak27Kba/2DvvdVp4s64SR7Dyg77P6s64g
	BlSpHpSPHwXlLVi++dsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHhVi-00GUpp-UX; Wed, 09 Feb 2022 07:35:30 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHhVW-00GUkh-9g; Wed, 09 Feb 2022 07:35:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0EF93B81F03;
 Wed,  9 Feb 2022 07:35:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A7EEC340E7;
 Wed,  9 Feb 2022 07:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644392116;
 bh=p/fVFN4fhl2mww8hF6/jEu3Mn0a4mJN2CbZQGUxSDBg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PBBnP6pIN3DyDXScZiMzazjCU6A34llpx51UlEWh15wRsnIRnWFpwpi0c+s5e5WGG
 8WCMjFw56wrlbESJvj/0QbixjkDm8ObJVwD2MXxmkgUd/dVsQCD/FXYOcBzCNyaUy6
 Cc2jnclMX7Z1EzZUoBktVKZnYGraRDKyzH09Vqn3aWPd5a5AlwMvSpdLK592VwOO4m
 8LX4/87Hf5gbe7gKJ0nWHTm2qLNqmQp+4GVPmqAYK4SrIMQR7Oj8PPs9ni6heVBZsf
 RRXopnekQYlrsSqoht4fuEU8mDSq+PAtS8iEnOwCkTbYlVCW/2bpal9cirwYzNnmkY
 SYA7sSKfJekAw==
Date: Wed, 9 Feb 2022 15:35:10 +0800
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
Subject: Re: [PATCH V4 11/11] arm64: dts: imx8mm: Enable Hantro G1 and G2
 video decoders
Message-ID: <20220209073447.GH4909@dragon>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-12-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-12-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_233518_502509_73E0CD51 
X-CRM114-Status: GOOD (  11.32  )
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

On Tue, Jan 25, 2022 at 11:11:28AM -0600, Adam Ford wrote:
> There are two decoders on the i.MX8M Mini controlled by the
> vpu-blk-ctrl.  The G1 supports H264 and VP8 while the
> G2 support HEVC and VP9.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
