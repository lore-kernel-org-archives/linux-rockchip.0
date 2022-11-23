Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0720AC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+HgtsJ7k9zz/6XEClYdt+h3pGu8ATn6goGvtscmX62o=; b=wDjO/Ge/YnTlaS
	Dujr69n/KauSeYzbCvl21x30Yt8pC+1LZjJSHzdUCr7znK3VglMTAjhTGFm/frbt/fZ+A35BtRrIf
	aSvwob8v3MF9uSvdpCI6He7uVZJFj/QE2+7UT6ctA62v+uXv82gJiFOxjGLFeQMPLat6IZwSPHNWs
	U66F5DlFn3UsS7H/ozZURu9CYMLAcR0yEMbdiWOruiBhgJ08O2lmLUCL0doOCNZr+H0W+y/P8LVvo
	XziqtsMgfXDZh52fODAB4qxQZTuQi7R8ShQzs+isOjVVUp0AkRLEfmbJeuaBTQUx8fojzEY6BzQuM
	4Jwo2AxdLGiAt83gAdhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuYz-001f2z-LM; Wed, 23 Nov 2022 18:33:37 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuYB-001ehl-HF
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 18:32:48 +0000
Received: by mail-pj1-x1035.google.com with SMTP id a22-20020a17090a6d9600b0021896eb5554so2895422pjk.1
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 10:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NZABUQWhI60I9tegrwMWQreaQqUzVwxzH3LtE7y7zkQ=;
        b=lkOt4Lu9szF0fBQH9eSaea60q5o/jZo6kOC6f+bAmuuX2Q+Eay8K12TKArZ8MYFeYS
         gGNO3/bdO74AAr6+Ii7pqx2tWMf9gcv7JC+r70pzDaKP00zpjBbyK2Pi6OKqmlyY8J3i
         Avp7rKuyeJmwHS691ed+esWbq1mt76clUO0Yu4pynb6gaPf/w/q4LWJjQjPeIQSnyXSu
         m7I0gDLkMJAeSq5/MKxD1jcE9GOq9KZ/H9cE9QZSMll/xFkhOmwYJq0NAWMMHcp3eawg
         rqNyS3mx6Md9vutg6bvnl1hTJXPS5jnIF1Vkk3ucZtttpfSIXq897qPwyj5FQzSkr/ol
         bC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NZABUQWhI60I9tegrwMWQreaQqUzVwxzH3LtE7y7zkQ=;
        b=p/qX39ad2J6i7/oOtSlvxFiDqfvtLbORx/7Tli63zBB/2+cnaC8miqH3jbSqSlZWwr
         QRvbm756Fcw76wc3mOSQMa2F2OxhdBSSOICdEbSP4BAUf6qmXNJ2Oq+tcujUyYLFSmIX
         hr3qLYCpqcWH+Yfc9Czsa2MiThTfm59bx5X/tw0K7E6JKSEhGiHmavm0CHllMRqHpLC8
         ZBSYsiR4RJH9Itw0yd2MRRBYTSZWDnj0GqNjemrHAX0yaa3vhtK8CPJKysox9WBwyP4t
         pmr8xZv8jfZ4tCkdfR3QRQ6UALmazFiJb5UlvJdHD3vtTkrC6e2F3Ex5CBU+YaF5gLNN
         Dhxw==
X-Gm-Message-State: ANoB5pngzHZW+ctg9WDKdm/zLkpBAxQIxrDHl5Xk7l6aw5mFNnA8Nq/M
	8L0zKeg+Lz1QHeja8iOE/Bs3aA==
X-Google-Smtp-Source: AA0mqf5LpGxAubWk7IgLLkviKV04MNy0SzL43/+yW0xpUAEFwDxUogCqwZCnd7+60YwKY8fvKepVHA==
X-Received: by 2002:a17:902:f2c5:b0:189:1cc3:802a with SMTP id h5-20020a170902f2c500b001891cc3802amr11595622plc.56.1669228364464;
        Wed, 23 Nov 2022 10:32:44 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:32:43 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v8 0/8] ARM: Add Rockchip RV1126 support
Date: Thu, 24 Nov 2022 00:01:16 +0530
Message-Id: <20221123183124.6911-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_103247_581956_FA44934A 
X-CRM114-Status: GOOD (  11.20  )
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

This patch series combined the next level dts patches for 
Rockchip RV1126 support.

Changes for v8:
- fix rv1126 dtsi
- remove uart aliases
- add adc node name
- add uart dma-names
- add timer0 node name
Changes for v7:
- fix dtbs_check
- new dt-bindings patches
- collect Rob Ack

Any inputs?
Jagan.

Jagan Teki (8):
  dt-bindings: arm: rockchip: Add pmu compatible for rv1126
  dt-bindings: timer: rk-timer: Add rktimer for rv1126
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2)
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../bindings/timer/rockchip,rk-timer.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts  |  38 ++
 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi    | 338 ++++++++++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         | 211 +++++++++
 arch/arm/boot/dts/rv1126.dtsi                 | 438 ++++++++++++++++++
 10 files changed, 1038 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
