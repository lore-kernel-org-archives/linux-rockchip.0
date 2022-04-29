Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA54C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 11:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rk6B3pHuBl+6LTxRptrF37Trx7U6Gf9mDDHpzxORInw=; b=MzdJE7fov0qBUz
	mikdUtdq/HqQ5XxKUSEt7C1XoNSSC4TTEyq30nidxyZXM250x0z2/II2QYO4pihkFbXuBJ5AXPhzo
	BTZRB4z5maIct58ZS2JSK2Olo+gsY4RMC26YIHRQ+6abaArodMI2kxmcbtBxjkwkUGTIf8SrRf6y/
	UTEM3KgG4AeiLPnH/SPLOgDmx1HgBzTCJuI7swmQmmdk2M1cUCQ33rlUR5L5A8C+xMofoszTAM2bw
	vsloM3VD0mIFLw1JFNtVNcHekE9ybYyym3ozCxeC1PxfrIflm9/wguaRjR44OGRweiri3kbcmS447
	YmarYRDc5Egfb7/+LHzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPBR-00B169-6v; Fri, 29 Apr 2022 11:53:13 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPBO-00B155-Sd; Fri, 29 Apr 2022 11:53:12 +0000
Received: by mail-qv1-xf31.google.com with SMTP id b17so5137559qvf.12;
 Fri, 29 Apr 2022 04:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KV4krtbeGPg3XtA9N0Vc8Z5tufyrmUvw/0E9B0OLsiM=;
 b=bCg9/ayXoHRN9e6lsctLLef7ix2gfMMKa/r4qdO+HNeS55VwVPCYqz8uXCcjK/iA7N
 prqAXk0pQeyCk4gTT8MesUWBka9IN/hQY8Mi8XtV7w8yYW4n2jRmnQCq0W4WeoPMQEKe
 f4S7jC3c0no7ev4gGIfv3+OueOO7896ImFwOma5vS+NXamSEsABgTguZbe2AWKGYvLo1
 vGFPw76l0o9pqrpkzsD0v5JfvgbVk6h2w3HToY/vHlac6g270OsvzqIMuaMbZZvmgSj6
 ITU6mkl8Qdlznxb4LLzxe7WeZaUqqeMEBY9SsNQ+Ede04cAE1+f2iZIiLMGMpbsqc6bn
 ZEjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KV4krtbeGPg3XtA9N0Vc8Z5tufyrmUvw/0E9B0OLsiM=;
 b=PZHheJ279VYTjEua7P1p+iO2kMD882pQ5SI3of4O+FFnGYBeCAAcIA7bQfywo93Gzo
 yGivLWhUzbbS2SBwniEl1IXrOHF6aKdUvLHu8/gH5vxYAGyHMyoQt5aLRLpV91f5OGd9
 IKwsrOzxSdBJR2tZIKmFILJHuIax1xuyVWgvoElIDYVqT7M8zfQMZ9XbjnbnhhZnWGGw
 Ht7gc9dIja+ngMYgPY8aZ6m+2CNtIAcHSYBZ1GGcQYaO3BW7kfJv+LyhBPbgUSfFRbkk
 GAutPfQNB2IGkq/mqYJgSrmiZkn0mtlOdr+fxsozLc/uyjkT7qti6G3RTJvvZ5AsyfeM
 PLvA==
X-Gm-Message-State: AOAM5312oiThL9hLe67z23TOA0UEERamDnEMz4rgf12knpWVyYAPDUgI
 prr3A2mpoE83/Y2/J2VGMYokrH73eE72uw==
X-Google-Smtp-Source: ABdhPJyndl9VV7x3EmnaA3IRvanqu204IsjralKYKEmODgRhfVALtn1dA1ft8TDBZ0kzHckZzoJw6w==
X-Received: by 2002:ad4:5b85:0:b0:458:1192:77c2 with SMTP id
 5-20020ad45b85000000b00458119277c2mr1772036qvp.124.1651233188084; 
 Fri, 29 Apr 2022 04:53:08 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 123-20020a370c81000000b0069fa408fdb7sm1382505qkm.24.2022.04.29.04.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 04:53:07 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/7] Add support for several new rk3566 SBCs
Date: Fri, 29 Apr 2022 07:52:45 -0400
Message-Id: <20220429115252.2360496-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_045310_958442_196796E0 
X-CRM114-Status: GOOD (  11.89  )
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

The following series adds support for the following single board
computers:
- Pine64 Quartz64 Model B
- Pine64 SoQuartz SoM with RPi CM4IO carrier board
- Firefly Station M2

Patches 1, 2, and 3 add the requisite dt-bindings.
Patch 4 adds support for the SFC to the rk356x device tree.
Patch 5 adds the Quartz64 Model B device tree.
Patch 6 adds the SoQuartz CM4IO device tree.
Patch 7 adds the Firefly Station M2 device tree.

Please review and apply at your convenience.

Very Respectfully,
Peter Geis

Changelog:
v2:
- squash Model B into Model A binding
- collect acks

Furkan Kardame (1):
  arm64: dts: rockchip: add dts for Firefly Station M2 rk3566

Peter Geis (6):
  dt-bindings: arm: rockchip: Add Pine64 Quartz64 Model B
  dt-bindings: arm: rockchip: Add Pine64 SoQuartz SoM
  dt-bindings: arm: rockchip: Add Firefly Station M2
  arm64: dts: rockchip: add rk356x sfc support
  arm64: dts: rockchip: add Pine64 Quartz64-B device tree
  arm64: dts: rockchip: add SoQuartz CM4IO dts

 .../devicetree/bindings/arm/rockchip.yaml     |  18 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   3 +
 .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 615 ++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 580 +++++++++++++++++
 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts | 167 +++++
 .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 607 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  11 +
 7 files changed, 1999 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
