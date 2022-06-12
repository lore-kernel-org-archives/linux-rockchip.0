Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA6A3C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 22:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNfgMPdK8iHWBbL8e6ZnfXzTE+4WlojzjxVwD7ZXhp4=; b=HQ0kDUiM+s6fiz
	1ZC/pGK5nl14yZrO8m/6atHm+yw0VlR02XhH/Bsc6JAZvlrpN/iZiXRTL0cBvG3bBvp+S6z786aRU
	DpBUGJlPPQvYD51LkB0iPAbs/3oK2MmUWsZSfMu5wQ0pvGUH+sw1VV0X1+dRSAw8egMOtNaNj2wqa
	lDSjTqpO45iGg7OPYD6iHzY8JUrpqRl5Sc38Q9qSsrG2dsLCQqfqA7ibPfz0PSiBxh9ufzwhgmq1A
	2MAKnR0peiDDggItuhJufgDu92Erg7koS+/XTk8h3ZgT1psKMFnPWe+wJphmW4jf/zvYiqjROXgFA
	tbdQzAc54EUdXVYgvNJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0WAN-000MUM-15; Sun, 12 Jun 2022 22:34:43 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W8s-000Lcb-4l
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 22:33:14 +0000
Received: by mail-ed1-x52d.google.com with SMTP id g7so5011233eda.3
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 15:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4nJEq+0F6Kk8Ge3MLggAIqmACf86QHCZyLCCT4E4CWQ=;
        b=hW24e/VAQZnxK1I15mgerWtrXu7REOsHGwRMjz5Cju/IfqimQ0m4ko9tvi9gOecUmO
         Gvb4VyInGJFktcU88SQpRG08A0WjL9G64Y6YbmX6tWoV+q4AWRG1P0r5h5UZNyU6iYWO
         JM6M7TdccyNDB8zDpehOPzY4J5SsPsG2zGogk5mEZeReDdWyU/ar7LtWQzW1pRghADRP
         /ey6Nd3hd24Hi3ylnJEbpdDQvNXqLIeF74LPsI5bf0nFgnkbPzqULfffgP+bU8l6oWDR
         0sK1PLusEoEnJp2IIJwvf5sNrhsUM/9BfpPAJCyiKAIPU/86oZVv4sGkihkGG7RN8abT
         a+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4nJEq+0F6Kk8Ge3MLggAIqmACf86QHCZyLCCT4E4CWQ=;
        b=1ZYsOyk0RTlFFAVSOxepwLzCR1jAjkYAWtBL7KeRC9cTHtx8xnZYP4IT0RmtDeeKTC
         /s7eSZ4HaZprf1VJqtyKjHSGxH+0QMEK4xNBhOmrFTEk4LlwoYQw0fvsqxk11ykglda/
         oIWK4diq6382AZ9wWGSgbNMN0so+niFuTMiqDcb4g7Khu1NQ7ep1Xen4SpUvG4FftQwx
         yqOKQJ7keEMEdMS0rn9Ss6vO+/Oe4qOHh7+/li+UdB2+KTXBXSsgIYfi5N/gTQbWFviy
         +nGnTc5xY/9A2az6KY9aeY1wmGULjChS4mqMoyKDcKqpUqiDPwMmgIogxw0XJQYUyqjk
         /NNw==
X-Gm-Message-State: AOAM531QKe52fhd2cVPVhgzlmHlw7FBNcwT7u7p8KC+Fa2jySMrzQgJ2
	r4dSpohZ3k8oUOrmbJOqbtIusQ==
