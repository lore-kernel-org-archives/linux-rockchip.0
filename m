Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A62BCEB2CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoecYs/kTnxpRVKh89mby6Hwpo+KibI4Z2nYZupmXME=; b=ofEmqrEmjIv6+x
	idDnV7z7HDW9EP2gtKJ71H62Zl0LOyBCLI4YP2RlE1lHdWwoQh6SPUKY82RTqmLu/tjBZrFNWWoq2
	hH8l3bZ0SSoZ0GfGtgmRP0A1k/bP9CAKSMIjvx0LOXFN15RS67PDryfKbrhEWqVYnf98lKgctUAea
	M8wZndrp1/EeBz/XFTVSnypEvVpBE81efUKYHeerPtpE9/M7Jb1LlwfxhKkSlT/5DjMCY84fgiS+j
	Dm7LbV7i8InbWkw4gHWSneR/lv74rbteY90BxqkfC05jZrKgR5YetCAGTaIBfha3Lce517sDB7YdJ
	fd5wxdcBkCWtqRCaVytA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCnw-0000000Df12-2UnN;
	Sat, 15 Nov 2025 09:42:48 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCnt-0000000Df0Z-2mt8;
	Sat, 15 Nov 2025 09:42:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 62E6640F84;
	Sat, 15 Nov 2025 10:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763199762; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FBn2uCQLq/EGJJqCPd52OCAnYeNta9e163MwUwrIP1Q=;
	b=KEPIayOCDkJaICHXVtBk/6q2ymZba6rbil4oa1+z35iVZ4sPbdVBsDcSroCOAEmQw2EqzS
	vw7J36AtQ+hxgnmyjyQBsSgg3OOPN81KV/TvIuVwaT9b10pTdoM31/gH+KAGwTvOBWKI97
	/+ivnot5bOrYS6KpYyV+toQ6sOkb3Ztt6NWfLxSu2d4S5oCoLwVe4l577dfFqSOQ9RQUgj
	b/9fwDXztOG9RDqq0ZYDB3NfGJlRcM+7kqaSh7+KWOkCPLRWSv4tPVbp9JSnSqvc2/TXW9
	xGZ6p3zmLFvmOWJbPT2fCwqfUY/xZwMfgrv06H9u0It+nAIMR0ndygAy2fPonA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>
References: <cover.1763197368.git.geraldogabriel@gmail.com> <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com> <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>
Date: Sat, 15 Nov 2025 10:42:40 +0100
Cc: "Geraldo Nascimento" <geraldogabriel@gmail.com>, linux-rockchip@lists.infradead.org, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>
To: "Dragan Simic" <dsimic@manjaro.org>
MIME-Version: 1.0
Message-ID: <7d300769-9803-9c0c-60bb-4a724619d8e0@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= drop max-link-speed =?utf-8?q?=3D?= <2> in 
 helios64 PCIe
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 79fd1ee6b46a4d5bc75ee1800a866e5c0cabd930fd8d0f33d70452539bd7c99d792844c6f78cc1edc19ec7c0b159150d703bb5216ec666c196796747076035b9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_014245_898394_39F9961E 
X-CRM114-Status: GOOD (  18.46  )
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

On Saturday, November 15, 2025 10:36 CET, "Dragan Simic" <dsimic@manjaro.org> wrote:
> On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > Shawn Lin from Rockchip strongly discourages attempts to use their
> > RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
> > failures that may happen. Even if the odds are low, drop from last user
> > of this property for the RK3399 platform, helios64.
> > 
> > Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > index e7d4a2f9a95e..78a7775c3b22 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > @@ -424,7 +424,6 @@ &pcie_phy {
> >  
> >  &pcie0 {
> >  	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> > -	max-link-speed = <2>;
> >  	num-lanes = <2>;
> >  	pinctrl-names = "default";
> >  	status = "okay";
> 
> Looking good to me, this rounds up the prevention of issues
> coming from buggy PCIe Gen2 on RK3399.
> 
> Please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
> Though, could you, please, add patch 4/3 to this series, which
> would remove the redundant parameter "max-link-speed = <1>" from
> rk3399-nanopi-r4s.dtsi?

Sorry, I forgot to note that the patch summary would read a bit
better if it were reworded like this:

  arm64: dts: rockchip: Remove redundant max-link-speed from helios64 board dts


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
