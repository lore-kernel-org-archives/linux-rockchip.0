Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E76606A333
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 17:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iwYWZLmQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hVV98mWg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/Yho9MvgVh/YJI7hDYflYhIA+gpLdTRIlIyaGW0DMcI=; b=iwYWZLmQ+JfAzeOZOrnByS8cph
	VDa6qfquepJv10tS6mg3xMtqWLnXQyOOqGlCeyA8ZEw4Pmutj5Zb/VN1maAx9zopLTz3xtT6fJDMI
	8Po6GYeBQXQjJiTtmC/ss72tBtPV/iKDka1U8BmPfUPsWfJNKSJgI/IxJZt937pYDiVEXgZKu90/F
	KuJVxtzdrKzxuo/qC6JmFr8v2zp8BMSbPsbkdVd8pBQ/lAikBy81gN3nozhit5s0vpgqJsnWwpXVU
	LFyIa8a9le8jWB3LYtvPkn9g7dPvLe/x33sZZSjr8/gf6bRruZDiD40794Jua67/AiK48et/G4tqj
	q9b1K+/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRYrI-0000000AnLr-0kyw;
	Thu, 12 Nov 2026 17:45:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRYrF-0000000AnLf-2aWh
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 17:45:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4BE4940C33;
	Thu, 12 Nov 2026 17:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D4CE1F000C4;
	Thu, 12 Nov 2026 17:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794505509;
	bh=4jMDsjxbugAtOBoa3f8eeISPB7oA1q97U22gbE5A4js=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hVV98mWgXMP/hfkd+VaQdraV7iMpieTzO0IW/C60fgRY6UR/kBdglVO6kkx/Wl8CR
	 vKJWcfcHLuU+bnUKBDZQZMGJbYf0f2OVEtQ1OCY7R7QyOutruuPguFAIXT4rRv86GG
	 o+68lSSJYLzngPMKdXiEVuHaTEWIX3Bmahipz5CZMOINat9EhRJlsH9wCSZi2pRIWB
	 tQNguPAOQ9IfquTis+ue8zGp6tX+6iw6u2QudTcXhXGsSqRIFJWfuNB4xL+KjLJiRL
	 6U3+3d0cQoCBuGNNHh0Jx7Go3QCdOocdXuKNUk24c9WIOr8AGmmnLx3MznAsN7YVjd
	 o5fak9hmirsNw==
Date: Thu, 12 Nov 2026 09:45:08 -0800
From: Kees Cook <kees@kernel.org>
To: David Laight <david.laight.linux@gmail.com>
Cc: Mariia Nikitash <nikitash.mariiaw@gmail.com>,
	nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	justinstitt@google.com, morbo@google.com
Subject: Re: [PATCH] media: verisilicon: Replace strlcat() with seq_buf
Message-ID: <202611120942.A91A689C5@keescook>
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
 <20261108200800.2b3b15cf@pumpkin>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261108200800.2b3b15cf@pumpkin>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 08, 2026 at 08:08:00PM +0000, David Laight wrote:
> On Thu,  5 Nov 2026 00:45:18 -0800
> Mariia Nikitash <nikitash.mariiaw@gmail.com> wrote:
> 
> > In preparation for removing the deprecated strlcat() API[1], replace
> > the strscpy() and strlcat() calls with seq_buf operations when
> > constructing Hantro video device names.
> > 
> > This preserves the resulting strings, including truncation
> > when the compatible string and suffix exceed the destination
> > buffer's capacity.
> 
> This is just stupid...

David, this isn't very helpful. I realize there are other threads where
you get into more detail, but as a stand-alone reply, I'd expect more
constructive feedback (or none at all, or a pointer to an earlier thread
if you feel like something needs repeating, etc).

-- 
Kees Cook

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
