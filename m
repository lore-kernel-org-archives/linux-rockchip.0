Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F7CFC282C1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 13:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfchWrxIn9LZdQ6MJjDyyro5vXNcc6nzyiawuBlI5K8=; b=i1LBuMoxHv2GVk
	S/eZmGFaZ7jGc5fH0wLnuJ2jt6JOcwpsRHOr1p4BFzdI2M3skixleT08mm7X9TGstjwpqwjZleRmE
	oqDAuehi28mwuE4rizIZyRPeRlKFUzz1RdsFGCQzcodeaAsJAVkii7lqmpoh6A/M65jflhAkJMtL8
	mX+vGJ6CdONnRnjaiCxbxeFSjzL/9RIttfLIBw/oNFPuJIdOFxVor0ByxQVhsZtVBPA9s2Rx/DBaV
	5cR5uoDfswJvT75BsaSCBMJvbkHa6f1p+5a1jXiDRuLeWZhRkZU1A8002YRB9INaljuoWu2gqCGK+
	vFKB70e6yQ4xfyUF8ekw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tneB8-00000007a3k-0tRd;
	Thu, 27 Feb 2025 13:43:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tne5k-00000007Yot-3YT0;
	Thu, 27 Feb 2025 13:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nOu+j+JKEXyX2pMqzzEYhOh3lseG192GhrOVf61bCqI=; b=2X6+AYCjWGmv8WbrZiVmeP3m99
	rIwRjrx2PTjOiGQ/Jwe1t6y8Lnye3e8QMfg9YRNhiNNC2FTEEwNuoaWs9fHjjL/gMFMeYXQYc7FEw
	Uq8NGml7FQRWUVZRJppVnSS0acR2Ji2QsjwHNLNiT2gc4bHHZViiMYEaqBTVysMl9odQc0r+rO/7j
	pHO9kLXLiIgq1aZ6rgDobu1+gXywa3SWqPN2TwWPo5EvE2GCcNjPVy909tVsnu1cmSEWocArkjPP9
	8e32h8QjAacf/XgHhufaK7DgPujBFffdOdNBhN9qsRPgvVQY3R0eCPxiEemdNq+Wc+Wl6/J0mbdQ0
	LAc57yuw==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tne5a-00018T-Tl; Thu, 27 Feb 2025 14:38:10 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add hdmi1 support to ROCK 5 ITX
Date: Thu, 27 Feb 2025 14:37:56 +0100
Message-ID: <174066344875.4164500.15325619572257309291.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250225030904.2813023-1-liujianfeng1994@gmail.com>
References: <20250225030904.2813023-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_053820_883002_788E37FF 
X-CRM114-Status: UNSURE (   9.18  )
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


On Tue, 25 Feb 2025 11:08:48 +0800, Jianfeng Liu wrote:
> Enable the HDMI port next to ethernet port.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add hdmi1 support to ROCK 5 ITX
      commit: 3eac9319af62dbc56d1f06fcb240e4a092fa5b2f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
