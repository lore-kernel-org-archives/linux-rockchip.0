Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99460D6CFA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 18:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ys4OF7up7RZtMaSKLyL166qSPbhMqtDBnOdrtLA2HA=; b=Taz/wbOjCr+kyJ
	JWPqUVQ8clOpyK2W1oVckOSe1fzUrzjMonmgvux0xYfmd8vgpB/BDnS+v2eWU+W1qeQEsFvUcOAXC
	l7ysRnD9P0Liz83RTVky+bXz0zrEmDoP6dE5Mmn364OD9/BLCTvmZzo+Emj+mDU8NnROX5afYIGnX
	XY9pBIuf0BPjF8YT2fI6bhVITaCneeU9Y+Wo+0lq4ZoPPvACu0Xd4f0PpjMWp9PoLMZQtXleSIZQl
	S6ScpNwpCcwUsob2Yk8Iog5SKnE4kppZFAmpfNn+HLSH963MslsMIwWwbXR0HCOqC81tn346OqkSE
	98LriNfqCkMIe4dkycTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vizUD-00000007dfw-198k;
	Thu, 22 Jan 2026 18:32:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vizU9-00000007dep-3xzr;
	Thu, 22 Jan 2026 18:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ymzZcSSK6dkQBPt+JcVq3udGXDM52ShgdC0k32t+/KE=; b=hOtsgD7daI87a/1P+kx7D2GSMW
	lYRgI5G1vpINZZUcxy6g4X0OIbIu4kk/yIdGez5pGs/rF31kkufsxEybfk1BFSOP/ccxNlxPdDCTg
	GSYE5XUPPpdze4cK0488GlCDvEZqDpXdexLuNreS6I+zK0A/zduWeT3yx9qA4RLA6rZW+oz/EWLdl
	9l2OeGGyS5iP1ktlMkw2RSgxy4s7+2MiEvwJZMWBELtq8+YmMuU8p8sz1HlZfF/F8SfNSrg8OgczJ
	nUwdyleAGlZ+ZO0u/Mh/wC4aYWQ5WgU8RqtkEIymRkkUyudbVSJHOGIO016nEaVb/Rnf4EOdpWwzU
	lq+PkOfQ==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vizU2-003rA9-0g; Thu, 22 Jan 2026 19:32:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andreas Kemnade <andreas@kemnade.info>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add TPS65185 for PineNote
Date: Thu, 22 Jan 2026 19:32:38 +0100
Message-ID: <176910675432.726233.11039063781241426145.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260121-rk-tps-v1-1-bc867e1dd200@kemnade.info>
References: <20260121-rk-tps-v1-1-bc867e1dd200@kemnade.info>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_103249_981941_77826EB0 
X-CRM114-Status: GOOD (  13.15  )
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


On Wed, 21 Jan 2026 11:22:37 +0100, Andreas Kemnade wrote:
> As the TPS65185 driver is now upsteram, add it to the PineNote devietrees.
> This is based on https://ayakael.net/forge/linux-pinenote but modified to
> the binding requirements.
> Without any other out-of-tree materials applied, this enables the
> hwmon temperature reporting and the interrupt counter increments
> by one per reading.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add TPS65185 for PineNote
      commit: f1ebfaeee3200b0d12f5f2079c429f0eb1512a79

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
