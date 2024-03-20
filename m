Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 504A0C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 17:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=054X1SqkiRVIOQPGhFep4Kge4GhJImu8kDeM5Cxd8As=; b=tQuPjZpRjYCwnw
	TIKCYvY/cEsWfT0Cm2pzbGXnHSioFsqeRTt6ySPhnSS0fQHAUCUYo0d1lKwYd9Nab6v/0ihDLFJbb
	33Ev6M0L7v9RKhWreBL3dWdWhCWZwiDAuwHjT8H6z3hz7smsl4GC1umss+K78SvBJ88NcV0UuTNUA
	gc5PtT90pknSBuNm4mg+E7ejmr2H8UO4lJqV5/Rgs/zkKELlYq4KbXF3QAuChIl4ElbifJOJhzifM
	NABMdm6XxYI+Xj0iTS6+zuM7bS738ybhhN/ranUtWdAXTJ65Sw4jywReXGH7vkVc/e5Soh7KYIvhC
	Ly5IY2my0Wf0xKakCUtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmztE-00000000VmL-2GDI;
	Wed, 20 Mar 2024 17:38:12 +0000
Received: from [2a01:e0a:828:c7c0:e2d5:5eff:fe2d:8e8] (helo=luna.linkmauve.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmzst-00000000VcD-0mq6;
	Wed, 20 Mar 2024 17:37:54 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id 0437EFDAD1D; Wed, 20 Mar 2024 18:37:45 +0100 (CET)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: linux-kernel@vger.kernel.org
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev
Subject: [PATCH 4/4] media: verisilicon: Enable VEPU121 on rk3588
Date: Wed, 20 Mar 2024 18:37:33 +0100
Message-ID: <20240320173736.2720778-5-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_103751_412675_47A2EE7D 
X-CRM114-Status: GOOD (  12.64  )
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

T25seSB0aGUgSlBFRyBlbmNvZGVyIGlzIGF2YWlsYWJsZSBmb3Igbm93LCBhbHRob3VnaCB0aGVy
ZSBhcmUgcGF0Y2hlcwpmb3IgdGhlIHVuZG9jdW1lbnRlZCBWUDggZW5jb2RlciBmbG9hdGluZyBh
cm91bmRbMF0uCgpUaGlzIGhhcyBiZWVuIHRlc3RlZCBvbiBhIHJvY2stNWIsIHJlc3VsdGluZyBp
biBmb3VyIC9kZXYvdmlkZW8qCmVuY29kZXJzLiAgVGhlIHVzZXJzcGFjZSBwcm9ncmFtIEnigJl2
ZSBiZWVuIHVzaW5nIHRvIHRlc3QgdGhlbSBpcwpPbml4WzFdLCB1c2luZyB0aGUganBlZy1lbmNv
ZGVyIGV4YW1wbGUsIGl0IHdpbGwgcGljayBvbmUgb2YgdGhlc2UgZm91cgphdCByYW5kb20gKGJ1
dCBkaXNwbGF5cyB0aGUgb25lIGl0IHBpY2tlZCk6CiUgZmZtcGVnIC1pIDxpbnB1dCBpbWFnZT4g
LXBpeF9mbXQgeXV2ajQyMHAgdGVtcC55dXYKJSBqcGVnLWVuY29kZXIgdGVtcC55dXYgPHdpZHRo
PiA8aGVpZ2h0PiBOVjEyIDxxdWFsaXR5PiBvdXRwdXQuanBlZwoKWzBdIGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9saXN0Lz9zZXJpZXM9Nzg5ODg1
ClsxXSBodHRwczovL2NyYXRlcy5pby9jcmF0ZXMvb25peAoKU2lnbmVkLW9mZi1ieTogRW1tYW51
ZWwgR2lsIFBleXJvdCA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4KLS0tCiBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyAgICAgfCAgMSArCiBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oICAgICAgfCAgMSArCiAuLi4vbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMgICAgfCAxMyArKysrKysr
KysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCmluZGV4IDM0YjEyM2RhZmQ4
OS4uOGQzOGRiYjVhMWViIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19kcnYuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19kcnYuYwpAQCAtNzIyLDYgKzcyMiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkIG9mX2hhbnRyb19tYXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszMzk5LXZwdSIsIC5kYXRhID0gJnJrMzM5OV92cHVfdmFyaWFudCwgfSwKIAl7IC5j
b21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC12ZXB1IiwgLmRhdGEgPSAmcmszNTY4X3ZlcHVf
dmFyaWFudCwgfSwKIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC12cHUiLCAuZGF0
YSA9ICZyazM1NjhfdnB1X3ZhcmlhbnQsIH0sCisJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azM1ODgtdmVwdTEyMSIsIC5kYXRhID0gJnJrMzU4OF92ZXB1MTIxX3ZhcmlhbnQsIH0sCiAJeyAu
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtYXYxLXZwdSIsIC5kYXRhID0gJnJrMzU4OF92
cHU5ODFfdmFyaWFudCwgfSwKICNlbmRpZgogI2lmZGVmIENPTkZJR19WSURFT19IQU5UUk9fSU1Y
OE0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2h3LmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oCmlu
ZGV4IDc3MzczMjBjYzhjYy4uMzQwMTAxMjAwYmU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmgKQEAgLTQwNSw2ICs0MDUsNyBAQCBleHRlcm4g
Y29uc3Qgc3RydWN0IGhhbnRyb192YXJpYW50IHJrMzMyOF92cHVfdmFyaWFudDsKIGV4dGVybiBj
b25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgcmszMzk5X3ZwdV92YXJpYW50OwogZXh0ZXJuIGNv
bnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCByazM1NjhfdmVwdV92YXJpYW50OwogZXh0ZXJuIGNv
bnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCByazM1NjhfdnB1X3ZhcmlhbnQ7CitleHRlcm4gY29u
c3Qgc3RydWN0IGhhbnRyb192YXJpYW50IHJrMzU4OF92ZXB1MTIxX3ZhcmlhbnQ7CiBleHRlcm4g
Y29uc3Qgc3RydWN0IGhhbnRyb192YXJpYW50IHJrMzU4OF92cHU5ODFfdmFyaWFudDsKIGV4dGVy
biBjb25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgc2FtYTVkNF92ZGVjX3ZhcmlhbnQ7CiBleHRl
cm4gY29uc3Qgc3RydWN0IGhhbnRyb192YXJpYW50IHN1bnhpX3ZwdV92YXJpYW50OwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcu
YyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMK
aW5kZXggZjk3NTI3NjcwNzgzLi5hYWQ1OWI4YjFmYjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMKKysrIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYwpAQCAtNzk3LDYgKzc5
NywxOSBAQCBjb25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgcHgzMF92cHVfdmFyaWFudCA9IHsK
IAkubnVtX2Nsb2NrcyA9IEFSUkFZX1NJWkUocm9ja2NoaXBfdnB1X2Nsa19uYW1lcykKIH07CiAK
K2NvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCByazM1ODhfdmVwdTEyMV92YXJpYW50ID0gewor
CS5lbmNfb2Zmc2V0ID0gMHgwLAorCS5lbmNfZm10cyA9IHJvY2tjaGlwX3ZwdV9lbmNfZm10cywK
KwkubnVtX2VuY19mbXRzID0gQVJSQVlfU0laRShyb2NrY2hpcF92cHVfZW5jX2ZtdHMpLAorCS5j
b2RlYyA9IEhBTlRST19KUEVHX0VOQ09ERVIsCisJLmNvZGVjX29wcyA9IHJrMzU2OF92ZXB1X2Nv
ZGVjX29wcywKKwkuaXJxcyA9IHJrMzU2OF92ZXB1X2lycXMsCisJLm51bV9pcnFzID0gQVJSQVlf
U0laRShyazM1NjhfdmVwdV9pcnFzKSwKKwkuaW5pdCA9IHJvY2tjaGlwX3ZwdV9od19pbml0LAor
CS5jbGtfbmFtZXMgPSByb2NrY2hpcF92cHVfY2xrX25hbWVzLAorCS5udW1fY2xvY2tzID0gQVJS
QVlfU0laRShyb2NrY2hpcF92cHVfY2xrX25hbWVzKQorfTsKKwogY29uc3Qgc3RydWN0IGhhbnRy
b192YXJpYW50IHJrMzU4OF92cHU5ODFfdmFyaWFudCA9IHsKIAkuZGVjX29mZnNldCA9IDB4MCwK
IAkuZGVjX2ZtdHMgPSByb2NrY2hpcF92cHU5ODFfZGVjX2ZtdHMsCi0tIAoyLjQ0LjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
