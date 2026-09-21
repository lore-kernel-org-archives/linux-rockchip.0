Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F1FFC982ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 15:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qwhUHGmcgZ5v6BKXJwHPKt3z6f6sDswEavxlnOSPZjM=; b=liodvvikTM/+Rf
	4jksQK5CXLJ6xEIfvAXgw9bxvA/Cym1rzFhDIAqF00693vPhA/OX/MSuX/AYdQGwF2C8IkoguhHjH
	uAC9lzqe4fjxHg8dCcXQ0k8oDQccRkGu7ijagbCd8TV1/OnYdHKO8C1Ey81ftHrshI1n65NDfOFxn
	oeoLKQITgBUHk/Ho5gxS1Nsaok7KfS1DHg/uRkPD15TSgkGeDHM+OGeVM4pB1+7MSqNGWDCU49d4H
	2PHCP6eI8d4cKPEZlJbQhGix36iBymyWPCvfGWyYUnO84BcQle1vCyJ6wYvOjUHquyPlQMWOpRST8
	+JrA3A/C9msQ42jJ+Yrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fzR-00000002cRo-3YyI;
	Mon, 21 Sep 2026 15:31:33 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fzP-00000002cQf-3a5l
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 15:31:33 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49d1ca5b0d6so23439895e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 08:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790004689; x=1790609489; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=q17BTeQu3f/C2Tj9dpVKkyYMWZ/X3XaQhujghfI7S8w=;
        b=Co0tXj8IsyKCabFFBJLcg8bmCcFiA8l3M7TxNk8oqgiChapgzgevostsSztX1rQPM6
         A5CX3q2Twja5xiW7jUawsoQqZZWYI0wgKn29DOTNDtgT8lEyvzVUCPlTVY1Qo763kbL3
         lExZMUHTsNa4p0AXPOqzTFcA7p0qRTMNaxpD6LlnB+DlpOCzfZTf48gIuOKUft+s/FB8
         yJF7vH+xBMzb79QijPsAW0AgQ26wWk8LjY0rDcGWWUNZzY/s2k9gKY2S2sxmzWOkBRwR
         YOnGjGUhs9lGMzy72CgClgmoBqjb5vTO80hMSuQDMDSPPDT837rg3zdWBvo03XT5HBJc
         Vepg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790004689; x=1790609489;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=q17BTeQu3f/C2Tj9dpVKkyYMWZ/X3XaQhujghfI7S8w=;
        b=IgcVVQ1siJguSZE0ESz87TcZdd7qj7Y9YtGXaxixiEZvWmSpA1Qi8wkUTZSdybHs6d
         WOTHzrps8pEQb//VAnPajkkSgyIWFk3utYoEfWGTp1RTePQJn9UCYScnoZ5sCBXuMxxX
         cvggp/GowRRlCjWASbkg4JuWI9EMj3c1/tb0Y41Nyi5piuP9voXtMVhq6AEul3QzFu9t
         fpAmoWQuNJrIAsrCiqt/im7CMk8XrndGuYt2y55hZbApi085r11WAn02Cy7STajvyr9t
         O1r6gHM8FcLpN23ktuuEPP7wnzaq37qGb6YgZUPDP68Eh/rx1InLn7/eijyAmCqjX5W2
         9YWQ==
X-Forwarded-Encrypted: i=1; AKwUvBwAzBVv6mISmbPXXP3mJlEz36FBOB3swGjPZpiiHKbFkWE1+91iSJ8xJDGR5BQ/cGzgAF4NbPcLL7+m6xW3xA==@lists.infradead.org
X-Gm-Message-State: AFuF++mi1L7nqBkPlqk3nJKF60PoKaubRUu4de4iSoYUX8gUPlZDKUhr
	vyqlKqW7pl1GLC47n+iEF15qUZjshd+ZOFngXhuNLjcPvLKPEIudcEYo
X-Gm-Gg: AYBFou3yIBFR48X8TCdkiKa7HrBKxXPuRbghjXGfxRLXgoO3XONhihMTqUH7YUSidZJ
	e5LMuo+GaMLBcch39zfWxWNgBwCur8exKgT7jLwsZyvwaGSjGdwPtv2vs7ZXscn3Sc4n/OQwmHM
	PbO4eroi1fvBbZ/NRlaU3YpviOnATkFzJpuz11WRevKt35jHqfIP+g7TJbLOp4rtpKWM5RqnWUG
	gBFj6whYYdhLjuimrAW3ghByEvAD8eaiWCrVckexcVvg2o6PcHfWMA2VEVkrdvJ/QVnk18xdrqi
	kQEx45SOZq/aRYDbYoNet+0vKMxn8nEC5QczuifOESloFqvbMTN9eEo+XATxl7WXX2XsdCk6WfZ
	SEQ35rBShM9mgzixz7uL8b5Dw59OTGoHBydLFtNTOJvX5IYaCliereU5Q7bjpIadsMvRkmUtu85
	woJDU+btXg02+X+xp0mpXags1Qdzln9+LWd6RCpn87VPZWQsfiInJMfC95jekiq9xIsp+7BXW2+
	mz05saHPqhVe/HjzpoV4xmf6GwuNnrsADCFqL36B9biIP6pyGjhyubT0Q==
X-Received: by 2002:a05:600c:3ba0:b0:49e:73d3:78ab with SMTP id 5b1f17b1804b1-49fc55adc12mr195005285e9.0.1790004688933;
        Mon, 21 Sep 2026 08:31:28 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48724562aebsm25313835f8f.14.2026.09.21.08.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 08:31:28 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Subject: [PATCH v2 0/5] media: rockchip: add support for the RK3576 Video
 Capture unit
