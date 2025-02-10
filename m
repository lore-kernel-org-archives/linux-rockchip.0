Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AC1CC02198
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 10:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/u51DNa6L2hpX0rHoDUVaJCu6T0958HtW645JMkLNlM=; b=jPTpKiXDeuACSv
	tdmQC+Ws5vLZu1CeDOxl6WbPEIR144fzNOp9Tafv/elduYVp24po241Qnb3IlhFkZ3ZN2wTHv1+cE
	4hIuItbZDkbaVHIFMmkAncWUDI+mfU5Uck556PWw+u5HQ65sxUuDqnXz2NwZY2hqLtsmzqeWioE8v
	QKyKhNyFGOJFF/o4OXbW57F/ar0Qe1nbbUoPGshE27S57w1ptfcf4ia3FjxEeKxzRkZAO4F40T8ww
	wZNHvOX1sTvZFbNyQeDFRh2io6pyxsyNOc8lHJbwsQMz40lcEWM5w9poCpTmlztJdSluiCEuZKnYj
	OpKfHp5dDsnQPiJW4zIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thQx5-0000000GzpF-0uTT;
	Mon, 10 Feb 2025 10:23:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thQtz-0000000Gyx3-34Ai
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Feb 2025 10:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=lrtcGSSs+fpm0QmaFhnyH0NU8hZUSvnsms1o4/us0ZQ=; b=fIoQAaovEPALO4/OXZB6JBuA0S
	qXrr8lN92PCwEZUFpgg1eGZLwCJRmr9EqIZ/fI7nT0/mUjVK5Fsl17skwh/I/CS9xK6FUXLqNencf
	X8ToFMcz0TP62HVnW78MK+apEPHOt5/jrXOpF7E8MfruU7knYU79M1+rWDzD4aQcVb8UYPo7IRHzg
	OhPzWITqF6TDPihIJBMHoCESoXvXs9GpFBmB1VB8aklyMyIcRI/Xj2IPmFmWHgA+yzmxq4EIt2XCp
	974MI1dkBj6UcJsrlUs1hdnsS596eqNHyORVZkgu/tWzOludPgNfYiniFkR+F/EhDJyt0sEJEUjDv
	CzlLq/Kg==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thQtv-0000qq-QA; Mon, 10 Feb 2025 11:20:27 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Date: Mon, 10 Feb 2025 11:20:27 +0100
Message-ID: <2925297.Mh6RI2rZIc@diego>
In-Reply-To: <MN2PR19MB3728A89B77464B7B10543628A5F42@MN2PR19MB3728.namprd19.prod.outlook.com>
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <40c37c4e-b98f-47bf-a4ad-b977be5a6d49@cherry.de>
 <MN2PR19MB3728A89B77464B7B10543628A5F42@MN2PR19MB3728.namprd19.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_022031_799563_D11F34DE 
X-CRM114-Status: GOOD (  53.40  )
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

Hi,

