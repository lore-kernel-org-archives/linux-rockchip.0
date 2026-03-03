Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3285EDA687
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 15:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zucQ+GQ/YdjFlmWdRMGxHomtHjSSf4UbgvpAeKm9jwI=; b=5GgwYE/XWfVpf5
	+7pe7OK0jBRd/bxalGKTQ+Y1G2QbBGTo4XVRD9wEXMngqlFMYVOgJbYJsR9CPf8vZdFVCLbWEn+vn
	YOLJdzJiIQlPJ2OnmJQvca9OoiweQ2D5npXCy7tHORxnqs6DtEoiqqwb6GJAe8+j4woZfgOlKNupD
	X97qJjY08KakuQf2cPdaF3ntHzwWrO+DMzeZNAqWz17+Dk5VOQwg9n1S3ziorZJ57dGtRPUiFkqUr
	Jli/+KYsg/hl6cjpcb+qGf8LlRCXe/dU9YIDWPRi8yOS8VwNH2pQUdYktQFTll5702pm+hvtH7Alx
	ebe/jy6ogYR1+8gkrY8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxRxu-0000000FSKx-1VNn;
	Tue, 03 Mar 2026 15:47:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxRxs-0000000FSJX-2gr7;
	Tue, 03 Mar 2026 15:47:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0995460053;
	Tue,  3 Mar 2026 15:47:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05C4C116C6;
	Tue,  3 Mar 2026 15:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772552835;
	bh=OAzOjjkcx2+yhAgDuC5wfxwZXHeEyyP73UH7KaBhzXk=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=myXT50pJF7JEBkb7PKBHgsc+7VPjXjxKRz2rnv6QWGb1g0PSiVXOsTo4PS1x5W8ie
	 vpBucAHDz3nQdrLQvYdjPzt1dwzM3Hvc3sF2md/9otP4R6gzNaZeByHpcM3ONrjcVs
	 OqXp5ij0ndXbx5SnVLLGDyfcKVsrs8NG2qBVYm0UhDyge7+RoC0miw3YZ+RUr6VzRZ
	 eFSp1RWI0bvhvuopdFi53DjaCm+JSt9ypHZT3mitEVl0x4fYd4I9tGEJPAMMw79EhY
	 CZwXLPhxwqqIANFgwWsEry7fYQu2Wgf32/zgN0Mlk/3pvRDNBUsBclvpunZW+65Jzf
	 XYqX1Ng6ijRZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9BEDA680;
	Tue,  3 Mar 2026 15:47:15 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Subject: [PATCH v2 0/3] Rework BPI-R2-Pro PCIe clock topology
Date: Tue, 03 Mar 2026 16:47:13 +0100
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIECp2kC/33NTQ6CQAyG4auQrq2Z6ciPrryHYcEwVRoTIB1CU
 MLdHXHv8v2aPF0hsgpHuGQrKM8SZehT0CGDtmv6B6OE1ECGCkNEqE+XFxV6FVTCUQe8y4JjK4w
 uz70hE4IJBAkYldNtx2916k7iNOhr/zXb7/pjnbH/2NmiRX/m4GzlT01ZXmWR6di+od627QOeu
 tu1wgAAAA==
X-Change-ID: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Martin Filla <freebsd@sysctl.cz>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=847; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=OAzOjjkcx2+yhAgDuC5wfxwZXHeEyyP73UH7KaBhzXk=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppwKCyc/A0X35SIdQV+jgSJl8J9tQaDWzoW847
 y05kLjkj9qJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaacCggAKCRBgAj/E00kg
 cqRtD/9KN/09wBH/zqd36deod2gHhVz2vYzQZc1DQsexbgWgbxHwfosftnde5ze2/6Cbh86EmDA
 /2zUHly1zm6y39IGDmHXowCBWGrOnZwiu5QIfCqH0EMUVSilCaePvhNWa+7oVbHzjy5eiDzkowi
 JkT0HKVM6fW/yTrWKgxkKuOifKcp5ax9swI5C0AmuWJgZKXlyzVxDly1a7ZXzrWw+YVqLFew1lC
 O8Dq739hd+82AmHljHC2IrFPxHmYoaKvOYYkwFPZCv4Zgi7Y8KRJ+Wm6F8ZOp06DJRBvBTAKQoW
 EHxReCvJWIU76pZvKtQalQKDTHlFX+g2J9gAalF+5Z6USQLj+gAPJ+VnaFKE1th4pFAt/R97Yz8
 xZy16v6RD9Xj/DTEMK7k+B7s13WGh+lgY27rFU5Sqtao/fGVU020EiYMFCKfs48VqjIFN6ke0lD
 P1EYVRDp6ZuoDpSZebqGICttZ0knixnWh/Z+1HhIe0eJ3Ac8Gy58NusxmOjD7AwNEt3XwFua+jz
 N6OsyMmHlP10TcpAhU5ppyYowKQ4pw+39suPLv1Bd4rXEX/Mph+mh37dJ1h/u+bUOv/16F8lkdB
 Ng3ZnxDXrkSsEdxko2HhSvrN1lCX6dpMlkkkA0QcI32z5iq97zUphtz6FKr9WKkYEkScPfOcLWR
 QiarM+NWNyD2uKQ==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
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
Reply-To: david@ixit.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Signed-off-by: David Heidelberg <david@ixit.cz>
---
Changes in v2:
- Added patches for solving the topology issues and on top of these
  original patch. (Heiko)
- Link to v1: https://lore.kernel.org/r/20260301-rk3568-bri-r2-pro-fix-pcie-v1-1-b9ed318b4a77@ixit.cz

---
David Heidelberg (3):
      arm64: dts: rockchip: Introduce the reference PCIe clk generator for BPI-R2-Pro
      arm64: dts: rockchip: Use reference PCIe clock generator for BPI-R2-Pro
      arm64: dts: rockchip: Define PCIe clock pinctrl for BPI-R2-Pro

 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 57 ++++++++++++++++------
 1 file changed, 43 insertions(+), 14 deletions(-)
---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2

Best regards,
-- 
David Heidelberg <david@ixit.cz>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
