Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43BC9C5DF60
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 15:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0IPgCL/SexTejnDuwj0HNqAkxosVSUCS86icCi3n8k=; b=J2S539qhUJjKzs
	Sekgq0PX9wMX7XvQpOWogBESUuF5WWoFQHegibk4XrRqRPWIH1bMIrr9ZZ6pooGEaQcPdWlbcx7/g
	JYt8kpz0uB20AmQJAXgQ5qfdN/UTtPMmURqxoXdgzsmGNe+gbQ9FI4m8GEG9HjQfKidfLsiNz74Ui
	4Ta1MxSOXvWZWnCTknABEyK6Hp/9HAYDLFgOOhjH/gOLsc2+YBPGTnv+4FhYfT+sk3WdE4NnFqTMb
	z75OszEZHRZwymkQzMEsgny0CVEKK/RY7FXz+yzRA00JUXAyF3V9cViXA061T1kBh4TWH2pE0Is8J
	hLFtVtVgFBgflrXctziQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtofb-0000000ENGX-0Z7h;
	Tue, 11 Aug 2026 15:45:39 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtofL-0000000EMvw-1MN1;
	Tue, 11 Aug 2026 15:45:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786463119;
	bh=hEnZz5RpWyWJuFbMT6H/f1VppGVc8i0mqOduVdrlwXc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VZp/UbwoggNKH3UegnAF0sD6Sh9KqIbewZZk0r2sq8RwLp4hCz3SCGKGoFaGSIbA4
	 tQ1k9tb3wywEnozcgkL322W3dnE6LAlAr0YpMjJOh951nYPaAKOVQDy+LBfPAp+ei8
	 PtKePdGeh9wJqWS5P4xyC63AlEKnvT95ZnSI4hgdoAedbtdz3ZkYB+Mdm/y9IO0ek8
	 nUWfz0/Vli98cI7SyGM/R4fZAKo59jrm6eKnU9S5+Ss0T1EtXaBdihKv6NF6GIhFJ8
	 la6Q+oMcZ1TOMgklM1LoEN+XL+hm3vn/czwqQpdIeUHl818G6wH8xdPrLGXwu9p3xp
	 LnHXxlHH2Q7aw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 38CE017E0FAB;
	Tue, 11 Aug 2026 17:45:19 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 11 Aug 2026 18:44:49 +0300
