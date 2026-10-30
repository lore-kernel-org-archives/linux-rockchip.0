Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F3D606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 07:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xvaSGSHs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=I3ko14Sl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=HVUzSJ4BEZQvm7ZixGhp4NVMpEOewWd1z8lGk0E1ktI=; b=xvaSGSHsyBeNUv3E95/Uj1DWzu
	Cf4FXu1scEIi68vS9gweP12OkP5h9LZIkN1LRPzPnojl8ZpQDKBuGCq0g0Zv9sVKP8CNm+OgPDHpV
	nFIH1YEu1LDBzIwB8QRjPPfMxU2YpEGoeMevw+2IdNEa/ii7GyRGhsY8FTyBlfF/VZPaqK+SWFK9X
	5z8K/duoyu2dgZP6hOYaVCyAwYrAAFzTNQRH3JfYhDu1kIVYlNbwTcP9oNAVL6jtxC/zOacaKbxF0
	jygbOV/Ln7qC0YyggMz+MP0KZ5vkRRhW7sMUv+y4zo3jouRhAe1lqNCfCjFXx/3mJU0+KRXDjwf0W
	AzwwTs1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMhAb-0000000B0Zt-19O0;
	Fri, 30 Oct 2026 07:37:01 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMhAX-0000000B0Wz-3ABP
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 07:36:59 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a5b2be99a8so1788215e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 00:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793345815; x=1793950615; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rMrhFGMaQbGuT+vysC+EnDo30wy5e48snLTrR+oGc/Y=;
        b=I3ko14SltD8IVjvkMItYR9DgfTJJv81e26SA191duZP6duZzWPOJ4Po1JSNGtF7FYi
         Oxebs6V6AXAkWuP8fPfQuqFX6SMpXfnEGOg+dvmq6ZLh6lC6wMg5ZyPFj5wbV5Qyp9ww
         Vg+43ZYmHSmw2kUTBl3LRd/te0Ao3nKMP8JQKrKl9ofzvobQyasKSnKkP9YNtcq8ZVBj
         GPDMfNzjKpO/60phGDSOVpmP1L29nT+Wd+wkcxi7JZ+FD3kD+Wpj6SDiKyzieXw+uxSv
         J9r9ipmlLAhSkvQi4bsIs4mq6GO5DxU7G4GjPUSsvmAweRhvwTUdrKfcjTyMocdOQzNv
         /g5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793345815; x=1793950615;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rMrhFGMaQbGuT+vysC+EnDo30wy5e48snLTrR+oGc/Y=;
        b=cQJHw4HN/agqCgzM06EnJbMWqJCYzLJCjizaqrVkoIsiLreOad5gP0M/GFSLUtboW+
         p+uE4BmVVP5+u5s9Im52JrnQ9t1fuvFdzXPGUfqlHm5sd6ToIaruMCwDTdKZRBaKN6he
         heViGf3Rn6B58jiW0vUIqDuTH40cwtta8KBsuAncAArnyyuo+WppbdV3fQbdCBVm6sF2
         BhuW5qnB4HNq8sS0X+C3ojerqlGH8hHjDwZhDqci3f4fxgYaCFEGO8X/Nm8DVOgip3cJ
         sgIY1mcYxFwQaYy94vKNby13aT8emgnnyqM+G90djWMd4Y3RHMrMix+DnDHaRNjxQcou
         jZig==
X-Forwarded-Encrypted: i=1; AKwUvBwkLy8My0SQeq3QMzUG6TWoyZycZdKpF1g7JLdv+3dLPcGsGcB8mqSR/cmGowYsP2RoiZPTjEgYYqSrx6wr4Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYJzvV44+dxI9bvmPh5JVn7BaIfvZHdOdFzmAhAZjaB5CjdlCZCE
	PEqCrzSK8FHo0an/+DUf8iSGAIp5raL8cGPpTiZGeVOYE9mYb/rd4Vlv
X-Gm-Gg: AYBFou3sApF0qZkc9/MJ70zI7VQXCU7Kl9LDYu7kq5TrDlONBB+WhyKo36MYGGrF8vt
	8SyNuiyvYryUEQ+JNdetP/l5puXk5kGi6nluX4au3KqRC74dX7+R97qKHBFqJAeB4w+pW9HiM0R
	fra32TsNadN89DM509qPb0rZG/dR7IZL6WuoqAaii44UaN4zSdebyraywolgYpbG3sYgkRfkhdO
	7nrNAHiH9EGIOZKSAvu5xfqRXvezuDBLGFZkh/kuFAQFqCahc7B2c/vrS54+tRGyVx2gcsE0vQa
	BN+I3De7Yb4VvlyHA/Zth9S/uR3EeiG/X1ycpuJyj+R1VKkEEO4dtWSBAK7XB8m7b0+QKMPW73X
	N0Dsqhq/lvDx8NzYjE+u/1gzvX0bHWZJPwrwam4xHfseW0D6htxg0RGOzsTDY2gPGCyUJhCkYAs
	8lP5PLoRVH0kiVp3HjP9ppFKo+KF3TJQYB2KKIfPPo2PmyBNSuUL6hJVBbHPheX/ttTi3esiNpH
	TqIhgeo9S/XJJ2w9qW+3h0jxtB7fvE3tcynda0xYMdiA0qAkoJCEmdQuMnWmAlBCV3vroa5NOB2
	yspx6T8sZvilL/4kqWTzriBE43LiAwQ75wA=
