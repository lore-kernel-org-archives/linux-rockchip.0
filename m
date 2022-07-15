Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 524E7C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 20:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Cc:Date:Message-Id:Subject:
	Mime-Version:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4CkC5+Rq6VdeK7t3e3UbXEC1dfrGCcO2L7s566+LB1s=; b=QKS
	jNhJp3L6PHRBBLUQRj9QZPtzpQfIrhkKHV+DEE64fX+TOb01m3W/R09NzC3zX0zpsVaJb2R2OSfvL
	zeykCtjPxeMnny4rhez98lZUQ2Giz5ZDDkfovUFa5Yr6ARBw1OndcK3khqfx9JubZQWq+kHVEtcAi
	07XNDAqf8NfnTtBf3ElhA1nwHsoIFwZICuRHH8CQ5Tcc2ZtBR8DH+rHH1kfDqRXQGWtPwfTBxRYp6
	IwQKP3XXbLM1mdBF4/r0doUio67HAGhMO0kuLhHkoXDWjFLO4jit29rwUZOXCAZyOXaYxhSFB3MDg
	iIMQSXELrH+ia1S+oIzyCvRXwuBVxKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCRz7-00ABmO-UP; Fri, 15 Jul 2022 20:32:25 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCRz4-00ABjk-MV
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 20:32:24 +0000
Received: by mail-ej1-x634.google.com with SMTP id os14so10917746ejb.4
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 13:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :cc:to;
        bh=QyhOR01DoxGCYnC4bLLESVLmV3qWJRFD3wmuOiKUM+s=;
        b=Z6VzxmO6hGDfHH8LKcLYuVI2nHVAeXPXEXU8HNTLXXfNsSamzoe7i1tvTSpIqGwnRX
         eb7uCb86aYA6r3Ymrl/fR2gyC+47oOTKX+SPPBtB3y+avXE52ROk7wcBBUrNBqtCLMlZ
         KGRP7NVaSEBG2ZRN3jrjcWJRx2mtwJT++GeRcCN381prDLZR977xf9Bi/9Qji60mBZAP
         Zi1UhzdRx3SYrHNE7l61cl/03Pe7GLS5B09Es0Ykf6YZDP8et4SjN7IOSByRn85s3ePC
         dzwy99tLcPsDy/MS9DPZu+YSExOjhogvC9DZ1TrU3sNesAfiB72SoZByHsVCfI9Rd/Rq
         JjVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:cc:to;
        bh=QyhOR01DoxGCYnC4bLLESVLmV3qWJRFD3wmuOiKUM+s=;
        b=Y6S1Vqa7ydPAfkEKrILJXZzsszXo0ABqgxduoj+U/LO7nLTBHM6slVOpY9OLBcP/sa
         bNadmuVaaT1pFUI29B4PTJauaPgA6KveICCiRHzD3yNWxrS+5NG5ez9u1kMW6gagHnMh
         KXucPfAPk4Y6JmaCRZubLZhVXF4PJAgM1YgXxw/fjV2DLega7Uejz6Yn57Ae+Pb+0lNB
         wvnZ7G2+dewyEaXjk0nya6aIyLDjg1d3yMaxdmAw6LTnLSfHGtZ+44SRmVHo4wthwrPv
         hvbvA7PbWxMjLI89HbSzxzB/9YB8Vpk3QlG03LI1I/nYMPpAtckmP9SygkCW3av9NIrj
         Ltiw==
X-Gm-Message-State: AJIora8KrBfaA/y1WiF3B4Yve5AD7+uZsVJ/6GW9fFMJesQLL5JroFKV
	4t6rIyQ3iyPKip9ukOtJ19TtcCoLDUdznyae
X-Google-Smtp-Source: AGRyM1snP/L4DiOZS/0MJdzbFUPKreO0jk3IPQtyANLnH4rMZRf2ATr75Ln58SBsVbEfxUEbkunwCg==
X-Received: by 2002:a17:906:5343:b0:722:ea54:fe67 with SMTP id j3-20020a170906534300b00722ea54fe67mr15579245ejo.181.1657917138169;
        Fri, 15 Jul 2022 13:32:18 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id a15-20020a1709066d4f00b00715705dd23asm2375834ejt.89.2022.07.15.13.32.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 13:32:17 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH] regulator: core: Resolve supply name earlier to prevent
 double-init
Message-Id: <3B4AE882-0C28-41E3-9466-F8E301567627@kohlschutter.com>
Date: Fri, 15 Jul 2022 22:32:16 +0200
Cc: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_133222_980166_B2B7431C 
X-CRM114-Status: GOOD (  17.91  )
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

