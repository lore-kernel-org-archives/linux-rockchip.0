Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFA02C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Oct 2022 17:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MuGC9jZDWKvn6JZpY0WBOkWvV1cnV+tBClBu00wKFQ=; b=EEoqXtoYUy5E45
	KCnJrT5r9RwDR4GSwtiCqofeIVIIXNA/i5Eqd1/6N4X4rOJGhBLPkTpb6hI2vKBUKCrBG94IlAm5q
	ltMvlJf7hHBkhz941ITRZtlrBxPPpemnLVuyOCuISCJLnm91melqGQFrUEbzUwHGQwDrbvUZytSJv
	iGIvZnzPIp/aj0+Wt5NTpyraL1FwK28j0krHJ7gpEl1fe/Kv6DvtvwxTH/ky9SRAWMzxBizE+K0jG
	71C0jHMLk4RQBvYgobhKOanYKh3wqz27qyLomfvmPGh9H8pbi+MbQVmbM4khdLDbz17cDNFzA3K05
	wdPpRYTvqShNdr0O6rRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olCfa-004W1j-U3; Wed, 19 Oct 2022 17:15:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olCfQ-004Vyt-Gi; Wed, 19 Oct 2022 17:15:45 +0000
Received: from p508fdae2.dip0.t-ipconnect.de ([80.143.218.226] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1olCfL-0008VN-NU; Wed, 19 Oct 2022 19:15:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Greg KH <gregkh@linuxfoundation.org>, Quentin Schulz <foss+kernel@0leil.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>, linux-kernel@vger.kernel.org, stable@vger.kernel.org, quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH] arm64: dts: rockchip: lower rk3399-puma-haikou SD controller clock frequency
Date: Wed, 19 Oct 2022 19:15:38 +0200
Message-ID: <8130714.T7Z3S40VBb@phil>
In-Reply-To: <52349f5d-661f-3e38-9745-01a84ddf820f@theobroma-systems.com>
References: <20221019-upstream-puma-sd-40mhz-v1-0-754a76421518@theobroma-systems.com> <Y1AQHqm+cOmrrveJ@kroah.com> <52349f5d-661f-3e38-9745-01a84ddf820f@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_101544_584129_3E4AC790 
X-CRM114-Status: GOOD (  17.72  )
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

Hi Quentin,

Am Mittwoch, 19. Oktober 2022, 17:59:54 CEST schrieb quentin.schulz@theobroma-systems.com:
> Hi Greg,
> 
> On 10/19/22 4:56 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Wed, Oct 19, 2022 at 04:27:27PM +0200, Quentin Schulz wrote:
> > > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > >
> > > From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
> > 
> > You can not have 2 authors :(
> > 
> 
> That's a bug in b4 and my patch submission/mail sending workflow, I'll sort something out with the b4 community and send a new version of the patch soon. Thanks for the heads up!

I guess, Jakob is the original author?
If so, I can simply drop your authorship.


Heiko

> 
> [...]
> 
> > It has to be accepted before you are done :)
> > 
> 
> A "small" detail :)
> 
> Cheers,
> Quentin
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
