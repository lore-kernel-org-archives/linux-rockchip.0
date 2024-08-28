Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25067C5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2jurOGxxxQuZ0MdBhVpjjiG3j2EJL1lkUmQevyAKFc=; b=cJEzOuLcFZdKJw
	qBJ/unNdHBG/ZrIi50T7/ShyRlv4NukF6gCFzULpmy2GL+2X2wAJkH4COibG0LZW0tnWUBMrmFKmm
	2BKvTz5UNAbv2aC9R40u1U+y7H+fDhHC/1CbXQQIV0G6ZWFx1VI04aBaOyiTqLHDTwTeYgtxKwiZE
	VO6nHziW3gu50T+Rms4fIaDL084qEnMKgxlQutfTedMx2qU31pLx46qdZrHGkkYzBW8VyU+JOlf3h
	LNtET0Fd7ON3vNPkNl7V6xUF+DssQl3+EZ7msY3U9TnzNTwfc3/pMTkZKFtUTjAbZSRtZgmyhZVav
	DK7g4jSf1oU4L4y9C9iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKog-0000000G1NL-0oIt;
	Wed, 28 Aug 2024 15:42:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKNJ-0000000Fuv8-1lkm
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 15:14:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Gm/qv8s6CUGA/8YSRDcILenQ5h27hXKEBWkvHSfaxHg=; b=KMvFz+Yja7BotZS3stzSJ636e9
	AkAtdIvHHdBTsHdO4XIJPffF+H7nJRhEmuMZz9Ygo7EFGHDWboYp+cAsQjOnCImxNPXDmo4HMb95Q
	qurKTrsTJ5ia1FEcP9KNDvybmORZl6rlvq2FKJzjFO4z5xN6T9pgpcZ5hf1WzqbUgRZ7sIH7Ic8nI
	W7trIldoNTFeidTMKuRmnNesZvF3YM1OM61gV+fzd9kt6zYv32j2eQ0lojYD7siKACJjMeW80dR24
	4zHGo2+vDLlSb7ovfwOO4WyuQMdwOJfvo4pwoiv5ck9UwLGd2buKPzC4W3hObocsHzTCxAXF6O7a3
	YEfUyC2g==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjKNH-00065f-H8; Wed, 28 Aug 2024 17:14:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: remove unnecessary properties for Radxa ROCK 5A
Date: Wed, 28 Aug 2024 17:14:14 +0200
Message-ID: <172485421377.1511809.2663736313893585918.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826075130.546-1-naoki@radxa.com>
References: <20240826075130.546-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081421_523703_4835576A 
X-CRM114-Status: UNSURE (   8.42  )
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

On Mon, 26 Aug 2024 16:51:29 +0900, FUKAUMI Naoki wrote:
> There is no "on-board WLAN/BT chip" on Radxa ROCK 5A. remove related
> properties.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: remove unnecessary properties for Radxa ROCK 5A
      commit: b8ac0cf405c2092decc5cc102ed3a2d5d3200ab4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
