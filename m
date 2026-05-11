Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B430ECD37BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 18:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZw6kyaWzTzlWTFXKDF6T782okOFCPB2ALw0GmwCYgE=; b=EczK3Pypbm4NfH
	LFni2hG+4ZRUAMhVLyhMyhBJdsXmpqH39KldM7NzeTqeiBOIr2DQrJi4R2X+uqgOEtlTder71afdR
	QyvjThziAuSTX8nrKujCXU+Yc2xnq5OT/5VjFvsimnVGh44aljkANRvQjq8o7IcOH6nBX5N+9vF2O
	EceEHCgyD1p6FPaNq84/emTfBRYf7MJRb9u+8OFJnTHpONZefq1zQhiRNRbbXK5HLhRO5bej4ivlI
	vxDczOTlTBgFHmcBWcVok1qpvFr0ek+5uLs5no+GupCBJC8or668tWZr+XjCDbF1MmTjOt906waE8
	36vaP2X9a3p0KLbqTDXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVG3-0000000EU2A-2mSd;
	Mon, 11 May 2026 18:21:35 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVFu-0000000ETr1-0fWj;
	Mon, 11 May 2026 18:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778523683;
	bh=L7rMVkvvxJbzvZ5JGWq6mRL5pKl06LbYIIuk0BWekVM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kvR0t4zYIEP2N2j0KTBid0A4RXag9H79L9POxawz+t3RB1+e90JmLePPbzFTNNMAx
	 4W3y6cyFy51ZzShbRMywfo0gTNloaNHK8c20j8hh69pOmv/mjzghxjNpekkOptrJWF
	 3sKtRg8dsETXXkIznUdrtMbemnRei5eKcpzOWxZFUlZIQUsPMFp2GWMwN9WOXMiy18
	 Vs8biu3OoJ3RnMd/wrKS4mNPb0Jnl5ROv1AJAS4e9n5MrQmcw7lKnVLHzXHF7oM7Id
	 xM2Lko5+d6b9V7CP9vbkxENNqiLgJCxos1fQ89/v+XfEioc9DugxpCXa7FAwWRIHky
	 wxHObjK500NPA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 045A117E1537;
	Mon, 11 May 2026 20:21:22 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 11 May 2026 21:21:17 +0300
Subject: [PATCH v2 3/6] phy: rockchip: samsung-hdptx: Drop TMDS rate setup
 workaround
MIME-Version: 1.0
Message-Id: <20260511-hdptx-clk-fixes-v2-3-664e41379cab@collabora.com>
References: <20260511-hdptx-clk-fixes-v2-0-664e41379cab@collabora.com>
In-Reply-To: <20260511-hdptx-clk-fixes-v2-0-664e41379cab@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_112126_366646_9A404930 
X-CRM114-Status: GOOD (  11.91  )
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

