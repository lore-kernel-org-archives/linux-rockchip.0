Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72B88C25B0D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 17:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DChsCe6kH4pTxSIMRf3h4+szi6leTX61hzhMe/OaHWo=; b=WfPDacjyUIEs9u
	byJNKCu5M3Mn70Dq4F2/d4SSGuBIpDcxpVTjB7bXnYsZTM7Edrpaq2nUjjPHOxf3oUl8VLmfU1572
	UBkdFrZhLMUR6aMpYHPzXMrZN4E3PwggDTjClVrtn1LAH/PJRzdukbaMAcv9B1HgV6Dn7H534hk5Y
	yay4fw8dU/EF7swC53GHeUWTOMB2F0M99cudiQz65fgMPy+evG050DBrX0XkUGjitDJNzfydshtxQ
	lotEehe3nfEhqxPK1MkjsFdcrNFESkJ3jaQmirVhsSQgxkRNE7+5yLZe1k2c7WqD5/zhjpKG6kqlV
	c+wuB4xXKoAnrO2NHg4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL6hq-00FBSy-Mw; Mon, 08 Aug 2022 17:38:22 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL6ho-00FBR3-3b
	for linux-rockchip@lists.infradead.org; Mon, 08 Aug 2022 17:38:21 +0000
Received: by mail-ot1-x334.google.com with SMTP id y10-20020a9d634a000000b006167f7ce0c5so6968538otk.0
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Aug 2022 10:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=LaM1Il9dI8a8vYNX4gN0hH1DxnTq/+g/W65fQiFlt+c=;
        b=Z6p5g/sMyWvF87n/OmuxEhJ9JDvumylNRBB2ncNdH40u0+UYGtMFzYgtjg4IVfMWUW
         AulNd1DjTSmjzyd02JziOQkILZLab9y4hrpP7ciiFc8pEoUzSggNv4Wk/d1onvlhkdIx
         joT2GezLn0/CLTuMHA1LAEnpE3zujurhMVp1vXhK8cgrRsWDewQED1L9ass2cQxQ4qTV
         ybbbpYqaKvGYdzSpNzsKJaux2GiDcnhTFv6Jy4SFticomdxfkBrspqplZMHUPZitGyx/
         cx/cNks1ZBihvMd02iFxHm1+aQMxijB40cids0DYSxmFhK+PyPP4O840vC9S0MhVHmtL
         qmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=LaM1Il9dI8a8vYNX4gN0hH1DxnTq/+g/W65fQiFlt+c=;
        b=qwmBHrfuZXD7JHvxlsFGB/n7WXkCN8Si0aewbajFMrUm4m37dkixkVwodooJFRHBqs
         6K8aacZnzJLmVne4pEBChP1Q5YeMWreMIdmWdqxCZk1PdZTFst4BBaI6RubZ3J8QQnPI
         gSoSw1O4BGxBvSBUq8VfQMJ6jTmTCL6iL317dQFA6+0T1/LsxlqvzqXYlBYphiXuHG7W
         oKJQ6hrrT+hbcNsOaVSa9AosK5SR0fpH+nw/sRDLFp18vLLvEliHbOYrup95Fs4uNDFQ
         5QcaGSGYJBo1ZS+yE1e+jPq56JqPtNrL87priznFwGPmPILh+7e9KqKUJv5fQv5iF/VH
         ptxQ==
X-Gm-Message-State: ACgBeo1tCPKzRWL5oXoYB8/OwM2RJsxlP8117EhM+JYPqM4HsYrn2qgk
	UM2HTFW4vxYC8bhz2jvwL2o=
X-Google-Smtp-Source: AA6agR5MuwogWldfhAEFDPCabgQgOauUPdObIKhTacG+jHpPPPLkq1/PT8nVYQmcPFBYAZ//j50u0A==
X-Received: by 2002:a05:6830:44a2:b0:61c:bc05:3158 with SMTP id r34-20020a05683044a200b0061cbc053158mr7257342otv.370.1659980298058;
        Mon, 08 Aug 2022 10:38:18 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id s2-20020a056870248200b0010edfa2b0e8sm2429202oaq.50.2022.08.08.10.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 10:38:17 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v8 0/4] power: supply: Add Support for RK817 Charger
