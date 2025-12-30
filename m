Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45476EE4992
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 18:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHHF51flDUmPVSWBH9ks/ozrEb6YTnyMOStSx4q/DMc=; b=pGCNGgksyX/FQ2
	tPSDLyq1Vir3Hd0MRSdcd17DTnBval3o4qTnSkOKQD8hQD2B7VsOtS/gek6rwBCAqoYOTuRcyA0bq
	v7XbXqF4LCf0k3ii4grex/yMs4hk/dUmtElh7TL6haBDCom/z/JOPl057DRYljuVxb5Y0aHUHgV9+
	vwA5wkmKl5DacpzzICtdb9Lp5eke4figYyWu5yugPs+CUfj2yJkABT8UHJYeXPmsB45hgogcBKDC2
	HbyhIav6g5+qQLQIySTj8++tf7h1BSKKhWvQIiJpmkiC4uyzus+JChvRtLXE3DJ7oY9M15hfz9j6Y
	8qE3Em+rK38gajLXZYyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vae42-000000059yN-2mTf;
	Tue, 30 Dec 2025 18:03:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vae41-000000059yD-2BEg
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 18:03:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 981796000A;
	Tue, 30 Dec 2025 18:03:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27937C4CEFB;
	Tue, 30 Dec 2025 18:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767117800;
	bh=H9u7r07r8oeNwop96A3O/qOKh8YqoZQVliySjmPt5O8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HiURWpvhDyUA7UmLoZio8mS1/0L1ZdBfUM1JM135bHNFGKck+/Q+EmcuBVzpxP4p7
	 O1R3r59qTq32JqIdVBcyfP3eHWd/hhVBaNNa7ow6zKeHzKeAXS5ApH1qUOMWo73G9g
	 4hfrLfmWLzAE81YnCKljQ4Sd795XnVFLhq/dBa4jRmxB1ti1xWUzVQGyct5IqhE/A0
	 raKhIm+cfiu0LupF0c7AyHQMJ0lhFvPkcI+ujYv5kbcLAgLl1wYyME+9iGgT5/x/Kl
	 0gy59qSmVWi5fWcw5BbiTWiPJsNPovVjRI0Bz1vrWYHFiw28heS/hN59ORErJsYKr2
	 WrfOQK3wtYLzg==
Date: Tue, 30 Dec 2025 12:03:19 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
	krzk+dt@kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kever.yang@rock-chips.com, i@next.chainsx.cn, jonas@kwiboo.se
Subject: Re: [PATCH 2/2] dt-bindings: arm: rockchip: fix description for
 Radxa CM5
Message-ID: <176711779905.872882.4079419194603323719.robh@kernel.org>
References: <20251229045838.2917-1-naoki@radxa.com>
 <20251229045838.2917-2-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251229045838.2917-2-naoki@radxa.com>
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


On Mon, 29 Dec 2025 04:58:38 +0000, FUKAUMI Naoki wrote:
> "Radxa CM5" is the correct name[1], so fix the description. While at
> it, move the CM5 entry after the CM3I.
> 
> [1] https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
