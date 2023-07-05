Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D1AEB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 14:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LzBlgo5dt0jKII0IrPhwIa+rW85vWXmRJcwDd8xSyM8=; b=dyqusjR7usqOUH
	D/Uv6059p4nHMT4sS2gCMxbVmfTpUFWcjLwcKVG69kFF3INa6axYJ04DbniDU5SPM6xAJulaEWhsM
	3Lp0C4l+aun8FgceXsddKREKIr5BkfPZG97uc0fOAvlnQHxq3QLz1riqpclTiz5QP9aQC5lhuKVK8
	Xp+rwtE03+I/IZi95MG3aqe3bM8ob8erH+4T2/vY323U0qZdgYbirJR9WCLT4nbMKkqn9J8ArB8E3
	I3U5dIJGEUgP18fGG+1PplZ0D7UjmBWX+5TQBFSk8d0OHG9ovCPURgpk1ANhjBlWhbHxgkC/+GFIK
	8dQgORz/6vcoEfp4y/lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3ik-00GB7N-2w;
	Wed, 05 Jul 2023 14:43:06 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3ih-00GB4h-05;
	Wed, 05 Jul 2023 14:43:04 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:7599:ed26:1798:f430])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3E2906601F5E;
	Wed,  5 Jul 2023 15:43:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688568181;
	bh=P5Fm2OLmai5YtKVyYGBI2DmPwndevSpJJeqkn7lP5ck=;
	h=From:To:Cc:Subject:Date:From;
	b=TmpRt2quPRUL1+pIUMicinQ4wqcXrxe0QccFxpINEWL3onIO1SDx8kBo9oPwvQttb
	 YSPGD2baFTCg/3ZKSYAcE9g8ToOViebdtTp/NyUFB16m0n9PSNXfE3W4txR94K5mSh
	 C3CF6d6HUGiDZkIpX3twktyeyTfEP5QmFJFSYEQIMmp6oDWpdaSerOEkZpv2zFL1tC
	 MW6QBVkgr45bzi5s1kQj9dLP+i3AK/XubqOg/7Dh+UeBKRQ5rxAwRpKbyoUYVB2gWO
	 XwJgW8iTMNzqMntbv9h0hT/yP54688jSGNv40jJG3a2Kkgr5VRCdkUU2GBjgKrp61q
	 GoaBsdzHk03qg==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Akash Gajjar <Akash_Gajjar@mentor.com>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
	Pragnesh Patel <Pragnesh_Patel@mentor.com>,
	Rob Herring <robh+dt@kernel.org>,
	Stephen Chen <stephen@radxa.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Disable HS400 for eMMC on Radxa ROCK 4 SBCs
Date: Wed,  5 Jul 2023 15:42:53 +0100
Message-Id: <20230705144255.115299-1-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_074303_262480_41C5AFEE 
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

There is some instablity with some eMMC modules on ROCK Pi 4 SBCs running
in HS400 mode. This ends up resulting in some block errors after a while
or after a "heavy" operation utilising the eMMC (e.g. resizing a
filesystem). An example of these errors is as follows:

    [  289.171014] mmc1: running CQE recovery
    [  290.048972] mmc1: running CQE recovery
    [  290.054834] mmc1: running CQE recovery
    [  290.060817] mmc1: running CQE recovery
    [  290.061337] blk_update_request: I/O error, dev mmcblk1, sector 1411072 op 0x1:(WRITE) flags 0x800 phys_seg 36 prio class 0
    [  290.061370] EXT4-fs warning (device mmcblk1p1): ext4_end_bio:348: I/O error 10 writing to inode 29547 starting block 176466)
    [  290.061484] Buffer I/O error on device mmcblk1p1, logical block 172288
    [  290.061531] Buffer I/O error on device mmcblk1p1, logical block 172289
    [  290.061551] Buffer I/O error on device mmcblk1p1, logical block 172290
    [  290.061574] Buffer I/O error on device mmcblk1p1, logical block 172291
    [  290.061592] Buffer I/O error on device mmcblk1p1, logical block 172292
    [  290.061615] Buffer I/O error on device mmcblk1p1, logical block 172293
    [  290.061632] Buffer I/O error on device mmcblk1p1, logical block 172294
    [  290.061654] Buffer I/O error on device mmcblk1p1, logical block 172295
    [  290.061673] Buffer I/O error on device mmcblk1p1, logical block 172296
    [  290.061695] Buffer I/O error on device mmcblk1p1, logical block 172297

Disabling the Command Queue seems to stop the CQE recovery from running,
but doesn't seem to improve the I/O errors. Until this can be investigated
further, disable HS400 mode on the ROCK Pi 4 SBCs to at least stop I/O
errors from occurring.


Christopher Obbard (2):
  arm64: dts: rockchip: Disable HS400 for eMMC on ROCK Pi 4
  arm64: dts: rockchip: Disable HS400 for eMMC on ROCK 4C+

 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 +--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
