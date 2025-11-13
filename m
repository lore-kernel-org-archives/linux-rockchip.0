Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87D3ACD98FC
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 23:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/OOTYYgCF+yHKPWcuSV4t6L+zAoZNHmvdS84pF8Pbk=; b=34YPcIkVrbpXio
	OvzkAzqB15+R5B2rWN6KIDFsuBZgopWPW92u5gFpWSRs2WPAsaFjragq+S3S60wf/N/jeLZQnE7Um
	l+5zT0ugNj8m+eUJ2IU2x94+2FAvqRpJe3VJWtpXESwp6cfwlnXXTZueyNTOgo2wtlHvXZI6gJxZ6
	+dWcmFyuVltbTvkTTOz24IqwLD66qWXsj1muuU5U9OHqd1OktwXZK4LpO3WBNTh3rFluOg5atOPnV
	n/nfpwsT38fHMpBm5Q+Oxid0EdDT3Mos99g3JjarbwIXQXzFcPAo7y+xTUgYICi96S0IcqGcLh53D
	f4ggWfFkbkpQ0eSldboQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgOF-0000000BExn-2ki2;
	Thu, 13 Nov 2025 23:06:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgOA-0000000BEvt-3P5t;
	Thu, 13 Nov 2025 23:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=wxGxg/ASBCj1hc3/+x0ovtKw2jumr4r0H7rDgh88WvA=; b=h++2+o6IMis5bEQ5QJwmLr0Z8B
	30PeLQhnEppuYQLImKxYFGxzfVzbhpqkZPtIxRI/Tyrt6RPDWsleixrvoe1dW7cH6cRTbI7nwKnug
	uBI9pko8h8uMUDOvuo8Jk2rMkKvonWRqPZZSS2yNd6DflFnlIa+IjndHeTzAov/0AzWWl1O3xGhFy
	4d7I6s1tqB7g0y7nUffXVetCU46tB/Am2of0UJGEUE1jM0FBSz9fYfH+n4YvMKH56g2nS4SQ78HS+
	EFuEXpjs4bD1oKmx0SQipyynsAkgKTM+T5FAXxUwVVLJLHhstwI7ZK5TrCyNemcPMLGmNl9YDcnig
	ACzWPWVw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgO7-00000008JGT-3nou;
	Thu, 13 Nov 2025 23:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wxGxg/ASBCj1hc3/+x0ovtKw2jumr4r0H7rDgh88WvA=; b=TkAa9dwSavy/xZMqtksVmrvdXJ
	myhy39HhB9eCcot8Yjp32Xe+nXGCEXxRTdStPpFiSLkva1zQ+pYrdmh49gAhQUMNJbG7fJPKZOqcD
	h7m8Mbse+kr3ozITH0wv66v6NblYF9gERYK4P7mjiiGrYIoAn6QcgVGi1Dh0Xww4POOUWf0x9Gwbd
	bEHYNnTMG6IZvafvv4nVXv1R/E//SnpG+WsCiztTJE/sZKh2pognXlcK8pXuVe8TCnqfY6wk8iLYF
	ljuuA/fM+FqiQkOwj9qN4xWsRedV2DWDf7mGlmEmtik2hHquirnFf6Swi8xE+Fhn5KRLe4i8kr+q+
	lxpAEllg==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgO2-0005gO-6h; Fri, 14 Nov 2025 00:05:54 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Hsun Lai <i@chainsx.cn>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: rockchip: update 100ASK DshanPi A1 support
Date: Fri, 14 Nov 2025 00:05:53 +0100
Message-ID: <2041193.usQuhbGJ8B@diego>
In-Reply-To: <20251101120010.41729-6-amadeus@jmu.edu.cn>
References: <20251101120010.41729-1-amadeus@jmu.edu.cn>
 <20251101120010.41729-6-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_230559_969750_24003DB9 
X-CRM114-Status: UNSURE (   7.28  )
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

QW0gU2Ftc3RhZywgMS4gTm92ZW1iZXIgMjAyNSwgMTM6MDA6MTAgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBDaHVrdW4gUGFuOgo+IEVuYWJsZSBidXR0b24sIFJUQyBhbmQg
VVNCIHN1cHBvcnQgZm9yIHRoZSAxMDBBU0sgRHNoYW5QaSBBMSBib2FyZC4KCnBsZWFzZSBzcGxp
dCB0aGlzIGludG8gMyBwYXRjaGVzIDotKSAuCgpUaGUgbGlzdCBhYm92ZSBhbHJlYWR5IGRlc2Ny
aWJlcyB0aGUgcG9pbnRzIHRvIHNwbGl0IG9uLgoKVGhhbmtzCkhlaWtvCgoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
