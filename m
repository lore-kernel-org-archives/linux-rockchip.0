Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7035AC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 17:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0/1Xrb//6IiRdJE34brdZL4SOoA/zXgXZC2JpVenB1s=; b=OPkCLN098fdfu/
	PJcb/+SuwzXuS9nEJqAxBhDq2adnS5uLFxzi8je10dV2O1xTRo7mn3CN0kpl9eSCtLaG1HV+OPHLL
	qm9LXf6AP/GR5OQZFRhn5MbRJHUZOr2fERW/KlhWZZOrr9zrtPOsXIMPBqmX6gD6IDivA/DlMW5L1
	woWPZkzzeP6bI78DaAUCdLZEmTOdXjSU0pRJbZSfRxYNG2HHM35Q1z9VvzId51OIkDj+LQ+WbK7tN
	fZrIx4VUUsR2LoQ8HYyO0J9GNLm6r7VJVd27nwFzNuVniyb76YqlAqmEb0n+WrqXuyulBH55Rgzfu
	iIRqHaBsIybYdcYGe0NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcV3p-00E9u8-0m;
	Wed, 15 Mar 2023 17:37:13 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcV3l-00E9rm-2n
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 17:37:11 +0000
Received: by mail-ot1-x329.google.com with SMTP id e9-20020a056830200900b00694651d19f6so10554582otp.12
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Mar 2023 10:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678901825;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mTPdfXZz7TdYFcy/x5+HjC8JRJTWloTy01FYnVAwbHA=;
        b=DHl+MRfzeKDTyAEsY/SDlTXFybQBbkwsaCfpJS7B0vXEk90kGZhEbkdUozplcfOsg9
         uCHzS1HbvosFLNyJNOJs4pxxnHXVCi1fDK8yybuaMi9XLc4AGPXcxHgelkCpwADp+jnB
         +CbGrTBTxhgldvl1qN3/soWRh31eQt87FBEg+qFvTlfAm9R2VLEafjJizo7N7tESry/B
         TFsXZorPjP9CoX3wHLXfpHqdhJjAglagL47W+DT8wM5prLQJqNA/AaurayDGdVcy4Uri
         k41c2beg45QnUA8XiLoFTSj6Ih6daft8uFsdX5jryEQAJ7SIM1cY4+ISm4f6uKtrUUTj
         LJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678901825;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mTPdfXZz7TdYFcy/x5+HjC8JRJTWloTy01FYnVAwbHA=;
        b=tvjz0HcqJcif71yDTQR3bkifI/XkA6Q9VlOALAcCtiu8B8rgeqYrj44T0pKv2Z3Ih9
         VluWtTuB247DGZpGE/A/EWYSQ/kGRMotQKNv0xzaHhXtnhjdeIPrHINbGzr4Q4CTIdO9
         zldJTy01B6nQo1hhge8Zcw2Y0y9CcbZY84wTSVdiFipb+xHUz0dAe5FyoBvJ3P0/EA27
         lnRPMcVuEyo3a6ftA+fsxUlcrCLjb7uv6uIoomo0U9xYZ7zaZ7jxim9swPN4EmQFXYKG
         af4P6FjCypIO3SZFZee4bruQqiFr94/HKLLZX9iJU593Ies6f/5I+4CGyozsB7I3JLm6
         PZZA==
X-Gm-Message-State: AO0yUKXI7MlZwel2GGML2sPTd4G1Q/UqVUiAs6Z/BnZkfCcU6qGovBh7
	aez47JnG0Ah3Ms9XZe1nMIc=
X-Google-Smtp-Source: AK7set/fkNgmYshbuJ/7NBJdbsQWcG3G+YfTmP8N/EOcGgvXruu6pr2EUvLoGlXFHhfBM/JX0ie3hw==
X-Received: by 2002:a9d:6503:0:b0:68b:9e3b:3758 with SMTP id i3-20020a9d6503000000b0068b9e3b3758mr17868724otl.9.1678901823748;
        Wed, 15 Mar 2023 10:37:03 -0700 (PDT)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id a23-20020a9d3e17000000b0068abc8e786fsm2562044otd.10.2023.03.15.10.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 10:37:03 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	alistair@alistair23.me,
	anarsoul@gmail.com,
	luiz.dentz@gmail.com,
	johan.hedberg@gmail.com,
	marcel@holtmann.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3 V5] Bluetooth: Add support for RTL8821CS
Date: Wed, 15 Mar 2023 12:36:54 -0500
Message-Id: <20230315173657.28692-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_103709_908587_93645E79 
X-CRM114-Status: GOOD (  17.45  )
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

This patch series is to add support for the RTL8821CS Bluetooth
controller found on the RTL8821CS WiFi/Bluetooth combo chip.

This has been tested with firmware version 0x75b8f098 which has been
submitted by Realtek for inclusion in linux-firmware.

https://lore.kernel.org/linux-firmware/20230223062453.181239-1-max.chou@realtek.com/

Changes from V4:
 - After extensive testing it was found that there are problems with
   using the bluetooth that were not caught with the initial testing.
   This can be mitigated by setting the "H5_INFO_WAKEUP_DISABLE" flag.
   The easiest way to accomplish that is to change the fallback
   compatible string to "realtek,rtl8723bs-bt". Updated the binding
   documentation and binding to reflect this. No change to the driver
   from V4 was necessary. Removed "reviewed-by" from documentation due
   to this change.

Changes from V3:
 - Corrected bindings so that all but the 8821 use enum, and 8821 uses
   items.

Changes from V2:
 - Corrected devicetree documentation to change compatible from const
   back to enum.
 - Removed "reviewed-by" from Alistair Francis as binding documentation
   updated with changes.

Changes from V1:
 - Switched to use a fallback string for the rtl8822cs so as to not add
   an extra entry to the of_device_id table. The driver is capable of
   selecting the correct firmware blob to load.
 - Updated the messages to note a new version of the firmware was
   tested and that Realtek has submitted this firmware upstream.
 - Updated the devicetree node on the Anbernic RGxx3 series to use the
   fallback string of realtek,rtl8822cs-bt.

Chris Morgan (3):
  dt-bindings: net: realtek-bluetooth: Add RTL8821CS
  Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
  arm64: dts: rockchip: Update compatible for bluetooth

 .../bindings/net/realtek-bluetooth.yaml       | 24 ++++++++++++-------
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  2 +-
 drivers/bluetooth/btrtl.c                     |  8 +++++++
 3 files changed, 24 insertions(+), 10 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
