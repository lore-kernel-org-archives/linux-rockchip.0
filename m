Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 700FFC64ED8
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Feb 2023 16:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=waxuTESrjxEwM1b+tedvhdT3xxO0rQgHutgsbavUEpg=; b=fcLRCdC/YbPzcP
	RpEN4T+LvbVUufiWD303JKPBN6kZj2FbZdsFEuH8pWYWSF7yaaDrK6UrvLGNGdbBSLNM+eD9fZeE2
	+/sBU4qb4XLseNIKxHr1qvjzuf/NyAuj9uPlP+0pbZG5YPkW5L6WlDn0pQxcu0to+DYLandudsI3u
	cF+UYKzF00rIlX3323e8p6wDpRsrepuoSFOOPq3XEuxKJEe17j/1ZbhTCVpTplCfcDjWqcf+CXbVk
	p/Yq3XUNAj5UJtG9ZxAQDRXe5r4Lj9X/DQVlwiv41qIscVsZtVmNG3DDz2L1ke+5QmpJlp7j0yAdp
	kS2JBQ7u8gr8dSzhOeDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgOc-00AMuq-Gv; Mon, 27 Feb 2023 16:30:38 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgOY-00AMt5-K6
	for linux-rockchip@lists.infradead.org; Mon, 27 Feb 2023 16:30:36 +0000
Received: by mail-oi1-x22b.google.com with SMTP id bg11so5633681oib.5
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Feb 2023 08:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J+zoHpM2jDyPYbTfFjPKgZiwYudVWnE9jnnXLooJWxc=;
        b=F/f1TRdA0LKyjJ8XblFp9wHjSjlnuPA2HRM371S0R2O0MctGDnX+jt21qDT/0Vk6wF
         b0jfXANvxAnYfzcfLQCmcuqsXiYhgKE8O3HqxJisyAAkN+7VQljIQcyra7O0ZhNc+ey4
         A5q6cvXyUF5kSyX9S536N4hqQ8Y2ak96+GxHusdCIeuMnBawT1jz8tDci3h43FgC7LOX
         jyN1L10uhIhiDc48KzvUQrEP2kEDB+rS7FFMniVxOFJWlY736jsewpv5pajWsNqoFPPJ
         Vvnbhswi+XvD9+9TzVS/3nMZsuGNFDi8J4cgKdlSr+gcuIS2KO7JQ78hdl+R6IM01R8N
         ZvVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J+zoHpM2jDyPYbTfFjPKgZiwYudVWnE9jnnXLooJWxc=;
        b=AqyQtp3jfaYOv45GG3flE+X5utc4HUjQeEJGb4QfgK/9t5tysVNXr/Cw078vGt6jck
         Zzkg4O8enS8QtpLLrNYXvKBAgO8P7JJYNzZ0ZkFOUM7axCAWMUa+soJf8kq2p3p3I+8c
         zTuFNfxozgZrnG7RY000rDIsHcMAz/HqQYl6pJQuUkHXXVoCEyxy3yNdRSioNRZjDzO/
         ZS3ic2WaDeXOq28G8dE27AI0hR+W3Bf2/1EfkCw4cu36DtiFo/dV5HK6ImEDQHehOwVT
         MoHiKmp1jd35RhpkXjySW+75odOIh60f4iEE2cayPNapfJ0+msgiAmsWDP0qDjX2a7MK
         aL7g==
X-Gm-Message-State: AO0yUKV3C3oKxtsQkFUVBuOzFono/xBSV5wTelMe+OwRQCMMbAxEIybP
	0YpcWR96Kpy7j9qg/dBIlD4=
X-Google-Smtp-Source: AK7set9bY2E0brjz88T3I1wKjaM9d4j80UKoTf654F49pk5OIhL/cBdpuQMfYIit6rS52Uf78vbi3Q==
X-Received: by 2002:aca:1314:0:b0:384:126a:204e with SMTP id e20-20020aca1314000000b00384126a204emr4064282oii.5.1677515432472;
        Mon, 27 Feb 2023 08:30:32 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id ex16-20020a056808299000b0037fcc1fd34bsm3267713oib.13.2023.02.27.08.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 08:30:32 -0800 (PST)
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
Subject: [PATCH 0/3 V3] Bluetooth: Add support for RTL8821CS
Date: Mon, 27 Feb 2023 10:30:24 -0600
Message-Id: <20230227163027.130292-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_083034_685902_39ECC56B 
X-CRM114-Status: GOOD (  15.23  )
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

 .../bindings/net/realtek-bluetooth.yaml       | 25 ++++++++++++-------
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  2 +-
 drivers/bluetooth/btrtl.c                     |  8 ++++++
 3 files changed, 25 insertions(+), 10 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
