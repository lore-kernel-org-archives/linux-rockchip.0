Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A30C32772
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vho0CsBM2BbffarjTHC473AWim6NgUJSZr2CejVi1ks=; b=GrSRt/uYKNWuMJ
	vIcWnIZUY2BEvoyEExYHXu/eyFPOEz51n+aXPdfmJIoshk+GDRw3Ipe7T5gh2Xy3OkDspS4sYaW3u
	TRwyCsX0PSbj/5oDIv1BjJFn3SifP6WJ5H/jR8aJX3pedxlYfiIi1HYivz518PAvSBdP6t0MI+KuD
	m6kAsLTBDuk21zwCm4jYzzZFLapeYjYzdydDRapRoUm+FKYH5cVQnLgINUzA3RBiV9uLc+QBv9ckO
	4pkCaU6aTsfTSNtgMB14mOYkuQTePk2Qqh0Q/dnSAeRakmabAQ/eQ2O8fLxU5uP2nEiogKLMC74oF
	2ZQI5eW1J3kIYawD0Y7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfVv-005LNW-K2; Thu, 18 Aug 2022 13:24:47 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOevP-004nfU-Ef
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:47:06 +0000
Received: by mail-wr1-x435.google.com with SMTP id n4so1598586wrp.10
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=tA1R14Sg29SD+OU/KrtHL4uyHeuXBhNpWPoNMcJBZBc=;
        b=KGZRJ7mnecJzTW9KKPgbHSz9k+hCFduy9ztHKv9FJHxLUw5es+Te9JWtvk08tZkiMG
         b7FAVfUf1pbTfq9G+9v+rQDCFT68/GOhTblK5DmfrOhTxwj1XBa+ujasgC3eCMd3telC
         TXOr6WMgOsLwU9oXp0Kuk1MJuRKyXf0xOCGC2CFkc8HZ064b1PcHiWsNNB4EHK7WA82F
         0glADvqN5hFRHpxIbMQ4qHClMWqwihuxZ9exY1xCDEKv6QmMfDOdp46jEkgauOOjlDwk
         hEZ8wDv9KBaOdQlh0oR+xZ+V46TSQ0Dl1yxAvFzJ8pjuSRaq4fu3rQcldJTe7EtmweMw
         AJWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=tA1R14Sg29SD+OU/KrtHL4uyHeuXBhNpWPoNMcJBZBc=;
        b=Fa1DZAChaOWe2AVX9kPQYJdoNE3Ut3M2yMSh7yWFMjm5D6/MNby3HYZ7fvuD4oQZ5u
         wSyyqhBx/VrcVpODtMb/kW7SvNT5yME35nhHNjBCTHGd6c8loQjrWG/jXU7xsinr/0Z/
         oeYDcAJ77pJVoY9j4XhpsZQf5S1neUtCDlD5qx6MILLK/VgZ4wcbGBvvopF7iXNgKT3N
         gICDQLypIA3Ns1zDe+1uAUuj9HbG9N2sF2TJ4sCM1DRVJi+7GAjcZU2WAXX9XI2WufXN
         NavzcwKSVJonp/Q/I6Ev7ALyFIycJ7ocTvmXW569XKHdfZATRHyX1W2wHNytIV7kE5pO
         7JHg==
X-Gm-Message-State: ACgBeo3y9NTwK8SpjaNvzXWpYJD1l/2iS0+DpU+Ao6GWK/tKH/nBAKn1
	cUGsuZq4GXwPAbRksZqBd0v0rg==
X-Google-Smtp-Source: AA6agR530W/+EKo2o0KHAo/XNpXNqu6Oo57BaqO6dvk2mtHtcuvLeT62hVx9REO/7HO5AUtUiLOaMg==
X-Received: by 2002:a05:6000:3c6:b0:220:5efd:423c with SMTP id b6-20020a05600003c600b002205efd423cmr1616366wrg.214.1660826818469;
        Thu, 18 Aug 2022 05:46:58 -0700 (PDT)
