Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEAABEE4990
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 18:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=094Wybr6XfRiAXjuT4JC4EuACanhB1kMf3mOAe+hgsk=; b=ivA2D6Jh7aFISU
	oPL8ddF7WF1OKxzCqnYRH5gxBy+a2fUFA02piIZPl+6O7MgdoDTCxp1qO5AawfhPG2Fl1KqPJSvF7
	XBke7Wjx/uJ69hCQ3Ntz7zkhU1lh9BUbMoMZEL7hlsL5Z7GaEdrheFAKRXH9g03cwvVxQsqCFaIUl
	GVe1sL0IwUrCP28JmIRsqzCn9k7lB7hPhouO0M+m8QhX2QmapGhsxKpd8vcrXg4IHi1PdsOX5dd2b
	medmg1XSc2ovkdb7cUV388wwe7CkWd3bdD+691pww4F13JXtGCF+ds2pNsItflqW19UdK3zyR9DGj
	NYrnulIB3oZmzG9Yq+Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vae3f-000000059us-3nVD;
	Tue, 30 Dec 2025 18:02:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vae3d-000000059uM-3e2e
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 18:02:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D57B43654;
	Tue, 30 Dec 2025 18:02:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE973C4CEFB;
	Tue, 30 Dec 2025 18:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767117777;
	bh=iEJPo+RclQgKvgaNojcfutzZClUtmHHAkPxNewG49s0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=luy/Uv7k8FTMztHjS5L7JajzUoQCQsQzLvjCoJRgbm55HJJhxoMSmC92Q7VHvdfbE
	 2mUCgAJ0LDJ0v0N6d/mTojzJ+KnQFwvkhi7zJyWFH9LLe04lALEZGkocwBfz15/DPI
	 N+Gq4Je+5qppS1Cttc7HnyyPlaPIsHc37VZVjoKGyM1umdZZRoSfAmj4LifHLkRKi+
	 CmACICSn17+Ri+umY7IimYQqODE7D2PtjnjoMj4bnZCyiDIqg2ciB1jv2qGKIUvtL1
	 ycFxqv1ElusfYHvqvBCyX5ZH8aK2n7/zzu+xB6q7Rd70SD7VIYQtVsHU4U9Z3jcXBc
	 V99y7VAIHpWtQ==
Date: Tue, 30 Dec 2025 12:02:56 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: honyuenkwun@gmail.com, i@next.chainsx.cn, heiko@sntech.de,
	krzk+dt@kernel.org, linux-rockchip@lists.infradead.org,
	kever.yang@rock-chips.com, michael.opdenacker@rootcommit.com,
	devicetree@vger.kernel.org, jonas@kwiboo.se, conor+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: fix description for
 Radxa CM3I
Message-ID: <176711777554.871580.14571318556214839794.robh@kernel.org>
References: <20251229045838.2917-1-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251229045838.2917-1-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_100257_942379_67DF7D31 
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


On Mon, 29 Dec 2025 04:58:37 +0000, FUKAUMI Naoki wrote:
> "Radxa CM3I" is the correct name[1], so fix the description.
> 
> [1] https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
