Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4772C54731
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 17:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ixBPZmAKONV9bJpTFofc/6fvQaTqPTkhkrYgBMRipo=; b=JiEksXrKxgwj8O
	WC6XjN42s8K+l4KEiG0dCulatTru8B1zEhfttD6LZrpHuzZZoquJX2XCre/TWW2TqmaBD4aYjfP/W
	FynDMZyjxFsFCujlharbbUM1pphFIQdpcKnC3x1WmoofcFfYMkpfByfhmlLI4ArI7N4Wgoe6EPcb2
	+m6Pge2ZykgIK03mh/Rvxc89PTIFQiBErmbGV35YBYBLbrgvru9hXOQ9DfH9eeJMdFD5Tx44Im93+
	dUAnOrg/0Dt/JSpXXH6ixWESLr3aZYPJIey63pl0w91u5jNNsZgIovseSW5yNv2HwHD+w2dcSsZkr
	mMm/vf0agFs2anshiq/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj028-0000000CIdI-1HPW;
	Tue, 27 Aug 2024 17:31:08 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sizjB-0000000CF5F-1egW
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 17:11:44 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-714302e7285so4707264b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Aug 2024 10:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724778692; x=1725383492; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IK8SEiBum8hunhZQDt0oY44SDt3A4Q0KuG3fIX/3rsg=;
        b=Ma5HZJlUwItgOpqsu5riUfOMl+IQ/3kNKfsTi3brhP7xDeAyYF79ou08Ewigk955Qv
         p+JDBaw04TmsBKuFovMFKyZMeqignlpe9lkwO1shcGoeSYmHigDaT1+s+3yTLtKlMjHm
         ICcs2tK/INDo5oS8Eq3uDjPO70kIY+XyOZ9B0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724778692; x=1725383492;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IK8SEiBum8hunhZQDt0oY44SDt3A4Q0KuG3fIX/3rsg=;
        b=ZNJbRlFM3SKXVfqDbtLSABy5EECCCqTFZgnMptdLXmNNmPXEy5KyiILA8DXSahVG2N
         TA5Rx0FVbv89FLoW63AF1cklbTVuYDCVOE5/kYIDBmhmt7Yq1gsQbE17o5plhvFKwL7W
         8P9dsnjNpUSe4uAOZNvxvqELHaAsCf40PyMoYR135cB3My8VORy2EmbsEIx8cDtDgq/V
         KTnry8rj5hdq9+z6NpyP0TCZgir8EjPU5Ep4T9CCKmD6Nebnm1OhB6xhFYztk4FowFp7
         LO3O8yrgM3VWmdfK6puGFDU/DM7f8btrfZA35UK+U2t5BWrAWEF8bS4J/ywWBHZnjzVR
         prvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaruiUf4j6ZoEgZdaAwMgLrRfpQbNvqqyR9qoHXzratS1bxt/piLsKgIdvp7eYGFro7wO+uwtiRrHd5kX7YA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzegMv/p+vI8jNs7sG+P+Vowt4Qy4vxWZikG54hYMEIi8cOcfPj
	xUOsKtcgPpFIOeygk/WkVgPL6MUDQagqjSGS3q+BdywvA+XunMuBFnQDau+iVg==
X-Google-Smtp-Source: AGHT+IG4YPDdFUYtuMPkwkokpmaThrJJFJG1W58Oml09/8xPYFTHvK1DWSTRwqLa9pqAVl8Dy0b24w==
X-Received: by 2002:a05:6a00:918b:b0:70d:2b95:d9cd with SMTP id d2e1a72fcca58-714457d35c7mr14736149b3a.16.1724778692187;
        Tue, 27 Aug 2024 10:11:32 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:9f27:3f59:914a:3d90])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-71434330425sm8813341b3a.190.2024.08.27.10.11.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 10:11:31 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Mark Brown <broonie@kernel.org>