Subject: [PATCH v6 08/10] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
MIME-Version: 1.0
Message-Id: <20260811-hdptx-clk-fixes-v6-8-75bca0ee5753@collabora.com>
References: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
In-Reply-To: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>, Diederik de Haas <diederik@cknow-tech.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_084523_515292_02B0EFC1 
X-CRM114-Status: GOOD (  15.01  )
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
ej4KVGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNvbT4g
ICMgTmFub1BDLVQ2IExUUwpSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJh
cnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNp
dmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KU2lnbmVkLW9mZi1i
eTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4K
LS0tCiBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIHwg
NDIgKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDM0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtc2Ftc3VuZy1oZHB0eC5jCmluZGV4IDI5NDQ4NGRhNzA4NS4uY2Y3OWJkNDc1MmM4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0
eC5jCisrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4
LmMKQEAgLTQxNCw3ICs0MTQsNiBAQCBzdHJ1Y3QgcmtfaGRwdHhfcGh5IHsKIAkvKiBjbGsgcHJv
dmlkZXIgKi8KIAlzdHJ1Y3QgY2xrX2h3IGh3OwogCWJvb2wgcGxsX2NvbmZpZ19kaXJ0eTsKLQli
b29sIHJlc3RyaWN0X3JhdGVfY2hhbmdlOwogCiAJYXRvbWljX3QgdXNhZ2VfY291bnQ7CiAKQEAg
LTIwNzQsNyArMjA3Myw2IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X2NvbmZpZ3VyZShzdHJ1
Y3QgcGh5ICpwaHksIHVuaW9uIHBoeV9jb25maWd1cmVfb3B0cyAqb3B0CiAJCWlmIChyZXQpIHsK
IAkJCWRldl9lcnIoaGRwdHgtPmRldiwgImludmFsaWQgaGRtaSBwYXJhbXMgZm9yIHBoeSBjb25m
aWd1cmVcbiIpOwogCQl9IGVsc2UgewotCQkJaGRwdHgtPnJlc3RyaWN0X3JhdGVfY2hhbmdlID0g
dHJ1ZTsKIAkJCWhkcHR4LT5wbGxfY29uZmlnX2RpcnR5ID0gdHJ1ZTsKIAogCQkJZGV2X2RiZyho
ZHB0eC0+ZGV2LCAiJXMgJXMgcmF0ZT0lbGx1IGJwYz0ldVxuIiwgX19mdW5jX18sCkBAIC0yMzM2
LDQxICsyMzM0LDE3IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X2Nsa19kZXRlcm1pbmVfcmF0
ZShzdHJ1Y3QgY2xrX2h3ICpodywKIAlzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCA9IHRvX3Jr
X2hkcHR4X3BoeShodyk7CiAKIAkvKgotCSAqIEludmFsaWRhdGUgY3VycmVudCBjbG9jayByYXRl
IHRvIGVuc3VyZSBya19oZHB0eF9waHlfY2xrX3NldF9yYXRlKCkKLQkgKiB3aWxsIGJlIGludm9r
ZWQgdG8gY29tbWl0IFBMTCBjb25maWd1cmF0aW9uLgorCSAqIEZvciB1bmNvbW1pdHRlZCBQTEwg
Y29uZmlndXJhdGlvbiwgaW52YWxpZGF0ZSB0aGUgY3VycmVudCBjbG9jayByYXRlCisJICogdG8g
ZW5zdXJlIHJrX2hkcHR4X3BoeV9jbGtfc2V0X3JhdGUoKSB3aWxsIGJlIGFsd2F5cyBpbnZva2Vk
LgorCSAqIE90aGVyd2lzZSwgcmVzdHJpY3QgdGhlIHJhdGUgYWNjb3JkaW5nIHRvIHRoZSBQSFkg
bGluayBzZXR1cC4KIAkgKi8KLQlpZiAoaGRwdHgtPnBsbF9jb25maWdfZGlydHkpIHsKKwlpZiAo
aGRwdHgtPnBsbF9jb25maWdfZGlydHkpCiAJCXJlcS0+cmF0ZSA9IDA7Ci0JCXJldHVybiAwOwot
CX0KLQotCWlmIChoZHB0eC0+aGRtaV9jZmcubW9kZSA9PSBQSFlfSERNSV9NT0RFX0ZSTCkgewor
CWVsc2UgaWYgKGhkcHR4LT5oZG1pX2NmZy5tb2RlID09IFBIWV9IRE1JX01PREVfRlJMKQogCQly
ZXEtPnJhdGUgPSBoZHB0eC0+aGRtaV9jZmcucmF0ZTsKLQkJcmV0dXJuIDA7Ci0JfQotCi0JLyoK
LQkgKiBGSVhNRTogVGVtcG9yYXJpbHkgYWxsb3cgYWx0ZXJpbmcgVE1EUyBjaGFyIHJhdGUgdmlh
IENDRi4KLQkgKiBUbyBiZSBkcm9wcGVkIGFzIHNvb24gYXMgdGhlIFJLIERXIEhETUkgUVAgYnJp
ZGdlIGRyaXZlcgotCSAqIHN3aXRjaGVzIHRvIG1ha2UgdXNlIG9mIHBoeV9jb25maWd1cmUoKS4K
LQkgKi8KLQlpZiAoIWhkcHR4LT5yZXN0cmljdF9yYXRlX2NoYW5nZSAmJiByZXEtPnJhdGUgIT0g
aGRwdHgtPmhkbWlfY2ZnLnJhdGUpIHsKLQkJc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19oZG1p
IGhkbWkgPSB7Ci0JCQkudG1kc19jaGFyX3JhdGUgPSByZXEtPnJhdGUsCi0JCX07Ci0KLQkJaW50
IHJldCA9IHJrX2hkcHR4X3BoeV92ZXJpZnlfaGRtaV9jb25maWcoaGRwdHgsICZoZG1pLCAmaGRw
dHgtPmhkbWlfY2ZnKTsKLQotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQl9Ci0KLQkvKgot
CSAqIFRoZSBUTURTIGNoYXIgcmF0ZSBzaGFsbCBiZSBhZGp1c3RlZCB2aWEgcGh5X2NvbmZpZ3Vy
ZSgpIG9ubHksCi0JICogaGVuY2UgZW5zdXJlIHJrX2hkcHR4X3BoeV9jbGtfc2V0X3JhdGUoKSB3
b24ndCBiZSBpbnZva2VkIHdpdGgKLQkgKiBhIGRpZmZlcmVudCByYXRlIGFyZ3VtZW50LgotCSAq
LwotCXJlcS0+cmF0ZSA9IERJVl9ST1VORF9DTE9TRVNUX1VMTChoZHB0eC0+aGRtaV9jZmcucmF0
ZSAqIDgsIGhkcHR4LT5oZG1pX2NmZy5icGMpOworCWVsc2UKKwkJcmVxLT5yYXRlID0gRElWX1JP
VU5EX0NMT1NFU1RfVUxMKGhkcHR4LT5oZG1pX2NmZy5yYXRlICogOCwKKwkJCQkJCSAgaGRwdHgt
PmhkbWlfY2ZnLmJwYyk7CiAKIAlyZXR1cm4gMDsKIH0KCi0tIAoyLjU1LjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
