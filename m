Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50B64C5B56A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 14:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2jdkXe2mgcTxmgbEanTWsqGkTakFZLx7x1m19cDG6Z4=; b=jX/S3+idbyTEEi
	p5LFeG+Xl6Em3k4epeUcGC4G7VX54ZUB4t9HE/MpwMwujCaqIslGfZRt9weX5JWvgX/Mu/sVgxqbs
	1UmNotQv3/zmoyeXp0SU7YBBeSFdFykMjhm3icXZrB2NFv41q7ZSnu/RNEqsUxOYCGqxVGlo3SX3a
	rNTzYQgT7spgIziGavSE5kugw4WNrs2nuEriCy00no4dE3Q8l5j2cSc6YXzvI3mofT2t7qDZ8HptY
	2hIgn6G/YrGmlY9CiaF/0purjijPwe6Nc/vDQwfrBkp84IEgVQeQl5EjNbR0U9bMumk5OScMs26O8
	jah4/46XUs+mxYG+xF1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtn9s-0000000EBMP-2OBp;
	Tue, 11 Aug 2026 14:08:48 +0000
Received: from smtp-190d.mail.infomaniak.ch ([2001:1600:19:d548::190d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtn9o-0000000EBJY-1uyS
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 14:08:46 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4hKD4R1sn5zBFM;
	Tue, 11 Aug 2026 16:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0leil.net;
	s=20231125; t=1786457318;
	bh=sJdreXujwbBO68nv4bOsiSCKiqD5m0KTpBMLsIykfP0=;
	h=From:Subject:Date:To:Cc:From;
	b=CsWeyz33fgb0KGcYVanL6UtqU1z/R1pPraAMwJB5ymBbpgImtrctp0p89T6AeJm0J
	 CWqoDPr16MlCted2zyVB4ojxBn/6xqWKVE8o4buWYIP75sxh1gXcN6DZY+dFrMpVBh
	 4vr2Dp7pJ9Y8/wMRc1yieh55c+XL0fRrhBreqgAXGdFskOtQY6i8ZWR6O8uRxSIjHn
	 NSCUnktcrjeAPlCOJao8e7OZF5de5BWVFId0HQJCfx+tkDfwGbffvEDPBSqRA7+0fp
	 209VpVAjnn/36jtnL6wdXaRkmh7wMctUjRDGg0vShJupWV5/uuLoh+Wx+6AnM1bv5x
	 tLSG2kvTVjwow==
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4hKD4P5MGBzCym;
	Tue, 11 Aug 2026 16:08:37 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: support CAN1-CAN2-UART4
 adapter for RK3588 Jaguar + enable CAN0
Date: Tue, 11 Aug 2026 16:08:25 +0200
Message-Id: <20260811-jaguar-can-v2-0-7e78415b5a08@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NOw6DMBAFr4K2jiNjhB1S5R4RhT8bbAoTrQEFI
 e4em7QpR5o3b4eEFDDBvdqBcA0pTDGDuFRgvY4DsuAyg+BCctVwNuph0cSsjqzDRhqUyqEVkAd
 vwlf4nLFn/+O0mBHtXArF8CHNE23n21oX7294rRlnnWmlNE7dWqcf1iPRdnUI/XEcXzoKxle2A
 AAA
X-Change-ID: 20260730-jaguar-can-9e36be67dec2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Cunhao Lu <1579567540@qq.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.17-dev
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_070844_860845_FA35F7F9 
X-CRM114-Status: GOOD (  11.41  )
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

This depends on the RK3588 CAN driver support series: 
https://lore.kernel.org/linux-rockchip/tencent_76C8BC251C8C3C068C23BAF859351DD3300A@qq.com/
I send this series early to try to prove that CAN2 also works on RK3588
as Cunhao Lu stated they only tested CAN0<->CAN1 loop. I cannot test
CAN-FD as neither Rk3588 Jaguar nor the Haikou carrierboard for RK3588
Tiger have CAN-FD-able transceivers according to their datasheets.

RK3588 Jaguar exposes three CAN busses. CAN0 on the P5 connector on the
SBC itself. CAN1 and CAN2 via the proprietary Mezzanine connector which
are then exposed via the CAN1-CAN2-UART4 Mezzanine adapter.

Enable the three CAN busses. This was tested with

ip link set canX up type can bitrate 1000000
ip link set canY up type can bitrate 1000000
cansequence canX -p
cansequence canY -r -q -v

with canX being one of the three RK3588 CAN controllers and canY being a
USB-CAN Theobroma Systems Seal device. 200k+ iterations in both
directions without an issue reported by cansequence. I hit the same
issue as reported by Cunaho Lu here:
https://lore.kernel.org/linux-rockchip/tencent_D802EB485A801362BF9F54130C0D990C6206@qq.com/
Namely a bunch of:
rockchip_canfd fea60000.can can0: rkcanfd_tx_tail_is_eff: echo_skb[0]=NULL tx_head=0x00060f7d tx_tail=0x00060f7c

Add support for the CAN1-CAN2-UART4 adapter.

RS232 UART was tested with:
- 1 256-character transfer sent to USB adapter (and checked),
- 1 256-character transfer received from USB adapter (and checked),
done 100 times for each baudrate among 9600, 19200, 38400, 57600, 115200
and 230400.

When the first transfer after a change of baudrate happens in the
direction "to USB", the first (few) characters are missing, when
switching from 57600 to 115200. It doesn't happen when the first
transfer after a change of baudrate happens in the direction "from USB".
I have not investigated this issue, maybe a script issue.

My script is:

for baud in 9600 19200 38400 57600 115200 230400; do
  ./test-serial.py --baudrate $baud -n 100 -B /dev/ttyS4 /dev/ttyUSB0
done
for baud in 9600 19200 38400 57600 115200 230400; do
  ./test-serial.py --baudrate $baud -n 100 -B /dev/ttyUSB0 /dev/ttyS4
done

test-serial.py is
https://git.embedded.cherry.de/som-tools.git/tree/testing/serial/test-serial.py

Another way is:

./test-serial.py -n 100 -B --min-baudrate 9600 --max-baudrate 250000 \
		-F baudrate /dev/ttyS4 /dev/ttyUSB0
./test-serial.py -n 100 -B --min-baudrate 9600 --max-baudrate 250000 \
		-F baudrate /dev/ttyUSB0 /dev/ttyS4

The latter will work just fine, the former will have issues mostly with
baudrates 230400 and 115200.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v2:
- removed max-speed property from uart4 as that's a UART device property
  and nothing would actually make use of it anyway,
- Link to v1: https://patch.msgid.link/20260730-jaguar-can-v1-0-9b566bd785da@cherry.de

To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

---
Quentin Schulz (2):
      arm64: dts: rockchip: enable CAN0 on RK3588 Jaguar
      arm64: dts: rockchip: support CAN1-CAN2-UART4 adapter for RK3588 Jaguar

 arch/arm64/boot/dts/rockchip/Makefile              |  4 ++++
 .../rockchip/rk3588-jaguar-can1-can2-uart4.dtso    | 26 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     | 16 +++++++++++++
 3 files changed, 46 insertions(+)
---
base-commit: 942a6a4d3a94f24d39dd4dc2664c950972d66c59
change-id: 20260730-jaguar-can-9e36be67dec2

Best regards,
--  
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
