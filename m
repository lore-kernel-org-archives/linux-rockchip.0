Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 304ADC52D7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 20:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKPHKmjrZQpR/R2jzppVutqWvp0ZPo8F2E3XuaYZtuA=; b=UqN2HxIhjLRoax
	4aytGoJlQS9xh0JP38oZ86YQBPcOPVdSTJgqatNdKaJZfD8mDZL8XtEB28M6G2k47WFkeklp35DME
	dV0nbEpBmNIosJpFsVEuOLDArVF3iGY97XsQvJ00X+4LTg0LDyQD18IAcGO2dg0tX1PJMjljAcihS
	brGOK+ojGJGhmjy81c611ny0FQdNYXJCzqUIWTY5RkreOHtsZopamtEKprxsFRPRZf1g9NjzyExKR
	y6FbuKz4FIhlDkyNfLk1vqAGjLKU4H6z5xAWlS6nMamyuKQhAx8SULef8fw7ZnHa0VO5MbY1jJM4V
	ZtCjb97TjrCL0bsl3CEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1segxp-0000000AyYA-1yij;
	Thu, 15 Aug 2024 20:20:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1segvx-0000000Ay9A-1zME;
	Thu, 15 Aug 2024 20:18:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zavrgUuGoZiQN+TaC/9Ck+8FAd7WWCutstTDtJB0+HU=; b=QEJ5IlNgZ8GcN8d2zsnuXYmEtX
	zWwr1orepoLdQ4+ZUfL3G7H2EWCINV46iLpZSEYEiGyfKWp/fq09Yw2hQHhPA2cuug3DqfDMFB0z2
	drMyjduGFyVfBUOYatWkDjU3hOyDOrLwytZjZ0JpzUEg20WROxHkjz8lOgPko13eXDB1DzgkBFqy4
	c+/Nld1p5D7vNZQ1kAuE8TsXBeU33VIOKnxGq0wkWJI/tTjnPKbKLPocLHjNdJ8qKooxpXPInotqN
	02hYHSisBSHWpOPyyDH5zhfBhcQ7//0G8s//NNqbjh5jkZpCXqnV2xAzpAXfsWUDPH6Wi3k8IsQ+S
	IRHFxrLA==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1segvo-00089v-9Y; Thu, 15 Aug 2024 22:18:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sergey Bostandzhyan <jin@mediatomb.cc>,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] Add DTS for NanoPi R2S Plus
Date: Thu, 15 Aug 2024 22:18:45 +0200
Message-Id: <172375308156.820196.16689328819690192699.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240814170048.23816-1-jin@mediatomb.cc>
References: <20240814170048.23816-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_131857_557888_DC320E29 
X-CRM114-Status: GOOD (  12.67  )
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

On Wed, 14 Aug 2024 17:00:45 +0000, Sergey Bostandzhyan wrote:
> 
> here is version 3 of the NanoPi R2S Plus patchset.
> 
> * a commit which adds mmc-hs200-1_8v in order to improve eMMC performance has
>   been included
> * the licence header has been updated to the newer version, anw now includes
>   optional MIT licensing
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
      commit: b8c02878292200ebb5b4a8cfc9dbf227327908bd
[2/3] dt-bindings: arm: rockchip: Add NanoPi R2S Plus
      commit: e68b29cb711e80b1bd50366c5cdf8310c9ac24f3
[3/3] arm64: dts: rockchip: improve eMMC speed on NanoPi R2S Plus
       ... I've folded this commit into the first patch

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
