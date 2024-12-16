Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58EB4E77183
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 08:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKcBcJl74imJdCixA6reArbkQQGV9g5bQHi2FB6dAv8=; b=n+nZM9wF+zuUle
	RIYDoeYxqZP0/ll4xVnjtX7AM+BjEfnKYd6302ImWCtBZwJtihkhFHt+uaK5gD/T2iCRpkPgZGtxC
	sS9Mcg9zNJ/REFQkeLQrFw+eb6h6DzuNt/9Z+DHaA/MAbJbhOedf80afLElaNmcdVuScWl7cRRDIR
	wHHQWbN4IWtni03TeZwfjm9y+3dqoAWj9Do0PBOoYISFEcO68E7671NNOSYf8I/3JkHbDRvqbXmJS
	1Ix1i/67sv6OZ0vytRn4v1jtXVknxdEfXKhO4jemUvhjKErcHYqZg7+pxO5h44hyIwg0VbmKLFedm
	aF4T6LoNoBX/pqOMpBCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN67u-00000009LOk-101T;
	Mon, 16 Dec 2024 08:06:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN67s-00000009LNi-0b4j
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 08:06:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=A5bn6knJzryQkL3CzFo6N9Sn/p2Hmwhbnzw0riz5FFg=; b=ECH6F9SKAjLOnyVZlDYnaROKFR
	dvcSxcJHpddOUv1Ru5GftxVGDdyAm9823UZ66e611HdEez9PdFLdwjmefqym0lIgvzvIhuEde5PBf
	uDKGEapBIqJJ6cPAuhdE7W5ICZQzj03g/A2Z1nHfncmBGZibEvdG91sI+4+qhlqAoJhg0BoKWsEqo
	QRHAdUn9FFzsjlXCDHuTOrK5ogk9ImFuTq6jY6ANDD13hBoahgEhsbjcV3E6f+rKXtjHhuNSQCeLB
	lFOR2a1TNlQbRx/+HB2T1GZMIXbnDNaHEI2FUk6aB76RMYaSzvt6CB7iXAyhJ16GYQ96liAgkV1F1
	73qcVMQA==;
Received: from i5e86190a.versanet.de ([94.134.25.10] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tN67b-0002tK-W4; Mon, 16 Dec 2024 09:06:32 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: mchehab@kernel.org, linux-media@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, Andy Yan <andyshrk@163.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kever.yang@rock-chips.com, sebastian.reichel@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] media: rockchip: rga: Fix Copyright description
Date: Mon, 16 Dec 2024 09:06:30 +0100
Message-ID: <3258928.5fSG56mABF@diego>
In-Reply-To: <20241215093051.3447711-1-andyshrk@163.com>
References: <20241215093051.3447711-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_000648_175260_489CE4AB 
X-CRM114-Status: UNSURE (   8.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Sonntag, 15. Dezember 2024, 10:30:50 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The company name has update to Rockchip Electronics Co., Ltd.
> since 2021.
> And change Co.Ltd to Co., Ltd. to fix mail server warning:
> DBL_SPAM(6.50)[co.ltd:url];
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