X-Google-Smtp-Source: ABdhPJxpX0mJKgMB5LTCM0Ad0hLLNGFtaBXZ5buJwb9RS3/hnzB7Uv6+BRAUihiZS5MkLfcuoJwR0A==
X-Received: by 2002:aa7:c14b:0:b0:42d:d763:104 with SMTP id r11-20020aa7c14b000000b0042dd7630104mr62964220edp.104.1655073188982;
        Sun, 12 Jun 2022 15:33:08 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:08 -0700 (PDT)
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
Subject: [PATCH 6/6] arm64: dts: ti: Add missing space around properties
Date: Mon, 13 Jun 2022 00:32:01 +0200
Message-Id: <20220612223201.2740248-7-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_153310_320804_DF509BE7 
X-CRM114-Status: GOOD (  10.34  )
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
cHJlYWRzIHRvIG90aGVyCmZpbGVzLgoKU2lnbmVkLW9mZi1ieTogTmlrbGFzIFPDtmRlcmx1bmQg
PG5pa2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+Ci0tLQogYXJjaC9hcm02NC9i
b290L2R0cy90aS9rMy1hbTYyLW1haW4uZHRzaSAgICAgICAgICAgfCA0ICsrLS0KIGFyY2gvYXJt
NjQvYm9vdC9kdHMvdGkvazMtYW02NC1tYWluLmR0c2kgICAgICAgICAgIHwgNCArKy0tCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtaW90MjA1MC1jb21tb24uZHRzaSB8IDIgKy0KIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS13YWtldXAuZHRzaSAgICAgICAgIHwgNCArKy0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjU0LWJhc2UtYm9hcmQuZHRzICAgICB8IDIg
Ky0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMDAtbWN1LXdha2V1cC5kdHNpICAgIHwg
NCArKy0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3MjFlLW1jdS13YWtldXAuZHRzaSAg
ICB8IDQgKystLQogYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxczItbWN1LXdha2V1cC5k
dHNpICAgfCA0ICsrLS0KIDggZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTYyLW1h
aW4uZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02Mi1tYWluLmR0c2kKaW5kZXgg
ZDA4YWJhZDBiY2Y0ZTU4Yy4uZGYzYjk4ODNlODg3NTNkNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy90aS9rMy1hbTYyLW1haW4uZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3RpL2szLWFtNjItbWFpbi5kdHNpCkBAIC0xNDQsOCArMTQ0LDggQEAgZG1zYzogc3lzdGVtLWNv
bnRyb2xsZXJANDQwNDMwMDAgewogCQljb21wYXRpYmxlID0gInRpLGsyZy1zY2kiOwogCQl0aSxo
b3N0LWlkID0gPDEyPjsKIAkJbWJveC1uYW1lcyA9ICJyeCIsICJ0eCI7Ci0JCW1ib3hlcz0gPCZz
ZWN1cmVfcHJveHlfbWFpbiAxMj4sCi0JCQk8JnNlY3VyZV9wcm94eV9tYWluIDEzPjsKKwkJbWJv
eGVzID0gPCZzZWN1cmVfcHJveHlfbWFpbiAxMj4sCisJCQkgPCZzZWN1cmVfcHJveHlfbWFpbiAx
Mz47CiAJCXJlZy1uYW1lcyA9ICJkZWJ1Z19tZXNzYWdlcyI7CiAJCXJlZyA9IDwweDAwIDB4NDQw
NDMwMDAgMHgwMCAweGZlMD47CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkv
azMtYW02NC1tYWluLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjQtbWFpbi5k
dHNpCmluZGV4IGY2NGIzNjhjNmMzNzE3NTcuLjdiZmRkZDM1ZWI5M2U0ZTggMTAwNjQ0Ci0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NC1tYWluLmR0c2kKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy90aS9rMy1hbTY0LW1haW4uZHRzaQpAQCAtMTc0LDggKzE3NCw4IEBAIGRtc2M6
IHN5c3RlbS1jb250cm9sbGVyQDQ0MDQzMDAwIHsKIAkJY29tcGF0aWJsZSA9ICJ0aSxrMmctc2Np
IjsKIAkJdGksaG9zdC1pZCA9IDwxMj47CiAJCW1ib3gtbmFtZXMgPSAicngiLCAidHgiOwotCQlt
Ym94ZXM9IDwmc2VjdXJlX3Byb3h5X21haW4gMTI+LAotCQkJPCZzZWN1cmVfcHJveHlfbWFpbiAx
Mz47CisJCW1ib3hlcyA9IDwmc2VjdXJlX3Byb3h5X21haW4gMTI+LAorCQkJIDwmc2VjdXJlX3By
b3h5X21haW4gMTM+OwogCQlyZWctbmFtZXMgPSAiZGVidWdfbWVzc2FnZXMiOwogCQlyZWcgPSA8
MHgwMCAweDQ0MDQzMDAwIDB4MDAgMHhmZTA+OwogCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3RpL2szLWFtNjUtaW90MjA1MC1jb21tb24uZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvdGkvazMtYW02NS1pb3QyMDUwLWNvbW1vbi5kdHNpCmluZGV4IDZlNDFmMmZhMDQ0YWY5ZjMu
LmQwNTBjNDEwYzY5MTdhOGYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMt
YW02NS1pb3QyMDUwLWNvbW1vbi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMt
YW02NS1pb3QyMDUwLWNvbW1vbi5kdHNpCkBAIC01NzQsNyArNTc0LDcgQEAgJm1jdV9zcGkwIHsK
IAlwaW5jdHJsLTAgPSA8Jm1jdV9zcGkwX3BpbnNfZGVmYXVsdD47CiAKIAkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKLQkjc2l6ZS1jZWxscz0gPDA+OworCSNzaXplLWNlbGxzID0gPDA+OwogCXRpLHBp
bmRpci1kMC1vdXQtZDEtaW47CiB9OwogCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3RpL2szLWFtNjUtd2FrZXVwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUt
d2FrZXVwLmR0c2kKaW5kZXggOWM2OWQwOTE3ZjY5YWM5Yy4uZmExMWQ3MTQyMDA2YTcyYSAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1LXdha2V1cC5kdHNpCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS13YWtldXAuZHRzaQpAQCAtMTIsOCArMTIs
OCBAQCBkbXNjOiBzeXN0ZW0tY29udHJvbGxlckA0NDA4MzAwMCB7CiAKIAkJbWJveC1uYW1lcyA9
ICJyeCIsICJ0eCI7CiAKLQkJbWJveGVzPSA8JnNlY3VyZV9wcm94eV9tYWluIDExPiwKLQkJCTwm
c2VjdXJlX3Byb3h5X21haW4gMTM+OworCQltYm94ZXMgPSA8JnNlY3VyZV9wcm94eV9tYWluIDEx
PiwKKwkJCSA8JnNlY3VyZV9wcm94eV9tYWluIDEzPjsKIAogCQlyZWctbmFtZXMgPSAiZGVidWdf
bWVzc2FnZXMiOwogCQlyZWcgPSA8MHg0NDA4MzAwMCAweDEwMDA+OwpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1NC1iYXNlLWJvYXJkLmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvdGkvazMtYW02NTQtYmFzZS1ib2FyZC5kdHMKaW5kZXggNTc0OTdjYjFlZDY4ZWNi
My4uMDQ4MjI4Yzg5ZDViNThkNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy90aS9r
My1hbTY1NC1iYXNlLWJvYXJkLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFt
NjU0LWJhc2UtYm9hcmQuZHRzCkBAIC0zMzAsNyArMzMwLDcgQEAgJm1haW5fc3BpMCB7CiAJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8Jm1haW5fc3BpMF9waW5zX2Rl
ZmF1bHQ+OwogCSNhZGRyZXNzLWNlbGxzID0gPDE+OwotCSNzaXplLWNlbGxzPSA8MD47CisJI3Np
emUtY2VsbHMgPSA8MD47CiAJdGkscGluZGlyLWQwLW91dC1kMS1pbjsKIAogCWZsYXNoQDAgewpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIwMC1tY3Utd2FrZXVwLmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3MjAwLW1jdS13YWtldXAuZHRzaQppbmRl
eCAxMDQ0ZWM2YzRiMGQ0YjEwLi5mZjEzYmJlZWQzMGM5MWU2IDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3RpL2szLWo3MjAwLW1jdS13YWtldXAuZHRzaQorKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3RpL2szLWo3MjAwLW1jdS13YWtldXAuZHRzaQpAQCAtMTIsOCArMTIsOCBAQCBk
bXNjOiBzeXN0ZW0tY29udHJvbGxlckA0NDA4MzAwMCB7CiAKIAkJbWJveC1uYW1lcyA9ICJyeCIs
ICJ0eCI7CiAKLQkJbWJveGVzPSA8JnNlY3VyZV9wcm94eV9tYWluIDExPiwKLQkJCTwmc2VjdXJl
X3Byb3h5X21haW4gMTM+OworCQltYm94ZXMgPSA8JnNlY3VyZV9wcm94eV9tYWluIDExPiwKKwkJ
CSA8JnNlY3VyZV9wcm94eV9tYWluIDEzPjsKIAogCQlyZWctbmFtZXMgPSAiZGVidWdfbWVzc2Fn
ZXMiOwogCQlyZWcgPSA8MHgwMCAweDQ0MDgzMDAwIDB4MDAgMHgxMDAwPjsKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMWUtbWN1LXdha2V1cC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy90aS9rMy1qNzIxZS1tY3Utd2FrZXVwLmR0c2kKaW5kZXggYjQ5NzJkZmI3
ZGE4MTVhMC4uZGYwODcyNGJiZjFjNTFjMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy90aS9rMy1qNzIxZS1tY3Utd2FrZXVwLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy90
aS9rMy1qNzIxZS1tY3Utd2FrZXVwLmR0c2kKQEAgLTEyLDggKzEyLDggQEAgZG1zYzogc3lzdGVt
LWNvbnRyb2xsZXJANDQwODMwMDAgewogCiAJCW1ib3gtbmFtZXMgPSAicngiLCAidHgiOwogCi0J
CW1ib3hlcz0gPCZzZWN1cmVfcHJveHlfbWFpbiAxMT4sCi0JCQk8JnNlY3VyZV9wcm94eV9tYWlu
IDEzPjsKKwkJbWJveGVzID0gPCZzZWN1cmVfcHJveHlfbWFpbiAxMT4sCisJCQkgPCZzZWN1cmVf
cHJveHlfbWFpbiAxMz47CiAKIAkJcmVnLW5hbWVzID0gImRlYnVnX21lc3NhZ2VzIjsKIAkJcmVn
ID0gPDB4MDAgMHg0NDA4MzAwMCAweDAgMHgxMDAwPjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvdGkvazMtajcyMXMyLW1jdS13YWtldXAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvdGkvazMtajcyMXMyLW1jdS13YWtldXAuZHRzaQppbmRleCA2YzVjMDJlZGIzNzVkYjMyLi40
ZDFiZmFiZDEzMTNhNTYwIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3
MjFzMi1tY3Utd2FrZXVwLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIx
czItbWN1LXdha2V1cC5kdHNpCkBAIC0xMiw4ICsxMiw4IEBAIHNtczogc3lzdGVtLWNvbnRyb2xs
ZXJANDQwODMwMDAgewogCiAJCW1ib3gtbmFtZXMgPSAicngiLCAidHgiOwogCi0JCW1ib3hlcz0g
PCZzZWN1cmVfcHJveHlfbWFpbiAxMT4sCi0JCQk8JnNlY3VyZV9wcm94eV9tYWluIDEzPjsKKwkJ
bWJveGVzID0gPCZzZWN1cmVfcHJveHlfbWFpbiAxMT4sCisJCQkgPCZzZWN1cmVfcHJveHlfbWFp
biAxMz47CiAKIAkJcmVnLW5hbWVzID0gImRlYnVnX21lc3NhZ2VzIjsKIAkJcmVnID0gPDB4MDAg
MHg0NDA4MzAwMCAweDAwIDB4MTAwMD47Ci0tIAoyLjM2LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
