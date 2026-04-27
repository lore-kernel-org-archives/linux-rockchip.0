Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21D35FF885E
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0z0QGd7cx20cqYoVN4I6n9rbRhHQVJBO3zRyr7ab4E=; b=O1VhRwNPPnnPDx
	zDGPmti86JiBObzvGuBht5YTd5CWRNk64NBB29CUqYXbMjVp4XfbyEqado3B4hc9A5i1vuebTiIh4
	os9DgyFH2JTN3pWo5UzfdJw138R/R7wLcAhuokSHx0LhA+3JPvDEd4znU4bCRKEhO0r8FAAVOcWL2
	pMhhQYqMSRvSWXbrky221dn+2rsV6Sos/Cm5V/7RpjvybE0YVrR66GoI26GvQIEEi5nwEP6xZ7Raj
	FhW27P4B/UXVsqVttMkw3Mm01Akgl2sczDTpUj+0BesIyh1883N7IlkeYywHoz3yAyyGiimXSJb0t
	TAxXHscBpIEAKf293F/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL0C-0000000GtED-0X2G;
	Mon, 27 Apr 2026 12:23:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKzt-0000000Gt5k-1gc4;
	Mon, 27 Apr 2026 12:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=RjXFmT2LqXRSu8h06jxFJOxb0tD8HtyilotvWU2F69k=; b=PCkOgY/gwufn3qjLO1D90peSt0
	gqH66VKYUFG1kRIfD4mPs5SIk5I9GchSQFz2LuwPWA9V76H6QGLyZ4ASY2Hq0OERD10PesisBcRLK
	WoIYOAoAewPm8p4X1W0RqPXZYCvhFnMdvdSM+hrYYK3FeZVAMsdFPLm8G9QRBNGJ9O0Atx+jCiOIC
	kUOlDRgwBqFNSeFaUpriuJdOi3/TTCaLnwIlsH12BkPz3u9FsrIO8f0K1ZrcCkrglZo1LqkmPf9PR
	NE1QfvRXrsN+mEp+dMLPL9j1dO+ebJ1pxYyGghSYILk49XYedfq8r3YJYS5KLUTBzzpRVYWHw8vej
	aLauU2lg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] MAINTAINERS: Add Rockchip keyword matching
Date: Mon, 27 Apr 2026 14:23:23 +0200
Message-ID: <177729258235.1866089.9356706006852644824.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260327-maintainers-rockchip-keyword-v1-1-7f4634f761a6@collabora.com>
References: <20260327-maintainers-rockchip-keyword-v1-1-7f4634f761a6@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052333_442933_A936B594 
X-CRM114-Status: GOOD (  11.54  )
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


On Fri, 27 Mar 2026 15:21:06 +0100, Sebastian Reichel wrote:
> Add keyword based matching for 'ARM/Rockchip SoC support'. This will
> match rockchip, Rockchip, RockChip and ROCKCHIP separated by any
> whitespace character or underscores.
> 
> The goal is to match arm64 defconfig patches, which should go through
> the Rockchip tree as they right now only match the LKML and thus are
> easily lost. The keyword matching is quite good for this, since it
> also applies to the commit message and the config options itself might
> not give any hint about being relevant for Rockchip.
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: Add Rockchip keyword matching
      commit: 803d2de23a9703705c1ed73b0c9f57e8db2c9c75

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