UHJldmlvdXNseSwgYW4gdW5yZXNvbHZlZCByZWd1bGF0b3Igc3VwcGx5IHJlZmVyZW5jZSB1cG9u
IGNhbGxpbmcKcmVndWxhdG9yX3JlZ2lzdGVyIG9uIGFuIGFsd2F5cy1vbiBvciBib290LW9uIHJl
Z3VsYXRvciBjYXVzZWQKc2V0X21hY2hpbmVfY29uc3RyYWludHMgdG8gYmUgY2FsbGVkIHR3aWNl
LgoKVGhpcyBpbiB0dXJuIG1heSBpbml0aWFsaXplIHRoZSByZWd1bGF0b3IgdHdpY2UsIGxlYWRp
bmcgdG8gdm9sdGFnZQpnbGl0Y2hlcyB0aGF0IGFyZSB0aW1pbmctZGVwZW5kZW50LiBBIHNpbXBs
ZSwgdW5yZWxhdGVkIGNvbmZpZ3VyYXRpb24KY2hhbmdlIG1heSBiZSBlbm91Z2ggdG8gaGlkZSB0
aGlzIHByb2JsZW0sIG9ubHkgdG8gYmUgc3VyZmFjZWQgYnkKY2hhbmNlLgoKT25lIHN1Y2ggZXhh
bXBsZSBpcyB0aGUgU0QtQ2FyZCB2b2x0YWdlIHJlZ3VsYXRvciBpbiBhIE5hbm9QSSBSNFMgdGhh
dAp3b3VsZCBub3QgaW5pdGlhbGl6ZSByZWxpYWJseSB1bmxlc3MgdGhlIHJlZ2lzdHJhdGlvbiBm
bG93IHdhcyBqdXN0CmNvbXBsZXggZW5vdWdoIHRvIGFsbG93IHRoZSByZWd1bGF0b3IgdG8gcHJv
cGVybHkgcmVzZXQgYmV0d2VlbiBjYWxscy4KCkZpeCB0aGlzIGJ5IHJlLWFycmFuZ2luZyByZWd1
bGF0b3JfcmVnaXN0ZXIsIHRyeWluZyByZXNvbHZlIHRoZQpyZWd1bGF0b3IncyBzdXBwbHkgZWFy
bHkgZW5vdWdoIHRoYXQgc2V0X21hY2hpbmVfY29uc3RyYWludHMgZG9lcyBub3QKbmVlZCB0byBi
ZSBjYWxsZWQgdHdpY2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8
Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Ci0tLQogZHJpdmVycy9yZWd1bGF0b3IvY29yZS5j
IHwgNDIgKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcmVndWxhdG9yL2NvcmUuYyBiL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwppbmRleCBj
NGQ4NDRmZmFkN2EuLjcyODg0MDgyN2U5YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9yZWd1bGF0b3Iv
Y29yZS5jCisrKyBiL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwpAQCAtNTQzMyw3ICs1NDMzLDM0
IEBAIHJlZ3VsYXRvcl9yZWdpc3Rlcihjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2Rlc2MgKnJlZ3Vs
YXRvcl9kZXNjLAogCUJMT0NLSU5HX0lOSVRfTk9USUZJRVJfSEVBRCgmcmRldi0+bm90aWZpZXIp
OwogCUlOSVRfREVMQVlFRF9XT1JLKCZyZGV2LT5kaXNhYmxlX3dvcmssIHJlZ3VsYXRvcl9kaXNh
YmxlX3dvcmspOwogCi0JLyogcHJlZm9ybSBhbnkgcmVndWxhdG9yIHNwZWNpZmljIGluaXQgKi8K
KwkvKiBzZXQgcmVndWxhdG9yIGNvbnN0cmFpbnRzICovCisJaWYgKGluaXRfZGF0YSkKKwkJcmRl
di0+Y29uc3RyYWludHMgPSBrbWVtZHVwKCZpbml0X2RhdGEtPmNvbnN0cmFpbnRzLAorCQkJCQkg
ICAgc2l6ZW9mKCpyZGV2LT5jb25zdHJhaW50cyksCisJCQkJCSAgICBHRlBfS0VSTkVMKTsKKwll
bHNlCisJCXJkZXYtPmNvbnN0cmFpbnRzID0ga3phbGxvYyhzaXplb2YoKnJkZXYtPmNvbnN0cmFp
bnRzKSwKKwkJCQkJICAgIEdGUF9LRVJORUwpOworCisJaWYgKGluaXRfZGF0YSAmJiBpbml0X2Rh
dGEtPnN1cHBseV9yZWd1bGF0b3IpCisJCXJkZXYtPnN1cHBseV9uYW1lID0gaW5pdF9kYXRhLT5z
dXBwbHlfcmVndWxhdG9yOworCWVsc2UgaWYgKHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFtZSkK
KwkJcmRldi0+c3VwcGx5X25hbWUgPSByZWd1bGF0b3JfZGVzYy0+c3VwcGx5X25hbWU7CisKKwlp
ZiAoKHJkZXYtPnN1cHBseV9uYW1lICYmICFyZGV2LT5zdXBwbHkpICYmIHJkZXYtPmNvbnN0cmFp
bnRzCisJCSYmIChyZGV2LT5jb25zdHJhaW50cy0+YWx3YXlzX29uIHx8IHJkZXYtPmNvbnN0cmFp
bnRzLT5ib290X29uKSkgeworCQkvKiBUcnkgdG8gcmVzb2x2ZSB0aGUgbmFtZSBvZiB0aGUgc3Vw
cGx5aW5nIHJlZ3VsYXRvciBoZXJlIGZpcnN0CisJCSAqIHNvIHdlIHByZXZlbnQgZG91YmxlLWlu
aXRpYWxpemluZyB0aGUgcmVndWxhdG9yLCB3aGljaCBtYXkKKwkJICogY2F1c2UgdGltaW5nLXNw
ZWNpZmljIHZvbHRhZ2UgYnJvd25vdXRzL2dsaXRjaGVzIHRoYXQgYXJlCisJCSAqIGhhcmQgdG8g
ZGVidWcuCisJCSAqLworCQlyZXQgPSByZWd1bGF0b3JfcmVzb2x2ZV9zdXBwbHkocmRldik7CisJ
CWlmIChyZXQpCisJCQlyZGV2X2RiZyhyZGV2LCAidW5hYmxlIHRvIHJlc29sdmUgc3VwcGx5IGVh
cmx5OiAlcGVcbiIsCisJCQkJCSBFUlJfUFRSKHJldCkpOworCX0KKworCS8qIHBlcmZvcm0gYW55
IHJlZ3VsYXRvciBzcGVjaWZpYyBpbml0ICovCiAJaWYgKGluaXRfZGF0YSAmJiBpbml0X2RhdGEt
PnJlZ3VsYXRvcl9pbml0KSB7CiAJCXJldCA9IGluaXRfZGF0YS0+cmVndWxhdG9yX2luaXQocmRl
di0+cmVnX2RhdGEpOwogCQlpZiAocmV0IDwgMCkKQEAgLTU0NTksMjQgKzU0ODYsMTEgQEAgcmVn
dWxhdG9yX3JlZ2lzdGVyKGNvbnN0IHN0cnVjdCByZWd1bGF0b3JfZGVzYyAqcmVndWxhdG9yX2Rl
c2MsCiAJCSAgICAodW5zaWduZWQgbG9uZykgYXRvbWljX2luY19yZXR1cm4oJnJlZ3VsYXRvcl9u
bykpOwogCWRldl9zZXRfZHJ2ZGF0YSgmcmRldi0+ZGV2LCByZGV2KTsKIAotCS8qIHNldCByZWd1
bGF0b3IgY29uc3RyYWludHMgKi8KLQlpZiAoaW5pdF9kYXRhKQotCQlyZGV2LT5jb25zdHJhaW50
cyA9IGttZW1kdXAoJmluaXRfZGF0YS0+Y29uc3RyYWludHMsCi0JCQkJCSAgICBzaXplb2YoKnJk
ZXYtPmNvbnN0cmFpbnRzKSwKLQkJCQkJICAgIEdGUF9LRVJORUwpOwotCWVsc2UKLQkJcmRldi0+
Y29uc3RyYWludHMgPSBremFsbG9jKHNpemVvZigqcmRldi0+Y29uc3RyYWludHMpLAotCQkJCQkg
ICAgR0ZQX0tFUk5FTCk7CiAJaWYgKCFyZGV2LT5jb25zdHJhaW50cykgewogCQlyZXQgPSAtRU5P
TUVNOwogCQlnb3RvIHdhc2g7CiAJfQogCi0JaWYgKGluaXRfZGF0YSAmJiBpbml0X2RhdGEtPnN1
cHBseV9yZWd1bGF0b3IpCi0JCXJkZXYtPnN1cHBseV9uYW1lID0gaW5pdF9kYXRhLT5zdXBwbHlf
cmVndWxhdG9yOwotCWVsc2UgaWYgKHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFtZSkKLQkJcmRl
di0+c3VwcGx5X25hbWUgPSByZWd1bGF0b3JfZGVzYy0+c3VwcGx5X25hbWU7Ci0KIAlyZXQgPSBz
ZXRfbWFjaGluZV9jb25zdHJhaW50cyhyZGV2KTsKIAlpZiAocmV0ID09IC1FUFJPQkVfREVGRVIp
IHsKIAkJLyogUmVndWxhdG9yIG1pZ2h0IGJlIGluIGJ5cGFzcyBtb2RlIGFuZCBzbyBuZWVkcyBp
dHMgc3VwcGx5Ci0tIAoyLjM2LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
