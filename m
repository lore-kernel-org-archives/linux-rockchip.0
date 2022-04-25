Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BD3DC43219
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 17:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wPpJakffMt8bFBna0OALkE6r/y+8Xl+NyGOiUnZM/O0=; b=K4K4zSoM1FhcjK
	0t8fVK3FAfYihuFJnpqN5/m+wp1683hZiM9D+ZDkNMYy2oub2tKIlYdPIu0JEOAVTXJ0JERE2wi9J
	06J1pSN8EQt/0EGYJDdYGJq2J/zm/FmafN4vRbSjnWkJi3EDzqggtPm+FZO7nExxxZ1KjEW3grRrh
	j4wIqKNXLne89euLGAp0YO8G90SHuJx0XqS116yzEYTLyoht6wI5Xg/gmc23BRK/g9ii0YsjleLOI
	7WSIfNlmO58/tjWO+SLIgrH4N1c+lRNKsASkPbex5Lgcq7bqgCBUUgwhjR1ff+GIt5wITGtc1lKl7
	nAfolxe1hNMQJvhG6AsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj2Ha-00AYv3-HF; Mon, 25 Apr 2022 17:13:54 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj2HW-00AYrb-NQ; Mon, 25 Apr 2022 17:13:52 +0000
Received: by mail-qk1-x72a.google.com with SMTP id e128so11259080qkd.7;
 Mon, 25 Apr 2022 10:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+japc2t+wot5+BSTXiQ5huwoEirJRSQFwasvOhZa43s=;
 b=P17sJtcPbya+arEjYzIf9eJ0Vmt77u/n8PikxlHSV731+iMxLKqMw1fsDM0fxfyTkp
 ws5xYKolRE/l0fbzmjA8jsRE6khpEyF+3R6mLXlTo5i63n8sG/jUBpX3xP5LyCUH8xxM
 mVLUS/KlgpZotG+j96lvJydzF57TMfpcTy6BJT9HOguNj3sDS/0QljNyEanew1mw+2/m
 ji1afJOmx82YpEOR0TNcadGAUEbtc1gE7D2DjUx25jxTVW6Pm+uN34DUAjLjYuarnLTj
 RBrqHk6XPqjsgDNXyI5qE0K8kGueY7IpPApyKVJYMDC6As3VjGNh4Hw8/XzDs+7fcM9d
 pP+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+japc2t+wot5+BSTXiQ5huwoEirJRSQFwasvOhZa43s=;
 b=ZcXB553px3UYefD+++RSaskrRjGB1VxfmUvlwdFthgK3RjwDggx05WLeRzhcGeJrWw
 xfCp9hH0ZLOSMZqac4pnue6MgBTbNn9ALopQd5AUPFTdnekzwXzEIA231WV4Oa3pvpwA
 X2aa89qBbzfJkNcC38broHjhjNUl9YIaN8OU9xb6ItUgc9WyywWxLfagAO+HXIsdVnFz
 EsklSbTGVbHmtYe9PhsbPmWA2ghBhFGAotQgo8JuxxVSXktqN6GsJ7PtwKHnzZsr4ybk
 nYOs+JxxvJ9zFmV/9GTV+gi1Urq4Ig9mpMWXAAXNvFPen/rhWG97FKUQezOTmF2rFmqO
 CzGw==
X-Gm-Message-State: AOAM533vBSOp/QnKvIAXCvUngHbaOX+3qzuoHnWqNQDchwFHT9deHxRk
 Vy6e1WnngwMFHeu9L7C57LjTK/i9ukd8qw==
X-Google-Smtp-Source: ABdhPJxkllM4++LB6/9J4wC5bXxDX3s8LLt4srPcIdugcklZ6pg7vea5I8GIU8fS4b8lp8Cm9CHPiw==
X-Received: by 2002:a05:620a:2847:b0:67d:2bad:422f with SMTP id
 h7-20020a05620a284700b0067d2bad422fmr10702993qkp.559.1650906826798; 
 Mon, 25 Apr 2022 10:13:46 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v3-20020a05622a014300b002e1dcd4cfa9sm7154928qtw.64.2022.04.25.10.13.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 10:13:46 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/7] Add support for several new rk3566 SBCs
Date: Mon, 25 Apr 2022 13:13:37 -0400
Message-Id: <20220425171344.1924057-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_101350_796573_AE05046F 
X-CRM114-Status: GOOD (  10.92  )
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

Furkan Kardame (1):
  arm64: dts: rockchip: add dts for Firefly Station M2 rk3566

Peter Geis (6):
  dt-bindings: arm: rockchip: Add Pine64 Quartz64 Model B
  dt-bindings: arm: rockchip: Add Pine64 SoQuartz SoM
  dt-bindings: arm: rockchip: Add Firefly Station M2
  arm64: dts: rockchip: add rk356x sfc support
  arm64: dts: rockchip: add Pine64 Quartz64-B device tree
  arm64: dts: rockchip: add SoQuartz CM4IO dts

 .../devicetree/bindings/arm/rockchip.yaml     |  17 +
 arch/arm64/boot/dts/rockchip/Makefile         |   3 +
 .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 615 ++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 580 +++++++++++++++++
 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts | 167 +++++
 .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 607 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  11 +
 7 files changed, 2000 insertions(+)
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
