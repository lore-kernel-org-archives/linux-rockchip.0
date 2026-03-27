Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B4D410F2865
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 22:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbsUUvDevy3USZou8NVMs7ClBqrbKr/AnU89XWxiQck=; b=u0gUIjN5nhDSyi
	gVW4UkymNiMsjhXSCs86XBSSfJqY9JCW6bM0ofT6ujCaU7/plfpmjv0Bld4tj7aLuceNLsEueYCxu
	LIHsYF3DRJqGz8T7p9jfNVs1RuFKFV5KqmfMCQuzZxZjlXo+vFEGhxi4ZYcryOR03pHjRrGpHG3HX
	YK+AzpBPcEsg4ejG4Bgz814n36QadfdXxqRgY9WaZW+HqQyLVl6DyDrJZ4G/CvKgMU7jEq9r2pJzT
	KvTdUSBdBOcnS3gOYmWv0iez1xsi2zYm5X5+GKi1lMVnkprQC5RDzmIv4ld0OsqvqZvAg9busdZoM
	p9nsdB91zV9vstT+bWLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6FOa-00000008Ghf-2Hby;
	Fri, 27 Mar 2026 22:11:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6FOY-00000008GhL-2a2P;
	Fri, 27 Mar 2026 22:11:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CE7F660054;
	Fri, 27 Mar 2026 22:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70823C19423;
	Fri, 27 Mar 2026 22:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774649468;
	bh=8VJCRTG8WD3XC0KXW/cifyktDXB0cqBeZOPOfzSOUKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hjE1lfkvrpWReQ0hAgpvoXUF2Zlu63xFrxXDZB83gcyWJL6gGM1MpplSdDZmGygUA
	 40yF0tziQsqDYqqdGKbVK+b8bpoLe2o/mhzN/X8JaOcAPpLT1Ti7z3LcdSx+TOrBmA
	 cQ+VvBm1k1TNIUu8W9bWzuLn41a9Uxoq00bRVy9gWF23wRiqMVdyiyPO8cTNkSmN95
	 QlkkQUi0MBe1vvHe91NY6Z8zKDljktggjCsniNgwl7TxcYg/1wAXEnm/hTkX/MKVLn
	 rtPhJY2YjJcPoExrucdCUOipDzVhqaDjNvalaWVY0TgeayzcYAO8puvbI3ITiOZzmB
	 CVxmt3Fi0bcuw==
Date: Fri, 27 Mar 2026 23:11:02 +0100
From: Nathan Chancellor <nathan@kernel.org>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Brian Cain <bcain@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-hexagon@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH] media: rockchip: Disable VIDEO_ROCKCHIP_VDEC when
 compile testing for Hexagon
Message-ID: <20260327221102.GA3621310@ax162>
References: <20260213-media-disable-rockchip-vdec-hexagon-v1-1-3f903398cc83@kernel.org>
 <90e62bf797b0532e5556adaf9e15cc7b73e18411.camel@ndufresne.ca>
 <1a618af9b6c311e8fe5db64ff6fb7c1872c7b2b6.camel@ndufresne.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a618af9b6c311e8fe5db64ff6fb7c1872c7b2b6.camel@ndufresne.ca>
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

On Thu, Mar 19, 2026 at 04:08:29PM -0400, Nicolas Dufresne wrote:
> I haven't heard back about the port to plain bitwriter. I guess I have to pick
> this patch, but I really don't want to have to maintain too many of these hacks.
> Anyone else with an opinion on the topic ? Or a better idea how this can be
> workaround differently ?

I ended up retesting this recently after I saw Denis posted a bitwriter
series and it turns out that Arnd's commit 446c6a25a449 ("media: rkvdec:
reduce excessive stack usage in assemble_hw_pps()") is enough to avoid
this issue, so you can disregard this change.

Cheers,
Nathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
