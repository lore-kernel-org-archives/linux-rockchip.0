Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE5D4C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 23:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yKAhsAvl1/f3RZqymbomIk45607VFDrXrgpqKxCeHd0=; b=cz1EH6fow8p3Sn
	6DakttA2BkUCknkEVkwWV7/UJTNNifSeeQFAfAH/et3AY1+dBjNp1FTaVWxSbpTX5L7N4WK3Cdyzh
	4tJyxmvfczayMJ1D1PSxGWCF8ODzbrG8iJmNRPH8qbbN6miv0DZgwmwyoT3uQqsTnTsbzsdviJNkw
	EsPhPJ3tozz2RW97gy++in4IvqSm5LIoolqKW2vlDo4HzDCgf5RPIiaWkmIZh1bC9HSIclWwcNfUx
	f+FYvIoX2sQ5HiRs8VGW+uU3PQ3ir/eF+nO0S8bdkjP+3nlZvsGpHEI9xEJ1huYoxBCIaZVvkaL4I
	bJxoBy7rR0ghtQtkJC0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPYMT-004hTX-9b; Wed, 02 Mar 2022 23:26:25 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPYMQ-004hSm-9B
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 23:26:23 +0000
Received: by mail-ot1-x333.google.com with SMTP id
 s1-20020a056830148100b005acfdcb1f4bso3086236otq.4
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 15:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k8nlddZ/AsXirg2qg8zuLLRb6b9AsuKxIWbTpdb5n7o=;
 b=qXIu8G+NMa/j3lA6WJhGcAK/jWocTppZoFEO/KFj0GMqQrDp2ejDZ3JTUncuwYWsty
 +JWzSgaefCaLjln+GG2L4gQx7furNHx7S0YRZYiRr4Z7GcrWrNPfWZVmqrCl23yFOenR
 M8yu5kFkVQA0Y8nliv+nD74qds3iU2PZ1tj7Ll0p2XzwsGEGZqxETIEtOTugYK427ejq
 g9n9ckCwhh24/M4IIhkIkDwxVxGLrs8b8U8GJ4ojJuQzF3njNBkeY85q5SrYoc1Rd4Mw
 /29rFLGWzKT1TBT507hmvRF++2flnvnF/y6x+cs7UeRgMMaZYVZ1DfnQDBItstYrjby+
 15Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k8nlddZ/AsXirg2qg8zuLLRb6b9AsuKxIWbTpdb5n7o=;
 b=KPXqUHV+AT0p6SaHWMuQ2/Zcen5y1jwxLxAwlQUWf/+jvNezXuvwudmlZkMmMNF4zt
 rl4doRKzEq6LVbSnFg2pNRqF2JP9iNKH+SW+g39OgFlqHetct0EZj5hwphbm89GF8veU
 I7WAcOzR/H/z5sXzYXdtj/VzQJgcWeLBRyExNUwCpOqzYb8WbHVHmTmTsYshbjrXPkXf
 KEgSBv+GSswhJER7wV1hIuS17F8GEbtnG6W2P4gM/Q1pnrVomv5yBe+VHCEsxbyc9p7D
 Ma7kWxMI4AYUJY2WpsgK/rJk8AiskiF6h8tG9uA3NGygqeTcuazfYQjDrPAXHY3J/A1+
 Lm0g==
X-Gm-Message-State: AOAM531S6CILDJXkylQ+mlI7YSoulidCRvQ3POZDA0JctY+yB/jiz2yx
 Fz2zHD8RuqGdU2HbcnHJKBE=
X-Google-Smtp-Source: ABdhPJw12W9VdaIJJJr391d3MGiSvTAqRcSgmSWwUAN+4VMjCitlDiUa0OntL4gh7sCU8VDPUQJxCQ==
X-Received: by 2002:a05:6830:1daa:b0:5af:2431:3764 with SMTP id
 z10-20020a0568301daa00b005af24313764mr17192831oti.27.1646263581254; 
 Wed, 02 Mar 2022 15:26:21 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 fs3-20020a056870f78300b000d75f1d9b89sm234925oab.54.2022.03.02.15.26.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 15:26:19 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3 v4] rk808: Convert bindings to yaml
Date: Wed,  2 Mar 2022 17:26:09 -0600
Message-Id: <20220302232612.25455-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_152622_354932_CB7572B8 
X-CRM114-Status: GOOD (  12.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Convert the rk808 bindings into yaml format. In order to accomplish
this some bindings for the rk809 had to be updated to remove
non-existent vcc inputs. Additionally, some bindings for the rk805
needed to be updated to add a now-mandatory #clock-cells value.

Changes from V3:
 - yamllint, dt_binding_check, and dtbs_check now returns no errors for
   arm and arm64.
 - Updated rk809 bindings for the rk3399-pinebook-pro and the
   rk3399-roc-pc to remove regulator inputs vcc13 and vcc14. These are
   not valid regulators and appear to be holdovers from the original
   rk3399 schematic.
 - Updated rk805 bindings for the rv1108-elgin-r1, rv1108-evb, and
   rk3328-a1 to add a now mandatory #clock-cells parameter.
 - Made clock-output-names for rk805, rk809, and rk817 a max of 2 if
   the #clock-cells is 1, and a max of 1 if the #clock-cells is 0.
   Even though these PMICs only support a single clock output enforcing
   this in the schema would require us to modify the driver.

Changes from V2:
 - Dropped language about battery. I'm keeping the commits entirely
   separate.
 - Added vddio-supply for rk809 and rk818, since after examining the
   datasheet I can confirm such a supply exists.

Changes from V1:
 - Removed generic descriptions.
 - Added maxItems to clock-output-names. Max items is 2 per the driver.
 - Added unevaluatedProperties as false to regulators.
 - Correct i2c node.
 - Added note about the battery.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Chris Morgan (3):
  arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
  dts: rockchip: Add #clock-cells value for rk805
  dt-bindings: mfd: rk808: Convert bindings to yaml

 .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
 .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
 .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
 .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
 .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
 arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 +
 arch/arm/boot/dts/rv1108-evb.dts              |   1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 +
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts |   2 -
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   2 -
 11 files changed, 1375 insertions(+), 469 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
