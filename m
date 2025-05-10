Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6261AC3ABC3
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 May 2025 16:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bW7Gz5JKNAsOcIDIy0d3jgSacFpFERndJw0d6eUy+fU=; b=12SOF6lGel3CQq
	SggyKAa1hO/ivYE6XdkTtvAk69kaWjUXtJMuI1w6SyahE8ewhxzHF27bw9/gt2zidd1aZJCzqd8fO
	PcutZamFTluKB9sEhg/blfK90cEzs3xGaOZlbPg4pkxeD0eDoUaMtZP520shgD7ejo3RJT8Ro52ol
	7RqrvmE2D2TE6WNcdA5L8jPdRQMpyxXito4KAXT7AdsdFaeny8EwWdpAkZ2poMD+yqEQqq92jmQg1
	v7gZTd0sls6Mo4iRwv4VsJ8+zMjjxLyF7W0P27UNl9OxELPzWYf5GzjZNUXPUY8WoRT8l0Fc/9Xej
	BtjlRr+oBz00876h4lMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDmri-000000069eE-0FkY;
	Sat, 10 May 2025 16:15:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDmpb-000000069Qe-3D3Z;
	Sat, 10 May 2025 16:13:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4LiBJgpx1JPuJVPFYxmFK8cSpH55Fx19FbdJD4Cvi6U=; b=PIDa3Whz9bpYOxtN2U+zVEa9Dn
	KI7xDNCGrd7kxy3ZlYu1wsD+nWHG43N1h1Gvhcvo8mmZTD77Up4mFpEypxhBtqpNMhiGiRBTuVmAI
	y4TW/2UzL62Ya/m7rf9AD33dyELNnP7LyQ6mg9QMMWJ03KbQNTDtVhpzVl9HpuYoZEx2WiyQMT6mL
	P28Mb1f5Z6ShQhcPozcXndAptvzLAWTrE2piKZ9O/MVr2j8NlmEgf85V12WnzSbuuPImMr8R+LsY8
	nmLazI+xVhFVpnFRey4K6JoqAVwEBRgWl/xAmcVswNRID/OM1QyA1VWABHfcFnK0o9pE1j5o0dLhw
	N34NOISQ==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDmpY-0000dK-33; Sat, 10 May 2025 18:13:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: drop wrong spdif clock from edp1 on rk3588
Date: Sat, 10 May 2025 18:13:27 +0200
Message-ID: <174689356074.2086280.14230309672508886390.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250509152329.2004073-1-heiko@sntech.de>
References: <20250509152329.2004073-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250510_091343_828565_E9648356 
X-CRM114-Status: GOOD (  14.04  )
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


On Fri, 09 May 2025 17:23:29 +0200, Heiko Stuebner wrote:
> As described, the analogix-dp controller on rk3588 only supports 2 clocks
> and the edp0 node handles that correctly.
> 
> The edp1 node on the other hand seems to have a dangling 3rd clock called
> spdif, that probably only exists in the vendor-tree.
> 
> As that is not handled at all, remove it for now so that we adhere to the
> binding.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: drop wrong spdif clock from edp1 on rk3588
      commit: 30f98e934a094b4a2de79ffdb877360c4289b8d6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
