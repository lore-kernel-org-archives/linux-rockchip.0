Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADEE4C3ABC0
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 13:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTLgQk61anANf8KOHqxWHi3XxOTOKVTfz/NS3SSnjBQ=; b=0zmrgXRZ9KmBqm
	Oz0lB44TZTWKv1AbdL5SwAPkztmbYPOvaYyG66YBIxYWCRkpGTobjnZZ11X4BjQkvnC/rA4E57eKZ
	MxbZwBLv77vHLSy8ZQJjIl/ZbxY5yxmIlHSrG7p+/9GPGtGnPFXNL3RsSpG8YBBstdCXwGV5hmLrt
	Vai8aqjCRP8guhhHaUViPfMxYDA4Ohgq9GXLxdIr0FW/Lvvt6bG70afaEz/osLazwxRn4yGh846Tr
	4nh8TuTKx6q7BfLYsSQiD6dL91Oi4pq+n4Gdid19+5qj/BhQZ/pCOHxXzoDoGmCsOdFqtsj8C/1+6
	CRf2mphDdgn+YVXvWw4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCIa8-0000000CBI8-4A57;
	Tue, 06 May 2025 13:43:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCGH5-0000000BhL0-2uIL;
	Tue, 06 May 2025 11:15:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=PjX4pdz/ggEMRHtgaXyYi2dUz9COuWm0CR9rLf0Od6Y=; b=Q9cFFKzdh5LtgPMqryJ59PeE6N
	ZyMwlTsx+/VInOIa/Hj69E4lw8UYYnCAuMQGvtqBvKF27NBAEkvCArJ3kkKIQPFQmXGTwHZfk+Ogw
	i95rf6acUDLueruRWXuwk+SQR4qguPXyBqsUUH8CLjYO1isDaUxxvctC3tQ1vE6WrD3Qa+4WlLfg8
	x91vMpNPs9VLo6H8H1H5S3YTdy19z16SMW9vgNOqqWlwH9Xxy0I/pLVblkaHx9N7mTLFfjxJDrRFQ
	8t9bzdUEERxN8ZGd4lNVK9fV5vtjVS6YW0vR7/6dzucLXtE8aXwNHRGlxr78yaoycIWlLkhTWWrih
	473gwvJA==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uCGGv-0003Vx-Mq; Tue, 06 May 2025 13:15:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Rob Herring <robh@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add pwm nodes for RK3528
Date: Tue,  6 May 2025 13:15:28 +0200
Message-ID: <174653011959.1371608.16023824654446843423.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250401120020.976343-1-amadeus@jmu.edu.cn>
References: <20250401120020.976343-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_041547_755034_A25BF83C 
X-CRM114-Status: GOOD (  12.56  )
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


On Tue, 01 Apr 2025 20:00:18 +0800, Chukun Pan wrote:
> Add pwm nodes for RK3528. Most rk3528 boards use pwm-regulator to
> supply to CPU, add node to enable them. The PWM core on RK3528 is
> the same as RK3328, but the driver doesn't support interrupts yet.
> 
> Note that pwm regulator needs to be initialized in U-Boot:
> ```
> &vdd_arm {
> 	regulator-init-microvolt = <953000>;
> };
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add pwm nodes for RK3528
      commit: 9e701ad7c3551b3ab87ed5fa439569696ddf42e4
[2/2] arm64: dts: rockchip: Enable regulators for Radxa E20C
      commit: c6599944af5a09029259ff8c533d22754f2b1ba4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
