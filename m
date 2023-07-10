Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBFE3EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 14:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nb9nOFR7G1VKsP/R3fNYnrZAFk9NkgTOi8P510/Qhr8=; b=nBky3Fc3P8xit8
	HJTzRRCOA+EzxVp2HLH/XMmZDnLYyctIRlwhmWIoiVrbqULYUSTOxjNCTsVfM1Qtc79vTR/701QBj
	K4PovDCPi1m5bB+9+/Pa4kBl0WtvghEe+vab53KkoRjY9vAZfMp7vPfRWw7E21uyQK3EPheilWxrQ
	tq15XlCci1sfhvgwN2nfICIuLtpBwk6zChlh9GQdrW8iZIcn+oK0bJgtUZcK7G+lztWjQ476YUKEm
	JwrPNU5GM3z5Y/76xzVlMzNdRT8l+xHTC/51vp0K3mmznZRXJE47q9NYHaYk2NcTNSaQI9men50t3
	Y3SNxFq+RqvutfmgcaXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIrgl-00BrAt-3D;
	Mon, 10 Jul 2023 14:16:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIrgj-00Br9Y-3B;
	Mon, 10 Jul 2023 14:16:31 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qIrgd-0001RE-0V; Mon, 10 Jul 2023 16:16:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Christopher Obbard <chris.obbard@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Akash Gajjar <Akash_Gajjar@mentor.com>,
	Pragnesh Patel <Pragnesh_Patel@mentor.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	kernel@collabora.com,
	Stephen Chen <stephen@radxa.com>
Subject: Re: [PATCH v1 0/2] Disable HS400 for eMMC on Radxa ROCK 4 SBCs
Date: Mon, 10 Jul 2023 16:16:15 +0200
Message-Id: <168899855922.1747213.6113714105963833215.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230705144255.115299-1-chris.obbard@collabora.com>
References: <20230705144255.115299-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_071630_020499_997BA373 
X-CRM114-Status: GOOD (  11.30  )
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

On Wed, 5 Jul 2023 15:42:53 +0100, Christopher Obbard wrote:
> There is some instablity with some eMMC modules on ROCK Pi 4 SBCs running
> in HS400 mode. This ends up resulting in some block errors after a while
> or after a "heavy" operation utilising the eMMC (e.g. resizing a
> filesystem). An example of these errors is as follows:
> 
>     [  289.171014] mmc1: running CQE recovery
>     [  290.048972] mmc1: running CQE recovery
>     [  290.054834] mmc1: running CQE recovery
>     [  290.060817] mmc1: running CQE recovery
>     [  290.061337] blk_update_request: I/O error, dev mmcblk1, sector 1411072 op 0x1:(WRITE) flags 0x800 phys_seg 36 prio class 0
>     [  290.061370] EXT4-fs warning (device mmcblk1p1): ext4_end_bio:348: I/O error 10 writing to inode 29547 starting block 176466)
>     [  290.061484] Buffer I/O error on device mmcblk1p1, logical block 172288
>     [  290.061531] Buffer I/O error on device mmcblk1p1, logical block 172289
>     [  290.061551] Buffer I/O error on device mmcblk1p1, logical block 172290
>     [  290.061574] Buffer I/O error on device mmcblk1p1, logical block 172291
>     [  290.061592] Buffer I/O error on device mmcblk1p1, logical block 172292
>     [  290.061615] Buffer I/O error on device mmcblk1p1, logical block 172293
>     [  290.061632] Buffer I/O error on device mmcblk1p1, logical block 172294
>     [  290.061654] Buffer I/O error on device mmcblk1p1, logical block 172295
>     [  290.061673] Buffer I/O error on device mmcblk1p1, logical block 172296
>     [  290.061695] Buffer I/O error on device mmcblk1p1, logical block 172297
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Disable HS400 for eMMC on ROCK Pi 4
      commit: cee572756aa2cb46e959e9797ad4b730b78a050b
[2/2] arm64: dts: rockchip: Disable HS400 for eMMC on ROCK 4C+
      commit: 2bd1d2dd808c60532283e9cf05110bf1bf2f9079

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
