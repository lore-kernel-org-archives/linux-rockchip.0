Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D72BFCA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 10:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctkv3CoPdNE66BJENQSzbr1GIR77amVzwQqoFR0Vrys=; b=Z467GeI3yef6rb
	17EOd+5d7i9Sh/s++a/IHGKzNdejjr9DoS3lnZs2wnFM5GQpt5gzGnpQIvfsnDJdshBjuBMWH3o31
	vVRGAA3E8k8aGcD0SaYZ2duQqbqD2c0qZv0z42GEcojPVwAUOTyWjadjfJnYsXssK37zcMChDsZh4
	OX9m4JB99eqcW9hEl8LGw1Qq0kx6nCtwwqDPAvm1bXoRp1J7jwaKxMCOGiicxMz2uSVFwEmNnBjsW
	lV2XIQx/kEiAqgkQFSmK7eyjnQhcPjspVWRzcPzzjl9vWWD5zjmC32Xp1BnW3SiBDv4PjIcMWQWuo
	ca+wVXcdVjGXWZC0oYUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmsG-00000003ogm-32ui;
	Wed, 04 Sep 2024 10:04:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmGD-00000003f8V-363Y;
	Wed, 04 Sep 2024 09:25:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=23vxBjkpGpq9LNmrKHPd6qsEoTUnSRILY6cL7IaACKI=; b=Q8FF0q3TdSMGURQ0RxaNpfgSUd
	c6+fo7jwy1pUpN6tuk0mM8yZCZr4WGjRVlZZlSzApFuKDjbOMXCsDqoJsralJ39xvo9NFbkIV2WzG
	JZY/J15D5N6bKEwmWccVTRq1Q62sbPhRgzkzgdNoFe+wCWrzk1lNezNUc9ls+eHZ0Wfx2dH6UjE+o
	OI0HEE4wkF8GAkaBLFtg3fBptm9pQbadFZ3Q3duU/lXd9anrEcLae0AhVgh/5nRlxEDNYQE9swgM+
	ouVqeoMm0YSGxKZ+E/pgY4YPhNoSpQrL4ZyQQ+gollfqWr7fBl/V5YCir8llwTE0L0VPjtaCZHmDy
	TWEvdVQQ==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slmG4-0006q3-GI; Wed, 04 Sep 2024 11:25:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: conor+dt@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>,
	alexandre.belloni@bootlin.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/8] Add support Relfor Saib board which is based on Rockchip RV1109 SoC
Date: Wed,  4 Sep 2024 11:24:58 +0200
Message-ID: <172544170317.2587256.1675013741817340842.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_022509_800737_0C11FC21 
X-CRM114-Status: GOOD (  13.56  )
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

On Tue, 3 Sep 2024 16:22:37 +0530, Karthikeyan Krishnasamy wrote:
> Rockchip RV1109 is compatible with Rockchip RV1126.
> In this series, adding required missing peripheral in
> RV1126 and its pin mux.
> 
> Relfor Saib board is equipped with 1GB of RAM and 4GB of eMMC
> Pheripherals like Bluetooth 4.2, Wifi 5G, audio-codec,
> ir transmitter and receiver, etc
> 
> [...]

Applied, thanks!

[1/8] ARM: dts: rockchip: Add i2c3 node for RV1126
      commit: 15db79e0bdcb883f0d7a678fe8701a270467a339
[2/8] ARM: dts: rockchip: Add i2s0 node for RV1126
      commit: 212cda94739b1644e38ef4f588bb580c12feb9a7
[3/8] ARM: dts: rockchip: Add pwm node for RV1126
      commit: 898eb75f443eaf6cb46facf52fc337fbdbdca079


This means I applied a part of your series and you don't need to
resubmit the patches mentioned above in a next submission.


I re-sorted some properties and nodes according the alphabetical
sorting we use. Please see 

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst

for the details.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