U2luY2UgY29tbWl0IGJhOWMyZmUxOGMxNyAoImRybS9yb2NrY2hpcDogZHdfaGRtaV9xcDogU3dp
dGNoIHRvCnBoeV9jb25maWd1cmUoKSIpIHRoZSBUTURTIHJhdGUgc2V0dXAgZG9lc24ndCByZWx5
IGFueW1vcmUgb24gdGhlCnVuY29udmVudGlvbmFsIHVzYWdlIG9mIHRoZSBidXMgd2lkdGgsIGlu
c3RlYWQgaXQgaXMgbWFuYWdlZCBleGNsdXNpdmVseQp0aHJvdWdoIHRoZSBIRE1JIFBIWSBjb25m
aWd1cmF0aW9uIEFQSS4KCkRyb3AgdGhlIG5vdyBvYnNvbGV0ZSB3b3JrYXJvdW5kIHRvIHJldHJp
ZXZlIHRoZSBUTURTIGNoYXJhY3RlciByYXRlIHZpYQpwaHlfZ2V0X2J1c193aWR0aCgpIGR1cmlu
ZyBwb3dlcl9vbigpLgoKV2hpbGUgYXQgaXQsIGdldCByaWQgb2YgdGhlIGV4dHJhIGNhbGwgdG8g
cmtfaGRwdHhfcGh5X2NvbnN1bWVyX3B1dCgpIGJ5Cm1vdmluZyB0aGUgc3RhdGVtZW50IGF0IHRo
ZSBlbmQgb2YgdGhlIGZ1bmN0aW9uLgoKVGVzdGVkLWJ5OiBUaG9tYXMgTmllZGVycHLDvG0gPGR1
Yml0b0BvbmxpbmUuZGU+ClRlc3RlZC1ieTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+
ClNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNv
bGxhYm9yYS5jb20+Ci0tLQogZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1
bmctaGRwdHguYyB8IDI2ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwppbmRleCAxMmMyNTlkOTU0NGMuLmI1
MzU0YTI0YjZlYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXNhbXN1bmctaGRwdHguYworKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
c2Ftc3VuZy1oZHB0eC5jCkBAIC0xNjYwLDIyICsxNjYwLDYgQEAgc3RhdGljIGludCBya19oZHB0
eF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQogCWVudW0gcGh5X21vZGUgbW9kZSA9IHBo
eV9nZXRfbW9kZShwaHkpOwogCWludCByZXQsIGxhbmU7CiAKLQlpZiAobW9kZSAhPSBQSFlfTU9E
RV9EUCkgewotCQlpZiAoIWhkcHR4LT5oZG1pX2NmZy5yYXRlICYmIGhkcHR4LT5oZG1pX2NmZy5t
b2RlICE9IFBIWV9IRE1JX01PREVfRlJMKSB7Ci0JCQkvKgotCQkJICogRklYTUU6IFRlbXBvcmFy
eSB3b3JrYXJvdW5kIHRvIHNldHVwIFRNRFMgY2hhciByYXRlCi0JCQkgKiBmcm9tIHRoZSBSSyBE
VyBIRE1JIFFQIGJyaWRnZSBkcml2ZXIuCi0JCQkgKiBXaWxsIGJlIHJlbW92ZWQgYXMgc29vbiB0
aGUgc3dpdGNoIHRvIHRoZSBIRE1JIFBIWQotCQkJICogY29uZmlndXJhdGlvbiBBUEkgaGFzIGJl
ZW4gY29tcGxldGVkIG9uIGJvdGggZW5kcy4KLQkJCSAqLwotCQkJaGRwdHgtPmhkbWlfY2ZnLnJh
dGUgPSBwaHlfZ2V0X2J1c193aWR0aChoZHB0eC0+cGh5KSAmIDB4ZmZmZmZmZjsKLQkJCWhkcHR4
LT5oZG1pX2NmZy5yYXRlICo9IDEwMDsKLQkJfQotCi0JCWRldl9kYmcoaGRwdHgtPmRldiwgIiVz
IHJhdGU9JWxsdSBicGM9JXVcbiIsIF9fZnVuY19fLAotCQkJaGRwdHgtPmhkbWlfY2ZnLnJhdGUs
IGhkcHR4LT5oZG1pX2NmZy5icGMpOwotCX0KLQogCXJldCA9IHJrX2hkcHR4X3BoeV9jb25zdW1l
cl9nZXQoaGRwdHgpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CkBAIC0xNzAxLDkgKzE2ODUs
MTAgQEAgc3RhdGljIGludCBya19oZHB0eF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQog
CQlya19oZHB0eF9kcF9wbGxfaW5pdChoZHB0eCk7CiAKIAkJcmV0ID0gcmtfaGRwdHhfZHBfYXV4
X2luaXQoaGRwdHgpOwotCQlpZiAocmV0KQotCQkJcmtfaGRwdHhfcGh5X2NvbnN1bWVyX3B1dCho
ZHB0eCwgdHJ1ZSk7CiAJfSBlbHNlIHsKKwkJZGV2X2RiZyhoZHB0eC0+ZGV2LCAiJXMgcmF0ZT0l
bGx1IGJwYz0ldVxuIiwgX19mdW5jX18sCisJCQloZHB0eC0+aGRtaV9jZmcucmF0ZSwgaGRwdHgt
PmhkbWlfY2ZnLmJwYyk7CisKIAkJaWYgKGhkcHR4LT5wbGxfY29uZmlnX2RpcnR5KQogCQkJcmV0
ID0gcmtfaGRwdHhfcGxsX2Ntbl9jb25maWcoaGRwdHgpOwogCkBAIC0xNzE1LDExICsxNzAwLDEy
IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKIAkJ
CQlyZXQgPSBya19oZHB0eF9mcmxfbGNwbGxfbW9kZV9jb25maWcoaGRwdHgpOwogCQkJZWxzZQog
CQkJCXJldCA9IHJrX2hkcHR4X3RtZHNfcm9wbGxfbW9kZV9jb25maWcoaGRwdHgpOwotCQl9IGVs
c2UgewotCQkJcmtfaGRwdHhfcGh5X2NvbnN1bWVyX3B1dChoZHB0eCwgdHJ1ZSk7CiAJCX0KIAl9
CiAKKwlpZiAocmV0KQorCQlya19oZHB0eF9waHlfY29uc3VtZXJfcHV0KGhkcHR4LCB0cnVlKTsK
KwogCXJldHVybiByZXQ7CiB9CiAKCi0tIAoyLjUzLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
