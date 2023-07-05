Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B2B3EB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 20:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-Id:To:
	From:Cc:Subject:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8HTmOK4gIsID6aDBxsmDjmkAN71+g499X/m3TkiMM4=; b=Mmjh4KZE9Cqd+G
	VesLgCnzhKkadX1nVX8E63800f+WcLQnW67WrGNp4yUKEAz/xdI7ivyrwc325kNLNhE+p8rgBkkwS
	AVjOLExO2bUD6UXQ7FrspT01120/mwA8qkkNv3kdPVP945YMf1clxRMdU2DrtlnmjrrIY/HkE9qCV
	s3WFvHgHrKXjEGjZRtS3/VodFStOyRWY6CHdagNWNE9t9BKVhq5cUanwkTVhnvdUQ/H9+E7l/p8y7
	RJbOV6oj/mWDGukgXssNwMTAD19++qRGxFMfK51FO1VIDQU8vS1wrLLltO7Yb2hSpf/WNqpCDK/OP
	1Cuy75ODOQutw5/NmkOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH9BH-00H1j4-2W;
	Wed, 05 Jul 2023 20:32:55 +0000
Received: from www522.your-server.de ([195.201.215.122])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH9BD-00H1hb-2v;
	Wed, 05 Jul 2023 20:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=In-Reply-To:References:Message-Id:
	To:From:Cc:Subject:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=fwgkD+l/wKF+0W7lw6F3W01TP++bGxB20+3iUOcYWz0=; b=iAqmbQbTpdWxduFtrUHR0hfMSy
	j2HFv1KI0MhPxOOBXI32IAdUmY5+US5owdiWS8qhMPJc17FWHUbWXN9Qg9fC3x+eAwYBaDEnIXUNa
	Ds4GbcMbdPsuuJa/LiUL2YZcQne2tiHzGK78BKSYiBWcqpYLDhzgRMmLddDC/rfi9IaHwOgotB9qp
	rx6VXFmFVak8iqeP7s/U6jkQC9pjlrj1CPHSQOt3qzdxlliXF2xOy1SCs7IX3O0ukSyzcYrk3N/R4
	YThX6eJCKWjURp6+MopvdVuON9zeCaT/lFPkIYqHR6trXl7K7CRLojWTooRjn89jX1OPqKP8QhTz2
	3LYTTfxg==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1qH9B4-0003aR-7T; Wed, 05 Jul 2023 22:32:42 +0200
Received: from [80.88.20.1] (helo=localhost)
	by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1qH9B3-0004zD-F9; Wed, 05 Jul 2023 22:32:41 +0200
Mime-Version: 1.0
Date: Wed, 05 Jul 2023 20:32:40 +0000
Subject: Re: [PATCH v1 0/2] Disable HS400 for eMMC on Radxa ROCK 4 SBCs
Cc: <kernel@collabora.com>, "Akash Gajjar" <Akash_Gajjar@mentor.com>, "Conor
 Dooley" <conor+dt@kernel.org>, "FUKAUMI Naoki" <naoki@radxa.com>, "Heiko
 Stuebner" <heiko@sntech.de>, "Jagan Teki" <jagan@amarulasolutions.com>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Manoj Sai"
 <abbaraju.manojsai@amarulasolutions.com>, "Pragnesh Patel"
 <Pragnesh_Patel@mentor.com>, "Rob Herring" <robh+dt@kernel.org>, "Stephen
 Chen" <stephen@radxa.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
From: "Folker Schwesinger" <dev@folker-schwesinger.de>
To: "Christopher Obbard" <chris.obbard@collabora.com>,
 <linux-rockchip@lists.infradead.org>
Message-Id: <CTUIBFDTG9O8.1XKGSAIMSH7LR@homedev>
X-Mailer: aerc 0.15.2-76-g69094e332779
References: <20230705144255.115299-1-chris.obbard@collabora.com>
In-Reply-To: <20230705144255.115299-1-chris.obbard@collabora.com>
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.8/26960/Wed Jul  5 09:29:05 2023)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_133252_248774_36BC9F4A 
X-CRM114-Status: GOOD (  15.75  )
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

Hi,

On Wed Jul 5, 2023 at 4:42 PM CEST, Christopher Obbard wrote:
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
> Disabling the Command Queue seems to stop the CQE recovery from running,
> but doesn't seem to improve the I/O errors. Until this can be investigated
> further, disable HS400 mode on the ROCK Pi 4 SBCs to at least stop I/O
> errors from occurring.

Thanks for the patches! This issue lately got some attention on the
Radxa forums so thanks for bringing it to the kernel lists.

As a user who was hitting this issue some time ago I'd like to share the
observations I made during my testing:

I've seen these EMMC issues on several RockPi4 boards (4b v1.4, 4b v1.5,
4SE and 4b+ v1.73), with different EMMC modules (3 Foresee, 1 Samsung)
and throughout different kernels (v6.1.8 through 6.1.37, 6.3,
6.3.0-rc7-next-20230421).

However, with this vendor image [1] that uses kernel
4.4.154-116-rockchip-g86a614bc15b3 all of the EMMC modules work just fine.
The same holds true for another vendor image with kernel
4.4.154-00039-g00fccd37c63c-dirty.

The interesting thing here is, that both 4.4 kernels have HS400 enabled
(and max-frequency=<150000000> set) in their respective device-trees.
This can be checked in the vendor kernel repo for
4.4.154-116-rockchip-g86a614bc15b3 [2] and for
4.4.154-00039-g00fccd37c63c [3].

Kind regards

Folker


[1]: https://github.com/radxa-build/rock-pi-4b/releases/download/main-df04b3af/rockpi-4b-debian-buster-xfce4-arm64-20220401-0335-gpt.img.xz
[2]: https://github.com/radxa/kernel/blob/86a614bc15b3b1aeb3a9a9e395aedd088c70e35e/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
[3]: https://github.com/radxa/kernel/blob/00fccd37c63cd51b2ae9b3af965f975c561674b1/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi

>
> Christopher Obbard (2):
>   arm64: dts: rockchip: Disable HS400 for eMMC on ROCK Pi 4
>   arm64: dts: rockchip: Disable HS400 for eMMC on ROCK 4C+
>
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 +--
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 4 ++--
>  2 files changed, 3 insertions(+), 4 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
