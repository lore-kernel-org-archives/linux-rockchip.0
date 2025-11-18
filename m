Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA11CF2563
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 22:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mgIPUDx06YgBBautV6bShLLczOoHL0V1sjWbFBnJI1M=; b=pwPyf289IZyjUx
	tNMzaDh5zClONXd8YxFN3+54qKWlYES5NOsJ2yUjxPiq88I08P+MxO+t8/HgZOfj2lDfgtkpFeqym
	H0aK2JiM7HitrVjt8wUm6LVq5mCVijO337KQgfxmCL/NW03C+lKY7AjqMiI9R2TIHH9OZi5xTYUjL
	2W2qtP0F5mT1knHNITAlvJr1qkKujVQaK0UbzVma1NbzOR15F8nI1HdlQrm/laFng5xK3tYmKaAp6
	LuPIFymPsfoJQV7bmS01g7unX2P7Q9hKBd2ii345h/gNNrrk1ueiDNg6vUPoEmj1us3w8jXnGplxi
	v+8fHqdBHNcW/aNhGTHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGD-00000001BSE-0OQp;
	Tue, 18 Nov 2025 22:33:17 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUG9-00000001BR8-49hu
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 22:33:15 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7c704bf2d9eso2712225a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 14:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505192; x=1764109992; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PKPZYyCOv9wy9mxzsJvlZBNgV+UDfSoSPQVdRg8sG5k=;
        b=Pju4WP24GMLmvtHeRtCamSgkoxdh+SjZWvfepCZL0WtmHjzF3y0y08Dc231KEFWB9j
         AhrEOxMyn/yi5WgCPgXEcz8gC8Ax7UhC4W/0MGFuyv0UNdtCH9Ub3wS76O1qYoKqqnh2
         XUxayndk5IG9wLs+9rz1hGgKFp23CI3VuQWSNj7fsVjiRSbbGaOypn+3DvJCSQM+ZqPI
         9gXSeQOIFrJP8QjKfo7XnowOJHdjLJcmgaDLO8V3jg3c7kAFEHN2p/SftD9Wt7Kv5Z/X
         zSKUxUNsNNK2wHpgopFwf7wf1uYQ8Xzwt5u9yS1xGz4z0jfepBWQxWWqNPzfqbJNNIiL
         ierw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505192; x=1764109992;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKPZYyCOv9wy9mxzsJvlZBNgV+UDfSoSPQVdRg8sG5k=;
        b=R9BLVDWovv8RiPaLPbFqtfBCM0YplGTQuM+xVwkkfqjyUR2M1CMwDzVJkDbf+d8jOG
         ZwnAdqVMQLiWdaLDGZv1CB2rGpjDcPsB7ckwTff+OYzMaGlO4ZxK93c0f5moizqrJ5pb
         bkoJJy+MscBfQx6PLqbNMXYWA+/czKaEa2QQndrdDgSeVPLZFrWd5g+fXERyMD/WbBpU
         dtOwzvI39lYfPeuibmaBd4JYPercQ4C30F5dfzgy5PYVnx6sAOx6Jy15ywvWp0fhd7Qt
         /m2pDNVrhog1Hgh9G1vaABDoWiJuTLnS1W/LKmECzKbFqjfr8Nb9I1Ya4W/iznjqgjoL
         FzJg==
X-Gm-Message-State: AOJu0YxEVwKiBE/MMuNBQJhILuZ89q+y4vMS0/kYYpHQYm9nRvSqMfRG
	0JM5lcFI9mrKf/SdMgrfb6EFckFLpGQWxwL+zP0MpT4QeYjtjA5JHTfYsYRkZg==
X-Gm-Gg: ASbGncv5CvkmZQ/nhtdi8co/kfTCU82jGaqEbijjTSfMwgni1E5hwula9S/VpIqFe8z
	C5vHKLN3Z5uzFOIl3blTqEXPE09StwdqJKSa1J8A7sluQf5R3OhdG5RLuhDVcwcJJ7K+Mszwz3I
	mB3/UnBzkrzo45eKI+6kehoS2Q9KbVh/3NhDoESLqO4fLV+Z3EGYhVGuYYeSopqkaqrKvYknsjt
	7UpnLo3XhLekgdksYY/Ts5lJBky5msMJ/8fSjr58j4cJ9qaSjLdePDhHYZmi7ZEjVrLsqUjllGv
	jK7/MuqUaBh5pkIWmdGfHrGtiUGGXWZ85BxTZcYwzNCuZKM5QDkh2O6qav5brN+bAcmeZTXqugy
	KYe4sv1w7FUz22yyuQ2nlVArHPUO2d0wm7pKZ5yQZc0RjqirVgBzGRVVBNiIFtnxncZTn+bB3Iz
	OCRyjxqJr+opZ6gHoX98o=
X-Google-Smtp-Source: AGHT+IEhrJAXNmlcH8Y/gTHsN/suJ+iAjI8ewe/T5Ev4mk/LOdn5DJFBDHNd4wis+moO1kB+imwoMg==
X-Received: by 2002:a05:6830:34a1:b0:7c7:60aa:6496 with SMTP id 46e09a7af769-7c760aa685emr6353386a34.4.1763505191848;
        Tue, 18 Nov 2025 14:33:11 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:10 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/4] Indiedroid Nova Devicetree Updates
Date: Tue, 18 Nov 2025 16:30:44 -0600
Message-ID: <20251118223048.4531-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_143314_076647_0AB11885 
X-CRM114-Status: GOOD (  11.21  )
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

From: Chris Morgan <macromorgan@hotmail.com>

This series fixes up a few remaining issues with the devicetree for the
Indiedroid Nova. Namely it adds or updates a few pinctrl definitions,
it removes a few workarounds that no longer appear to be necessary for
eMMC and bluetooth, it adds support for the NPU, and it sets the device
type as embedded.

Changes since V1:
 - The device type addition, NPU enablement, HS400 enablement, and DMA
   fixes for bluetooth were accepted as a subset and have been removed
   from this series.
 - The individual changes from the pinctrl fixes have been broken out
   into a series of separate patches.

Chris Morgan (4):
  arm64: dts: rockchip: Add clk32k_in for Indiedroid Nova
  arm64: dts: rockchip: Define regulator for pcie2x1l2
  arm64: dts: rockchip: Correct pinctrl for pcie for Indiedroid Nova
  arm64: dts: rockchip: Add host wake pin for wifi on Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 43 ++++++++++++-------
 1 file changed, 28 insertions(+), 15 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
