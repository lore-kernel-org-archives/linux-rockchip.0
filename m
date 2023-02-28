Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5C86C64ED6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 15:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HO21BpiYjTrZLMseZySME0h8HN6rTcj93YNc7ObiIT4=; b=OGtxuvmOMIbZev
	LdftDJnTJYzaTiPl3CzEYycDGKr5pgOyVwxpIt1Cjgy4c0+fGV70LEdwWt/4XekR5V1cZx5fsNHcQ
	9jWWLStB9/T51PSdMDzkrQRmeE94nGdy5HZh2x0dHJfXFuE47GVK02e23naakEeLTPjbCV6MoOkeV
	7nBCdKZnIulwdaLJV03DFQg5h+GmXfCn+h7SeE4s0hP+glTnTKyFFq2FRMfRrY9QH1p7SN5FOknQJ
	nstv/S0hxTJMzrnzmxPwYF5hmTuNJkLDr45OuwoBe0wscUmaZEJIoRcAF9E/fUQW5fW2gewbN1agO
	Hl8ZuTzKg9FD8Ksb5c6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1o9-00DdQH-OV; Tue, 28 Feb 2023 15:22:25 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1o6-00DdMq-II
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 15:22:24 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1722c48a773so11273338fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 07:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6ZINZr24IPypfc8Mbr2NS8J6caC0I66oepeOa6nqVCc=;
        b=PTOU94NTsu451MMt6lo/eqWICOkaylcV/6yv7DwF+rDmMQfwjK9KRlDTgm4h+zIk1j
         Z3SMiFx6OUELNQnr44GdLqjWdEdPoDkOeXNvXJMAAqhx9XtoRTFAcEsJMdxcznSwbkU1
         x9dqe6YlWRs1rzUXR6W1YL/61IaL8af8a046Fb5/STtcZagUUi6pHSy8YrCmx59Vt37S
         I7mOrUnLTwzzxQUTrHS8NBFkC9YDpAmDtMG+hPK3lVYutWB+1bmokrdWDc+br++oECY/
         CssMGpX7vMe5lm9Ip4d4Uyfg4+8CRTm9cmkHmCIbQYsZ6IfxeyhXEzTzETGWl4cCQe/v
         YJNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ZINZr24IPypfc8Mbr2NS8J6caC0I66oepeOa6nqVCc=;
        b=cb0mJwNnnQIubLlc4Uw/icufQdPBbXfWvjTrMEyrLGE+uS8faLQDFynWaimVDuJg53
         wwmuDGmoYS7cIiIiy+GfzaDORn6Bu4PrJ7W4Tg0dCJrWGt74jb0EtxmvMc/UPWZhJwHX
         ZMjlKEdoC88SVFxDiR6k2Mrmq2o8EO5bRtsRFeF1W/75O1ZVfV/Fmd1KPig7Evf1IdyC
         Zyi1ESsJz1MVGcgSySl223FBofl0w8NY9AV4jfTXJhR2yjv4YXaibZcugnqLdXkTFjVp
         sp0nbTLzmM9ejox2U+mBB1zoTKXIsFgXTwlCI16OTAjXXoE42xFXZlVFKchOX716tOzz
         M1SA==
X-Gm-Message-State: AO0yUKVR4Q6/kj+teKy7og1d/3fQn9c9U1HMrR4Gb2qiLu0GJgksFRnM
	yCvvjWnFRVmqebTPLV1v0qI=
X-Google-Smtp-Source: AK7set/d2yFBcIx3QZ9+WAlPuDU8jy0GvNS483gxd9YJjKP83i4QFU3/xhWEoFQlffdP9AcT2sZcRA==
X-Received: by 2002:a05:6870:8993:b0:172:4748:32d9 with SMTP id f19-20020a056870899300b00172474832d9mr1473141oaq.3.1677597730592;
        Tue, 28 Feb 2023 07:22:10 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id yy23-20020a056871259700b0017264f96879sm3318321oab.17.2023.02.28.07.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 07:22:10 -0800 (PST)
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
Subject: [PATCH 0/3 V4] Bluetooth: Add support for RTL8821CS
Date: Tue, 28 Feb 2023 09:22:02 -0600
Message-Id: <20230228152205.133582-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_072222_644615_01DF8E75 
X-CRM114-Status: GOOD (  15.11  )
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
