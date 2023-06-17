Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61378EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4FI9YhxXc/Pi9cgMIgrelV2+XBuqk6zZ8V51HFiUJfM=; b=pp7uG3RWEU2Zf1
	NHE/zfEUA9l7+v70dviGRj5LlUoFyEP54MUpyVZDGD/00FpoG+Ul24H5oQ1XLEKiBe6mg6Ue1u6LT
	EULu/dHcq94CiduRbKQ+04xQ0Zm8iYPv//74pC3f0jI5+g5t3zV5ta3jsODt5YN774WaHpBIE4otn
	fmEvUwMKZvrDJ7ITlXKa4LrZwQzyJ2FWdkJRO03gZxl42cJ0MwwCxHU7MeRcNaVk1ZpwIbhcJXtbr
	bZEy0JkPVRoiN2JFXaya+d81FaVfIaFWyDnE6XguCBpOynqhOEa6oFT+W3IdhUmagqaSw1l8tyObi
	PW9UYsjRBYMG7MA+M4Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAWN6-003i1k-1G;
	Sat, 17 Jun 2023 13:53:44 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAWN3-003i0m-0i;
	Sat, 17 Jun 2023 13:53:43 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687010018;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Bbqiov4Op0v1yv6B2iZ6b4aJ69uVgQBZKHbEsOQQ+Ms=;
	b=XvONLIaguEdw3eRIvRs21O8r/dSNfd9QrB4ENd0VDyxkNR5Jdu35Hr3MBa26pR5/buXNVH
	Tt4evY92oirREYSScQj+4hDihmyXlZKt3yyMClCI38d4WG4Twz9fO4FhXSJ0/vliVRoGzQ
	5y196eoinHUVoBI/FWpM9RY+fW6bgbmD5VeKa7p82qFxmfyJUp0BufpUtMzqQpRc+yRN3P
	V9L3jyMwxiBOZCC5OiFS3Q8iF7+t6SkzLp9MS5RUejMHF5NX8S5US81rSd/zDoG+fnJKjX
	23FAZT9Wohsfqa4YTqjlfKTAV7o/NTrH9XXFK5UP5SVjdbszu4ytd1G/d7yv7Q==
To: robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	broonie@kernel.org,
	deller@gmx.de,
	dsterba@suse.com,
	arnd@arndb.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCHv2 0/2] Add support for Firefly Station P2 aka rk3568-roc-pc
Date: Sat, 17 Jun 2023 16:53:13 +0300
Message-Id: <20230617135315.25441-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_065341_776850_8FC97824 
X-CRM114-Status: UNSURE (   7.11  )
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

Patch 1 adds the requisite dt-binding.
Patch 2 adds Firefly Station P2 device tree

Please review and let me know if I have missed anything.

Furkan Kardame

--- 
v2: 
- Add regulator suffix to nodes
- Fix indentation
- Remove sdio_pwrseq node as it's not needed until sdmmc2 is added
- Remove underscore from pinctrl node name
- Fix dt-binding compatible name

v1: https://lore.kernel.org/all/20230616211020.55755-3-f.kardame@manjaro.org/

Furkan Kardame (2):
  dt-bindings: arm: rockchip: Add Firefly Station P2
  arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 673 ++++++++++++++++++
 3 files changed, 679 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
