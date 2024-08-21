Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB033C54722
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Dbb4D0jyr7XY0cvfxQK5//B/9QQ/O7fUTlXILIN2T4=; b=bhGqyulGFpdeKw
	dgl5ewXKUTbcI6r+ALVe7G1xpR7josprZ2+M6oDpdVEFOq9F6xAww+Ou4mwPZRvnCKv0CTB59HXSB
	NAEzP1gszLLZnb94xWhREM3+3dvJsK6jYblbylpUvBIgEdVExaeJlXBsWHgRyaGMBh6Ml/06kA4Jq
	eBhP+Gw3kJfbblRtoUX/u6zCAroEdPduYvzrK8uCsS3huCfUVPeVI1fgcyIL/lF+C9m/3mnn5q08/
	VlRaP/GkiMJlSxS0UhbZ7iTJe7Ud7kDfGKmAigd+DJ8HSpaVrkekhqTWjHyTn+TYAKTKt7gxFYicM
	bUtuWAsQXXlrVKq0rZPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggm2-0000000859F-2NQD;
	Wed, 21 Aug 2024 08:32:58 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggf8-000000083Ir-1Rno
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 08:25:52 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id B4094261A06;
	Wed, 21 Aug 2024 10:25:47 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id XWZp5HdF9CAt; Wed, 21 Aug 2024 10:25:45 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 5B82926018E;
	Wed, 21 Aug 2024 10:25:43 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v2 0/6] improve FriendlyELEC NanoPC-T6 a bit
Date: Wed, 21 Aug 2024 10:25:29 +0200
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHmkxWYC/42OQQ6CMBREr0K69pO2GEpceQ/DAtuPVGuLbUGBc
 HcrLty6fJPJm1lIQK8xkEO2EI+jDtrZBHyXEdk19oKgVWLCKd/TilNoU90qM6FBCbaxrpcQSzA
 xAKVSlKKSxVkJkgS9x1a/Nvmp/rLHx5A24i/sdIjOT9uBkX3Sv7ZGBgxUw7goZIG0wuN1CPNN4
 1PLOZfunveG1Ou6vgEAaoEH4gAAAA==
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_012550_573878_B83DED0A 
X-CRM114-Status: UNSURE (   7.01  )
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

This series updates FriendlyELEC NanoPC-T6 DeviceTree a bit:

- enable USB 2.0 ports on NanoPC-T6 LTS
- enable USB-C port (one orientation only)
- enable Mali GPU
- enable IR receiver (not tested)
- enable SPI flash (present on LTS, optional on non-LTS)

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

---
Changes in v2:
- merged changes into NanoPC-T6 dts file
- add SPI flash pinctl for SPI M1
- enable SPI on NanoPC-T6 LTS
- enable USB-C port (one orientation only)
- enable Mali GPI
- enable IR receiver (not tested)
- Link to v1: https://lore.kernel.org/r/20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl

---
Marcin Juszkiewicz (6):
      arm64: dts: rockchip: enable USB 2.0 on NanoPC-T6 LTS
      arm64: dts: rockchip: define pinctl for SPI M1
      arm64: dts: rockchip: enable SPI flash on NanoPC-T6 LTS
      arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      arm64: dts: rockchip: enable GPU on NanoPC-T6
      arm64: dts: rockchip: enable USB-C on NanoPC-T6

 .../boot/dts/rockchip/rk3588-base-pinctrl.dtsi     |  17 +++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 139 ++++++++++++++++++++-
 2 files changed, 155 insertions(+), 1 deletion(-)
---
base-commit: 6e4436539ae182dc86d57d13849862bcafaa4709
change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7

Best regards,
-- 
Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
