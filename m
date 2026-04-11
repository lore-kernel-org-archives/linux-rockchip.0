Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB669F44842
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Apr 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tW2ZEH37hwslFQ6ov+yeozhwACGtk1c8uB2EehbR8eE=; b=G+Zp+LqcCxeWUi
	tOMP3dCXnDfPjFHMrTKd+U4oSFxC9bjzsv2z3MnFHTGZl6LyyqrQ0OI+IVghjaiqucV+Vp4Tc9E1I
	cKQwSLxaExbXLZdzZl9bm97MliQwbmUvT2aft25Os/gToKQIbePZ0V5u7EKYjeBoIxZRjNVh5k/Mi
	ijQ9GUKW19lOskz5UcrR+wKayq0JMUksC/tSguw2Mr+BqqpFc5eCgQdgomStRAdy20B+zjrrkYtwm
	99ipwIQly+xE+1hrHhFUZZrmj2MCnUbHrfVYByorLcHWXlOzieh063nQtGN+Jg5SDGEow32TbrEWR
	cx3D9kYLO/pBWPPDIseg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBTMH-0000000DFUS-0YKo;
	Sat, 11 Apr 2026 08:06:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBTMD-0000000DFTz-39Ep;
	Sat, 11 Apr 2026 08:06:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 799F843296;
	Sat, 11 Apr 2026 08:06:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC498C4CEF7;
	Sat, 11 Apr 2026 08:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775894779;
	bh=BFlObOZeCKW1kez1s3sdnqR/uS9yq9vy54bq71cFFL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DEaEHBwJZOMvMvl5ETbmP1KK61OErN6X47FyIIrizbUxVqR2tAMMHbCZwOimoxd/0
	 3Utqa/dh2iqYRmmqyUih/a4ut4J6MGVbRvJICxSAr2rAz1T5ZLXFuux4FEX+uTdX57
	 By4sMD286ARaIKJkep9e687jtGfTmpBEXZLeWVJZNQVesrkGsUn2/o8Kfh/kSb0N9x
	 7yoiUGSy4geQHchyTqW3NLLQERJ0HX5HcBCWJlGMFB9iG/gRJgPEDc96bd9JEyAdGq
	 2TZ/Stuk3H56Ofi/Kz74wAh0pqDZOG9ESsjijlwmdYmyNlZonZFZ7GlFT8gQmJN+2n
	 vFuLEV/Alvzjg==
Date: Sat, 11 Apr 2026 10:06:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts32 changes for 7.1 #1
Message-ID: <20260411-voracious-innocent-stoat-74a79a@quoll>
References: <2771700.BddDVKsqQX@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2771700.BddDVKsqQX@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_010621_808600_571421F6 
X-CRM114-Status: GOOD (  12.38  )
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

On Fri, Apr 03, 2026 at 03:25:36PM +0200, Heiko Stuebner wrote:
> Hi soc maintainers,
> 
> please find below Rockchip ARM32 DT changes for the merge-window for 7.1 .
> 
> 
> Please pull.
> Thanks
> Heiko
> 
> 
> The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:
> 
>   Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.1-rockchip-dts32-1
> 
> for you to fetch changes up to 94c8dc1fa8e1ad4037084204152bca1e799d7d1c:
> 
>   ARM: dts: rockchip: Pass linux,code to the power key on rk3288-veyron-pinky (2026-03-24 17:06:35 +0100)
> 
> ----------------------------------------------------------------
> A number of dt-schema cleanups that are log standing, so not suitable
> as fix for the current release.
> 

Thanks, applied

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
