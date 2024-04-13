Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 153A9C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 07:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VX5aQ22b888p+gcpHPxPOw9rqYCI7GMQ3XnPEV4caA=; b=gT5q/Y2ITjTzR7
	mu50RVTRmJozZU/vDxAigIEeLokoiZQYsSs2h+by1ebNfllrKMGw3SCxEad9tYLXW6sNXnRrSxirV
	GK4BajDzgx80OaYYPGyUxtQxH1cgNm92Hku+CaP+AxDZe/4kHfzKjkq1QPVKMLpIZ8YqsLJTQjMLV
	Zq9J6URJeHHqFE42whZDyjSlVCv3XVMSK5hhcPJGi0YIsPXcz/dNTvLzLM1cPgSJbgbn+zQZ5ZdRv
	WWqmv4B30yrQvrEpj+Xy4M3tP2U1UT4CMMIXmr4CjJN57itRFL2hOyZepxTOx4lzNMIpk1v/GEX8x
	kCc1UfExkA/fMtrqoW5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvYHB-00000002gdT-43Kd;
	Sat, 13 Apr 2024 07:58:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvYH7-00000002gbn-49ee;
	Sat, 13 Apr 2024 07:58:15 +0000
Received: from i5e8616c3.versanet.de ([94.134.22.195] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rvYGx-0001CH-RG; Sat, 13 Apr 2024 09:58:03 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-i2c@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
Date: Sat, 13 Apr 2024 09:58:02 +0200
Message-ID: <8358604.T7Z3S40VBb@diego>
In-Reply-To: <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
 <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_005814_064522_68865357 
X-CRM114-Status: GOOD (  14.51  )
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

Am Samstag, 13. April 2024, 08:44:41 CEST schrieb Dragan Simic:
> On 2024-04-13 08:38, Wolfram Sang wrote:
> >> Maybe it would be good to turn it into a debug message, instead of
> >> simply removing it?  Maybe not all client drivers handle it correctly,
> >> in which case having an easy way for debugging would be beneficial.
> > 
> > Hmm, but it still returns -ETIMEDOUT to distinguish cases?
> 
> Sure, but I think that having such an additional debug facility
> can only help and save the people from adding temporary printk()s
> while debugging.

Also we're talking about two lines of code, I wouldn't call that bloat ;-)
I was thinking about dev_dbg vs. removal too, but hadn't a clear
favorite.

So essentially Dragan is tipping the scale and I guess dev_dbg might be
the nicer way to go.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
