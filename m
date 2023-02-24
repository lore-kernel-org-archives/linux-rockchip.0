Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E35AC6FA8E
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Feb 2023 23:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sY0/NgzTvj/cs6HhNmFWU3Lz5W/duyRIZhvNQz12pFU=; b=ssEpupyortryHh
	JeZkkCzQeGkeDknD+QhdR0S+WeWA4PT3j/TKoXh4JQjQH4nuCw3GpRc7xrhM/MoPXi/Ap83QQrlYB
	4ahtWciCrbodn/FCv5tQFslKRrU3ytfJkKfemyyBM5GKZn2E0n2NGhHb6IR8/sK88Wu0kdlDi92xL
	CuyPr76qAC9JBNLhi7st6uSocSEzvNC68OslVPoaqaRXFWmw9cS61xTSCL4J8UMW/pq8cegaTzkB8
	sD/fN7Iky/X86EtbOOhKksuiXaAkt5D67EqfPIYuQJ0kXDrTW2Ym5R3v61C6+zHm68notqWssiH8L
	CWoWTE/jlgd+4ZjIT0Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVhPq-004HbS-8o; Fri, 24 Feb 2023 23:23:50 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVhPn-004Ha6-7q
	for linux-rockchip@lists.infradead.org; Fri, 24 Feb 2023 23:23:48 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-17213c961dfso1371963fac.0
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Feb 2023 15:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FqMX1kBnBaZ72UwNdZkYXZByDzuRIUZQRVCNYKPo0b8=;
        b=TTY6DNM/PMh3JOkOssOec6WWyBlD3QuF9o0NMvMWnwl74653WIR8WGPLhjslVTT8/I
         m7mNErTyDQWPWTZXeDsTSET8MVuJqNy7UfdSrG1V4/hSvhra2yJSW3FgyxqKcgEqJSpw
         rqIO767ZiN7CaQbeFYXUsHMWSf+RJCiA+IS3BBSMpJP3M1rszxonMosbZ7GENclY5YVO
         LkL4BI5h9ZIXHHfA3/dMICvkjUvJSlViVMrRHdK/K0RDcdkHTPLDfNY+VTYmSmJkqXJK
         HID2ca7bBgdMLqdK7y7kmMr7/IFx37EXpnnC3E0IvAlx/gzsGkb8vzWIIjobLJxfHVRX
         Ni/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FqMX1kBnBaZ72UwNdZkYXZByDzuRIUZQRVCNYKPo0b8=;
        b=Jc8SqYKSmDtGmYnTGz2GCJxDEC+0eIPXkeiBcT2McnqOJEoK4oecnIRhK7FUxl56rq
         ZXghKR2BYZ0cEeHJCclkvHjlduiI/LpfoHhZoVHSjT5dRxQnl79Zy4aWkdL7DAeMc4a9
         r0RGP7vjkZtyFigm4AqdQJRqeIG/0s1nATKTGFv8uiVop3c0lTf93+xBp3buoe7imetD
         yOq29od1xYCm/DC132jKt5S/1mtyVCZ6z1u2x2MeBvCQ/fW6FSXHvgnKLB28CD90LS3a
         tHnT4YCchhaSbF9c+hwB3eGO+/xAYE6igfWXRBGsfONmdw954J1r8+IkZLJfL0qTSzpV
         2ROw==
X-Gm-Message-State: AO0yUKUGWCgzbon9lPAbtzYq4F4as15C0Z2yyeW7KXC0+7kUmxEZbIA6
	lNzbXcFeOSFBAy95eGnGeZI=
X-Google-Smtp-Source: AK7set+ZmSVx3hXfcnUMyRKf1lnolsA4EM9V8jLlg8Mfys9Z49G3ULY6fJ1FC1IKVO0bvB80bhwqyg==
X-Received: by 2002:a05:6870:b621:b0:16e:8faf:a35e with SMTP id cm33-20020a056870b62100b0016e8fafa35emr16212371oab.25.1677281025121;
        Fri, 24 Feb 2023 15:23:45 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id k22-20020a056870d39600b0016b0369f08fsm119706oag.15.2023.02.24.15.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 15:23:43 -0800 (PST)
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
Subject: [PATCH 0/3 V2] Bluetooth: Add support for RTL8821CS
Date: Fri, 24 Feb 2023 17:23:36 -0600
Message-Id: <20230224232339.124969-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_152347_309381_15ADB343 
X-CRM114-Status: GOOD (  13.75  )
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

 .../bindings/net/realtek-bluetooth.yaml       | 23 +++++++++++--------
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  2 +-
 drivers/bluetooth/btrtl.c                     |  8 +++++++
 3 files changed, 23 insertions(+), 10 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
