Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21016C02195
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 08:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIUofLLlj4Ptd7vo1c8HIqphpR+BojuyZaWjiP3vu7o=; b=oC+UjnwuDfs1G5
	3xdO8rIh6J3rivLn1fPTrm/0KM3YfkM5orQFB1rbKvplOY8vcEFqddt0tvoGQs2ks7bY5/Cj4yIvy
	zEwX63IUbMWTN3a3wyymkmh5x/7qna4dKmsneUF6CADDbP4y2/9g4z0xIy8j6X4sQd2Qq7+qIDnD8
	lJ8vLrsJ7O9OmVqnkI9pQXIC0z/G18p1kbp6RZwKk3shcP71TPn3NjneIVgqHZRDPEQeWvRJ9GOyH
	E/ro7y/cv2zqKN8xeethgWxI1ao/IwLEQOSYdZvxMrzGXUuzjdr9mB0IURMB6NrAG8WPQQJ1Y9jqv
	sgeOSGEMWg5zJPFir7Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tes03-0000000EsKd-0t1A;
	Mon, 03 Feb 2025 08:40:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tes00-0000000EsJx-2GSd
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Feb 2025 08:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yI7nEKwf8euL226QHbemgP0cT38UVnbpkgOgS9dADV0=; b=lgenNZl332Ve5vm4eX/+9cM0jH
	SLriyULUX5HIGrxCaUfHB2YNOuITMZDaTbkpzyRhCf3pG71xuq/zhaZ6KvWLNXFcnOKcw7r1u9Ssx
	cORVh6gWztCRJosTiyg176YVn3jI4BK/a9SoETqSrx0HNL4Q8h5PYPbn+T4bkiXXbuTUYWho2ay6D
	cLM6j7Ci7nONYKpLMDhCwmYKAYpi8O86SePlSjmL1CLMbp1PIjCgYW0ZP2Y9d2iq79pmpn+1kiw3X
	4vGTP1xKxdvGOjzahegp6BG417Q1TSr4arqrsXum0Um+e/zMifX7crQYoFOJU/aumN+6ADwSEQKU8
	VmQkYKVg==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tercn-0005Vr-Ga; Mon, 03 Feb 2025 09:16:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	twoerner@gmail.com,
	didi.debian@cknow.org,
	jbx6244@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable USB OTG for Radxa ROCK Pi E
Date: Mon,  3 Feb 2025 09:16:02 +0100
Message-ID: <173857053619.78657.16527102347598350426.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250129064004.162136-1-naoki@radxa.com>
References: <20250129064004.162136-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_004008_579395_05AF5882 
X-CRM114-Status: UNSURE (   9.03  )
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


On Wed, 29 Jan 2025 06:40:04 +0000, FUKAUMI Naoki wrote:
> The Radxa ROCK Pi E has USB D+/D- signals on the 40-pin header[1].
> Enable it for use as an OTG port.
> 
> [1] https://docs.radxa.com/en/rockpi/rockpie/hardware/gpio
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable USB OTG for Radxa ROCK Pi E
      commit: 0cd57b5e5dde94129a13f6d2897cdb82f8943f9f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
