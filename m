Return-Path: <SRS0=to3J=GZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12AAC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jan 2021 18:06:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6385723A79
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jan 2021 18:06:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6385723A79
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8sxzGdgIVTonBmO6ScQ9g/Y3vLNI74hrkMMJzF0ivHs=; b=qaTevbt+2yQ0z2T/z++Sciul5l
	D2MPyknSZ42QTp5sj8t9OXha26/txKo/vbTQRp1I516bkoU0Z0wrGd1NLu/2fUWANsW4IrFlrcWtA
	Aj20zMdYDTBUOysNAHUrtAk8YmNmnYL2Ripde2rzGLIkZB7WzDPw/zwNbQx5r4Uh/R5XW+TFisemW
	n3uhDuDyi4bVzNl+XeEftuVgM7hmY+do/Ysj1mMphVrBhaSNSOFr3pFFom7nQ1ROPQT/6kM/bEsPF
	W7rsiWMArhzMhMZv1089rZyK++a05Of5WmUzSWFZRILG+7BFuz/4kjzVfhVpjjZDpEGRwORKKWh6X
	4pNUXL/g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l30p0-0007zf-HQ; Fri, 22 Jan 2021 18:06:10 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l30oz-0007zG-2K; Fri, 22 Jan 2021 18:06:09 +0000
Received: by mail-ej1-x62e.google.com with SMTP id gx5so8922840ejb.7;
 Fri, 22 Jan 2021 10:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wKv3VmvCnRntCHs4GsLyXTyeF0OtsFtLwN9+DR5TApY=;
 b=q/OW5+LTAhKirNLQ41QsLZvmlnxyuynyWAqLO/aXU31JMwlut9p058w9Fj6cy50CK/
 jC1bpnRARTNMUBfafadfCbh/E/N+4+pXHtQrWlohSlsMrv80yXr+MGkoGvEkttO56suc
 I2STnzbcX2mZZWMBv92/U/GGwiQz7teaCgvg5dKe6kYqhAUfhdtD/VRepeZWqAg1A8Pn
 6qUjvwrg6ikDYFfwM+MkdROd0u7uhexMLEQOoj4kEC8MUQAG517GtB/6lsDN5IpDHYV6
 2Qxe9PUe2RBUqrBQcjTBF+YMd5gY3ZlqlLvzAmDcbzDtnsHQAkHIpKyU3FjUAQf5RK/t
 qsnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wKv3VmvCnRntCHs4GsLyXTyeF0OtsFtLwN9+DR5TApY=;
 b=t62Qac2g10riyJSX9mBuqnkvqmfm9QtBUGDrcpU57aua6Pz+fknzDbB7bpKHH3iGdw
 n3qaDnE/i787IekISUJh3/W3pR7TxrtHAgBjuwxZro6Eyoq1YljNeDdstB6RBGG6M7Zp
 ZHemVA9ZMLe6UoGqP2qC6XU+szU6ak8PDygTYTYeRsmXK4bTeMIWGcW4dkUqtbaYp5RK
 2F1ICscBzdcanrcGNFSrIcVmatJmlZpxQfuF1UDSDso3Lg6dy5H8hY+BMlKIPOIlfamF
 zV07BDeYHKIDfKD88NPQayS3L27Ghrr0P6KreUk2XAwwsokVBGtqG3Q1sviTmq00doBd
 7GgQ==
X-Gm-Message-State: AOAM531i+qzGvtw5vRU1bwQjdx7jHGXnRC+EMegEBd0Jdt6yocsYLr79
 1bt+Fxj1WFUeL2Ru94cHiQU=
X-Google-Smtp-Source: ABdhPJxxvW7RLs53Cx3f5saY+QeYl9nXt+zXf5wqPCizp1q/YFEfCG8tUtf3y8zlCu3XY+IFW5lsoQ==
X-Received: by 2002:a17:907:3e04:: with SMTP id
 hp4mr3966801ejc.188.1611338767623; 
 Fri, 22 Jan 2021 10:06:07 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w6sm4885858ejj.116.2021.01.22.10.06.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Jan 2021 10:06:07 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: add device_type property to rk3399 pcie
 node
Date: Fri, 22 Jan 2021 19:05:59 +0100
Message-Id: <20210122180559.18171-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210122_130609_125529_204B9933 
X-CRM114-Status: GOOD (  11.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives for example this error:
/arch/arm64/boot/dts/rockchip/rk3399-rock960.dt.yaml:
pcie@f8000000: 'device_type' is a required property

Fix this by adding a device_type property to the rk3399 pcie node.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/pci/pci-bus.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 28459d194..6c571fee8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -252,6 +252,7 @@
 				<0 0 0 2 &pcie0_intc 1>,
 				<0 0 0 3 &pcie0_intc 2>,
 				<0 0 0 4 &pcie0_intc 3>;
+		device_type = "pci";
 		linux,pci-domain = <0>;
 		max-link-speed = <1>;
 		msi-map = <0x0 &its 0x0 0x1000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
