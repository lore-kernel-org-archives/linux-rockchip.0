Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8206ECCA481
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 22:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S1T/veYQ+vHeNp/0yRjYEDdpAn3crEKPVthYmvjSBQs=; b=ooJd6mGHL25hRj
	+MjRU0pA/J62QDwhqzvM2Rv+4u4l63lr+aVwdpNXL7Ieq//ruabb0eo+I00xixJ0eH5C0UYnqwaED
	exaL5FSggLnPR6cRvzq0n7OREMEUvuAdZTSIiGxDmClCb0y0T2psNJVhHJyMg9DRGrTpXHvdyyke0
	lGoBfPiTGMsTdrjC/jp6fLUGgJM1vNCdOcBMpAsxHsztRarrJ1b1J0iSiDpSzqLXj/CbnmYy8IgeA
	Cr5qB+5+h6n0ZSGviELe/2UIC9lFeqwrNqLoXiCBt3hRHyO2WoU0EYhqZcJEIt4+U05JCBusJi8/M
	mPPgPlGWKUXxDollobSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W92-000LhF-MJ; Sun, 12 Jun 2022 22:33:20 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W8n-000LXV-V5
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 22:33:08 +0000
Received: by mail-ej1-x62f.google.com with SMTP id v1so7776366ejg.13
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 15:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PxmsONNK0747oJIcc0WYgerKFwFBhaqFBSVZH2Qv3uU=;
        b=2VP7ecBFlZ9U9+ev3Fa4rLGpcY1OtVAM30DcnBKT2TGUxi7nej89Ro0NfAgS93J0Ug
         jZuulBJjV4L/eimWcs0uM7efF3Sy3yQqwxfj/b6Y86qDnybFipuWE4C2SlYzQOZ6vgiB
         YTUqTkp7CVAjcIUwQdWbYVqPO5VhWk3SzBE/xYIkNZdejgqLeDIANFIxHXltexV2crbS
         lfG3ZKmgwje7Py7Yl2g8CkyjSMrFVtnNQqspUJTQn4b5uqscRjZYUznL4HdKInmTeuMd
         aMuld/7Uo6bWZlciIRGmx5K4K7Eaxz2LQJn07j0JCp2QmmRO3ZfAOHOX8ajkyOjEUmIB
         A9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PxmsONNK0747oJIcc0WYgerKFwFBhaqFBSVZH2Qv3uU=;
        b=zBTy0Gibc+q3HEkUY88c9Zh+OwfGUpC15nFkqiqjw5U+VuQlnGPeocSy6ny7yGuK/3
         ZjI18KHFcPUizlgQ1eyz9TCKqDQuuecTxg5Nuyaxzs+hbX6PZO7X0IZ+w/dlBF//ro0k
         SSbsamYLEJhKOe+JL6MT4mTfSqGsLxBqz8Ww7T9A6UPfR0WY8RpVMVIjIC8K6cFvXCFJ
         uDiu2yresBxlPjV2soaTDKCWCQbE/kOE6EeOGve4agnuQXDqrRhVPSAGJZfmULY6Lm4x
         g7n7JzITp+3oH1nYakLCQfDdvAE9XF8ScU67T0H3ZPDLpfILrlwIk/d3t8pjh2hpFcsK
         CBJw==
X-Gm-Message-State: AOAM533U+ShrLn9Bvb/HpykB3gxnHtz7hSqw87LSSflRleopfAv80liT
	nXA/Cxmg30m9S4yREnqt8MFLCg==
X-Google-Smtp-Source: ABdhPJxFjSKJNSq4b3G/JClmOrxqSkJ+5meJ/f/2lUgo9VmIEzvwFszc8neocCxrslmOpbgLMo/m8A==
X-Received: by 2002:a17:906:b15:b0:715:bf2e:df92 with SMTP id u21-20020a1709060b1500b00715bf2edf92mr3768278ejg.576.1655073183114;
        Sun, 12 Jun 2022 15:33:03 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:02 -0700 (PDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org
Cc: Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Shawn Guo <shawnguo@kernel.org>,
	Li Yang <leoyang.li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	kernel@pengutronix.de,
	Fabio Estevam <festevam@gmail.com>,
	linux-imx@nxp.com,
	Wei Xu <xuwei5@hisilicon.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH 0/6] arm64: dts: Add missing space around properties
