Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01178C25B08
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 20:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mHdLy8tEZj/k3Z2WTWaP1nanjIC1bEAJcieRzdRowdE=; b=GEKWNzN5+0JPhl
	usCf9+U5JIJNa09svubE72Xnb/UFJenoXq9AoKaoD08Tbp6f27VHGaZJRbvV7ke/lZwPwbhA10FjY
	LE/J3W14VcCciiQlAo6SDW1uPN34Qt1yEPDWtztlQWSsjbsbJPRZ71UeCLptgD+1GMh4szJYVE9Pm
	QLiQiYtorf0hk4j23wbgK+fkW/eMKz6z07RmKimHhrGOuiSXsYOPB95XPWzeWnIu3UrhQJgrgBRF6
	VD8GSQohcf9YbIlvDManrHtHn7EnIiIGZaelW3qsK1ZO1Tpn9uzLAY13Cxf4u3uYgwQB+OdJfvSUU
	zlhScigEw6JdBm4Kacwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPzU-006ash-5g; Wed, 17 Aug 2022 20:50:16 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPzK-006ahT-6T
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 20:50:12 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-11c5505dba2so2974327fac.13
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Aug 2022 13:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=Kj7nd/oOWCdZSLjpIf6h5++NZuNC0VAuYUM21DpxBuI=;
        b=M/Qa5xz88flKnIixli+edU9SWVwpP219EgqX2g1B13uHGtwvDIrfFe5WvD0rXO5gnn
         y4l58jg4OdmdGeFbT+LSsuuuBFuFweXO5a7LIQYNt/LDNvg/ECGinRsx75s6hzI7q/Nu
         gzaDM37vVfJ0KiHW7eEG9Pt8ji2zvBjVGRpImp2UBIjZt1Y3w0bddtMXPxPXhoIJQlGj
         ncpv9fjOtDDniI/Cxwhsa3Rhb/4YqIr7Aw8LO+5qK8v8/pvtEd8AQWNjVmW7JL5gvy6l
         Zxy85GSHDCuV4/f5uja/HqQnTstGja33k4OCXKhftcwjmFyf7IxkBHQuyKgoLf1gvk54
         AOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=Kj7nd/oOWCdZSLjpIf6h5++NZuNC0VAuYUM21DpxBuI=;
        b=DgI0+cbRnvkJQfoup/5Km7/78UM31rVFGlkyJk4EU6LbcPirNmgQ9AsJ4Zohz7U6Ep
         AkZXe444ETKEFCt/cdHKgfxVkOqyzTuQo7ikxe76PvgaTBIlUeemS/EzsFEPtj1B39u0
         3Iy84be1nLJWT1akoW10UEU+vanTzrubEeA3YVW8DU/3NTgd41B+gWNtPjujYBDU7loL
         1zrgtaHdu+MA58Dvqs1TGs4byx1QbpIlTQhQ4KN3MfiOd1NKit96RBbTzVqKaE+0bt50
         amrZO5Xz2SxBJr960HjuzLr4In0UC4qZtZ4FWCx6KCMLHtmIM6pJ88MVl4djZefdKYDt
         sadw==
X-Gm-Message-State: ACgBeo15ri6isTM7QKwaB7blC3J0BR0f3f6XouqKTVIu3DHsuxh566a2
	D6Ow+Ibo24HIR+VkAUncM6M=
X-Google-Smtp-Source: AA6agR6cUwnMe1FBWKRXBMM63J0KQoWlvb08QVkyMWf14Ayz0gXGfHbpRU8pPufPtEC5VDos/vDq/g==
X-Received: by 2002:a05:6870:56a8:b0:11c:3b32:e16a with SMTP id p40-20020a05687056a800b0011c3b32e16amr2621441oao.117.1660769400656;
        Wed, 17 Aug 2022 13:50:00 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o66-20020acad745000000b00342d2d79a98sm3203321oig.42.2022.08.17.13.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 13:50:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Anbernic RG353 and RG503
Date: Wed, 17 Aug 2022 15:49:51 -0500
Message-Id: <20220817204954.28135-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_135006_286348_1B3A2314 
X-CRM114-Status: UNSURE (   8.61  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the devicetrees for the Anbernic RG353 and RG503. This enables
all the hardware that is currently supported via mainline Linux.
The remaining hardware (for both devices) includes the display panel
and the battery. The 353 also requires drivers to be written and
mainlined for the touchscreen.

Chris Morgan (3):
  dt-bindings: vendor-prefixes: add Anbernic
  dt-bindings: arm: rockchip: Add Anbernic RG353 and RG503
  arm64: dts: rockchip: add Anbernic RG353 and RG503

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353.dts    | 103 +++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 807 ++++++++++++++++++
 6 files changed, 1017 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
