Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F980CD98D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 23:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQMG1qxylMRhgRyHr7ZbMwCdcs4ugpNQPUzqOnrUaV0=; b=P7Zjm6YBxWDSgL
	xlmx5pHbt2o4LOtpX+MdfM0naYm1qOJKK2zby4jg8dfzLIG0NbHfIAlbtgbKZAGPX4CJ/8Zy8ywM8
	dWE+2BaLo70TNvEIMpczXWZvGu+kgoPo+piyLTZk7CYSr/qbrSH7/nvIkbpx8+4AVRXn5Smnf2XWu
	EO4KP0SU0xr8fuit34Kv0MWylNHljKncHTj8c8hxwTkuNmx7aT7LoKUuStG85ZtE4lya4BbxoVgDR
	BVGnPNQjXVhhtBR+n0T2H/Vltl1/zw7v6HhCqipHUn32tCaRMCyU5t/frwr6C8P0NNR1xDa60IDd3
	QhdjjoBkEzil/W2TLDFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXp63-0000000ABZn-1lDp;
	Thu, 11 Jun 2026 23:46:03 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXp5q-0000000ABLC-2SQ9;
	Thu, 11 Jun 2026 23:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781221548;
	bh=K4WDA/AA4ZpoqgJcQl+2giJdeAC9Ny1U56Rk0cRCceo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=c+ht7d6gBoA+t7/udvBxXmrwkdY1CCbV3gQDU6N3Vbbng+9nec0Pgkfsfa8I+XzaB
	 CB5P46RUD0dseJAIJ8GevXOgNyNMoh+M0hv+sqWcV7mzc9dATEZpUV+kPMwxA1d44g
	 1cybke85aOm9SMDmv8+qLGNlbvMSPPmvDW77onbN38l1x88IRrIvxsObEahGemCWqW
	 Tdn+6nmYxi2U9h1m6Z72Y7fYOUrN9HkyAT/sKr3UOWk4vBDmVVRPYodWGetaWbEVaQ
	 FJjyVRw64EvqZ5MfeqOpBi26yUe8X3ka/TvcVQJASHGyp+BhrdOXiQbKfXJWlSYLZN
	 Aq+Rl/lQmKmuw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E55E817E0CAC;
	Fri, 12 Jun 2026 01:45:47 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 12 Jun 2026 02:45:25 +0300
Subject: [PATCH v4 6/8] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
MIME-Version: 1.0
Message-Id: <20260612-hdptx-clk-fixes-v4-6-ce5e1d456cda@collabora.com>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
In-Reply-To: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
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
X-CRM114-CacheID: sfid-20260611_164550_788019_F3D14F05 
X-CRM114-Status: GOOD (  14.55  )
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
b2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCmluZGV4IDM1OTk3MDg3ZDYxYy4u
Yjc0YTQzM2M3ZTUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
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
dW5jX18sCkBAIC0yMzIxLDQxICsyMzE5LDE3IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X2Ns
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
