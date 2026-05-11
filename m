Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C8A0CD484D
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 18:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAtMX5SXn7zTEG6tfIHEGvOyViZmgUM7Pgl64SMYiXU=; b=iiID2ELlVIMKg5
	wVHxjXeamIalFE/V4pWdzZJI7WcAENab83dYvQOawngdKzlQGaULGjmY+KEKkSH0ig+lxiW12lzzM
	VoUwvyBvNy4/FG9AoGSCNRr0KcAPeibXtJGkkKJJrVsig1uGJF9yp5XP5yv00D1Ekzcf0Gj9zzpoP
	1dqc4SLAWuvTHvxM1Na96cY0gM//OQphJpmafxr3pmvRJHNFe7124gvCQSDAn+iDW739ywFbiqJm5
	Ljl6Ou6JCknGIjC8SZ9jO/qUz8qTzik5QWv6qacztv8ZSPfrSKzmaA0oMBn09cU3IdBYzR0mm3XC4
	qtyfbIoAb4IH16WxMkbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVG6-0000000EU5I-0Iri;
	Mon, 11 May 2026 18:21:38 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVFu-0000000ETrI-197P;
	Mon, 11 May 2026 18:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778523684;
	bh=ME4rYx/094/3Da4jumwxZRzCRYbpeQaG2knFSAN+yW8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cth+9bDMRWdw/89XdEGIUxuRVFiM82pUD8rgyAungl4gJKgRhefYCTOOM94BkFs/X
	 xZflz3YyFpnsgXLETHVgM2/V2aucgtObwDzijcc5vOa++w4r5sVuYK7bIBSOFcSJM2
	 BBTZ2e/eRjRlHn+0oH/HD6sSPGmkttwqZgE92TJeFEj4aWjQmGBVO9+uWfb15IWfXz
	 Y/krTqTw6y0DGeYNLbQ3u+CRvPGn18K6jyTx7q/up+kDh6d5xs8BZP5Ij0APfE3ivA
	 2ZnZdp1+CVo358q51vtZd3ucnJQ4fMIGZ+COin9Qp0GXaw1lpY8oJMq/tzccYeh2bm
	 WT5uvNEPPl/OA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CFFCE17E1550;
	Mon, 11 May 2026 20:21:23 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 11 May 2026 21:21:18 +0300
Subject: [PATCH v2 4/6] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
MIME-Version: 1.0
Message-Id: <20260511-hdptx-clk-fixes-v2-4-664e41379cab@collabora.com>
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
X-CRM114-CacheID: sfid-20260511_112126_461718_4A3EB867 
X-CRM114-Status: GOOD (  14.75  )
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
b2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCmluZGV4IGI1MzU0YTI0YjZlYi4u
NWMzYTliNGIxNzM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
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
KwkJCQkJCSAgaGRwdHgtPmhkbWlfY2ZnLmJwYyk7CiAKIAlyZXR1cm4gMDsKIH0KCi0tIAoyLjUz
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
