Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D7B8D5E379
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 18:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s15Ua+m99PZhTbPogq1sji0NM8fxaa91KZbuwgXNAho=; b=uHGxyfFpgrFzMm
	cz+48BC21OxXa4tXKaFtSfQeGccgInlZ0HpqTUM1JUdelwwmeFW2DyWk8HVM9ps+FggJ0b6mzVGuz
	I7sID36hbEtEa7rve2s7OksuXK7lFzwreXkQ2ahvH9TdR6KrybEAAV6/pPH11vHtKnKTYAS3mlRLL
	57pqkyiC55EZQPJZLpTsbIJllUNPZb/yfTl5Tqo1VjnMZIdLOniDAJdVZXR5sZh6HfAc0EXAGNBu3
	kQMALTs5lMU3vDlT5CTiiQACLS+R2YgkLNmHGSYKGvX4ie/9H9kssPgtnlJNYCl4Xg/cHb2MaO6cE
	xHEGbSVa55lcGMpZsnDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qQt-0000000Dpem-04WZ;
	Sat, 09 Nov 2024 18:43:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qBR-0000000Dnh9-0wld;
	Sat, 09 Nov 2024 18:27:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8OT/9xhzsuunennS7C104FhK0rCK8MTqKWihkPOvx/k=; b=Aa0iroWyzMYGB3rTtRj/3LHgXy
	ZQu1saWGK6eKDThzgVEgOknBNIYlUjGxT5UB3oi4qvwWQxg+Dc6X/h8V7TJa0vC//BHc4sPkRiZZz
	+sKEYV6eC41dKGoA3VvUPPZs2uC+QyEV54x3woGDdVI9AiOb/gCZkdlw47T2Jffohx+rnBc54qcbs
	/hY4tkW/+gEX6x6x8QGRDivWJ0FOOZdp0PmAesj9f49aLPTzto/tEWaVTfsAxbgkPsvt6bMiyceAW
	3v93UJ+8OvrAWriINBXBElEPFDBLZGgUlzzh4dgrkTgonHuxcTC+JGqKDHRF4WLtgeJ1mt/xXx2/5
	uklga59g==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBG-0007Km-7i; Sat, 09 Nov 2024 19:27:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Weizhao Ouyang <weizhao.ouyang@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Andy Yan <andyshrk@163.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH] dts: arm64: rk3576-sige5: Remove non-removable flag from sdmmc
Date: Sat,  9 Nov 2024 19:27:09 +0100
Message-ID: <173117675954.1131306.9520031721535619598.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241108213357.268002-1-detlev.casanova@collabora.com>
References: <20241108213357.268002-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_102741_283572_121F7532 
X-CRM114-Status: UNSURE (   9.16  )
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

On Fri, 8 Nov 2024 16:33:57 -0500, Detlev Casanova wrote:
> The sdmmc node represents a removable SD card host. Make sure it is
> considered removable so that SD cards are detected when inserted.
> 
> 

Applied, thanks!

[1/1] dts: arm64: rk3576-sige5: Remove non-removable flag from sdmmc
      commit: cfa3d63c8b4c8e14a5a0059407969ffa92fbbb04

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
