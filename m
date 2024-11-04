Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0378DCFB422
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 08:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VAq/d1wWCuN4wCe7tM0dh2rkNUPxoXCdpDrsNGqha2U=; b=y61Np4xKjHP19J
	ar/a3fMA7wgM4/2+LNfvIo3+O/dsF1Xo/U+eAjznXXmwfbuNDwurFLLuKAOvTfUUIpder89/UhbWe
	/WahQiRWJRnJq1wBIp8iCuhk9Gr2x6UZqbyF2naKf+PREa3usgiIEOq8iA4658AzNEqMGDPbfCsU4
	VQM14Q4qlgy+/ZBMRFVL6zuy6gz/d2XpogMFb/5qI0wazJqPNoeCtazKjvXWoF5NBX4ThLOLhrKnk
	CNpSdKySK1ekSE51IwdUw/XFUDtMsJM5lfWABo9D3VNE6fDKKiHJ9GAHWBaPPnnMFCWf06N37IjVD
	YhmJUSY+x7nOOutE2y7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7sau-0000000Czhz-081D;
	Mon, 04 Nov 2024 08:37:52 +0000
Received: from mail.cybercitadel.pl ([57.128.173.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7sZr-0000000CzXP-2YSs
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 08:36:49 +0000
Received: by mail.CyberCitadel.pl (Postfix, from userid 1002)
	id AAA9B48155; Mon,  4 Nov 2024 09:35:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=CyberCitadel.pl;
	s=mail; t=1730709360;
	bh=vUvp0ttX3lOxjdOrvZsKvJKNpHHNusfF6naBdS8j1E8=;
	h=Date:From:To:Subject:From;
	b=yt6of2sJ1iLrtoTeeQeK/KbH9ZpYM8iYzfr6n1eoej/rG2d3jlfhFDPb69Z9h/uDb
	 Nh/kIkD7swV/zNJyZcPvUVsFmyAr1mPs2MBGo4eiUJaPpbLpVFHgvwV0Ug3T9l8Ve/
	 883g+a67CkkCcuh/iuocZCfOHUHV4Su8dupTPC96dYpk+F1/nPhYBMhQ5NrZTmI3je
	 DGtMX0Mjv0l0Sg4U/68osWPqdmp4NZ5mSE7/+B8R3iu4KbDj/gRV8Dglwhj2Av60Xm
	 ss053xKOvoXvKekBhEBA+mXWs9Jcb+Ey2PNOkno4yzxSZAgrSDhwtoDL/tH+7qwrua
	 AMZDFT493oFXw==
Received: by mail.CyberCitadel.pl for <linux-rockchip@lists.infradead.org>; Mon,  4 Nov 2024 08:35:48 GMT
Message-ID: <20241104084500-0.1.bm.1li9s.0.naabfzn6q6@CyberCitadel.pl>
Date: Mon,  4 Nov 2024 08:35:48 GMT
From: "Marek Kucharski" <marek.kucharski@cybercitadel.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.CyberCitadel.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_003648_367079_3AFEA178 
X-CRM114-Status: UNSURE (   2.04  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpNYXJlayBLdWNoYXJza2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
