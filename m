Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7472C5321E
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 21:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v9/J9xKhFFZ8yKlwpdhc7w5LvSkj/QxJebVL2cqIwO4=; b=UCSTDi6nc2LFau
	f+BV0krhaMzwckPFwszD6tA4DVLQH5A0d2k1Q4NeqGN+OLSvi/ihf+wXCje1usljHRqB9wif47jvl
	BChiYJGF2/Q0mZPl9NJso0sODJDW9Szb8zYoPMhyrdIDOVijc9/wIUlP5/edUnYV6cititzdqb11u
	AVCnmAJZ4JcmQlLUmpoMQSKfkivuZLc/zwQinFxJZTCzY9jB3Ff8IjC6shtbYp5pljfl6eT1cmwgq
	Aha/98Q4fFl2wmnYAw9SD9YHhnARjh4o+zNVOGYMcb9q8Fw+VfRCMOOIzDTG8sYqQcs81x2pBL+NT
	aqY75YNaDCYMHPp9i+wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shc4C-00000000kMx-2TKH;
	Fri, 23 Aug 2024 21:43:32 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shc3Q-00000000kHB-0LOU
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 21:42:46 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1fec34f94abso24238095ad.2
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 14:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724449363; x=1725054163; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AjvArJdA06PbNXPgnOry3Qq7eKu1y9KpKSsxjlMv9Wc=;
        b=CVl4vu0iro62x8cvlhPUrvtTS+xSegd3RbF+Tp8KbttEi2eonMWigfcMA/dHOh1byY
         4TLgRT25iNZrqWcCu88Q0DWR70yamz5mOlPUmD5m147NORfIDaKmOead9cVoig+EUsvb
         7v2QGT9Fik4aNvvJhJ6fwctfklxOSD+0rTf68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724449363; x=1725054163;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AjvArJdA06PbNXPgnOry3Qq7eKu1y9KpKSsxjlMv9Wc=;
        b=PiJE7Wg5gHxpF4KzKnP05nQyoxzTFAKWujvv7azVXA6Upy+NFXx+JeNpFDVNdI7ylc
         bpI5k20AgxBp2poOygVS5QSS1yybHACIY8fuoXh0LIq9mSDhYzikJhSXywOcL+S9+XNu
         wuHL/HwRo8MxflLl6URWQwOgd59dk5usRFmL3cL2Byg1lUL837xH5Yx1VUZmjD9f//Ux
         //4MHKH2VduKDQnXJ/ONd732ifw8kjKBs2nWcLV/hLkIjlrP/rA4aBrLLsRSbu7kxlrm
         MF6/0Xrx0e0aU0IEQvE3V/MTTLWS9z3eFScr90+vLVf9jfSmHx9FrI5iWadUKGM90mMX
         xYUg==
X-Forwarded-Encrypted: i=1; AJvYcCXbFl4nCzv38z8iTmB5aA4A7dpxgmXsYu6W8xUCVDuTSZdG+r6okPH+hPcqqtBAySKruGyB5i2YnFEZasoN7g==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywe+OyfEkSf43BlE+1K7lENYj6Ot5XTK3pOfHtYS23XJQhKbfpk
	GaiTgFWb3ATH/OLt/q4nGeuK3j2gFqP5fZvUuS9tZPx4wslxfIoGiqqgrjrGnoNqE8/tPm0o6Nw
	=
X-Google-Smtp-Source: AGHT+IGx6tc8HURRUBmfNKOOVhPbKyAJLPo58Lxm+iRK79rRI6Fo2cVzD+Gs5a92IWu63jXL+kWA/Q==
X-Received: by 2002:a17:903:22c1:b0:1fb:7c7f:6458 with SMTP id d9443c01a7336-2039e4b4bcemr38350745ad.32.1724449363238;
        Fri, 23 Aug 2024 14:42:43 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:9d43:7af7:9970:8219])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-2038560975csm32500335ad.194.2024.08.23.14.42.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 14:42:42 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Mark Brown <broonie@kernel.org>
Cc: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Jon Lin <jon.lin@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-spi@vger.kernel.org,
	shengfei Xu <xsf@rock-chips.com>
Subject: [PATCH] spi: rockchip: Resolve unbalanced runtime PM / system PM handling
Date: Fri, 23 Aug 2024 14:41:56 -0700
Message-ID: <20240823214235.1718769-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_144244_162949_C94DBA08 
X-CRM114-Status: GOOD (  16.51  )
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
LQoKIGRyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5jIHwgMjEgKysrKysrKy0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYyBiL2RyaXZlcnMvc3BpL3NwaS1yb2Nr
Y2hpcC5jCmluZGV4IGUxZWNkOTZjNzg1OC4uZjMwYWY0MzE2YjhiIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3NwaS9zcGktcm9ja2NoaXAuYworKysgYi9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYwpA
QCAtOTUxLDggKzk1MSwxMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3NwaV9zdXNwZW5kKHN0cnVj
dCBkZXZpY2UgKmRldikKIAlpZiAocmV0IDwgMCkKIAkJcmV0dXJuIHJldDsKIAotCWNsa19kaXNh
YmxlX3VucHJlcGFyZShycy0+c3BpY2xrKTsKLQljbGtfZGlzYWJsZV91bnByZXBhcmUocnMtPmFw
Yl9wY2xrKTsKKwlyZXQgPSBwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQoZGV2KTsKKwlpZiAocmV0
IDwgMCkgeworCQlzcGlfY29udHJvbGxlcl9yZXN1bWUoY3Rscik7CisJCXJldHVybiByZXQ7CisJ
fQogCiAJcGluY3RybF9wbV9zZWxlY3Rfc2xlZXBfc3RhdGUoZGV2KTsKIApAQCAtOTY3LDIxICs5
NzAsMTEgQEAgc3RhdGljIGludCByb2NrY2hpcF9zcGlfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRl
dikKIAogCXBpbmN0cmxfcG1fc2VsZWN0X2RlZmF1bHRfc3RhdGUoZGV2KTsKIAotCXJldCA9IGNs
a19wcmVwYXJlX2VuYWJsZShycy0+YXBiX3BjbGspOworCXJldCA9IHBtX3J1bnRpbWVfZm9yY2Vf
cmVzdW1lKGRldik7CiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKLQlyZXQgPSBjbGtf
cHJlcGFyZV9lbmFibGUocnMtPnNwaWNsayk7Ci0JaWYgKHJldCA8IDApCi0JCWNsa19kaXNhYmxl
X3VucHJlcGFyZShycy0+YXBiX3BjbGspOwotCi0JcmV0ID0gc3BpX2NvbnRyb2xsZXJfcmVzdW1l
KGN0bHIpOwotCWlmIChyZXQgPCAwKSB7Ci0JCWNsa19kaXNhYmxlX3VucHJlcGFyZShycy0+c3Bp
Y2xrKTsKLQkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJzLT5hcGJfcGNsayk7Ci0JfQotCi0JcmV0
dXJuIDA7CisJcmV0dXJuIHNwaV9jb250cm9sbGVyX3Jlc3VtZShjdGxyKTsKIH0KICNlbmRpZiAv
KiBDT05GSUdfUE1fU0xFRVAgKi8KIAotLSAKMi40Ni4wLjI5NS5nM2I5ZWE4YTM4YS1nb29nCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
