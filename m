Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB2F2C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 11:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHO/PyMF0Hx0SPN0VGgb5HELtSzsvxjWnErUnMHNkIU=; b=JG6Zvc/tJCBzDD
	cwo8FHZwxklhNFj0g3nyo6nXxX7IOtf+w7bIRgYiHeMRXy1tqhJ7HwbTu6HsVP/5st40PL1+GXt/d
	SLGN1SmvuMYnUD1oX9WkNgZqoWGOkK/ajPqxg9oRhqS5m3qynOhWa3JfEbtJ5yJpBL3LEyVblV0Lo
	XNS+NHlCqZPmhTxPguRJGImOsV8UxGu6rRdIrRd/OZEo3xjSqTjtq4XIzXi5bGhpaxuRB1FuSHsW1
	FIhw4QSq10Ti/0DR2LofKY8Xud4klFS9eWeonKhWKdiBqcaSbalc7s3v7Iq5SrlxwW8yRIJ1cxPVr
	oV1ds937JXS1K9zQuFYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbL3x-00EkAC-Aa; Mon, 04 Apr 2022 11:40:01 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbL3m-00Ek66-Kd; Mon, 04 Apr 2022 11:39:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=mkeyhSxyusAHKnALY1uDS0yoYbKp/eWJvkf6lcIQ/ow=; b=Fm5GA
 TBQNzVNjpeMf6PBUOAJ9pNHY3ubuipR2YgkdzmOpAhyPvBAigkYuaS6Bt0qztNTinj82y7cY5wrzk
 8M49jVH8ViVvLkqvhIPegfDZSkhFhWx36ewZbiITh9OAsu/ycpVz5a+dHUtHxUCoYRX56bJiAK7Du
 5/r0ZfI60FYkAuR0uw0E2vD0KLCxNiNvj0S/TFUIfUgPVBbwx1rf4dVqqyANjk28GnrUR1GqUamEM
 1umr5Lxo//WXFEco/mu2E/pvtYSX3Ndk1cB0o5G+FHykx0xxC39HxCfCUddgMQnD4J8a0iDbj4wVh
 IyGkZNPCSsaO8V3OeZwvbDozc22qg==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nbL3h-00054c-2I; Mon, 04 Apr 2022 12:39:45 +0100
Date: Mon, 4 Apr 2022 12:39:43 +0100
From: John Keeping <john@metanate.com>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 18/33] crypto: rockchip: fix style issue
Message-ID: <YkrY/9xE702mqKR/@donbot>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-19-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401201804.2867154-19-clabbe@baylibre.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_043950_707923_4721E586 
X-CRM114-Status: GOOD (  10.51  )
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

On Fri, Apr 01, 2022 at 08:17:49PM +0000, Corentin Labbe wrote:
> This patch fixes some warning reported by checkpatch
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/rockchip/rk3288_crypto_ahash.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

There's also a badly indented comment in rk_hash_run() which could be
fixed in this patch.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
