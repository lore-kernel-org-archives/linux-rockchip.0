Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94DF3C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 13:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FYGK0Ov5Fywwc1sCQ/XriL+BG9wBKbPQp2ZGB7rQr4=; b=mElaZKtnDhf+xl
	VRWZUZxpYhv6a72L4LiJTmfigvXBpTq31z0Kv6Zd7vYnuBBGbbEo4yBctTN/+IX/IAoISm4UPd6e9
	OkdyuoIGQcNtrt6exUUpoM4cXAL4VSCxsgNHd5sre5qM0yk8zrJ8yFRxP39Zcs4Q9Zg/FnakBR2At
	qnm82AFpRaKkUrCCwSnFv3hlvl9ERRSd0f95Iywymnvde5xdcH/NeKdVUNw3NgKQI+pN9Yu1KoE8X
	GvfbPDFK4LTS7YSY7NzBNqmg2QludWV0VwlK3d3YyWGuAt/BOv36CNvr4AP82S087RoyniNM5+hSa
	1S3nzJWseyHBxhx5ATEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKHys-00000005EeR-3D4e;
	Thu, 20 Jun 2024 13:37:38 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKHyo-00000005EdU-3sJM;
	Thu, 20 Jun 2024 13:37:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C1832CE241E;
	Thu, 20 Jun 2024 13:37:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69671C32786;
	Thu, 20 Jun 2024 13:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718890651;
	bh=cxA9qeex7zQ8JZ19/x1r+X8Z7iVYFPIwbUp5sBzinOw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=CZ87azPAEEPqLLHaAENbr2Pocud31sXetaaMKDH9nhIZVVh12OmlMEfgvDyvuuwhr
	 D3adxtVVoJgtVtameew3xuR1PUiepcux0XmUNj2yt30UgnBNaBBMJuXEsfGki5/m/7
	 RcLPCi3z6I2zG0Ak0K04EPbGYWY87zcgs4YLqnmq5HwcvDba1Y2Vtr/Qe4Lcsquvvd
	 3z3ADpq9nTkVKcQR9fklkCFomV2mRSFNrZNZDHV1Q4vvIEiSJyQ30XOGj+AuT1XCCq
	 cWN/fWZ7mxxYnlbsXxhqFY+QFCGyFGsPn5yR/U4/4+D7D8ANxD6HX7C6p3v6kqnPZW
	 /0fMS4LL29X6Q==
Date: Thu, 20 Jun 2024 06:37:29 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Cc: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, davem@davemloft.net,
 edumazet@google.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] net: ethernet: arc: remove emac_arc driver
Message-ID: <20240620063729.55702736@kernel.org>
In-Reply-To: <7d208e8c8bb577cfc790fd24cf990684020ee7c5.camel@redhat.com>
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
	<10d8576f-a5da-4445-b841-98ceb338da0d@gmail.com>
	<7d208e8c8bb577cfc790fd24cf990684020ee7c5.camel@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_063735_170183_15B2A680 
X-CRM114-Status: UNSURE (   6.86  )
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

On Thu, 20 Jun 2024 15:19:24 +0200 Paolo Abeni wrote:
> AFAICS this depends on the previous DT patch, which in turn should go
> via the arm tree.
> 
> Perhaps the whole series should go via the arm tree?

FWIW Heiko said on patch 1 that the whole thing should go via netdev...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