Date: Mon,  8 Aug 2022 12:38:05 -0500
Message-Id: <20220808173809.11320-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_103820_177071_6C2C4784 
X-CRM114-Status: GOOD (  17.52  )
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

This series is to add support for the Rockchip rk817 battery charger
which is present in all Rockchip RK817 PMICs. The driver was written
as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
myself Chris Morgan <macromorgan@hotmail.com>.

The driver requires some basic parameters be described about the
battery in the devicetree such as the maximum capacity, the minimum
and maximum voltage for the battery, the maximum charge current, the
maximum charge voltage, and the value of sample resistors and sleep
currents.

The hardware itself contains an ADC capable of measuring the voltage,
current, and temperature of the battery (though my implementation of an
Odroid Go Advance lacks a thermistor for temperature). It also contains
a columb counter, registers for tracking the measured voltage and
current at boot, and a few bytes of nvram for storing data.

Changes from V7:
 - Fix error reported by kernel test robot <lkp@intel.com> in patch v7.
   Problem appeared to be related to incomplete removal of fields I
   used previously in debugging.

Changes from V6:
 - Updated devicetree binding patch to reference the required
   prerequisite patch in the correct manner (relocated it below the ---
   and pointed it to lore.kernel.org).

Changes from V5:
 - Renamed mfd-cell from "battery" to "charger".
 - Added note for devicetree binding documentation that it requires
   application of an additional pending patch (to convert documentation
   to yaml).

Changes from V4:
 - Massively redesigned the battery driver to improve measurement
   accuracy and reliability. Driver now checks values every 8
   seconds (mimicking BSP driver behavior), or whenever a plug event
   is detected.
 - Removed OCV, boot voltage, and boot current as values were found
   to be unreliable.
 - Updated first-boot behavior to perform a "best guess" at capacity.
 - Added ability to calibrate columb counter to full state of charge
   when charger reports full, and added ability calibrate full charge
   capacity when battery discharges from full charge to minimum
   voltage.
 - Expose state of charge as capacity (in percents).
 - Updated storing of values to nvram to preserve compatibility with
   BSP kernel.

Changes from V3:

 - Corrected issues in device tree documentation.
 - Added additional logic to battery to correct for columb counter
   drift when the device stays plugged in at a full charge state.

Changes from V2:

 - Updated devicetree bindings to use common property units.
 - Removed unneeded includes.
 - Updated rk817_chg_cur_to_reg to make more legible.
 - Simplified formula for displaying calibrated voltage.
 - Updated power supply type to POWER_SUPPLY_TYPE_USB.
 - Implemented get/put_unaligned macros for bulk reads and writes.
 - Changed numerous dev_err() to dev_err_probe().
 - Call power_supply_put_battery_info() at end of probe function.
 - Removed unneeded whitespace.

Changes from V1:

 - Fixed a CLANG warning regarding an uninitalized variable.
 - Fixed a CLANG warning regarding a pointer as a bool value always
   returning as true.
 - Added Maya Matuszczyk to the Signed-off-by.

Chris Morgan (4):
  dt-bindings: Add Rockchip rk817 battery charger support
  mfd: Add Rockchip rk817 battery charger support
  power: supply: Add charger driver for Rockchip RK817
  arm64: dts: rockchip: add rk817 chg to Odroid Go Advance

 .../bindings/mfd/rockchip,rk817.yaml          |   48 +
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |   26 +
 drivers/mfd/rk808.c                           |   16 +-
 drivers/power/supply/Kconfig                  |    6 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/rk817_charger.c          | 1151 +++++++++++++++++
 include/linux/mfd/rk808.h                     |   91 ++
 7 files changed, 1338 insertions(+), 1 deletion(-)
 create mode 100644 drivers/power/supply/rk817_charger.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
