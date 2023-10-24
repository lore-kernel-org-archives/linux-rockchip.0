Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 217EAC00A8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 15:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RtmwTQp4LIqvuMe9zzorG9xSG8Kehv/YV/upNnIryo8=; b=ihhiqMN1wkznIj
	AHmmasJDRIefXeCSIMhH1/6tQXJkV/9CPpSk99jdY6sOx8l00H5SCX8/8NRJMN28gO6GUUG9Jp8TF
	6X5CFvB4tWYkdcEqqys4LPEtUVlcnfyfuwYUjFLkYlt1sa53H9EBp0bVeJqZRa+yX074em92klj05
	l5Ql6IDlg+aunDfN42rd1I2WIe+cPIWisJBJxRt8dEg7CJ2sWqoQi5ATlqx7XaWKD5Vr53oHbpODR
	55+d2921X7I+LSY3d5QiTHPGjMiq5TKnDVyoQimWbZDfTPjIhcMmWHB/RFDSBGJgEk+Z8/yPM+2HG
	68QL404rSvDhlk1UavrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ3o-00ADDT-2w;
	Tue, 24 Oct 2023 15:11:12 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ3k-00ADCG-17;
	Tue, 24 Oct 2023 15:11:10 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c51682fddeso63280921fa.1;
        Tue, 24 Oct 2023 08:11:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160263; x=1698765063;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HN40qd7O/jdFboPxF/3Wu042tEUfJOHvDh2qvkyEZ6Q=;
        b=lkmcfElO88TmLtS0wAHLAnHfSAqWOQ5P9S07l23I0QEvBeAKTUFRyEkJpybESjVT3H
         2VAEJUtmIfI7+DQvG4HdGTDKSqz9SjNtaJSOQuyxORzE8u4/k7cZYRZrP9AMCDUTAiW4
         ZMBkLBSKfxz4jfLebRND+XeEnUEJlxetNZFAvLw00kfLyzqhCQfNiaEUr988NgOmAhRT
         P/78JHhTlQ1aush7CoPNT7n6jUyIcv6s0Crdm3oaXLooJI54MLr/JRAC0XHbW/6GN5/B
         nhVGfHVAH5X/AIbaxZ+trWYCQpa5VT44jOjelt0JRYFHCGlKK9a7aZaVWRgTkjZDiSP+
         yDrg==
X-Gm-Message-State: AOJu0Yx+RcfWrFP45fW9o7pPbTDNqdf/bIH/Nth/HZF/Kg2SY3I0ALcD
	8CLNWj/wihtP6KVw+Ipqawvgxvckrinduw==
X-Google-Smtp-Source: AGHT+IHt/o81OGYzEGbg59Hn3t3L0kjNdUni/ALdl/zt1SsL3pIsWQ1iUrSR+pME0g9IclTAofMgOg==
X-Received: by 2002:a2e:a7ca:0:b0:2c0:1b06:c2c7 with SMTP id x10-20020a2ea7ca000000b002c01b06c2c7mr5423547ljp.20.1698160263099;
        Tue, 24 Oct 2023 08:11:03 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id y10-20020a2e828a000000b002ba7ae1f52asm2066926ljg.0.2023.10.24.08.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:11:02 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id BDA931646; Tue, 24 Oct 2023 17:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160261; bh=KjZFK4FBxCwZqAP7degQMwm8C1kXz7xI0BC0NtnKbsw=;
	h=From:To:Cc:Subject:Date:From;
	b=czLSp1rbLX6e+p+vyPcTzwV22YATkq4e1EfGSMvKjzkGTXFn4Hn23PexSt2cqFBGb
	 nJehYpHnLeQFyx7aHLAFn5DGdnzFJG087ydduytKxqiajUnxaFS8DM28VDpC31om2x
	 PQGOdsjJxcsYsjuWHXlEWud4Cvd/LNfrIhuhZOQg=
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 2048E14D4;
	Tue, 24 Oct 2023 17:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160243; bh=KjZFK4FBxCwZqAP7degQMwm8C1kXz7xI0BC0NtnKbsw=;
	h=From:To:Cc:Subject:Date:From;
	b=m+KJq3vm5MdLA60yUUxuaS3M61NAldbX4n0mIijzuSRljlCqJJ7mt/iAsj5Lf1K5W
	 JlM0XXAe3bJMXGbONz9KJCV87pjzNyDN6anpS87ubPVZPIwUT1vlN0/V6Iru49PtaY
	 Vof1f2esyitN5AfKZfqKn4tKtxlMMoIQ4mAhtWdY=
From: Niklas Cassel <nks@flawful.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/4] rk3588 PCIe improvements
Date: Tue, 24 Oct 2023 17:10:07 +0200
Message-ID: <20231024151014.240695-1-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_081108_986232_F5E564C6 
X-CRM114-Status: GOOD (  11.19  )
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

From: Niklas Cassel <niklas.cassel@wdc.com>

Hello,

This series fixes two issues related to the pcie3x4 slot on the rk3588:
1) Adds the atu region, so that the driver can properly detect all 16
inbound iATUs and all 16 outbound iATUs.
2) Adds the dma region, and the related IRQs used by the eDMA, so that it
is possible to offload data transfers using the embedded DMA controller.


Changes since v1:
-Added patches to rockchip-dw-pcie.yaml to make 'make CHECK_DTBS=y' pass.


Kind regards,
Niklas

Niklas Cassel (4):
  dt-bindings: PCI: dwc: rockchip: Add atu property
  arm64: dts: rockchip: add missing mandatory rk3588 PCIe atu property
  dt-bindings: PCI: dwc: rockchip: Add dma properties
  arm64: dts: rockchip: add missing rk3588 PCIe dma properties

 .../bindings/pci/rockchip-dw-pcie.yaml        | 24 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 31 ++++++++++++-------
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 14 +++++----
 3 files changed, 52 insertions(+), 17 deletions(-)

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
