Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B150BC27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 21:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNZTuIYJ+q6pT9FDhD16bMxixrTjEoYZhBS6OV059PU=; b=EsrwO0uLajzISK
	3VrZPCti/9C3/pDklKUDyf2NooN7XoaoNdseBuY2aRdqyrBzzuTgRw9z8677ZI/tRUbEiyD5/VU5W
	wss/YVgdnc0wHFqmct3BsoUtybzhg+BTi0kZ6oU+rce/lKWD+xXM0wancM+R14jT5CRSNVzDM2V0m
	qIVp9w04lSKM73mKuEiaOvn2DOLzFXbyw7LzIyARuV30Hsy3av+7pdBAegXsCWDdtERv0bvcE1Two
	XZfUTtTQuLEjlEr1FdfOlS/sl0r1NUx4T69oqGDFDP5fW9PuXezy5OLtrPJkUZI29HJC/M5yDks0H
	tfQ/ham8P/QL9MOeGrrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJic-0000000Cf6Y-3mYX;
	Mon, 17 Jun 2024 21:16:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJiY-0000000Cf4j-25fZ
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 21:16:49 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJJiS-0004O2-O6; Mon, 17 Jun 2024 23:16:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2] Revert "arm64: dts: rockchip: remove redundant cd-gpios from
 rk3588 sdmmc nodes"
Date: Mon, 17 Jun 2024 23:16:39 +0200
Message-ID: <42969001.doPnVEEUbh@diego>
In-Reply-To: <20240613001757.1350-1-naoki@radxa.com>
References: <20240611120645.457-1-naoki@radxa.com>
 <20240613001757.1350-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_141646_593103_48E13028 
X-CRM114-Status: GOOD (  11.59  )
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

Am Donnerstag, 13. Juni 2024, 02:17:57 CEST schrieb FUKAUMI Naoki:
> This reverts commit d859ad305ed19d9a77d8c8ecd22459b73da36ba6.
> 
> Inserting and removing microSD card is not detected since above commit.
> Reverting it fixes this problem.
> 
> This is probably the same thing as 5 years ago on rk3399
> https://lore.kernel.org/all/0608599d485117a9d99f5fb274fbb1b55f6ba9f7.1547466003.git.robin.murphy@arm.com/
> 
> So we'll go back to cd-gpios for now.
> 
> this patch is tested on Radxa ROCK 5A and 5B.
> 
> Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

applied as fix for 6.10

sidenote: please don't send v2 patches as replies to v1 but instead
start a new mail thread. Tooling like b4 does not cope that well with
multiple patch versions in the same thread.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
