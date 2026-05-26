Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C70BCD5BC8
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 May 2026 21:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJlvJhKY0UuPOdL5eEzzIe26GGqyMfpbIqaiOvO+3zM=; b=mjOoPTzKMUb3Fo
	VZBmucDb4+cb1ev+onPyAns+CTS8RIGQtQoIHN8oO2wjuK580vPJXLRkZYHr1aDoU1SvVQPdAEiFB
	irrhVGcDH6NhJCd0DdQUbgCdE13gQsHmyojyT6zBBzUjkD+NzVyWyCoMkTq0ZgDKXV9jY1kxZi6EY
	UDIhwk9CN8Oo+0NNjKRsKHqkcltgo279sVEPn7qLJjUSZ+mRAKB9wg3zH9uHz37dE4SR3hmup2Xdm
	Y1W194yd2MuMr8vKO+leXkav/a4KywlyM2JSFKYTZhVSePy8bYqyK2BmjQOO1n1ZH0JcNRbIaqkJA
	kTpmPYxsBqrUzJLRpyEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRzDk-00000002ynO-0jN7;
	Tue, 26 May 2026 21:21:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRzDh-00000002ymc-47rC;
	Tue, 26 May 2026 21:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WbDb9YkHx6AT5r/Pg4RhEIPrqJEwMF1h0tAcjN0Lx/4=; b=BsVrLoaeREjYWqWLJ7eqrCZXE8
	2qNj1Z2GdkJMQDTzT/gPf8fs9rEFyPAOFNAOHpAwcEoEynf9jacDe2CZ7d80dGm12+1vU2S5lvknF
	sfzCgAK962V1PDcw0cEjTzUWliBfULDnca/TxGJqB/57FYcodOVziohr5BEmRAchMBjrbvjoR6wRD
	mXZSWaTjOwgM04EpRxYSYZKCdRlWvwySkUuz9ACrsC2fdt0psrUDVuCi25WTkqPvCwrfBcnh5EKCb
	XG25nhws3bmKYHJyjUE/02PhMXfkIInzKfLmatPDwWmCTO8tFZmQwi+7xWpwXpkMTeEfMkWkIK1dc
	zah1qGNw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] ARM: rockchip: keep reset control around
Date: Tue, 26 May 2026 23:21:35 +0200
Message-ID: <177983049250.3704703.14589803670953387395.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260521210915.2331176-1-heiko@sntech.de>
References: <20260521210915.2331176-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_142150_027068_DB04D6D5 
X-CRM114-Status: UNSURE (   8.81  )
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


On Thu, 21 May 2026 23:09:15 +0200, Heiko Stuebner wrote:
> Do not put the reset control, retain exclusive control over it.
> After turning on a CPU, the corresponding reset line must stay
> deasserted.
> 
> This also avoids calling reset_control_put() before workqueues
> are operational.
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: keep reset control around
      commit: 6fc5666aa576c6c3bec256fa31d72653210319d5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
