Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D75CCD98D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 12:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4l33zUXFic6vAkHBgJ7zwmaCH7ZePopU/Vvqjs++l4=; b=wvKeT5vZRpYTbJ
	sPudQnHM9UgkecGlua2oWj1kX7DJ+XL2HYIiRIE2vyJO3aILB6bkAzzMxFkFsTcjsHftLxUw13hcG
	Ivaj5ks04BhRGX5Gpljls833arUb8XzBnTTGxCcz8j37cQEmpWLeNavTgkdQvqlxmNvOcLbw85+3v
	EFqRqEsHg7mAOZUIUSEpX5LVBQNkT17Dv+GIoTxjXp+VDw+SDvBpeUcUbTdnv2smcmd7uZZjUkr0V
	eQpRjQp0ZHZvMEoHadOlVpIjLbYbkRIu8tuR2r9MqAqzA14xhbvmmPNzYfAUeXgc404sNUrU0mrtQ
	UjrpxyGPvvjxaD5AiOBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXeZC-00000009Oke-09c2;
	Thu, 11 Jun 2026 12:31:26 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXeZ2-00000009OYp-3XSi;
	Thu, 11 Jun 2026 12:31:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781181074;
	bh=I6P0U6OHTtnB8FfYJJpUJ6PKc2Lq26ZkTlgLMzYJ7cc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jcRDrarVzl1wvPNuLYuMNtZK+YyfwWZKsW5AAQQfXAhxygMmmQObFAcIT1gPuovK6
	 u/MII7U/k1JU2iIPQT7K771D8FmW1g+elLzN+kZx+rUOl3n+tPNBETeADa0hS7Pil+
	 iPl8oIgnBEvZymWpEq/p1fhLucDcZXUnsNHMMUW1odEHI5If605RLkjpABn3E14kAj
	 nVAr0aBvdjeBBV2BShmJgI7LPQgt/02n4uRTqWAwmPdwd5pVmoLV4zEh8gXRkP9Af1
	 tHW9JkHY3KJHJTQCiSMVtHLzItn6tqjdfr1r/8JP6445Gx2r1lx3YCepwC80RyISom
	 NK2N9jd3j4pyA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F0F2D17E093F;
	Thu, 11 Jun 2026 14:31:13 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 11 Jun 2026 15:31:06 +0300
Subject: [PATCH v3 4/6] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
MIME-Version: 1.0
Message-Id: <20260611-hdptx-clk-fixes-v3-4-67b1b0c00e16@collabora.com>
References: <20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com>
In-Reply-To: <20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_053117_032952_E7AD8D51 
X-CRM114-Status: GOOD (  14.53  )
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

