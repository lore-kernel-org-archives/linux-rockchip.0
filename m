Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E395DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 22:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2GG8QjAXpoTDcxU8wtCnyQwdUxNrkcpB+8wQYm6Yio=; b=eACY5c6Nq39xW3
	PVH3bsmth0XAhqqofiEEje0y9hrW/Ks5Zb5kRhlh1pLuSLodZfWlEZ7mbrE0+E8HIh+Pl+iVpOZel
	wAo+3o3avot8h/miXybY0qd7np7WIhf3nwY3pm78dwvZTKKPyOOWlZiTnYjWmpm3cXtbXfTAm91P8
	jvbdY39hte1Fxid4jVHF1uICDPWw0m7yPvjx5sfpxfMtTO6wyEjGoCCB/3XoVyhaXvPHauP4IENK8
	idVs0UHWgL3dVdDB3HgDugPXcRD3q5f7T3fWW6buhgZRANKAqf5Hyq5DAmhQUjja94Bs3aeYvV/JN
	w1NZWR9o8ITBUi3GXd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W9n-000M9A-RZ; Sun, 12 Jun 2022 22:34:07 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0W8q-000LaP-Li
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 22:33:12 +0000
Received: by mail-ed1-x52b.google.com with SMTP id g7so5011179eda.3
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 15:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6hOWm4HNYwizqExKPot6DZ2kdpEPh1LrdUx8jfcJnW4=;
        b=3A7I1paCBwpUXDLdMWsRFLysHo1EmAJGUKSNsBdyEp2pOkvhABlgXjkC5UP/UFbws8
         Yox9lnXcjiCD++KIO81jM6YSmxhQ29lFkyTd11cVvl6/xrrvS8kuxpv+giI/ot4sl2GJ
         6HJvriPA3DISV0sbD4sHHawjJV01fB+zVL2X97JsmvVbEL2V+KZcUtzSAN6q9SUlvty9
         DZJE0wvvZ5eDO2Lk8/lKEPy2vUpy5S/Ef7doTX/N3akGfhmt4USiSfgCrKn7uhRAg3wP
         PhSS8kKHAGprUTdftrnqS5fJs+OnrhRFFKfpqAOJQpgdC+KiEn/p0nggY4OWvBPfBzb+
         qRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6hOWm4HNYwizqExKPot6DZ2kdpEPh1LrdUx8jfcJnW4=;
        b=s3vxVPN/o+nwls52cbUV+NcJ3GcNT3E2p6YzderaCj4q48JtYwJzSMHga+m68ryFNO
         oKKIyMycOZ6DLGOt2GIG3dBEAvLkTYc/L5VrIy5G1HI+rIuu4cH1T5DZVCe9lXE2ksr2
         RCNgbyffvw073rlsrlo0DHMMJevHWLF41eN5edNLYhxqIRtskmjuE1BqK2lSTfFHHBop
         5yIvwvg+0VN4l5rfzGLj5hhz3W3XyISK04lIXGGDONnMbuV2LPLCviRieG6ooJDASMnG
         f0Vj3N+lkbZQvyBUyTeieIDfZHmI8ixpvY7DAGc9FydLFPN2dExL4sMPsNgKVvuYMgiS
         9Jrw==
X-Gm-Message-State: AOAM532smc/Ffr/XysWvdkyM9uZ21ip7N1gPT0B2p2tRY0iL5DeldD+h
	tu8pA4weLWCnEpcwiZwHOsju+g==
