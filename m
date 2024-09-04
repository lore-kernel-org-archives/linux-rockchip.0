Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED42CD4F23
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 19:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+YTAJl98tBmV44DCIdpX50daOTUaXEn/4jWFxyJP7M=; b=FTde47nq2qCKwa
	BT6Y49i1hrSALV5SACdEwL/00y+782+qokB8OVsHlzK7v0qjfCA9kYaef/lCk58h8CI7S1N6qxqtH
	O+g3kHSDUXLFlXrxLB7gjt3FoddUMkY6RZ9nqWhMwLVEzLF2zqQNxtDG+9G2u22gLjqa7RwY2c4V1
	H/SXoJbGxYXJRJHHpXEr2K1asqc6Sh/Mrm4aI/2aYUzqdDIk6dHfAfuQIBjUszXBkgIk8rETu0w7u
	rePJ9C9RtY1v7jFvdrGcHNSBIg1HxNQefGbkXHm5o+MemxzTGVVKsMLowOui1yf++viw1eZVqelvJ
	VRgpdDecoppRpZpFiz3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvLe-00000005k4Z-2zs9;
	Wed, 04 Sep 2024 19:07:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvLb-00000005k1m-2yRN
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 19:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GRIhV8EJ18XsxUgM17+QjvH2OazywnHcDlKuwOJzSr0=; b=u8X8ylbFCHLxVnLiI7P1NOvzem
	KWC4B613yzKJx2cql75lH5tSN1cJzC6P4X7hV38EJCDgUG7TdFpRG71pqedx4meb1sY2Pl9DuwNbj
	CovzfxK+p+15ob0IUudSjlY3ZM2qegNxiojTWMTuhIx2Qx0nYyVam0DXqcIOrDED2+is7/Ep4qUB/
	yuagIMgX/Jzp7Hf98TVbCawbM63U2hrUcSxgdnYyhtsVvm8DVqdrvC+lZAWxc+zhQ786s2mb8l/Eq
	Xj4YE3VdAcy9gIFwEN2QuvcdHXJzg+eTzZIUF4mPTqIjcxvUFp3HLAJd2H2qsHvdWh5qzyb+4uPYn
	oqeJ8n1w==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slvLZ-0002Po-6q; Wed, 04 Sep 2024 21:07:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	chris.obbard@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: remove duplicate nodes from dts for ROCK 4SE
Date: Wed,  4 Sep 2024 21:07:03 +0200
Message-ID: <172547678277.2721598.14544672396353596614.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903073544.2161-1-naoki@radxa.com>
References: <20240903073544.2161-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_120719_765367_BF0E3735 
X-CRM114-Status: UNSURE (   9.64  )
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

On Tue, 3 Sep 2024 16:35:44 +0900, FUKAUMI Naoki wrote:
> these nodes just define same properties in rk3399-rock-pi-4.dtsi.
> remove them from rk3399-rock-4se.dts.
> 
> sha256sum rk3399-rock-4se.dtb generates same hash value before/after
> this change.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: remove duplicate nodes from dts for ROCK 4SE
      commit: 2edb4f0ede44725ad88534e73ba15213cbc7d556

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
