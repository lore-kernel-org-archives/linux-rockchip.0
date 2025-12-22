Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43BA3E674B1
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsaoiP+497QIQi+0wYTZuXwhoOIplF/+iTbaFxRpb/4=; b=TEY21h5qiAQf6u
	04A1kdQdxNk6it3FASfKVSgOnaphVl4fNqzH3jDeQhO56gV2A3tnL9rvGU0BUEIrqKjyn/n5JJFgZ
	oE53tl/OHOx6UC44rnAOSIfSTYsger0LGChNQVbGpF3Q8OJwW+zMsW57ntBv05DUVfbwaTFQ0vDmH
	naejSDikdgP8XfdhPCzLFjlV4ZtiPmzpn0d5VwcPivlBRjfbUaNWrRHLJzjKT3k3h8K4iYQHDdVd5
	ohvKyImlL6QB3idsN4UTC66UGZjexH7y+vPDPdTldAxzs/vqs66u2uDHSKZ+AopsERwcIeW/aFFs6
	WYM6PTyAeUog9AS5Ujmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg7p-0000000Dp3L-1cev;
	Mon, 22 Dec 2025 13:39:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg7c-0000000Doy5-3Xoj
	for linux-rockchip@bombadil.infradead.org;
	Mon, 22 Dec 2025 13:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=8WOqfT0iXUSzbNTa8nAUHhSbOAmz10UkS+7JzgNrtjw=; b=cGYt0gmnCJsCTq0KdJh9cxa9Yx
	3LULHbwwEiH7Hu4ye0wZvKH+l4mILKufIa+24NT8XgMtkaaB47xjhk/5ZAYAUOZa5t7/f0tKcs1eT
	6xMBHNdEUYsvFnRU488D0jQBGeAtQWxFz+QGuoiiuU78EdLanvZS662UHoAezmX1OCJwW0zcg5pM8
	hOQ1NNyvMvqMJ5mtyARwfixV1tzAx+PLWon30MbtDq6wwwJnJRckCmyJ0+tMT0xh3bun4hcC66DEM
	ggEab2mW+sSy+VThjR7CsUcIoG6Z/7jOqPfOnQWD2+jQycrtHjwyj+Ih3mlL7UOhHCo0lEbKe8kwM
	SK1Bsu8g==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfG8-0000000F3F1-3X75
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 12:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8WOqfT0iXUSzbNTa8nAUHhSbOAmz10UkS+7JzgNrtjw=; b=rHrHYFL5PwnRRsPxLr3aK+RpVO
	OIC38pXMVpGXnNN4zlPYcZSrZ1w+U6UiP15rrfENe1uCmslW0lIe1Vck5p158S7xmGTPbMfHKKyEC
	O2GZT5zU1IlLeI7UWFf8MyumU+kqRMQ3tlq/Y/Tk+f68TnZf+l2nJpRBGeY2O3anX1YkRNeiSLOEt
	ryqTHmtUWy8bKFvSONHmE41PEKOsrODBQ8d7oDE7M8CkjtDRcqkkdvdxS9513yyc4x0m9PTuqAB9H
	xFW/TZsMe46a6PA1fEQhtVufRuYjK6wl9eN/uuevhqzLvszMxWQ5k9sxQoqGzlqi/iK9bA1FFAxT6
	YKFZNy7Q==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXg7L-0005s2-T1; Mon, 22 Dec 2025 14:38:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	brgl@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	didi.debian@cknow.org,
	wens@kernel.org,
	nicolas.frattaroli@collabora.com,
	detlev.casanova@collabora.com,
	stephen@radxa.com,
	sebastian.reichel@collabora.com,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [RESEND PATCH 0/3] Add Belling EEPROMs found in Radxa boards
Date: Mon, 22 Dec 2025 14:38:26 +0100
Message-ID: <176641067344.1648325.2735972831616663937.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251202084941.1785-1-naoki@radxa.com>
References: <20251202084941.1785-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_124333_031640_1C855835 
X-CRM114-Status: UNSURE (   8.68  )
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


On Tue, 02 Dec 2025 08:49:38 +0000, FUKAUMI Naoki wrote:
> This patch series adds Belling BL24C04A, BL24C16A, and BL24C16F EEPROM
> found in Radxa boards.
> 
> FUKAUMI Naoki (3):
>   dt-bindings: eeprom: at24: Add compatible for Belling
>     BL24C04A/BL24C16F
>   arm64: dts: rockchip: Add EEPROMs for Radxa ROCK 4 boards
>   arm64: dts: rockchip: Add EEPROMs for Radxa boards
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: rockchip: Add EEPROMs for Radxa ROCK 4 boards
      commit: 1b2d6b75e2b3374157c9015435381b217a887145
[3/3] arm64: dts: rockchip: Add EEPROMs for Radxa boards
      commit: e3b12fc3336240e7dee4989b9e8634be3c959c94

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