X-Google-Smtp-Source: ABdhPJx8eUy4phHW+qZj/cwYpkeLTe7LCtyDKwnpwHZyQwCu62A7fWns65QZ8iSHnZFsCiFr2MFFag==
X-Received: by 2002:a05:6402:ea7:b0:433:6141:840e with SMTP id h39-20020a0564020ea700b004336141840emr11453126eda.266.1655073187046;
        Sun, 12 Jun 2022 15:33:07 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:06 -0700 (PDT)
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
Subject: [PATCH 4/6] arm64: dts: hisilicon: Add missing space around properties
Date: Mon, 13 Jun 2022 00:31:59 +0200
Message-Id: <20220612223201.2740248-5-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_153308_797579_CCB121BC 
X-CRM114-Status: GOOD (  10.69  )
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
b290L2R0cy9oaXNpbGljb24vaGlwMDYuZHRzaSB8IDYgKysrLS0tCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2hpc2lsaWNvbi9oaXAwNy5kdHNpIHwgNiArKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvaGlzaWxpY29uL2hpcDA2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNv
bi9oaXAwNi5kdHNpCmluZGV4IDcwZDc3MzJkZDM0ODU1MmQuLjJmOGIwM2IwZDM2NTM3Y2EgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpcDA2LmR0c2kKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGlwMDYuZHRzaQpAQCAtNTM3LDcgKzUzNyw3
IEBAIHBvcnRAMCB7CiAKIAkJCXBvcnRAMSB7CiAJCQkJcmVnID0gPDE+OwotCQkJCXNlcmRlcy1z
eXNjb249IDwmc2VyZGVzX2N0cmw+OworCQkJCXNlcmRlcy1zeXNjb24gPSA8JnNlcmRlc19jdHJs
PjsKIAkJCQlwb3J0LXJzdC1vZmZzZXQgPSA8MT47CiAJCQkJcG9ydC1tb2RlLW9mZnNldCA9IDwx
PjsKIAkJCQltZWRpYS10eXBlID0gImZpYmVyIjsKQEAgLTU0Niw3ICs1NDYsNyBAQCBwb3J0QDEg
ewogCQkJcG9ydEA0IHsKIAkJCQlyZWcgPSA8ND47CiAJCQkJcGh5LWhhbmRsZSA9IDwmcGh5MD47
Ci0JCQkJc2VyZGVzLXN5c2Nvbj0gPCZzZXJkZXNfY3RybD47CisJCQkJc2VyZGVzLXN5c2NvbiA9
IDwmc2VyZGVzX2N0cmw+OwogCQkJCXBvcnQtcnN0LW9mZnNldCA9IDw0PjsKIAkJCQlwb3J0LW1v
ZGUtb2Zmc2V0ID0gPDI+OwogCQkJCW1lZGlhLXR5cGUgPSAiY29wcGVyIjsKQEAgLTU1NSw3ICs1
NTUsNyBAQCBwb3J0QDQgewogCQkJcG9ydEA1IHsKIAkJCQlyZWcgPSA8NT47CiAJCQkJcGh5LWhh
bmRsZSA9IDwmcGh5MT47Ci0JCQkJc2VyZGVzLXN5c2Nvbj0gPCZzZXJkZXNfY3RybD47CisJCQkJ
c2VyZGVzLXN5c2NvbiA9IDwmc2VyZGVzX2N0cmw+OwogCQkJCXBvcnQtcnN0LW9mZnNldCA9IDw1
PjsKIAkJCQlwb3J0LW1vZGUtb2Zmc2V0ID0gPDM+OwogCQkJCW1lZGlhLXR5cGUgPSAiY29wcGVy
IjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpcDA3LmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaXAwNy5kdHNpCmluZGV4IDZiYWY2YTY4
NjQ1MGVlMjguLjFhMTY2NjJmODg2N2JhMWUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvaGlzaWxpY29uL2hpcDA3LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGlj
b24vaGlwMDcuZHRzaQpAQCAtMTQyMiw3ICsxNDIyLDcgQEAgcG9ydEAwIHsKIAogCQkJcG9ydEAx
IHsKIAkJCQlyZWcgPSA8MT47Ci0JCQkJc2VyZGVzLXN5c2Nvbj0gPCZzZXJkZXNfY3RybD47CisJ
CQkJc2VyZGVzLXN5c2NvbiA9IDwmc2VyZGVzX2N0cmw+OwogCQkJCWNwbGQtc3lzY29uID0gPCZk
c2FfY3BsZCAweDQ+OwogCQkJCXBvcnQtcnN0LW9mZnNldCA9IDwxPjsKIAkJCQlwb3J0LW1vZGUt
b2Zmc2V0ID0gPDE+OwpAQCAtMTQzMyw3ICsxNDMzLDcgQEAgcG9ydEAxIHsKIAkJCXBvcnRANCB7
CiAJCQkJcmVnID0gPDQ+OwogCQkJCXBoeS1oYW5kbGUgPSA8JnBoeTA+OwotCQkJCXNlcmRlcy1z
eXNjb249IDwmc2VyZGVzX2N0cmw+OworCQkJCXNlcmRlcy1zeXNjb24gPSA8JnNlcmRlc19jdHJs
PjsKIAkJCQlwb3J0LXJzdC1vZmZzZXQgPSA8ND47CiAJCQkJcG9ydC1tb2RlLW9mZnNldCA9IDwy
PjsKIAkJCQltYy1tYWMtbWFzayA9IFtmZiBmMCAwMCAwMCAwMCAwMF07CkBAIC0xNDQzLDcgKzE0
NDMsNyBAQCBwb3J0QDQgewogCQkJcG9ydEA1IHsKIAkJCQlyZWcgPSA8NT47CiAJCQkJcGh5LWhh
bmRsZSA9IDwmcGh5MT47Ci0JCQkJc2VyZGVzLXN5c2Nvbj0gPCZzZXJkZXNfY3RybD47CisJCQkJ
c2VyZGVzLXN5c2NvbiA9IDwmc2VyZGVzX2N0cmw+OwogCQkJCXBvcnQtcnN0LW9mZnNldCA9IDw1
PjsKIAkJCQlwb3J0LW1vZGUtb2Zmc2V0ID0gPDM+OwogCQkJCW1jLW1hYy1tYXNrID0gW2ZmIGYw
IDAwIDAwIDAwIDAwXTsKLS0gCjIuMzYuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
