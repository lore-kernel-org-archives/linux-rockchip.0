Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D626E77188
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 13:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NwuuVLr7ReKpb+9/Q7AeLdog+JV7aWK6Isd6H46yb4=; b=SX9AQ7GpHek+hK
	1+8DIkb/njKK8fsUrcm7MQ8QkhlDRNxpYp+xDEwwY8fn55mkTYrgfZIkjeod2iAI1dwL8+plt26/2
	MDzPloIY94Go87rFn0Y8sc62sUNtPelaVTMc+v9fBp8W0VP6tzeIS9Tm3HXESw0TUGoOeISsbBTQZ
	4K/+9+WGNpaPnj688+4urbIpBkjldW6MptXDkY/kRDX7rCLtb7PwctFOGxjjCPPrEQeBslbi3OWEP
	6TJpzkURtSRyziB06uu2R77UZ58skN9b8JQo5jBt7n9NnHqN/CgOgMSLwrX6D9B8XVYdZ5O8TjtAA
	PgBzGKgvcAgCnzdk1WdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVVm7-00000008Y4X-1Nht;
	Wed, 08 Jan 2025 13:07:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVV7p-00000008Psg-36rX;
	Wed, 08 Jan 2025 12:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=y1nGZRsdGmqVUL1npTJ8LurygNK86mgh5TM5QfJtPsQ=; b=xBu7aTtVOAVDd5SQ5o8zbWQX7+
	Dblc24NyX6lBrscMsgnEHkE5t3tdLWlNLuWLUhLay3HB71/4h6NCgOrOC5q53ARwWg3kXu2ZbWIWB
	jtKYql+xbRIn85Y1WXZk+KhGBImNQmAOqkHslPAKu5N6kIe6utAwYsPATwly7PmWXb+od6D/1jD2r
	Ckjk0WKeQvWzAUe/IazBwUygv7wU/k+fPJdCNROFA3sfpsSeABwRiRYSXVJIn/d/uW1KfbB7QEhcr
	fMJMBUHnXs9dNwZ1fWxiY/NbI1tE71hc7yBp755PKg13PY6tKs0UdykTLywdqQ9nSqz09QCrnTU1A
	Nh4niR2w==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7o-0005gn-7p; Wed, 08 Jan 2025 13:25:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: anton.kirilov@arm.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	nd@arm.com
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the SD card detection on NanoPi R6C/R6S
Date: Wed,  8 Jan 2025 13:25:14 +0100
Message-ID: <173633908212.2779821.7921893226618386547.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219113145.483205-1-anton.kirilov@arm.com>
References: <20241219113145.483205-1-anton.kirilov@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_042529_790280_B1ED954B 
X-CRM114-Status: UNSURE (   9.04  )
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


On Thu, 19 Dec 2024 11:31:45 +0000, anton.kirilov@arm.com wrote:
> Fix the SD card detection on FriendlyElec NanoPi R6C/R6S boards.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix the SD card detection on NanoPi R6C/R6S
      commit: 95147bb42bc163866fc103c957820345fefa96cd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
