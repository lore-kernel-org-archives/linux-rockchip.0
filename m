Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05FAEC28B2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 07:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QB+/eOjMehopFRL0h6hGt3+cUd75o4G28XUKBCyqkmU=; b=qeF3lptp614Cqe
	dipwOUCYtxRup+APqEj2xagAoKINvdz2jgZXOSB9C243AZo8v+uEAnFs7TWDMvomt9tOcVBn0Mr3D
	ejgPwU4L0n24Y02UuaAsaCrNDmtSCPVrqGAgFyZHJnlOnIKYfduASrJ/gumx1s1sqoqAtzYjCuUbf
	boYz/cGXJGZHeYwBfQ/gJPgECgs5KGzG+bV/7XVALuUiwy1pnxQ8G0yqE0rbljMGTXTvUvtlNiIEq
	4IQ/IW1n7JKzKF2zRdLnB8KOssaqOK8jDaZXbhQkCPGHm5GoffyhoeepWj8twddbxPRl7lRcT+Yrq
	iLlEui6353+76TkqJv3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsGyf-00000007lik-37xi;
	Wed, 12 Mar 2025 07:58:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsGnY-00000007jrv-3EG4;
	Wed, 12 Mar 2025 07:46:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ur2tbQAbcimaNbP+XssBtS/OZ76LbdfCjF3sZqEV5Ok=; b=cgwC2U0iZk5pei3L+TO5WGFFti
	ZsATKDWSLnnO4mgcQUqeVLmJERQ/51B6Ws5lgCqhS8sdINheBqNEfi5ZLuupPnP8uqpvezAoPgXV2
	r/YvFXJSHZMTr6s7utzxalhqgbHy8viu2GRPbuOOfOxSKIn6Y9NWHtS713/LWk5RKo2IAY26IL2y5
	k0kBq+FfK8dxEJxTnWDZIiPEkJecZ+XBvOUZ29NAkLvhRR67fiEva71kw8GaWjGnDrDUY47yqmLmp
	7pm8rAjmDbmaEk/eZRxP26sIcRsu0F2OtB8nwJvPdbxnCZjII7NWOK5xL44FQmgjv+uF9vXBHa5N8
	z7FM8/GQ==;
Received: from ip-185-104-138-79.ptr.icomera.net ([185.104.138.79] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tsGnU-0005zY-Ot; Wed, 12 Mar 2025 08:46:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix pcie reset gpio on Orange Pi 5 Max
Date: Wed, 12 Mar 2025 08:46:00 +0100
Message-ID: <174176555627.249409.15245635322576159789.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250311141245.2719796-1-liujianfeng1994@gmail.com>
References: <20250311141245.2719796-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_004640_807728_F1A341B5 
X-CRM114-Status: GOOD (  10.08  )
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


On Tue, 11 Mar 2025 22:12:39 +0800, Jianfeng Liu wrote:
> According to the schematic, pcie reset gpio is GPIO3_D4,
> not GPIO4_D4.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix pcie reset gpio on Orange Pi 5 Max
      commit: e79abd605edbd45eb61a251c6b0d6e50e605a14a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
