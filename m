Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7F3EEAA53
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 16:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPLRwDjK4jotdTKbwBJQU7wT/vHztOramR2AY64hpj8=; b=ZEHeWl2SV2eyDc
	jDVWjv+yyCAcvqj1qR48J7tIhYNJEddC9jkMYPeekqIIUgcP75TIKdangXZCKIe8HjfqABlFBk8YS
	oIjaBSj33Bq28KmV2ELgwkBb6GH3BPGxeff2kdLJE9f7YWQybJxoYGSTgx2h2/BYoe+UazXgiPh8G
	7JAhmfi0WjBUTomjimXczptJwCiyaE0IcOX0CR7vyf6hpXVmhQgJRBro60kNoptXHxmVKCEnxVLoR
	kb/lDkYq+PZGqoZ2hdWXZ6m0YsQEDZQ6kZT+6llqFMJsx4D0LE0gbR4h3SfGspNaTGMa8hjDehh1p
	9SorVB5pxT+V7BVT5f8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgooF-008rQA-0d;
	Thu, 14 Sep 2023 16:03:15 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgooC-008rOo-2I
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 16:03:14 +0000
Received: from mercury (dyndsl-091-248-132-131.ewe-ip-backbone.de [91.248.132.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 246C0660734C;
	Thu, 14 Sep 2023 17:03:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694707391;
	bh=Lpo0D5uC86cqxCrdA6YYcvZKX2y1l4IotVy9sVD5T/I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fD6F73IQ9Q7/RyvDWXsECQ4MTFg4+R1Gp7rA5B8bfbOfTsrATd53jT7h99w4VXRGA
	 wXthMaAOQ8M6NwD64yiK5g/o4nJeZZwnv8AuUqPaHBhLJ0UBfujxOX1kiJHnBjs1sK
	 loLXb24hpyHy1Cn9T/Q7UYB69K6RmSH0ZrG+iaxSE8UeWhF58o4y3+HFvSiKb9FcPM
	 gvKaWojS6OXvR+s9UMOexS4E4RkGzDYl6Ur1VOjthX9ATXTkDOE/Lg9DXI1ZPwm7QX
	 Yqf3VVNZZXlDL1E/H2QiVH9Tj8bafsMly0M+EZEbg5wiwMy1TMzYK3uhQ5Pr+EGRbq
	 9SxbUvjF+w9Ug==
Received: by mercury (Postfix, from userid 1000)
	id 920D6106098B; Thu, 14 Sep 2023 18:03:08 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, 
 Maya Matuszczyk <maccraft123mc@gmail.com>, Lee Jones <lee@kernel.org>, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-rockchip@lists.infradead.org, stable@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230612143651.959646-2-frattaroli.nicolas@gmail.com>
References: <20230612143651.959646-2-frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH] power: supply: rk817: Add missing module alias
Message-Id: <169470738858.752995.6010965090137450989.b4-ty@collabora.com>
Date: Thu, 14 Sep 2023 18:03:08 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_090312_940926_79DCAACB 
X-CRM114-Status: UNSURE (   8.63  )
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


On Mon, 12 Jun 2023 16:36:52 +0200, Nicolas Frattaroli wrote:
> Similar to the rk817 codec alias that was missing, the rk817 charger
> driver is missing a module alias as well. This absence prevents the
> driver from autoprobing on OF systems when it is built as a module.
> 
> Add the right MODULE_ALIAS to fix this.
> 
> 
> [...]

Applied, thanks!

[1/1] power: supply: rk817: Add missing module alias
      commit: cbcdfbf5a6cd66e47e5ee5d49c4c5a27a07ba082

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
