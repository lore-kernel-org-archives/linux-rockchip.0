Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAF68C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 07:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OS18a1XrkGLetNAmgKs+PlWydvmSZNhuemnus9d2j+8=; b=cYKlNBz+7KkFaV
	b8jle/zcEsuRSghtfWOywF6l9172flDnAdCKeIO9EAeQFH1pMN2gATn+uAM4dRwIQc38HTFYa06Wi
	+07tP7yXHiC4YyxutAlZAQ87kJi2CGo5AGUMmdGyLooojtCCT+aTdU1V66gHI7JuGuhmanpceWDhi
	IigLY9RJ/3pF6Zoyq6UARAdR9kLVrC7OmAZQk89+WaOJA9QGC1n/Udf8pPstkX4Fw0rvl2Yh3llLo
	Fwxpwizsvk/RvPOFt7ASIwwHD181J49bMsLBGNkpJcOgp3lATotC2YWSZ/pKxlu4u4E31w1MHc+98
	feva2mQnBdnD/wFm3IYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHhOM-00GTNx-5l; Wed, 09 Feb 2022 07:27:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHhOA-00GTLS-8V; Wed, 09 Feb 2022 07:27:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BE8AFB81F16;
 Wed,  9 Feb 2022 07:27:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CB3AC340E7;
 Wed,  9 Feb 2022 07:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644391659;
 bh=OJvm1A6pDfiZ/Vq3R8cpstnj4FnW2flkaQ6gkEpC+CU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EzIcFnpKOHLF0hCQXS68sK9fBYL1sA56ob89NKnhCVtTL6fVaZrlD8PO9n6vxqfyQ
 8kFfLoc1IEoaO+984K1zUWN6jKjX0QYJBwgoOj3/1yc45I0mbmCRmD5JcCXlAqEBAo
 v6s+PZHWykCJC44W6Iq7Zk8gzs945MnOj7IilCd+DCrFGtBYWlWIoe0fKkRHan+3hp
 MxJ2CuilFfHlix2K843FmQAyTjqKF3jD4l6cYCA1h4tL8+9YW2LvjCW0yyVGdWsoxK
 EKWWL4veNUIX7gQn6z8wkYMifpV1Y6xzP3dZkBtb+4Eu5mmomt7HlCCmyP8aRUmwTP
 u++yOXbYflMkQ==
Date: Wed, 9 Feb 2022 15:27:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org,
 aford@beaconembedded.com, cphealy@gmail.com,
 kernel test robot <lkp@intel.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH V4 07/11] arm64: dts: imx8mq: Enable both G1 and G2 VPU's
 with vpu-blk-ctrl
Message-ID: <20220209072730.GF4909@dragon>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-8-aford173@gmail.com>
 <YfBJxmgwLGbVqGba@eze-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YfBJxmgwLGbVqGba@eze-laptop>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_232742_450870_868DE5C4 
X-CRM114-Status: GOOD (  17.40  )
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

On Tue, Jan 25, 2022 at 04:04:38PM -0300, Ezequiel Garcia wrote:
> On Tue, Jan 25, 2022 at 11:11:24AM -0600, Adam Ford wrote:
> > With the Hantro G1 and G2 now setup to run independently, update
> > the device tree to allow both to operate.  This requires the
> > vpu-blk-ctrl node to be configured.  Since vpu-blk-ctrl needs
> > certain clock enabled to handle the gating of the G1 and G2
> > fuses, the clock-parents and clock-rates for the various VPU's
> > to be moved into the pgc_vpu because they cannot get re-parented
> > once enabled, and the pgc_vpu is the highest in the chain.
> > 
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> It doesn't seem correct to have the Reported-by on this commit.

Applied with Reported-by tag dropped, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
