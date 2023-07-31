Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BB80C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIPyjdLbt1AyBNxBdkjTE7shUqTSGux6GtrhncWj+7g=; b=MBvq64WN5w+Me7
	DLdBDa1MYuEVRRm6UbpqE0R25UmnpUMevN4vg4Yl2fbetPqmcTad11MyuVuzK0zXcVIeZzsApMbAW
	YUGPEwSF6gWpHhCees3vNQfb+Q9JahJWIRbSJKytM5965EZpgLm+3tMvqI4ombVH59WvroRwC6JWX
	Fd35shPmBN1zCOnSgyqG/qO8Zy8xF3/OTuGole3EZiA78oGi2AOezvW2avbcwfgyrmXTDTcrkO1ch
	HLf22aqV4Yulu1+QnbXt0xRoZ02mEGBFwiczlkREXVoQpr6SsSORtFw+7bcV5ERCntbPsb7DonpyM
	zn6o5eyF4HtvZ81qhabA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQeb-00FF33-2N;
	Mon, 31 Jul 2023 11:01:33 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQeA-00FEam-0s
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:01:10 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-267f870e6ffso2492443a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801264; x=1691406064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+OGteNt5NDQh8X1+wYBc1iO3wWROEIikeZHDF62+z3E=;
        b=M91+x+uFD6KCXts/C4HyXuwml1tkv4f0eK6i9HsfOuCkgFzneYqzBxOUkYLv/W0sgX
         vIgLTaCYsbR+m01OAr9DQTIeU85hqCw/hg6ZZWtDa3GTYVd82Y/Ulnb8YFERF0f1Pfhl
         lOLL7Kx/CIdgMIo1CtldjOKFn3aE7KytMh8XNgSL+x8N+Z8d1riR7vmTJfR/ygIwSj3N
         62MthbbkYL9QAQujZSkT4gVTULBWt/5nZyooKXq8ZJaaP+uMI+Fp+wdhQdNx2cCe5uE8
         aCUqRHALjCXJwjMCtoLnHbGI4r9bZdsaFTSG4SgPDLF+Kn9y/sdgmryQzcP/pYCOuM3s
         MMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801264; x=1691406064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+OGteNt5NDQh8X1+wYBc1iO3wWROEIikeZHDF62+z3E=;
        b=RbOHmm2mwr75k+7Ws/IZWBrmpyzkWCjYBQy8ZEtJI7ckAajBick+eBuLpAzvEFupUt
         1iJnekOqqJZxN7ZkWOIS17YB6wwfcHDePaEKt5jzwHySGnEX7/nXYZc4AmmZBCUULBNL
         SJXrQFThZv7YjsA45dxp3fYPoZSght2d9AHikawAjRJKugGOlVWHBwJk7g9qDbatRcgw
         N3PLAAJxahFDPhxq7KPl3xL54x9H6o0avTphSrAaeFiQBmkUr90qydnLpIzC73bR41Zs
         MglCUYy2WFAmkKHnp+354fv4sofsuoahry0gmifCZHAs2KKam9dgGtT6cgUnNvMneusg
         fG4A==
X-Gm-Message-State: ABy/qLZY/+NvYk+JKTta+IRxtlJ7JhdORHIho64G9XOGN5ue0PmyBtfc
	TyCSJE/mGAsyK9dIPC0cDtmboA==
X-Google-Smtp-Source: APBJJlFs4UCRFy2aJkNr/zigzSG3poRWLEQANovbsuunR+0w0DxxDRSeTObukRAQ4atK1noRnsU2Xw==
X-Received: by 2002:a17:90a:3e4e:b0:268:29cb:f93a with SMTP id t14-20020a17090a3e4e00b0026829cbf93amr9162517pjm.1.1690801264006;
        Mon, 31 Jul 2023 04:01:04 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:01:03 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 11/14] ARM: dts: rockchip: rv1126: Add MIPI DSI pipeline
Date: Mon, 31 Jul 2023 16:30:09 +0530
Message-Id: <20230731110012.2913742-12-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040106_332737_180D5184 
X-CRM114-Status: GOOD (  10.95  )
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