X-Received: by 2002:a05:600c:19d1:b0:4a2:677:ad8e with SMTP id 5b1f17b1804b1-4ac1970b9f7mr28877715e9.34.1793345815331;
        Fri, 30 Oct 2026 00:36:55 -0700 (PDT)
Received: from thinkpad.hgw.local ([159.146.110.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b80306sm1884497f8f.33.2026.10.30.00.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 00:36:54 -0700 (PDT)
From: =?UTF-8?q?Yal=C3=A7=C4=B1n=20Can?= <ylcncn@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: rockchip: rk3066: set soc_remap before starting secondary cores
Date: Fri, 30 Oct 2026 10:36:47 +0300
Message-ID: <20261030073647.164416-1-ylcncn@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_003657_848181_FDA036BF 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -0.1 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	HK_RANDOM_FROM,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QSBDb3J0ZXgtQTkgY29yZSBvbiB0aGUgcmszMDY2IHN0YXJ0cyBhdCBhZGRyZXNzIDAgd2hlbiBp
dCBpcyBwb3dlcmVkIHVwLgpUaGUgU01QIGNvZGUgY29waWVzIGEgdHJhbXBvbGluZSB0byB0aGUg
c3RhcnQgb2YgdGhlIGludGVybmFsIHNyYW0gYW5kCnJlbGllcyBvbiBHUkZfU09DX0NPTjAgc29j
X3JlbWFwIChiaXQgMTIpIG1hcHBpbmcgdGhlIHNyYW0gYXQgYWRkcmVzcyAwLgpUaGUgdmVuZG9y
IGxvYWRlciBzZXRzIHRoYXQgYml0IGJlZm9yZSBzdGFydGluZyB0aGUga2VybmVsLCBidXQgYSBi
b290CmxvYWRlciBzdGFydGVkIGRpcmVjdGx5IGJ5IHRoZSBib290cm9tIGxlYXZlcyBpdCBjbGVh
cmVkLiBUaGUgY29yZSB0aGVuCnJ1bnMgdGhlIGJvb3Ryb20gaW5zdGVhZCwgd2hpY2ggcGFya3Mg
aXQgYW5kIGFsc28gd3JpdGVzIGludG8gdGhlIHN0YXJ0IG9mCnRoZSBzcmFtLCBzbyB0aGUgdHJh
bXBvbGluZSdzIHRhcmdldCB3b3JkIGlzIG92ZXJ3cml0dGVuIGFzIHdlbGwsIGFuZCB0aGUKYm9v
dCBsb2dzICJDUFUxOiBmYWlsZWQgdG8gY29tZSBvbmxpbmUiLgoKU2V0IHNvY19yZW1hcCBhZnRl
ciB0aGUgc2Vjb25kYXJ5IGNvcmVzIGhhdmUgYmVlbiBwb3dlcmVkIGRvd24gYW5kIGJlZm9yZQp0
aGUgdHJhbXBvbGluZSBpcyBjb3BpZWQuIFRoZSByazMxODggc2hhcmVzIHRoZXNlIHNtcCBvcGVy
YXRpb25zOyBpdHMgZ3JmCmhhcyBhIGRpZmZlcmVudCBjb21wYXRpYmxlIGFuZCBpcyBsZWZ0IGFs
b25lLgoKVGVzdGVkIG9uIGFuIFJLMzA2NmEgYm9hcmQgKE1LODA4Qikgd2l0aCBVLUJvb3Qgc3Rh
cnRlZCBmcm9tIHRoZSBOQU5EIElECmJsb2NrcyBieSB0aGUgYm9vdHJvbTogYmVmb3JlLCBDUFUx
IG5ldmVyIGNhbWUgb25saW5lIChHUkZfU09DX0NPTjAgYml0IDEyCmNsZWFyLCBzcmFtKzQgcmVh
ZCAweDAwMDAwMDAxIGluc3RlYWQgb2YgdGhlIHBoeXNpY2FsIGFkZHJlc3Mgb2YKc2Vjb25kYXJ5
X3N0YXJ0dXApOyB3aXRoIHRoaXMgcGF0Y2ggYm90aCBjb3JlcyBjb21lIHVwIGF0IGJvb3QsIHRo
cmVlCm9mZmxpbmUvb25saW5lIGN5Y2xlcyBvZiBjcHUxIHdvcmssIGFuZCB0aGUgYm9hcmQgcmVz
dGFydHMgbm9ybWFsbHkgYWZ0ZXIKYSByZWJvb3QgYW5kIGFmdGVyIGEgZm9yY2VkIHBhbmljLiBC
b290aW5nIHRocm91Z2ggdGhlIHZlbmRvciBsb2FkZXIsIHdoaWNoCmFscmVhZHkgc2V0cyB0aGUg
Yml0LCBpcyB1bmNoYW5nZWQuIE5vdCB0ZXN0ZWQgb24gcmszMTg4LgoKRml4ZXM6IGE3YTJiMzEx
OGI0MSAoIkFSTTogcm9ja2NoaXA6IGFkZCBzbXAgYnJpbmd1cCBjb2RlIikKQXNzaXN0ZWQtYnk6
IENsYXVkZTpjbGF1ZGUtb3B1cy01LTUKU2lnbmVkLW9mZi1ieTogWWFsw6fEsW4gQ2FuIDx5bGNu
Y25AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jIHwgMjUg
KysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYyBiL2FyY2gv
YXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCmluZGV4IGY2NTlkODk0Yi4uMmVkZDBmYTQ2IDEw
MDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYworKysgYi9hcmNoL2Fy
bS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYwpAQCAtMTk4LDYgKzE5OCwyOSBAQCBzdGF0aWMgaW50
IF9faW5pdCByb2NrY2hpcF9zbXBfcHJlcGFyZV9zcmFtKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9k
ZSkKIAlyZXR1cm4gMDsKIH0KIAorI2RlZmluZSBSSzMwNjZfR1JGX1NPQ19DT04wCTB4MTUwCisj
ZGVmaW5lIFJLMzA2Nl9TT0NfUkVNQVAJQklUKDEyKQorCisvKgorICogQSBzdGFydGluZyBjb3Jl
IGZldGNoZXMgaXRzIGZpcnN0IGluc3RydWN0aW9uIGZyb20gYWRkcmVzcyAwLiBPbmx5IHdpdGgK
KyAqIHNvY19yZW1hcCBzZXQgaXMgdGhhdCB0aGUgb24tY2hpcCBzcmFtIGhvbGRpbmcgdGhlIHRy
YW1wb2xpbmU7IG90aGVyd2lzZSBpdAorICogaXMgdGhlIGJvb3Ryb20sIHdoaWNoIHBhcmtzIHRo
ZSBjb3JlIGFuZCB3cml0ZXMgaW50byB0aGUgc3RhcnQgb2YgdGhlIHNyYW0uCisgKiBUaGUgdmVu
ZG9yIGxvYWRlciBzZXRzIHRoZSByZW1hcCwgb3RoZXIgbG9hZGVycyAoZS5nLiBVLUJvb3Qgc3Rh
cnRlZCBmcm9tCisgKiB0aGUgYm9vdHJvbSkgbGVhdmUgaXQgY2xlYXJlZC4gVGhlIHNlY29uZGFy
eSBjb3JlcyBhcmUgcG93ZXJlZCBkb3duIGhlcmUuCisgKiBPbmx5IHRoZSByazMwNjYgaXMgaGFu
ZGxlZDsgb3RoZXIgc29jcyB1c2luZyB0aGVzZSBzbXAgb3BzIGFyZSBsZWZ0IGFsb25lLgorICov
CitzdGF0aWMgdm9pZCBfX2luaXQgcm9ja2NoaXBfc21wX3JlbWFwX3NyYW0odm9pZCkKK3sKKwlz
dHJ1Y3QgcmVnbWFwICpncmY7CisKKwlncmYgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9jb21w
YXRpYmxlKCJyb2NrY2hpcCxyazMwNjYtZ3JmIik7CisJaWYgKElTX0VSUihncmYpKQorCQlyZXR1
cm47CisKKwlyZWdtYXBfd3JpdGUoZ3JmLCBSSzMwNjZfR1JGX1NPQ19DT04wLAorCQkgICAgIFJL
MzA2Nl9TT0NfUkVNQVAgfCAoUkszMDY2X1NPQ19SRU1BUCA8PCAxNikpOworfQorCiBzdGF0aWMg
Y29uc3Qgc3RydWN0IHJlZ21hcF9jb25maWcgcm9ja2NoaXBfcG11X3JlZ21hcF9jb25maWcgPSB7
CiAJLm5hbWUgPSAicm9ja2NoaXAtcG11IiwKIAkucmVnX2JpdHMgPSAzMiwKQEAgLTMyMSw2ICsz
NDQsOCBAQCBzdGF0aWMgdm9pZCBfX2luaXQgcm9ja2NoaXBfc21wX3ByZXBhcmVfY3B1cyh1bnNp
Z25lZCBpbnQgbWF4X2NwdXMpCiAJCXBtdV9zZXRfcG93ZXJfZG9tYWluKDAgKyBpLCBmYWxzZSk7
CiAKIAlpZiAocmVhZF9jcHVpZF9wYXJ0KCkgPT0gQVJNX0NQVV9QQVJUX0NPUlRFWF9BOSkgewor
CQlyb2NrY2hpcF9zbXBfcmVtYXBfc3JhbSgpOworCiAJCWlmIChyb2NrY2hpcF9zbXBfcHJlcGFy
ZV9zcmFtKG5vZGUpKSB7CiAJCQlvZl9ub2RlX3B1dChub2RlKTsKIAkJCXJldHVybjsKLS0gCjIu
NDcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