Received: from p330.kohl.home (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id t24-20020a7bc3d8000000b003a5bd5ea215sm1975741wmj.37.2022.08.18.05.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:46:57 -0700 (PDT)
From: =?UTF-8?q?Christian=20Kohlschu=CC=88tter?= <christian@kohlschutter.com>
To: broonie@kernel.org
Cc: christian@kohlschutter.com,
	heiko@sntech.de,
	lgirdwood@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	m.reichl@fivetechno.de,
	robin.murphy@arm.com,
	vincent.legoll@gmail.com,
	wens@kernel.org
Subject: [PATCH v4] regulator: core: Resolve supply name earlier to prevent double-init
Date: Thu, 18 Aug 2022 12:46:47 +0000
Message-Id: <20220818124646.6005-1-christian@kohlschutter.com>
X-Mailer: git-send-email 2.36.2
In-Reply-To: <YvorNPDQQr2SH/NF@sirena.org.uk>
References: <YvorNPDQQr2SH/NF@sirena.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054703_745442_977ED307 
X-CRM114-Status: GOOD (  16.69  )
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

RnJvbTogQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgPGNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29t
PgoKUHJldmlvdXNseSwgYW4gdW5yZXNvbHZlZCByZWd1bGF0b3Igc3VwcGx5IHJlZmVyZW5jZSB1
cG9uIGNhbGxpbmcKcmVndWxhdG9yX3JlZ2lzdGVyIG9uIGFuIGFsd2F5cy1vbiBvciBib290LW9u
IHJlZ3VsYXRvciBjYXVzZWQKc2V0X21hY2hpbmVfY29uc3RyYWludHMgdG8gYmUgY2FsbGVkIHR3
aWNlLgoKVGhpcyBpbiB0dXJuIG1heSBpbml0aWFsaXplIHRoZSByZWd1bGF0b3IgdHdpY2UsIGxl
YWRpbmcgdG8gdm9sdGFnZQpnbGl0Y2hlcyB0aGF0IGFyZSB0aW1pbmctZGVwZW5kZW50LiBBIHNp
bXBsZSwgdW5yZWxhdGVkIGNvbmZpZ3VyYXRpb24KY2hhbmdlIG1heSBiZSBlbm91Z2ggdG8gaGlk
ZSB0aGlzIHByb2JsZW0sIG9ubHkgdG8gYmUgc3VyZmFjZWQgYnkKY2hhbmNlLgoKT25lIHN1Y2gg
ZXhhbXBsZSBpcyB0aGUgU0QtQ2FyZCB2b2x0YWdlIHJlZ3VsYXRvciBpbiBhIE5hbm9QSSBSNFMg
dGhhdAp3b3VsZCBub3QgaW5pdGlhbGl6ZSByZWxpYWJseSB1bmxlc3MgdGhlIHJlZ2lzdHJhdGlv
biBmbG93IHdhcyBqdXN0CmNvbXBsZXggZW5vdWdoIHRvIGFsbG93IHRoZSByZWd1bGF0b3IgdG8g
cHJvcGVybHkgcmVzZXQgYmV0d2VlbiBjYWxscy4KCkZpeCB0aGlzIGJ5IHJlLWFycmFuZ2luZyBy
ZWd1bGF0b3JfcmVnaXN0ZXIsIHRyeWluZyByZXNvbHZlIHRoZQpyZWd1bGF0b3IncyBzdXBwbHkg
ZWFybHkgZW5vdWdoIHRoYXQgc2V0X21hY2hpbmVfY29uc3RyYWludHMgZG9lcyBub3QKbmVlZCB0
byBiZSBjYWxsZWQgdHdpY2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29obHNjaHXMiHR0
ZXIgPGNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29tPgotLS0KIGRyaXZlcnMvcmVndWxhdG9yL2Nv
cmUuYyB8IDUyICsrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMgYi9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMKaW5k
ZXggZDgzNzNjYjA0ZjkuLmE1MDMzYzZiYTAxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3JlZ3VsYXRv
ci9jb3JlLmMKKysrIGIvZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jCkBAIC01NDk2LDcgKzU0OTYs
MzkgQEAgcmVndWxhdG9yX3JlZ2lzdGVyKGNvbnN0IHN0cnVjdCByZWd1bGF0b3JfZGVzYyAqcmVn
dWxhdG9yX2Rlc2MsCiAJQkxPQ0tJTkdfSU5JVF9OT1RJRklFUl9IRUFEKCZyZGV2LT5ub3RpZmll
cik7CiAJSU5JVF9ERUxBWUVEX1dPUksoJnJkZXYtPmRpc2FibGVfd29yaywgcmVndWxhdG9yX2Rp
c2FibGVfd29yayk7CiAKLQkvKiBwcmVmb3JtIGFueSByZWd1bGF0b3Igc3BlY2lmaWMgaW5pdCAq
LworCS8qIHNldCByZWd1bGF0b3IgY29uc3RyYWludHMgKi8KKwlpZiAoaW5pdF9kYXRhKQorCQly
ZGV2LT5jb25zdHJhaW50cyA9IGttZW1kdXAoJmluaXRfZGF0YS0+Y29uc3RyYWludHMsCisJCQkJ
CSAgICBzaXplb2YoKnJkZXYtPmNvbnN0cmFpbnRzKSwKKwkJCQkJICAgIEdGUF9LRVJORUwpOwor
CWVsc2UKKwkJcmRldi0+Y29uc3RyYWludHMgPSBremFsbG9jKHNpemVvZigqcmRldi0+Y29uc3Ry
YWludHMpLAorCQkJCQkgICAgR0ZQX0tFUk5FTCk7CisJaWYgKCFyZGV2LT5jb25zdHJhaW50cykg
eworCQlyZXQgPSAtRU5PTUVNOworCQlnb3RvIGNsZWFuOworCX0KKworCWlmIChpbml0X2RhdGEg
JiYgaW5pdF9kYXRhLT5zdXBwbHlfcmVndWxhdG9yKQorCQlyZGV2LT5zdXBwbHlfbmFtZSA9IGlu
aXRfZGF0YS0+c3VwcGx5X3JlZ3VsYXRvcjsKKwllbHNlIGlmIChyZWd1bGF0b3JfZGVzYy0+c3Vw
cGx5X25hbWUpCisJCXJkZXYtPnN1cHBseV9uYW1lID0gcmVndWxhdG9yX2Rlc2MtPnN1cHBseV9u
YW1lOworCisJaWYgKChyZGV2LT5zdXBwbHlfbmFtZSAmJiAhcmRldi0+c3VwcGx5KSAmJgorCQkJ
KHJkZXYtPmNvbnN0cmFpbnRzLT5hbHdheXNfb24gfHwKKwkJCSByZGV2LT5jb25zdHJhaW50cy0+
Ym9vdF9vbikpIHsKKwkJLyogVHJ5IHRvIHJlc29sdmUgdGhlIG5hbWUgb2YgdGhlIHN1cHBseWlu
ZyByZWd1bGF0b3IgaGVyZSBmaXJzdAorCQkgKiBzbyB3ZSBwcmV2ZW50IGRvdWJsZS1pbml0aWFs
aXppbmcgdGhlIHJlZ3VsYXRvciwgd2hpY2ggbWF5CisJCSAqIGNhdXNlIHRpbWluZy1zcGVjaWZp
YyB2b2x0YWdlIGJyb3dub3V0cy9nbGl0Y2hlcyB0aGF0IGFyZQorCQkgKiBoYXJkIHRvIGRlYnVn
LgorCQkgKi8KKwkJcmV0ID0gcmVndWxhdG9yX3Jlc29sdmVfc3VwcGx5KHJkZXYpOworCQlpZiAo
cmV0KQorCQkJcmRldl9kYmcocmRldiwgInVuYWJsZSB0byByZXNvbHZlIHN1cHBseSBlYXJseTog
JXBlXG4iLAorCQkJCQkgRVJSX1BUUihyZXQpKTsKKwl9CisKKwkvKiBwZXJmb3JtIGFueSByZWd1
bGF0b3Igc3BlY2lmaWMgaW5pdCAqLwogCWlmIChpbml0X2RhdGEgJiYgaW5pdF9kYXRhLT5yZWd1
bGF0b3JfaW5pdCkgewogCQlyZXQgPSBpbml0X2RhdGEtPnJlZ3VsYXRvcl9pbml0KHJkZXYtPnJl
Z19kYXRhKTsKIAkJaWYgKHJldCA8IDApCkBAIC01NTIyLDI0ICs1NTU0LDYgQEAgcmVndWxhdG9y
X3JlZ2lzdGVyKGNvbnN0IHN0cnVjdCByZWd1bGF0b3JfZGVzYyAqcmVndWxhdG9yX2Rlc2MsCiAJ
CSAgICAodW5zaWduZWQgbG9uZykgYXRvbWljX2luY19yZXR1cm4oJnJlZ3VsYXRvcl9ubykpOwog
CWRldl9zZXRfZHJ2ZGF0YSgmcmRldi0+ZGV2LCByZGV2KTsKIAotCS8qIHNldCByZWd1bGF0b3Ig
Y29uc3RyYWludHMgKi8KLQlpZiAoaW5pdF9kYXRhKQotCQlyZGV2LT5jb25zdHJhaW50cyA9IGtt
ZW1kdXAoJmluaXRfZGF0YS0+Y29uc3RyYWludHMsCi0JCQkJCSAgICBzaXplb2YoKnJkZXYtPmNv
bnN0cmFpbnRzKSwKLQkJCQkJICAgIEdGUF9LRVJORUwpOwotCWVsc2UKLQkJcmRldi0+Y29uc3Ry
YWludHMgPSBremFsbG9jKHNpemVvZigqcmRldi0+Y29uc3RyYWludHMpLAotCQkJCQkgICAgR0ZQ
X0tFUk5FTCk7Ci0JaWYgKCFyZGV2LT5jb25zdHJhaW50cykgewotCQlyZXQgPSAtRU5PTUVNOwot
CQlnb3RvIHdhc2g7Ci0JfQotCi0JaWYgKGluaXRfZGF0YSAmJiBpbml0X2RhdGEtPnN1cHBseV9y
ZWd1bGF0b3IpCi0JCXJkZXYtPnN1cHBseV9uYW1lID0gaW5pdF9kYXRhLT5zdXBwbHlfcmVndWxh
dG9yOwotCWVsc2UgaWYgKHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFtZSkKLQkJcmRldi0+c3Vw
cGx5X25hbWUgPSByZWd1bGF0b3JfZGVzYy0+c3VwcGx5X25hbWU7Ci0KIAlyZXQgPSBzZXRfbWFj
aGluZV9jb25zdHJhaW50cyhyZGV2KTsKIAlpZiAocmV0ID09IC1FUFJPQkVfREVGRVIpIHsKIAkJ
LyogUmVndWxhdG9yIG1pZ2h0IGJlIGluIGJ5cGFzcyBtb2RlIGFuZCBzbyBuZWVkcyBpdHMgc3Vw
cGx5Ci0tIAoyLjM2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