TUlQSSBEU0kgY29udHJvbGxlciBpbiBSVjExMjYgaGFzIGludGVncmF0ZWQgTUlQSSBELVBIWSBW
MS4yCnRoYXTCoHN1cHBvcnRzIHVwIHRvIDQgbGFuZXMgd2l0aCBhIDRHYnBzIHRyYW5zZmVyIHJh
dGUuCgpBZGQgTUlQSSBEU0kgcGlwZWxpbmUgZm9yIFJvY2tjaGlwIFJWMTEyNi4KClNpZ25lZC1v
ZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGVkZ2VibGUuYWk+Ci0tLQpDYzogZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmcKQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+CkNjOiBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc+CkNj
OiBDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+CgogYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTI2LmR0c2kgfCA0OSArKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2
MTEyNi5kdHNpCmluZGV4IDljY2QxYmFkNjIyOS4uNTEyY2MxODc2MmI2IDEwMDY0NAotLS0gYS9h
cmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaQorKysgYi9hcmNoL2FybS9ib290
L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaQpAQCAtMjc2LDYgKzI3NiwyMCBAQCBjcnU6IGNsb2Nr
LWNvbnRyb2xsZXJAZmY0OTAwMDAgewogCQkjcmVzZXQtY2VsbHMgPSA8MT47CiAJfTsKIAorCWRz
aV9kcGh5OiBtaXBpLWRwaHlAZmY0ZDAwMDAgeworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJ2
MTEyNi1kc2ktZHBoeSI7CisJCXJlZyA9IDwweGZmNGQwMDAwIDB4NTAwPjsKKwkJYXNzaWduZWQt
Y2xvY2tzID0gPCZwbXVjcnUgQ0xLX01JUElEU0lQSFlfUkVGPjsKKwkJYXNzaWduZWQtY2xvY2st
cmF0ZXMgPSA8MjQwMDAwMDA+OworCQljbG9jay1uYW1lcyA9ICJyZWYiLCAicGNsayI7CisJCWNs
b2NrcyA9IDwmcG11Y3J1IENMS19NSVBJRFNJUEhZX1JFRj4sIDwmY3J1IFBDTEtfRFNJUEhZPjsK
KwkJI3BoeS1jZWxscyA9IDwwPjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUlYxMTI2X1BE
X1ZPPjsKKwkJcmVzZXQtbmFtZXMgPSAiYXBiIjsKKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9EU0lQ
SFlfUD47CisJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJfTsKKwogCWRtYWM6IGRtYS1jb250cm9s
bGVyQGZmNGUwMDAwIHsKIAkJY29tcGF0aWJsZSA9ICJhcm0scGwzMzAiLCAiYXJtLHByaW1lY2Vs
bCI7CiAJCXJlZyA9IDwweGZmNGUwMDAwIDB4NDAwMD47CkBAIC00MjAsNiArNDM0LDcgQEAgdm9w
X291dF9yZ2I6IGVuZHBvaW50QDAgewogCiAJCQl2b3Bfb3V0X2RzaTogZW5kcG9pbnRAMSB7CiAJ
CQkJcmVnID0gPDE+OworCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZHNpX2luX3ZvcD47CiAJCQl9
OwogCQl9OwogCX07CkBAIC00MzUsNiArNDUwLDQwIEBAIHZvcF9tbXU6IGlvbW11QGZmYjAwZjAw
IHsKIAkJc3RhdHVzID0gImRpc2FibGVkIjsKIAl9OwogCisJZHNpOiBkc2lAZmZiMzAwMDAgewor
CQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJ2MTEyNi1taXBpLWRzaSIsICJzbnBzLGR3LW1pcGkt
ZHNpIjsKKwkJcmVnID0gPDB4ZmZiMzAwMDAgMHg1MDA+OworCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgNjEgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCWNsb2NrLW5hbWVzID0gInBjbGsiOworCQlj
bG9ja3MgPSA8JmNydSBQQ0xLX0RTSUhPU1Q+OworCQlwaHktbmFtZXMgPSAiZHBoeSI7CisJCXBo
eXMgPSA8JmRzaV9kcGh5PjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUlYxMTI2X1BEX1ZP
PjsKKwkJcmVzZXQtbmFtZXMgPSAiYXBiIjsKKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9EU0lIT1NU
X1A+OworCQlyb2NrY2hpcCxncmYgPSA8JmdyZj47CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owor
CQkjc2l6ZS1jZWxscyA9IDwwPjsKKwkJc3RhdHVzID0gImRpc2FibGVkIjsKKworCQlwb3J0cyB7
CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNzaXplLWNlbGxzID0gPDA+OworCisJCQlw
b3J0QDAgeworCQkJCXJlZyA9IDwwPjsKKworCQkJCWRzaV9pbl92b3A6IGVuZHBvaW50IHsKKwkJ
CQkJcmVtb3RlLWVuZHBvaW50ID0gPCZ2b3Bfb3V0X2RzaT47CisJCQkJfTsKKwkJCX07CisKKwkJ
CXBvcnRAMSB7CisJCQkJcmVnID0gPDE+OworCQkJfTsKKwkJfTsKKwl9OworCiAJZ21hYzogZXRo
ZXJuZXRAZmZjNDAwMDAgewogCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJ2MTEyNi1nbWFjIiwg
InNucHMsZHdtYWMtNC4yMGEiOwogCQlyZWcgPSA8MHhmZmM0MDAwMCAweDQwMDA+OwotLSAKMi4y
NS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
