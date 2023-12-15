Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7672DC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 21:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Zs5NtFNRzFm+ukBBkid9oZN9sb4Mj9tBpkwI4pOZDE=; b=nI+3Zb38TKxymB
	Pnw/6gPAAJ5TaQXbcQo/q/xedgWjyhgcL3EiPrQhNfPovZAA3IKmfozHCTGxMwdmlm6BgObrsKwyj
	0OL9vpMyny65nlitsGISTYBamHFHuiZ0s0eMQBbuwrcRdjN/d61+1/Y3+yPO7TgokuVSfEv1gZg/A
	tzjT1+v19IvJRrJT51P27Heu9eqLAlHv9Su5DLi5xHtbIxvSXc/4WOkNodkKR17YJWIY1AgJ60K5Z
	Z2yMiyNaj+UlxOjk2fnw87AbhwR06RwgGqXEWKDd08gYUkaarvgx3BmdrEB0T+SyIli27JuJd+bd8
	9Pu2dxJUotRHtcxxA2mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEFSQ-004Zyh-1m;
	Fri, 15 Dec 2023 21:10:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEFSE-004ZsZ-1n;
	Fri, 15 Dec 2023 21:10:43 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rEFS2-0005kk-Q2; Fri, 15 Dec 2023 22:10:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Trevor Woerner <twoerner@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: rockchip: dts: rk3328-rock-pi-e: add gpio-line-names
Date: Fri, 15 Dec 2023 22:10:27 +0100
Message-Id: <170267443961.1167098.2865099267527144228.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231213160556.14424-1-twoerner@gmail.com>
References: <20231213160556.14424-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_131042_591837_8EA26F5D 
X-CRM114-Status: GOOD (  12.68  )
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

On Wed, 13 Dec 2023 11:05:55 -0500, Trevor Woerner wrote:
> Add names to the pins of the general-purpose expansion header as given
> in the Radxa GPIO page[1] following the conventions in the kernel
> documentation[2] to make it easier for users to correlate the pins with
> functions when using utilities such as 'gpioinfo'.
> 
> 

Applied, thanks!

[1/1] arm64: rockchip: dts: rk3328-rock-pi-e: add gpio-line-names
      commit: 799637dfadb092d1732afacea42f67a6f1621fb4

I've indented the gpio lines by one tab as suggested by Dragan.
And also moved the &gpio {} references to their correct position
in the file.

Please sort phandle-references alphabetically and not just add them
to the bottom of the file.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
