Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1687C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 22:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvEuRTq9X+XUc6BF0TkEPQ66iI/Rt9BMUJPh/bqAz2I=; b=cetPnbibYVtyrV
	A9sFlNOw9BOLl2btmryHhG81jDuweumdYC5nJHDrS1X6uZie9fPudVsZWKFC4q5gvMcchMDG4n1bQ
	MgQp0F+BZPqNgIPnK7a4agXUwYl04kStK7pbRY24UWrD2cHX48y3PaO6cF52UUE5yUnoIo8lXSQxg
	Rj0P9DKAIRPp+piuodBUy60nA/5+ufjM1FkcKSqjjsxQRu/9fMTSiVPtCojvds5H/wQ7lSX0nbZ4R
	yoviWKrxVPtO8sLxkdmnB8uWiph/Ul41UvKzzEw8gLlrREI3KUzKHiktNZi1DLiJyFBkx77qCdTh1
	UoqWlDMhf0GYlOkuwtEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W9M-000LpP-23; Sun, 12 Jun 2022 22:33:40 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W8p-000LYE-7f
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 22:33:10 +0000
Received: by mail-ed1-x52e.google.com with SMTP id c2so4989638edf.5
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 15:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xeg/CWXwufYPnO1IckeUmIQXWPBQszQhORbMRh6VifA=;
        b=KwrtxY1NJNAILAPprQdH3rFVhSDcxpKKwcAsg8Cp7Btk14fkExFnpLdSq5jk5tTs2s
         jqXC/XlpNARQngm3Ip3/okxHNcilpsl5B+WFX5E/ZEpM7zP6gyT+AiyuGI0zBEmrMOYz
         D0+6i4eVwfEJiQftCrSCVbBcACLrNWCmv34fEcvmnIhrTr69cQ+RgPDoLKTDr+5w5Mwo
         c5Cqu0Rod9ppE0Ed5ro3lUauRhKV24f3PAGXH29lOzCiCOYqq3RDQFnLznAuaEPltojY
         yRM/y2gE99DQBN9MKlgY6siSDuAERB7rbAMYnkhdWYk539+2U/JROVbeP1sxxlxdEZ5Z
         EE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xeg/CWXwufYPnO1IckeUmIQXWPBQszQhORbMRh6VifA=;
        b=UQNTTwlXiSx2+t50tIjEcM4Etkp5Q947RLZa0GGm5pLtpAbQcDh3LLGJyb9w7lhmfi
         fZ+loegdacmEVBKWybw21z2ya8AYpyVkgrgZi0Cojw9vBoTl23hPO7kYZUPQm4qn3WHc
         hXv0GqDr872ysOjw3t0iz//7T+qob3qgnmwLcOmiuTApo5XS3wPcZ3edkXV5pM+SBgns
         isrGk7rQ5ryzOWDqUChcLfDNWgEkxBnSDBJX3FSNUl+84j7hxWXLbEZfOWhIVRDoTAix
         nj1shwfkVkMncAX2LAVD0jZy1v/wT7/NtnRimqMLWbxMDnWPjcuOBok6AQ9cyNIZXr4m
         MxXg==
X-Gm-Message-State: AOAM531215hjfDV+ysRgoJqkz2q9DEAfX3KTkweijJPIfU/CxuKNwNiG
	jd5PWsH+UZnsazF/eruQkEXmbA==
X-Google-Smtp-Source: ABdhPJy+r195FGwpnbyCJKtxjKGCF41VWNK3g3mt45H1DfBq0VVEB6nAkM+V/VyB6N7MmwJfP7cg8g==
X-Received: by 2002:a05:6402:25c3:b0:434:dfbd:913e with SMTP id x3-20020a05640225c300b00434dfbd913emr6801233edb.27.1655073185154;
        Sun, 12 Jun 2022 15:33:05 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:04 -0700 (PDT)
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
Subject: [PATCH 2/6] arm64: dts: rockchip: Add missing space around regulator-name property
Date: Mon, 13 Jun 2022 00:31:57 +0200
Message-Id: <20220612223201.2740248-3-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_153307_334490_7F5D939D 
X-CRM114-Status: GOOD (  11.15  )
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

QWRkIHRoZSBtaXNzaW5nIHNwYWNlIGFyb3VuZCB0aGUgcmVndWxhdG9yLW5hbWUgcHJvcGVydHkg
YmVmb3JlIHRoZSB0eXBvCnNwcmVhZHMgdG8gb3RoZXIgZmlsZXMuCgpTaWduZWQtb2ZmLWJ5OiBO
aWtsYXMgU8O2ZGVybHVuZCA8bmlrbGFzLnNvZGVybHVuZCtyZW5lc2FzQHJhZ25hdGVjaC5zZT4K
LS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1vcmlvbi1yNjgtbWV0YS5k
dHMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1vcmlvbi1y
NjgtbWV0YS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1vcmlvbi1y
NjgtbWV0YS5kdHMKaW5kZXggM2ViZTE1ZTAzY2Y0ZGVhNS4uMDVjNTBlNTg0ZTJlNjJkOSAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzNjgtb3Jpb24tcjY4LW1l
dGEuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LW9yaW9uLXI2
OC1tZXRhLmR0cwpAQCAtMTM0LDcgKzEzNCw3IEBAIHZjY19zeXM6IHZjYy1zeXMtcmVndWxhdG9y
IHsKIAogCXZjY2lvX3NkOiB2Y2MtaW8tc2QtcmVndWxhdG9yIHsKIAkJY29tcGF0aWJsZSA9ICJy
ZWd1bGF0b3ItZml4ZWQiOwotCQlyZWd1bGF0b3ItbmFtZT0gInZjY2lvX3NkIjsKKwkJcmVndWxh
dG9yLW5hbWUgPSAidmNjaW9fc2QiOwogCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAw
MDAwPjsKIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47CiAJCXJlZ3VsYXRv
ci1hbHdheXMtb247Ci0tIAoyLjM2LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
