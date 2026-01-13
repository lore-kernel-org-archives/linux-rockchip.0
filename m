Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A673D2D109
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 14:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBXO52ZxxRnx7f5E1r7BJcCy5421nv61mxcm9SwOT0k=; b=5BQibufdWzKjo6
	+gdrb4vJNXsAM5Bhvw9VhsIy8Mr9/XpUsAD1AJ3whQdsnlRi6h3p9HPURNQninAvnO8ORivg3jg+8
	YE/i8h/fc+NlUOb8xl1rjMdsBJ7iu7eJzF3+O3LBEpA7WG4/nk8Y3TNiFuN7pZhNOymWZs8bi9Ym2
	wp5HQNv+EKxfFjGwsrqtDqhl93PAYzLt3DJEZ/dIZHh8TsdCyyqp0bCDttl5LLuiAt6qlHz6R/VDM
	y+a/OHS32GjzzJ42FIrCMQ+C5NNT98QhCfIPcMZoZHzXpvmShcOHSoKz6fO82OlsDMmUVG6FyqkM+
	58+NEfYyJERgTvaE+VNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vff0k-00000007CLI-2Ykf;
	Tue, 13 Jan 2026 14:04:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vff0f-00000007CId-2lrf
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 14:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AQO1vg4mmW5S/RBUtw1dHkSxQcde9e9m0fNMRR8sntw=; b=i5vpYb10UyIszz7mEEuZ+U++QB
	+Q5EVfZU6iIcJbqVKUbPGcE9vAnW0eVWmare8L04kfSlootIanmLvWBP9kVIWoDu3JDaX5qBBfVzY
	cvjcIS3dXol3FOo4nmOnVK/YMKqqnYCiK8eJ54OEvKTFkR2hGbfroXk7kRGR4di/IeeWUxm2pdPQA
	CCN7UofK0kYkQAcWlrRLiDFNjFeLfuoBhjB6Nq1TtZ38ePaW4jcW4o6MAEA3tkLkBCj7QbekkGDCk
	PFeNgYwkNHkaF7nw8wQ/EaQroXBViXm6lXzEnCkIEKp/IjfRxiEJxVHdWESa5rYbc8qdOIMUNA3vp
	fHZhjzhA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vff0Q-0027FZ-7e; Tue, 13 Jan 2026 15:04:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	sebastian.reichel@collabora.com,
	kylepzak@projectinitiative.io,
	damon.ding@rock-chips.com,
	alchark@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Tue, 13 Jan 2026 15:04:19 +0100
Message-ID: <176831295372.3955755.10476613035498683234.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260108034252.2713-1-naoki@radxa.com>
References: <20260108034252.2713-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_060437_702681_7CDB8E28 
X-CRM114-Status: GOOD (  10.69  )
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


On Thu, 08 Jan 2026 03:42:52 +0000, FUKAUMI Naoki wrote:
> The BL24C16 EEPROM implemented on the Radxa ROCK 3C, 5A, and 5C [1]
> [2] [3] is designed to have data written during factory programming
> (regardless of whether data is actually written or not), and we at
> Radxa permit users to read the data but not write to it. [4]
> Therefore, we will add a read-only property to the eeprom node.
> 
> [1] https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13
> [2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
> [3] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf p.18
> [4] https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
      commit: 4ad1a7548080e9e9ac1a1e78672ce2acb25e69d8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