U2luY2UgY29tbWl0IDZlZmJkMGY0NmRkOCAoInBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6
IFJlc3RyaWN0CmFsdGVyaW5nIFRNRFMgY2hhciByYXRlIHZpYSBDQ0YiKSwgYWRqdXN0aW5nIHRo
ZSByYXRlIHZpYSB0aGUgQ29tbW9uCkNsb2NrIEZyYW1ld29yayBBUEkgaGFzIGJlZW4gZGlzYWxs
b3dlZC4KClRvIGF2b2lkIGJyZWFraW5nIGV4aXN0aW5nIHVzZXJzIHVudGlsIHN3aXRjaGluZyB0
byB0aGUgUEhZIGNvbmZpZyBBUEksCml0IGludHJvZHVjZWQgYSB0ZW1wb3JhcnkgZXhjZXB0aW9u
IHRvIHRoZSBydWxlLCBjb250cm9sbGVkIHZpYSB0aGUKJ3Jlc3RyaWN0X3JhdGVfY2hhbmdlJyBm
bGFnLgoKQXMgdGhlIEFQSSB0cmFuc2l0aW9uIGNvbXBsZXRlZCwgcmVtb3ZlIHRoZSBub3cgZGVw
cmVjYXRlZCBleGNlcHRpb24KbG9naWMuCgpUZXN0ZWQtYnk6IFRob21hcyBOaWVkZXJwcsO8bSA8
ZHViaXRvQG9ubGluZS5kZT4KVGVzdGVkLWJ5OiBTaW1vbiBXcmlnaHQgPHNpbW9uQHN5bXBsZS5u
ej4KU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFA
Y29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ft
c3VuZy1oZHB0eC5jIHwgNDIgKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCmluZGV4IDkyYzc3ZTU4NTE4Yy4u
NTI5ZGQyZDVkOWJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtc2Ftc3VuZy1oZHB0eC5jCisrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC1zYW1zdW5nLWhkcHR4LmMKQEAgLTQxNCw3ICs0MTQsNiBAQCBzdHJ1Y3QgcmtfaGRwdHhfcGh5
IHsKIAkvKiBjbGsgcHJvdmlkZXIgKi8KIAlzdHJ1Y3QgY2xrX2h3IGh3OwogCWJvb2wgcGxsX2Nv
bmZpZ19kaXJ0eTsKLQlib29sIHJlc3RyaWN0X3JhdGVfY2hhbmdlOwogCiAJYXRvbWljX3QgdXNh
Z2VfY291bnQ7CiAKQEAgLTIwNzQsNyArMjA3Myw2IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5
X2NvbmZpZ3VyZShzdHJ1Y3QgcGh5ICpwaHksIHVuaW9uIHBoeV9jb25maWd1cmVfb3B0cyAqb3B0
CiAJCWlmIChyZXQpIHsKIAkJCWRldl9lcnIoaGRwdHgtPmRldiwgImludmFsaWQgaGRtaSBwYXJh
bXMgZm9yIHBoeSBjb25maWd1cmVcbiIpOwogCQl9IGVsc2UgewotCQkJaGRwdHgtPnJlc3RyaWN0
X3JhdGVfY2hhbmdlID0gdHJ1ZTsKIAkJCWhkcHR4LT5wbGxfY29uZmlnX2RpcnR5ID0gdHJ1ZTsK
IAogCQkJZGV2X2RiZyhoZHB0eC0+ZGV2LCAiJXMgJXMgcmF0ZT0lbGx1IGJwYz0ldVxuIiwgX19m
dW5jX18sCkBAIC0yMzAxLDQxICsyMjk5LDE3IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X2Ns
a19kZXRlcm1pbmVfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywKIAlzdHJ1Y3QgcmtfaGRwdHhfcGh5
ICpoZHB0eCA9IHRvX3JrX2hkcHR4X3BoeShodyk7CiAKIAkvKgotCSAqIEludmFsaWRhdGUgY3Vy
cmVudCBjbG9jayByYXRlIHRvIGVuc3VyZSBya19oZHB0eF9waHlfY2xrX3NldF9yYXRlKCkKLQkg
KiB3aWxsIGJlIGludm9rZWQgdG8gY29tbWl0IFBMTCBjb25maWd1cmF0aW9uLgorCSAqIEZvciB1
bmNvbW1pdHRlZCBQTEwgY29uZmlndXJhdGlvbiwgaW52YWxpZGF0ZSB0aGUgY3VycmVudCBjbG9j
ayByYXRlCisJICogdG8gZW5zdXJlIHJrX2hkcHR4X3BoeV9jbGtfc2V0X3JhdGUoKSB3aWxsIGJl
IGFsd2F5cyBpbnZva2VkLgorCSAqIE90aGVyd2lzZSwgcmVzdHJpY3QgdGhlIHJhdGUgYWNjb3Jk
aW5nIHRvIHRoZSBQSFkgbGluayBzZXR1cC4KIAkgKi8KLQlpZiAoaGRwdHgtPnBsbF9jb25maWdf
ZGlydHkpIHsKKwlpZiAoaGRwdHgtPnBsbF9jb25maWdfZGlydHkpCiAJCXJlcS0+cmF0ZSA9IDA7
Ci0JCXJldHVybiAwOwotCX0KLQotCWlmIChoZHB0eC0+aGRtaV9jZmcubW9kZSA9PSBQSFlfSERN
SV9NT0RFX0ZSTCkgeworCWVsc2UgaWYgKGhkcHR4LT5oZG1pX2NmZy5tb2RlID09IFBIWV9IRE1J
X01PREVfRlJMKQogCQlyZXEtPnJhdGUgPSBoZHB0eC0+aGRtaV9jZmcucmF0ZTsKLQkJcmV0dXJu
IDA7Ci0JfQotCi0JLyoKLQkgKiBGSVhNRTogVGVtcG9yYXJpbHkgYWxsb3cgYWx0ZXJpbmcgVE1E
UyBjaGFyIHJhdGUgdmlhIENDRi4KLQkgKiBUbyBiZSBkcm9wcGVkIGFzIHNvb24gYXMgdGhlIFJL
IERXIEhETUkgUVAgYnJpZGdlIGRyaXZlcgotCSAqIHN3aXRjaGVzIHRvIG1ha2UgdXNlIG9mIHBo
eV9jb25maWd1cmUoKS4KLQkgKi8KLQlpZiAoIWhkcHR4LT5yZXN0cmljdF9yYXRlX2NoYW5nZSAm
JiByZXEtPnJhdGUgIT0gaGRwdHgtPmhkbWlfY2ZnLnJhdGUpIHsKLQkJc3RydWN0IHBoeV9jb25m
aWd1cmVfb3B0c19oZG1pIGhkbWkgPSB7Ci0JCQkudG1kc19jaGFyX3JhdGUgPSByZXEtPnJhdGUs
Ci0JCX07Ci0KLQkJaW50IHJldCA9IHJrX2hkcHR4X3BoeV92ZXJpZnlfaGRtaV9jb25maWcoaGRw
dHgsICZoZG1pLCAmaGRwdHgtPmhkbWlfY2ZnKTsKLQotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJl
dDsKLQl9Ci0KLQkvKgotCSAqIFRoZSBUTURTIGNoYXIgcmF0ZSBzaGFsbCBiZSBhZGp1c3RlZCB2
aWEgcGh5X2NvbmZpZ3VyZSgpIG9ubHksCi0JICogaGVuY2UgZW5zdXJlIHJrX2hkcHR4X3BoeV9j
bGtfc2V0X3JhdGUoKSB3b24ndCBiZSBpbnZva2VkIHdpdGgKLQkgKiBhIGRpZmZlcmVudCByYXRl
IGFyZ3VtZW50LgotCSAqLwotCXJlcS0+cmF0ZSA9IERJVl9ST1VORF9DTE9TRVNUX1VMTChoZHB0
eC0+aGRtaV9jZmcucmF0ZSAqIDgsIGhkcHR4LT5oZG1pX2NmZy5icGMpOworCWVsc2UKKwkJcmVx
LT5yYXRlID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKGhkcHR4LT5oZG1pX2NmZy5yYXRlICogOCwK
KwkJCQkJCSAgaGRwdHgtPmhkbWlfY2ZnLmJwYyk7CiAKIAlyZXR1cm4gMDsKIH0KCi0tIAoyLjU0
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