Cc: Jon Lin <jon.lin@rock-chips.com>,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-spi@vger.kernel.org,
	shengfei Xu <xsf@rock-chips.com>
Subject: [PATCH v3] spi: rockchip: Resolve unbalanced runtime PM / system PM handling
Date: Tue, 27 Aug 2024 10:11:16 -0700
Message-ID: <20240827171126.1115748-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_101133_485294_2B9FC4C4 
X-CRM114-Status: GOOD (  17.42  )
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

Q29tbWl0IGU4ODI1NzVlZmM3NyAoInNwaTogcm9ja2NoaXA6IFN1c3BlbmQgYW5kIHJlc3VtZSB0
aGUgYnVzIGR1cmluZwpOT0lSUV9TWVNURU1fU0xFRVBfUE0gb3BzIikgc3RvcHBlZCByZXNwZWN0
aW5nIHJ1bnRpbWUgUE0gc3RhdHVzIGFuZApzaW1wbHkgZGlzYWJsZWQgY2xvY2tzIHVuY29uZGl0
aW9uYWxseSB3aGVuIHN1c3BlbmRpbmcgdGhlIHN5c3RlbS4gVGhpcwpjYXVzZXMgcHJvYmxlbXMg
d2hlbiB0aGUgZGV2aWNlIGlzIGFscmVhZHkgcnVudGltZSBzdXNwZW5kZWQgd2hlbiB3ZSBnbwp0
byBzbGVlcCAtLSBpbiB3aGljaCBjYXNlIHdlIGRvdWJsZS1kaXNhYmxlIGNsb2NrcyBhbmQgcHJv
ZHVjZSBhCldBUk5pbmcuCgpTd2l0Y2ggYmFjayB0byBwbV9ydW50aW1lX2ZvcmNlX3tzdXNwZW5k
LHJlc3VtZX0oKSwgYmVjYXVzZSB0aGF0IHN0aWxsCnNlZW1zIGxpa2UgdGhlIHJpZ2h0IHRoaW5n
IHRvIGRvLCBhbmQgdGhlIGFmb3JlbWVudGlvbmVkIGNvbW1pdCBtYWtlcyBubwpleHBsYW5hdGlv
biB3aHkgaXQgc3RvcHBlZCB1c2luZyBpdC4KCkFsc28sIHJlZmFjdG9yIHNvbWUgb2YgdGhlIHJl
c3VtZSgpIGVycm9yIGhhbmRsaW5nLCBiZWNhdXNlIGl0J3Mgbm90CmFjdHVhbGx5IGEgZ29vZCBp
ZGVhIHRvIHJlLWRpc2FibGUgY2xvY2tzIG9uIGZhaWx1cmUuCgpGaXhlczogZTg4MjU3NWVmYzc3
ICgic3BpOiByb2NrY2hpcDogU3VzcGVuZCBhbmQgcmVzdW1lIHRoZSBidXMgZHVyaW5nIE5PSVJR
X1NZU1RFTV9TTEVFUF9QTSBvcHMiKQpDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ClJlcG9y
dGVkLWJ5OiAiT25kxZllaiBKaXJtYW4iIDxtZWdpQHhmZi5jej4KQ2xvc2VzOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9sa21sLzIwMjIwNjIxMTU0MjE4LnNhdTU0amVpajRidW5mNTZAY29yZS8K
U2lnbmVkLW9mZi1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+Ci0t
LQoKQ2hhbmdlcyBpbiB2MzoKIC0gYWN0dWFsbHkgQ0MgdGhlIGFwcHJvcHJpYXRlIGxpc3RzIChz
b3JyeSwgSSBhY2NpZGVudGFsbHkgZHJvcHBlZCB0aGVtCiAgIG9uIHYyKQoKQ2hhbmdlcyBpbiB2
MjoKIC0gZml4IHVudXNlZCAncnMnIHdhcm5pbmcKCiBkcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAu
YyB8IDIzICsrKysrKystLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9zcGktcm9j
a2NoaXAuYyBiL2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5jCmluZGV4IGUxZWNkOTZjNzg1OC4u
MGJiMzNjNDNiMWI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYworKysg
Yi9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYwpAQCAtOTQ1LDE0ICs5NDUsMTYgQEAgc3RhdGlj
IGludCByb2NrY2hpcF9zcGlfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCiB7CiAJaW50IHJl
dDsKIAlzdHJ1Y3Qgc3BpX2NvbnRyb2xsZXIgKmN0bHIgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsK
LQlzdHJ1Y3Qgcm9ja2NoaXBfc3BpICpycyA9IHNwaV9jb250cm9sbGVyX2dldF9kZXZkYXRhKGN0
bHIpOwogCiAJcmV0ID0gc3BpX2NvbnRyb2xsZXJfc3VzcGVuZChjdGxyKTsKIAlpZiAocmV0IDwg
MCkKIAkJcmV0dXJuIHJldDsKIAotCWNsa19kaXNhYmxlX3VucHJlcGFyZShycy0+c3BpY2xrKTsK
LQljbGtfZGlzYWJsZV91bnByZXBhcmUocnMtPmFwYl9wY2xrKTsKKwlyZXQgPSBwbV9ydW50aW1l
X2ZvcmNlX3N1c3BlbmQoZGV2KTsKKwlpZiAocmV0IDwgMCkgeworCQlzcGlfY29udHJvbGxlcl9y
ZXN1bWUoY3Rscik7CisJCXJldHVybiByZXQ7CisJfQogCiAJcGluY3RybF9wbV9zZWxlY3Rfc2xl
ZXBfc3RhdGUoZGV2KTsKIApAQCAtOTYzLDI1ICs5NjUsMTQgQEAgc3RhdGljIGludCByb2NrY2hp
cF9zcGlfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKIHsKIAlpbnQgcmV0OwogCXN0cnVjdCBz
cGlfY29udHJvbGxlciAqY3RsciA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwotCXN0cnVjdCByb2Nr
Y2hpcF9zcGkgKnJzID0gc3BpX2NvbnRyb2xsZXJfZ2V0X2RldmRhdGEoY3Rscik7CiAKIAlwaW5j
dHJsX3BtX3NlbGVjdF9kZWZhdWx0X3N0YXRlKGRldik7CiAKLQlyZXQgPSBjbGtfcHJlcGFyZV9l
bmFibGUocnMtPmFwYl9wY2xrKTsKKwlyZXQgPSBwbV9ydW50aW1lX2ZvcmNlX3Jlc3VtZShkZXYp
OwogCWlmIChyZXQgPCAwKQogCQlyZXR1cm4gcmV0OwogCi0JcmV0ID0gY2xrX3ByZXBhcmVfZW5h
YmxlKHJzLT5zcGljbGspOwotCWlmIChyZXQgPCAwKQotCQljbGtfZGlzYWJsZV91bnByZXBhcmUo
cnMtPmFwYl9wY2xrKTsKLQotCXJldCA9IHNwaV9jb250cm9sbGVyX3Jlc3VtZShjdGxyKTsKLQlp
ZiAocmV0IDwgMCkgewotCQljbGtfZGlzYWJsZV91bnByZXBhcmUocnMtPnNwaWNsayk7Ci0JCWNs
a19kaXNhYmxlX3VucHJlcGFyZShycy0+YXBiX3BjbGspOwotCX0KLQotCXJldHVybiAwOworCXJl
dHVybiBzcGlfY29udHJvbGxlcl9yZXN1bWUoY3Rscik7CiB9CiAjZW5kaWYgLyogQ09ORklHX1BN
X1NMRUVQICovCiAKLS0gCjIuNDYuMC4yOTUuZzNiOWVhOGEzOGEtZ29vZwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
