Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45906E9B36D
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 11:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EI21zbh4S2j7W4BfH55SZX74LkEHKnxYaeR8CVSie44=; b=Gvg+i/lyMBaA/H
	6GVe8kyBcy+MIXC9VpwcLYUvjZUhB+pF8PygISnqz/pIBRwhpiiA2QcEL/mVyJHWweD1+wgJ1ScpE
	tzwv3AsZsDMPtH8xKClyUYJL7ad428lKlvKPUIk9C7pTHrKCAV+kvJ9G7SUfhhFq86G7jQXISYg43
	R6B8DMj0jjee0SSSTPxlrAMGhLQ0LE2ELv8djh/OLfGiGuqxJKnNN/fT9PgGgoW6WNLjX0mX8tNNR
	D9/6rl9ILnTt/T4BRSrdXKUL5gabWjtZrml1+RvoeqRlRA2ZjJnabvyOETLdltRAdIyc2nsYCsf35
	P5sfJCoaRlGm7b/nIPVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx1dB-0000000CqNc-2gX7;
	Mon, 02 Mar 2026 11:40:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx1d4-0000000CqHC-3llC;
	Mon, 02 Mar 2026 11:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ro28tFWp3ykREphV4fjVk0Rx6JwVw+kWCf3UD7u3IBo=; b=lKvN0TzUR5Z/X2H+jShf7SgsRa
	p1jrUAN3j+PzIKw7FFNsyUgAQBD1ZJyDkraIl+Yzq/Yn/Vn7v3F6JXy5tuqQOUCs22RJgYAWT9tVA
	1ppS/wOSA2W0NZA+GtlXIz7iX2FJWl04H3iBahP0FL9MHRrnD/j84gdnOnr86/lqdUntyysR3vQ7w
	+z80jlpjJOF7KmXB0UQ9EqgPPk1V9+Z5BJZtsGgo1UmvASaAicuLXpIDuE8BkdDfUrPnDXzPeyadg
	2CV3ctGI/vmkR2no6lTAT9wbOxabIiKrFa2ugShXjLCMBr6CqYUaCOBVTV+HgCA1jBAsxZM3W6P+6
	MhezPKlA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Fix RTC compatible on rk3288-phycore-rdk
Date: Mon,  2 Mar 2026 12:39:54 +0100
Message-ID: <177245158236.769695.8825364259579491695.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260301124156.473862-1-festevam@gmail.com>
References: <20260301124156.473862-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_034002_994553_B68C9126 
X-CRM114-Status: GOOD (  10.90  )
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


On Sun, 01 Mar 2026 09:41:56 -0300, Fabio Estevam wrote:
> According to st,m41t80.yaml, the correct compatible for the RV4162 RTC
> is "microcrystal,rv4162".
> 
> Fix it accordingly.
> 
> This fixes the following dt-schema warning:
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Fix RTC compatible on rk3288-phycore-rdk
      commit: 9a2337d87dc5b4e2441be51906659068b15ce3a9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
