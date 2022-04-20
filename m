Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06031C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Apr 2022 09:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kcws0/7Rl1fmFuqUiWVBNgz00qmJyLTfDUGM7/M+Gmo=; b=qy5O7pGFd0HJVh
	esf1tkEVI/dTb7cLeY2xJT7X0eHZHPet14CVRT2rBLOJfUvvRjL4lx/ylJs7n2ZC5FBFN1DdwfQT0
	ktvhq6WovoYC4NsgVoykShI+zkKIGaycx3urrw8/vPWnyM/PNDEOoMEV7VJH4vu5tHwIm5OBOph9I
	66y1Xe1L5kGUTh1IG+hF1qbGZr3fYcdrdJpZJrzR+SNiLeYP3lHydArbhU4amv7s4zESjAmxkVOw6
	imMI6x1qs/1GkAKgnfQqpdCYcjREotHXAxO8GtmJJD7huO3vUXpA03OFuhAUqhQTsZ7+ipfhcaD2c
	IrItVD30R8tBAHWjMjHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh6Q6-008GVj-4D; Wed, 20 Apr 2022 09:14:42 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh6Ph-008GLu-VE; Wed, 20 Apr 2022 09:14:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 89AA4B81DB7;
 Wed, 20 Apr 2022 09:14:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A20E4C385A0;
 Wed, 20 Apr 2022 09:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650446055;
 bh=YkQ1BmgnVigFA6crl28MszPDelfUPLDxv+xYc2hZRn8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qSCP5bRgdtkG5ATn4Ptdiy+vscoyQ4iSOfOzruELSKXONsYoiFZ5EKiPoyGGG3FBD
 oiwMUVKb5m2ySu5hKHppfWdDE5qmX6C6PamGD1E9T/ARojLwaNV2QH8PHT3S2ZbHqj
 zY4BnASVL6D8FAv8zSwu2hn26QIFYjJct48t/DC3xSc12Sns8evZ1G7T7+HbZBYNfi
 LyjlxMSeZ2GDM3+qXepCAhEuR0mAf4yyw5pn23rn/dQn+kP4gk9oaPsLPNzTOxyd2g
 ANa+E6lD2XmzYUrSNWnOYHwTzOPmgJpwL9ADAFpoJc1OHwQ/ZdbIRsDbmXlKUfR48a
 5Gvg8z/ClfINg==
Date: Wed, 20 Apr 2022 14:44:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/6] phy: rockchip-inno-usb2: RK356x OTG fix and
 enhancements
Message-ID: <Yl/O4uCTlacfw2Pl@matsya>
References: <20220414032258.40984-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220414032258.40984-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_021418_202715_AD4B55E8 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
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

On 13-04-22, 22:22, Samuel Holland wrote:
> This series gets USB OTG working on the RK356x SoCs, as used in the
> PineNote tablet.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