Date: Mon, 21 Sep 2026 17:29:56 +0200
Message-Id: <20260921-vicap-rk3576-v2-0-0a4582e20c72@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHRNsWoC/1WPzW7DIBCEXyXi3K0MZoH41PeocuBnSWjrOAUHt
 Yr87sV2parHkWbmm3mwQjlRYcPhwTLVVNJ0bUI8HZi/2OuZIIWmmeiE6owwUJO3N8jvPWoFijT
 nhmwnpGItcssU09dW93radbm7N/Lz2vHryPR5b5x5t/1hGnWHIPiSQED2FcJcQGsuXDC9DKSGK
 tYaZwuBn8YxzcPBBYzSYOxjywuBzijUPSEebeycFigpSm4kWyddUpmn/L0drnxbsGGPHP9/qxw
 6CH1Ecmhs5/DlPNr08dyo7LQsyw8bfY7wOwEAAA==
X-Change-ID: 20260828-vicap-rk3576-6e7118ea0246
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790004687; l=3333;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=QIycfM8lSGGpojOIRQ7BJiuB5wrTj6UvPklU28CgqhI=;
 b=xJZVG8DMwVCT85tBT03zInvpL1eGKUYrkEBIDqUtAM993jolzJTX6rarm5D6/FBRrPwbZBk9W
 TrrC0yfaAx5BsukaBjJDfNKb5HQLhUoYXudewIoohBijfVtAOh6wHaB
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_083131_923870_1DDD6DB2 
X-CRM114-Status: GOOD (  16.91  )
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

This series adds support for the Video Capture (VICAP) unit of the
Rockchip RK3576 to the rkcif driver.

The RK3576 VICAP features a digital video port (DVP) and five MIPI
CSI-2 capture interfaces. Compared to the RK3588 variant, the MIPI
register blocks are laid out differently, the ID_CTRL0 bit layout has
changed, the VC/DT filter has moved from ID_CTRL0 to ID_CTRL1, and the
capture size is configured in the new ID_SET_SIZE register. In
addition, the pixel clock of each MIPI port enters the VICAP through a
dedicated gate in the clock and reset unit, so the VICAP claims five
interface clocks and five interface resets.

The two driver patches that come first prepare the rkcif driver for
that, by adding a register index for the capture size and a callback
for the contents of ID_CTRL1. Neither changes the behavior of the
existing variants.

The device tree node connects the VICAP to the two MIPI CSI-2
receivers that are usable with the MIPI D-PHYs in full mode, following
the approach taken for the RK3588.

Tested on a Radxa ROCK 4D with a Radxa Camera 4K, whose Sony IMX415
sensor is wired to the first MIPI D-PHY in full mode.

This series applies on top of the RK3576 MIPI CSI-2 receiver
series [1].

[1] https://lore.kernel.org/r/20260915-csi-2-rcv-dts-v2-0-bdaf8141616a@gmail.com

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
Changes in v2:
- Split the driver patch in three, one adding a register index for the
  capture size, one adding a callback for the contents of ID_CTRL1, and
  one adding the RK3576 support itself (Michael)
- Collected Acked-by from Conor and Reviewed-by from Michael on the
  binding patch, and Reviewed-by from Michael on the device tree patch
- Link to v1: https://patch.msgid.link/20260915-vicap-rk3576-v1-0-d3f5eb58a0b5@gmail.com

---
Amin Gattout (5):
      media: dt-bindings: add rockchip rk3576 vicap
      media: rockchip: rkcif: add a register index for the MIPI capture size
      media: rockchip: rkcif: add a callback for the MIPI ID_CTRL1 register
      media: rockchip: rkcif: add support for rk3576 vicap mipi capture
      arm64: dts: rockchip: add vicap node to rk3576

 .../bindings/media/rockchip,rk3568-vicap.yaml      |  46 +++++-
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           |  83 +++++++++++
 .../platform/rockchip/rkcif/rkcif-capture-mipi.c   | 155 ++++++++++++++++++++-
 .../platform/rockchip/rkcif/rkcif-capture-mipi.h   |   1 +
 .../media/platform/rockchip/rkcif/rkcif-common.h   |   4 +-
 drivers/media/platform/rockchip/rkcif/rkcif-dev.c  |  21 +++
 drivers/media/platform/rockchip/rkcif/rkcif-regs.h |   1 +
 7 files changed, 308 insertions(+), 3 deletions(-)
---
base-commit: bd5f485f3f026225b86573e559af0b7254ef4184
change-id: 20260828-vicap-rk3576-6e7118ea0246
prerequisite-change-id: 20260825-csi-2-rcv-dts-7712bd834de6:v2
prerequisite-patch-id: fbe2d84f88709b8bf846debe6b8ce62c4392ca63
prerequisite-patch-id: 9bce33933ae69e8cc7f7ef2f0d9acb969620bc85
prerequisite-patch-id: bff0c668524f94b0b7901c682d5ccdccfe18d46e
prerequisite-patch-id: 8f45701f840680a35e044f43ebd3087282847990
prerequisite-patch-id: bdbb3e9b072469900cac21031cd799265b52d734
prerequisite-patch-id: c91ceb74abc8bc79ac036990abdef4cbd7328f97

Best regards,
--  
Amin Gattout <amin.gattout@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
