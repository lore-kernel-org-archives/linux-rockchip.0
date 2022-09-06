Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C285ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JpSZK4RqUt/jMZv2GRk9mnjTsnKjvFL9cdWdUEGwXHg=; b=h511aKW9a2vP3B
	oziDzvwpPnE8YR2+6ZC/PaKYoVAavdbtb2+sraQVtqMY+x99ZbVBvmM30k62vn+/W8L5gPtSpv59F
	zvNAZDjpdsTzNFSBzVUMH3924s/XJbh1Nvwas0SY15pi3JV4tYiQAaQL5jKMNiNHoK08EjTbF8tj8
	zQ1xKn/A/PIRl89Pqea/X8YHrlw0Adrw2SrzgtupDgzkfoucq3JiCfgDxGkcpn8088U2+3z+yIbdY
	rNLqOnHxP//bV3gvB/AV66tIhtlZatNJk8YtGyUIikqUPhwk0hVYb7syDYwk3c1e/N8P0jiOSWSfK
	svNBr2f9L2OWwkBlLD7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVfjN-00HLvd-Ow; Tue, 06 Sep 2022 21:03:37 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVfjG-00HLrH-5L
	for linux-rockchip@lists.infradead.org; Tue, 06 Sep 2022 21:03:34 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-12243fcaa67so31252017fac.8
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Sep 2022 14:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=8OCqte8bw957ToiqfHE6kwSsjH6IEbLsFmDroA2WG2A=;
        b=eSokP+nKzU/ij599hqlrzGIkFlJ4jKVnpx64U9jIUH1aGiGSpy70B/qDKyE71iOacZ
         oXD/Q/UrIFciu1vKVUho3LHzveEsFOyuTE6BKJUKlRkRtH/HBlyyqVHgfy9uDgQqGi4m
         SuK04hmtWV4PwOoJ224OkNOCKxQwo0mm3G7G+C45XLVinqrFNR4UoMILjt575Z+hr6WS
         oRSqvHANufHC8kpPu0XKaocy5uKboeLf7FWOwfXsoGmRLmBWbrkxLELUn1VzWXpQy8Gs
         Um4QH+0rVMRYc7jXpUCemtq/uJa1E5Wz1LIwptJ6gaXyKc721SasXqoGyzay1VLVSm6b
         OcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=8OCqte8bw957ToiqfHE6kwSsjH6IEbLsFmDroA2WG2A=;
        b=nYjA0PTES+hyKEDIfwyHrcymd25n6LeT9sZkP3ejStEaV/eYT8i2AWXHHeJLDpDc6J
         +NZCSRHeih9MB8aQInISTXFmiWao7eix0JZCwfI/xMMS1wmSMdjWuHjk420P760dqn3e
         33sq2VjHDD8oi/PeqnjcCVc/o0ccPalMQht7+aEnCu+G9IHLA3rbXj0Qo1vpeL/tvRY2
         dWJw5q7yTEIAjIYn1YfS+bnrbCBtj0It00sp03F4wrYdb7qy/C7d1nUp3E9kYlZHmHh1
         QAWkEug6dA0c4MifMyeCTeu9dsa6+PNvp946pxqSHSFLeT/hYefiMmeWAne+GN2dPEag
         ZAzg==
X-Gm-Message-State: ACgBeo23V7rKpmKJ8GI63apqvT84CuLXUqahppX7o5odBI2fBwQ+2z9u
	1ngukMri3ONISZxEt/X3Xr8=
X-Google-Smtp-Source: AA6agR5w8cGnkn6eCjVICzIQp4KTFqMB9m0pJn4kysQNnpJuNnnAtW8f49JGwBgZNaWv2kGFXKgrzQ==
X-Received: by 2002:a54:4e8d:0:b0:32e:aa9e:6c50 with SMTP id c13-20020a544e8d000000b0032eaa9e6c50mr116111oiy.73.1662498208089;
        Tue, 06 Sep 2022 14:03:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id t8-20020a4ad0a8000000b004357ccfc8bfsm4482846oor.7.2022.09.06.14.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:03:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	pgwipeout@gmail.com,
	cphealy@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3 0/3] Add Anbernic RG353P and RG503
Date: Tue,  6 Sep 2022 16:03:21 -0500
Message-Id: <20220906210324.28986-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_140331_538530_7588F276 
X-CRM114-Status: GOOD (  14.28  )
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

Add the devicetrees for the Anbernic RG353P and RG503. This enables
all the hardware that is currently supported via mainline Linux.
The remaining hardware (for both devices) includes the display panel
and the battery. The RG353P also requires drivers to be written and
mainlined for the touchscreen.

Changes since V2:
 - Renamed buttons to be consistent with their externally labelled
   function. Internal labels (such as sw11) would not allow for reuse
   of as many buttons in the rgxx3.dtsi tree.
 - Removed pinctrl for LCD related functions. These will be re-added
   when the panel drivers are ready.
 - Changed name of cw2015@62 to power-monitor@62 to keep it generic.

Changes since V1:
 - Corrected node names to always have only dashes (no underscores),
   except for ones that require hard-coded names (the rk817 PMIC).
 - Corrected all node aliases to always have only underscores (no
   dashes).
 - Appended "regulator" to all the regulator node names, except ones
   that require hard-coded names (the rk817 PMIC).
 - Corrected name of RG353P. Previously was called RG353.
 - Changed name of sound node from rk817-sound to just sound.
 - Changed name of gpio-keys to gpio-keys-control and removed volume
   buttons.
 - Added new node of gpio-keys-vol and added volume buttons. This
   is so we can do autorepeat on these two buttons. Note that buttons
   under gpio-keys-control remain labelled in ascending order for the
   GPIO in use.
 - Added note to adc-keys node that we deviate from the BSP kernel to
   comply with Linux input guidelines regarding gamepad menu buttons.
 - Added note to sound node that audio is reversed for both speakers
   and headphones.
 - Added additional hardware details to commit message for devicetrees.

Chris Morgan (3):
  dt-bindings: vendor-prefixes: add Anbernic
  dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
  arm64: dts: rockchip: add Anbernic RG353P and RG503

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   |  94 ++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  87 ++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 831 ++++++++++++++++++
 6 files changed, 1026 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
