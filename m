Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F3C8CD98FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 23:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXCxWEYXWtMoJVRt2gBsxqCTBzrRJ1Insmf5V9eW1DA=; b=UDkd/diT7sjmBV
	1E4aPR+s8vcOiWDVYSXJE2Q4MwvI7yv77Aa4oqOyR+It9Z69BdLCAevx4hXCjlpOtnSSHgozTjn9i
	UMAe5s/GQSSIC9CFm0SHaspY3KATRdNhuFxAStNW1WBw/U7aSVHLHEbmZxJnmCx6bjE3gvAjiUElH
	ClGEiyzQjDSCD5Uswz8SK5QG6kP3MduEdv9Ter4xBmvcc3Wru3MsEkY96NIC7UzEbbXpooGZwnpEu
	8CDWrkWZfSNTcAwlk5HqnG52QTtlHEs681BDviDkQOFTKFMqSHeD8X0PXDazvZqX6Z7tZJEr/Ap8M
	ulWUASjH9loNTswh3Vmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgMo-0000000BEBj-2B4h;
	Thu, 13 Nov 2025 23:04:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgMl-0000000BEAi-450O
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 23:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2pQ+4tijkKFX5hdWf8yV+flZ/h/701YoTOyqKTQQrXo=; b=QR7sWHHpq/Xjfxtu4idgEDb876
	i6DpXxCn20BBmWKfMTuZkbbDa92OwB8lX+65g9X81lhlWNh7sgzt0RFUb0ivr1mTlV7egIONw6sRc
	jVa6yQ2ET3PvnvMI5tF22WraP0/l/wLVp8c4qMjPC2hKwfbZrZOvB1M4YjV1XvRGoVAOP6CgpqakG
	KwtOENPBJF/ehfKWFCvVx0QRhhQ0rR21SBa65QSP7spJh8b+5i5qZxsfnVgx6Bw9zlF0d5IMVx++f
	BD2sX8T4kJoKzgKUqT5tvrgUjhbBO8+Guz7Uv8Whd3rXkRVZz98MkAGnIYevSgxb3Ml/9EAHNpdL6
	E16kGUGw==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMk-0005bo-Aw; Fri, 14 Nov 2025 00:04:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: clean up devicetree for 9Tripod X3568 v4
Date: Fri, 14 Nov 2025 00:04:22 +0100
Message-ID: <176307502903.495066.16827160196571620255.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251107133839.300252-1-coiaprant@gmail.com>
References: <20251107133839.300252-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_150436_011707_3651A67D 
X-CRM114-Status: UNSURE (   9.42  )
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


On Fri, 07 Nov 2025 21:38:38 +0800, Coia Prant wrote:
> Fix indentation, remove unused SDIO properties, and drop the GMAC clock
> that was used for input direction. The board uses the clock as
> output, so the input clock is not needed.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: clean up devicetree for 9Tripod X3568 v4
      commit: c1ffe499306b26a61f390b7d83c5703aa8e2af55

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
