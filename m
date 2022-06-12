Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B640C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 22:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJP2FgIkwz1loe8hWkbBsfQQb9s/7zORaRTBoC2li1c=; b=u05iBC6PWHrzwA
	eLrL2OAPaSU5FI2SNWzKk3nRvr8MYQ2WeEnC6Y4vgJ47NIJ9QKZlOMd7G28RjjbP8E4rRzrQczlae
	7MCJizBmJQMbJhjXasOUCGw/zECnKPve8ISliDY8/vYcndNDOOrbRrtbxRs9jspv4ozFCangwAGmn
	gNH+urXELUb787kr3rgZGhEi3Zt4Ng9jDVGrB9RBTWX0cgeBs1HB0l2Up0SRgzs8fiU1IQVbcN33H
	NN3iOpVehUfB+PtIBgx/OkMJlsZJa3B59XHDnM8nElsrppyVhaji/EOTAdOzpvrhu+vIL7eb0H7ye
	KEIRARQ/3vghIZMYB9Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0WA2-000MHU-FA; Sun, 12 Jun 2022 22:34:22 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W8s-000Lb1-33
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 22:33:12 +0000
Received: by mail-ej1-x630.google.com with SMTP id n10so7845622ejk.5
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 15:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eR7xY6lS7qy0axCQrfpxoseWuY+nQOhUy4dsHTTM5IA=;
        b=NvJgifNMb1x8COC/Kt/9DX8Oj59RbXf+Gh45Hn3bZNvf26PQpvBWV9kyNfNmm4r8T0
         Lwg41UH3RTq9EgR8k7N+yytVzS+op2c8StzfYn/GYd5E11/Y0YyESmaM8vTdsdfKGa3m
         3JTFQYVQHgB1SYrB7VRHB5KY+57Ry8tX6AMVTE+vwyjFPphsaH7S6GJ21ZPp97d9wzkX
         u840GZxM8C4y9t3utyGXD/7N6FVlhfDPzpRqijnWOF3loQQ+/u3Pe5KnRm+9CzaOqcNS
         Oe0zArRxosOzrlhn3DQ+KP3DxVV9lYWLGJTkf5zK4AB7XcQJc7RsDVJzWanbUnPLTWMp
         EEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eR7xY6lS7qy0axCQrfpxoseWuY+nQOhUy4dsHTTM5IA=;
        b=l4Flhiq+6ykt91X66kWlBDQZu/llw8wlyY2Zh5e/X52WZnI+8F5zDtUcy+2g0vXJYk
         S70HmPD1GHiQrtu5lZcdO3jVoxPkpwvgqmafMCWtSXJKiXhRg0gURczo38/RL/YF2HnQ
         J00ysvpfeT4pBfcYjdV6Y4HN9WE1WzCHsQVsJiKPIYlnZMDdIlt2+ciF2n784lUPdFzT
         0MvnIJ08Sa4P14RqBn9Xiq/RCS6vgq5UPliNfBwVwNS/ty6TvBJ3ZzGkEcJ1Xu7gxYPA
         JXDqIKjtbmHonLAaB5ePV0wKAvq3CT2TeikC4jiK6D+9scSkucx8fqYHw1cqO+pK1Nw8
         EZbA==
X-Gm-Message-State: AOAM530Hl6l6HafQrmtNtBpuki3ooTOmtxKCWyt8+qV9BK0Ak0NNKQ64
	fjXBGvOcTKQCWc3SJpYEsyxRYg==
X-Google-Smtp-Source: ABdhPJyQaI5jxkHFwC6iLgltLRmFbZGJcK+fzDf9TuEySPBD8isx5N+aDO4aJtTpXgkUCVltjh9MWQ==
X-Received: by 2002:a17:906:5a4d:b0:70f:7d1c:664b with SMTP id my13-20020a1709065a4d00b0070f7d1c664bmr43946954ejc.540.1655073187991;
        Sun, 12 Jun 2022 15:33:07 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:07 -0700 (PDT)
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
Subject: [PATCH 5/6] arm64: dts: qcom: Add missing space around properties
Date: Mon, 13 Jun 2022 00:32:00 +0200
Message-Id: <20220612223201.2740248-6-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_153310_162084_26C75A8B 
X-CRM114-Status: GOOD (  12.12  )
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

QWRkIHRoZSBtaXNzaW5nIHNwYWNlIGFyb3VuZCBwcm9wZXJ0aWVzIGJlZm9yZSB0aGUgdHlwbyBz
cHJlYWRzIHRvIG90aGVyCmZpbGVzCgpTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8
bmlrbGFzLnNvZGVybHVuZCtyZW5lc2FzQHJhZ25hdGVjaC5zZT4KLS0tCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vc2RtNjMwLXNvbnkteHBlcmlhLW5pbGUuZHRzaSB8IDIgKy0KIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9zZG04NTAtbGVub3ZvLXlvZ2EtYzYzMC5kdHMgIHwgMiArLQogMiBm
aWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NkbTYzMC1zb255LXhwZXJpYS1uaWxlLmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtNjMwLXNvbnkteHBlcmlhLW5pbGUuZHRzaQpp
bmRleCA0MmFmMWZhZGU0NjFiZGZhLi4wM2MxOGM3NGRhMzA4MWEzIDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtNjMwLXNvbnkteHBlcmlhLW5pbGUuZHRzaQorKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtNjMwLXNvbnkteHBlcmlhLW5pbGUuZHRzaQpAQCAt
MzQsNyArMzQsNyBAQCBmcmFtZWJ1ZmZlcjA6IGZyYW1lYnVmZmVyQDlkNDAwMDAwIHsKIAkJCWhl
aWdodCA9IDwxOTIwPjsKIAkJCXN0cmlkZSA9IDwoMTA4MCAqIDQpPjsKIAkJCWZvcm1hdCA9ICJh
OHI4ZzhiOCI7Ci0JCQlzdGF0dXM9ICJva2F5IjsKKwkJCXN0YXR1cyA9ICJva2F5IjsKIAkJfTsK
IAl9OwogCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtODUwLWxlbm92
by15b2dhLWM2MzAuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NkbTg1MC1sZW5vdm8t
eW9nYS1jNjMwLmR0cwppbmRleCBmMTYxOWIzZjk3ZWY4MGQwLi5lYWUxODVjZWQ3NGE1OThjIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtODUwLWxlbm92by15b2dhLWM2
MzAuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zZG04NTAtbGVub3ZvLXlvZ2Et
YzYzMC5kdHMKQEAgLTgxNyw1ICs4MTcsNSBAQCAmd2lmaSB7CiAKICZjcnlwdG8gewogCS8qIEZJ
WE1FOiBxY2Vfc3RhcnQgdHJpZ2dlcnMgYW4gU0Vycm9yICovCi0Jc3RhdHVzPSAiZGlzYWJsZSI7
CisJc3RhdHVzID0gImRpc2FibGUiOwogfTsKLS0gCjIuMzYuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