Am Dienstag, 4. Februar 2025, 17:16:22 MEZ schrieb Chris Morgan:
> On Tue, Feb 04, 2025 at 10:12:26AM +0100, Quentin Schulz wrote:
> > Hi Chris,
> > 
> > On 2/3/25 10:27 PM, Chris Morgan wrote:
> > > On Mon, Feb 03, 2025 at 05:32:53PM +0100, Quentin Schulz wrote:
> > > > Hi Chris,
> > > > 
> > > > On 1/31/25 5:59 PM, Chris Morgan wrote:
> > > > > On Fri, Jan 31, 2025 at 05:46:20PM +0100, Quentin Schulz wrote:
> > > > > > Hi Chris,
> > > > > > 
> > > > > > On 1/30/25 7:10 PM, Chris Morgan wrote:
> > > > [...]
> > > > > > > When Optee is not present or used, the node will trigger a probe
> > > > > > > that generates a (harmless) message on the kernel log.
> > > > > > > 
> > > > > > 
> > > > > > And what if we have OP-TEE without this node present, which would be
> > > > > > possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U-Boot?
> > > > > > 
> > > > > > I guess we could detect from U-Boot if a TEE is loaded as part of u-boot.itb
> > > > > > and fixup the DTB otherwise to mark this node as status = "disabled"?
> > > > > > 
> > > > > 
> > > > > Based on my understanding of how each of these projects communicate
> > > > > with each other, Optee can only work if you either include both the
> > > > > Optee node in the firmware AND the reserved memory nodes yourself, or
> > > > > if you have neither and let U-Boot do it (by including each of these
> > > > > patches as well as setting the CONFIG_SPL_ATF_NO_PLATFORM_PARAM). So
> > > > > basically just this node alone is insufficient for it to work today.
> > > > > 
> > > > 
> > > > Therefore I think we should either have this node defined + the
> > > > reserved-memory node (with hardcoded address and size if guaranteed to be
> > > > stable forever) added or nothing.
> > > > 
> > > > Can we mark a reserved-memory node as "disabled"? If not, then we should
> > > > rather have nothing at all I believe.
> > > 
> > > I honestly would just rather remove this node. The reason I say that is
> > > while we support Optee with the RK3399, RK3228, the PX30, and the
> > > RK3588; howver only the RK3588 has the node already populated in Linux.
> > > 
> > 
> > And we have a product based on PX30 that has OP-TEE OS running without a
> > hardcoded node in the DTS, so that's a valid point of comparison to me. That
> > seems to justify the deletion to me!
> > 
> > > > 
> > > > > The core issue is that Optee requires you to map the memory as
> > > > > reserved so that Linux doesn't try to use it. You can either do that
> > > > > yourself or you can have U-Boot do it automatically. Having the Optee
> > > > > node in the devicetree makes no sense today unless we also carve out
> > > > > the memory.
> > > > > 
> > > > 
> > > > We should patch U-boot to add these nodes to the DT if an OP-TEE OS is
> > > > passed and either SPL_ATF_NO_PLATFORM_PARAM=y or we cannot detect the OP-TEE
> > > > nodes in the kernel DT. What do you think?
> > > > 
> > > 
> > > We would have to assume some hard coded values in that event as I'm not
> > > aware of a mechanism to grab them at runtime from Optee except when you
> > > pass it a device tree. That said I think the concern above where you
> > 
> > Yes, but that would be the same as BL31 for example and an expected side
> > effect of using CONFIG_SPL_ATF_NO_PLATFORM_PARAM except if there's a way to
> > provide information back from TEE to U-Boot without using the params that
> > would be passed by U-Boot to TF-A had we CONFIG_SPL_ATF_NO_PLATFORM_PARAM
> > disabled.
> > 
> > > mention "guaranteed to be stable forever" is the problem, as even now
> > > the current address in the Optee upstream project conflicts with the
> > > kernel_comp_addr_r in upstream U-Boot, necessesitating one of them be
> > > changed (I'm attempting to change the Optee one, for what it's worth).
> > > 
> > 
> > I think it makes more sense to change the load addresses in U-Boot,
> > especially since those are just the default values for variables which are
> > configurable per board type, per board or even per boot, so it's something
> > one would be able to modify without necessarily rebuilding anything.
> > Essentially, it's easier to move that around than checking which OP-TEE OS
> > version one is booting before providing advice on where to load the image?
> > Up to you though, no strong opinion there.
> 
> I think I mentioned this but in IRC but the consensus was to change Optee
> to match the same addresses as the PX30 and RK3399. No strong opinion from
> me either, just trying to get it working without stepping on toes anywhere.

glancing through the thread, did you come to a conclusion whether to drop
or keep the optee node?

I.e. from what I see, having this default optee node _without_ the needed
memory reservation would mean that _if_ an optee runs, the kernel would
either possibly write over its memory, or we'd end up in an exception thing
because the kernel would write over firewall'd memory.

So at this point, having the optee node here, makes no real sense to me,
as firmware that would need to add reserved memory to the dt, could also
just add the optee node in the same run - as we do on other socs already?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