Date: Mon, 13 Jun 2022 00:31:55 +0200
Message-Id: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_153306_264561_8924F2D7 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgpXaGlsZSBkZWJ1Z2dpbmcgYW4gaXNzdWUgb24gYSBSZW5lc2FzIGJvYXJkIEkgZm91
bmQgYSB0eXBvIHdpdGggbWlzc2luZyAKc3BhY2VzIGFyb3VuZCBwcm9wZXJ0aWVzIHRoYXQgaGFk
IGJlZW4gY29waWVkIGFyb3VuZCBbMV0uIFRoaXMgZXh0ZW5kcyAKdGhpcyBmaXggZm9yIGFsbCBh
cm02NCBmaWxlcy4KCjEuIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJlbmVzYXMtc29j
LzIwMjIwNjA4MTc1NzI4LjEwMTI1NTAtMS1uaWtsYXMuc29kZXJsdW5kK3JlbmVzYXNAcmFnbmF0
ZWNoLnNlLwoKTmlrbGFzIFPDtmRlcmx1bmQgKDYpOgogIGFybTY0OiBkdHM6IGJyb2FkY29tOiBB
ZGQgbWlzc2luZyBzcGFjZSBhcm91bmQgc3RhdHVzIHByb3BlcnR5CiAgYXJtNjQ6IGR0czogcm9j
a2NoaXA6IEFkZCBtaXNzaW5nIHNwYWNlIGFyb3VuZCByZWd1bGF0b3ItbmFtZSBwcm9wZXJ0eQog
IGFybTY0OiBkdHM6IGZyZWVzY2FsZTogQWRkIG1pc3Npbmcgc3BhY2UgYXJvdW5kIHByb3BlcnRp
ZXMKICBhcm02NDogZHRzOiBoaXNpbGljb246IEFkZCBtaXNzaW5nIHNwYWNlIGFyb3VuZCBwcm9w
ZXJ0aWVzCiAgYXJtNjQ6IGR0czogcWNvbTogQWRkIG1pc3Npbmcgc3BhY2UgYXJvdW5kIHByb3Bl
cnRpZXMKICBhcm02NDogZHRzOiB0aTogQWRkIG1pc3Npbmcgc3BhY2UgYXJvdW5kIHByb3BlcnRp
ZXMKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Jyb2FkY29tL3N0aW5ncmF5L3N0aW5ncmF5LmR0c2kg
ICAgICAgfCAyICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5k
dHNpICAgICAgICAgICAgfCA2ICsrKy0tLQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OC1zcy1jb25uLmR0c2kgICAgICAgICAgIHwgMiArLQogYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1tLmR0c2kgICAgICAgICAgICAgICAgIHwgOCArKysrLS0tLQogYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1uLmR0c2kgICAgICAgICAgICAgICAgIHwgOCAr
KysrLS0tLQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgICAgICAg
ICAgICAgICAgIHwgOCArKysrLS0tLQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OG1xLmR0c2kgICAgICAgICAgICAgICAgIHwgMiArLQogLi4uL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4cXhwLWNvbGlicmktZXZhbC12My5kdHNpIHwgNiArKystLS0KIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDh1bHAuZHRzaSAgICAgICAgICAgICAgICB8IDYgKysrLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaXAwNi5kdHNpICAgICAgICAgICAgICAg
ICAgfCA2ICsrKy0tLQogYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGlwMDcuZHRzaSAg
ICAgICAgICAgICAgICAgIHwgNiArKystLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zZG02
MzAtc29ueS14cGVyaWEtbmlsZS5kdHNpICAgICB8IDIgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9zZG04NTAtbGVub3ZvLXlvZ2EtYzYzMC5kdHMgICAgICB8IDIgKy0KIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LW9yaW9uLXI2OC1tZXRhLmR0cyAgICB8IDIgKy0KIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02Mi1tYWluLmR0c2kgICAgICAgICAgICAgICAgICB8
IDQgKystLQogYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY0LW1haW4uZHRzaSAgICAgICAg
ICAgICAgICAgIHwgNCArKy0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtaW90MjA1
MC1jb21tb24uZHRzaSAgICAgICAgfCAyICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFt
NjUtd2FrZXVwLmR0c2kgICAgICAgICAgICAgICAgfCA0ICsrLS0KIGFyY2gvYXJtNjQvYm9vdC9k
dHMvdGkvazMtYW02NTQtYmFzZS1ib2FyZC5kdHMgICAgICAgICAgICB8IDIgKy0KIGFyY2gvYXJt
NjQvYm9vdC9kdHMvdGkvazMtajcyMDAtbWN1LXdha2V1cC5kdHNpICAgICAgICAgICB8IDQgKyst
LQogYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxZS1tY3Utd2FrZXVwLmR0c2kgICAgICAg
ICAgIHwgNCArKy0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3MjFzMi1tY3Utd2FrZXVw
LmR0c2kgICAgICAgICAgfCA0ICsrLS0KIDIyIGZpbGVzIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMo
KyksIDQ3IGRlbGV0aW9ucygtKQoKLS0gCjIuMzYuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
