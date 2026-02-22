Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12103C636C1
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Feb 2026 22:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLQVGvFKJlBrGFuOiZuIC1qqykpq7O1B/Zg0MxJxOH8=; b=RyH8GmC2K762St
	0jpo3UvJMn+aXsqdXckHArAUxKylcwGABMha2HFos/1+Qo6VLx3ji6sHSLWyvbujgcdz/5Try6USH
	Z6g3S7gjHnDBFT+7nhjlceuo+nNCikdh6jEtBmrSsgfguYZNyOKEoCZJ85pQX4t4mcJqQBMmXBG57
	ig52xLChNMK2epikzIY+AfgVtJ53gPT7kq2onIXxCCGNZ+GFG3XxVa8iSvkGqPLmWmiZbNSLaMZR0
	fnhqY7itkxZnM5jbUiiv53BGPEJKsxNHCqRZf4rLK6Aj3mgJov3xeUU1t5e5OtOpgzUg8VhCZmUd5
	E7OjsBbeIikkTlLmeTaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuI7C-0000000H09P-0THh;
	Sun, 22 Feb 2026 22:39:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuI6o-0000000Gztq-1ZoW;
	Sun, 22 Feb 2026 22:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0Z9xezpx4Phocc3z49S/RTcZDdi8MtPGSIseFj+H+WI=; b=PjGiZXczcRvMuzBnyR0qutXjlg
	ZuM6z8HsuDpGt7un3ggVnZUjFvddb0jH+n9CIzpRbPXujP9wbbWFMdYWRPCzMxw5ZbdRDLwx+vsc3
	A/56tdNPz7eEdeH260sZIpFz6bxm5iuqHe+LrjQZID5dL17/QHrVol09s3GkOZOJN9RtxtGLbzre+
	IaH3xY0XOaudJIvDfVSCs6RSiu3VYAEENc/aNW31acG7z+tLzVFdBoaoLSkg3FvYzxnBfd6u80/5/
	XMV/KYo6VgaGGMydaosdPWiC4AKGjAavaVW8GHVwSvPKQbg0aXnwbS8gmulgZHIYLHvWm+2Vpm6A2
	XsCNYm7w==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	jonas@kwiboo.se
Subject: Re: [PATCH v5 0/3] board: rockchip: add OneThing Edge Cube series
Date: Sun, 22 Feb 2026 23:39:05 +0100
Message-ID: <177179992292.1861430.2391320215739051093.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260214021719.620752-1-jerrysteve1101@gmail.com>
References: <20260214021719.620752-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_143926_410557_B0155EF4 
X-CRM114-Status: UNSURE (   9.25  )
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


On Sat, 14 Feb 2026 10:17:13 +0800, Jun Yan wrote:
> This series adds support for the OneThing Edge Cube series, Rockchip
> RK3566-based PCDN (P2P Content Delivery Network) devices originally
> marketed by OneThing Tech.
> 
> The V5 patch inlcudes some device tree adjustments, following Kwiboo's
> suggestions.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
      commit: c6d26a9425631c69087a407d3cf8372db0afee09
[2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
      commit: d49566ff47e7748b291ba82d0620a5c93f30e310
[3/3] arm64: dts: rockchip: Add OneThing Edge Cube series
      commit: 53ec6d21fe1ec0677f9db56a23dda8d145eda102

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
