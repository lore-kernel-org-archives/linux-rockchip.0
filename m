Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34AEAC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 21:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=797Za9dI+jH+u7jiicoteXsjcG1lORbZCF55jaT3TKM=; b=sVWk8VYsYI/MhE
	UfC44IeI92qQft8NAqWLe1BXZo9xkzdEZzGp1fUcn073DFUhj8UV4X2q4ZSl6MCrukIu2s838wIz1
	usVRb6aE8q0LiPP3Xq9wJPzqtFCWuYu+nfEdqkxS9rG+HXLLQRmykrlyr5NfpZEl1brHmQyV7K9hy
	a7UenOLFZeitC+kp2WbwO96R0zwk7lerc50Q9BltzqEO8q/GED5sC44zAGx3Efd8Eo1w94pBiko/g
	OhxqrV82PRbUJuW1gHHRg5bFqgPyOasVHdLswoWEja/yLvtLOXTrJHVxjR6XL9msPpQ/qmxq8lzco
	gy1ToBVZZhrXIyTjuTRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZdGI-00000006kRT-0MDc;
	Thu, 01 Aug 2024 21:23:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZdFm-00000006kJF-25nC;
	Thu, 01 Aug 2024 21:22:31 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sZdFk-0002Iu-2c; Thu, 01 Aug 2024 23:22:28 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
Date: Thu, 01 Aug 2024 23:22:27 +0200
Message-ID: <7179578.dE46n4Xy2H@diego>
In-Reply-To: <20240801175736.16591-1-jin@mediatomb.cc>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <20240801175736.16591-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_142230_570555_A0CEFFAC 
X-CRM114-Status: GOOD (  17.66  )
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

Hi Sergey,

Am Donnerstag, 1. August 2024, 19:57:34 CEST schrieb Sergey Bostandzhyan:
> Hi,
> 
> as requested, I am resending the patch series, now with hopefully all
> relevant addresses on To/Cc.
> 
> I noticed, that a DTS for the R2S Plus is not yet available, while the
> R2S is already there. The only difference is, that the Plus version has an
> eMMC, so we can reuse the R2S definitions and only add an eMMC block, which
> I copied from the DTS in the friendlyarm/uboot-rockchip repo.
> 
> I applied the same DTS changes to u-boot and tested u-boot 2024.04 with
> kernel 6.6.35 on an R2S Plus which I have here and the eMMC became visible
> and usable.

general remark, please don't send new versions as threaded replies to old
versions. The normal case for git-send-email is to create a new thread
and this continuing inside the old thread confues tooling.

And it's hard to follow too.

Though hopefully the binding might still get an Ack from the dt-maintainers
so I guess don't resend just now :-)


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
