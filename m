Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F04BC3DA61
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 07:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHu9d2o0N5q2EHbZMiBz2iNqmlDpyNOxmP2snPY7ktQ=; b=frGGLfYS+M14GA
	Wq2a3WZsc555aq3eCchl3zACJxv51NH+jm8xTPqaXAg8NwC+6QVj8kkxcRJl71+At2XbQWo7CycHQ
	Du6NBXJgskG3zKLxzqp8d/a1f667znHypHVWL9VU2MaFX1XE/vSJ2NKV01WRYsAguLRUO3KZ3wwyb
	R/tBUuSCC86Ihv7xADqiURYi0YNfNfk8m0LfuDw9Hfe/SiFxyo2eL6eTzvvnuFX18tEhvfHg1sZfM
	UpP5RD1CfGcG7ZeDvNT0+fqxPCZyFHXlL8dcKGY6diO698B5B38202T3qnXXcCcbYBA4vwbFTIX5M
	3vOVfYO6RXvXUccbrn9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhM6-0000000E2Y9-3zlq;
	Tue, 30 Jul 2024 07:33:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhM4-0000000E2XV-2OIg;
	Tue, 30 Jul 2024 07:33:09 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYhLt-0004sW-UC; Tue, 30 Jul 2024 09:32:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org,
	ukleinek@debian.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 00/14] Expand available features on Qnap TS433
Date: Tue, 30 Jul 2024 09:32:56 +0200
Message-Id: <172232476458.2326272.436459219153385141.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_003308_626293_9C163338 
X-CRM114-Status: GOOD (  12.20  )
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

On Tue, 23 Jul 2024 21:55:24 +0200, Heiko Stuebner wrote:
> Thanks to the nicely supported rk3568, the hardest part for adding things,
> is to pull things from the vendor-kernel and translating them to mainline
> standards.
> 
> This series allows the TS433 to use all 4 bays [0], wiggle some LEDs and
> access devices connected to all 3 usb ports.
> 
> [...]

Applied, thanks!

[01/14] arm64: dts: rockchip: add PCIe supply regulator to Qnap-TS433
        commit: e0ec6d48226fb3d4df18895b56f0b7a94c0fe474
[02/14] arm64: dts: rockchip: enable second PCIe controller on the Qnap-TS433
        commit: 0f5f87a1d602a33028522784eb005647fa1b5c11
[03/14] arm64: dts: rockchip: enable uart0 on Qnap-TS433
        commit: 07ef8be476bebd77cba3ca4804be03cc0dba414f
[04/14] arm64: dts: rockchip: enable usb ports on Qnap-TS433
        commit: d992203f57c5caad0dbd4a9c669d79b315873c81
[05/14] arm64: dts: rockchip: add stdout path on Qnap-TS433
        commit: e1cb5d8a92e41171bf4d5ddc459bd96372500901
[06/14] arm64: dts: rockchip: enable sata1+2 on Qnap-TS433
        commit: 673c1353b3d476b9c5df6b84a777ed171e5594f5
[07/14] arm64: dts: rockchip: add board-aliases for Qnap-TS433
        commit: dadd4256e12360d3ff1f6481b2e4697f9d890caf
[08/14] arm64: dts: rockchip: add hdd leds to Qnap-TS433
        commit: ea91aabf18bcad6f5eceae6848ea6570ea61f126
[09/14] arm64: dts: rockchip: enable the tsadc on the Qnap-TS433
        commit: 2dfdddd9d20306fd0d04b88fcbbf36d76fb67f11
[10/14] arm64: dts: rockchip: add gpio-keys to Qnap-TS433
        commit: 9b682d31b24f1f70b5b4d0618095d46e0722b9d8
[11/14] arm64: dts: rockchip: define cpu-supply on the Qnap-TS433
        commit: 99b36ba910d896bddbb9a190ca686c6d9cd0325f
[12/14] arm64: dts: rockchip: add missing pmic information on Qnap-TS433
        commit: ee078c7daa98353496410b715a5acbb41d7d3a90
[13/14] arm64: dts: rockchip: enable gpu on Qnap-TS433
        commit: 9130eb62586f4cef0557d0378fb7e78d7397ab2d
[14/14] arm64: dts: rockchip: add 2 pmu_io_domain supplies for Qnap-TS433
        commit: 64b7f16fb3947e5d08d9e9b860ce966250e45d52

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
