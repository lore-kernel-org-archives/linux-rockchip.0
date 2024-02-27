Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D8D4C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 14:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KBdRfaSa1Lf63RZnQebGwIi0/DKQMMmyQrQ1Mj2dOG0=; b=kKxXdQIAtJFlcO
	njIzp0tmWJeP7lomv5Dh5zYGydyXhUC1XYzNC7fs7ei0zH/cQpmBe90uc0y0ZJLCwJIGJsMTmmULZ
	kTpLujX50z1pmQp5/NoWU/uP6L0G3J+MBQzGBwqqeA507ALM32kj2tYDgF7wACMilGcW93HooWc3y
	erV+ReQv0m51k4BjayIIPOg115NL8xI549iz/JINdv3zMbZIwitpcSlXoWssYmtejHVdw2/X3eFmq
	3xmFklGZB8L6+OMvzd5o51S+xQqlbu1qkAkTd6PauPQ5n3EC5gD7RJy7wa7QsqU0hOoiVTYK6Ny6V
	xmPqQdFUvqYIZcKFr+Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reyDA-00000005XBV-049n;
	Tue, 27 Feb 2024 14:13:36 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reyD6-00000005X9h-1EZ4;
	Tue, 27 Feb 2024 14:13:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=r7SFpf4dLvrRhxoKMvvgpekdUrqBq4F3M57BeGF5vkk=; b=Lj
	sQgTFxPzWXB/XJtOo+oF/TESN4qrao76zAkYQYPNL8mgnDhHQQqBvAfWBUlf1I6Ad4AgvOi4dTx5c
	XX95ndTj/8r8jpNlDpa0RKRHFR8POiNM/w97KKCQOM9SzHSRgaWzDz4R23lCyNo2WONRcKsU8nCqp
	IItbiq9F1Ftl6VK5czGYK1X62YQpCGjqDsqFGTA+BGN51FAnjDQlzQg5hC09V8qGXPMgubt1gwV32
	H8wBoJmTbfw1/vhlFJgId5tHHY19f4rCzEfcZ+qFE7nBM/VFDUWkO/17CAd6HelyeDaAWhu2edi//
	jhwPMgt4+uDnlSXsUX4RY9XEi5hk/rcw==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1reyCj-005mof-DF; Tue, 27 Feb 2024 14:13:09 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lei Chuanhua <lchuanhua@maxlinear.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] PCI: dw-rockchip: Add error messages in .probe()s error paths
Date: Tue, 27 Feb 2024 15:12:54 +0100
Message-ID: <20240227141256.413055-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2830; i=ukleinek@debian.org; h=from:subject; bh=Nob6qN/qkCiuXvIB3sPabKHumbLsd+xpfv29HkFfRv4=; b=owEBbAGT/pANAwAKAY+A+1h9Ev5OAcsmYgBl3e3o1zR9lVs2UewhWb9uiYuT6ZDByWgZ1zlhu 9Rgm8F0V6uJATIEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd3t6AAKCRCPgPtYfRL+ TicgB/YjJU19WoIDuzpBX2npPG7PwKGSw4RVyws3t9z1D9R3m/h/lLPA9QRrDgvEd3IOz7bdNSO WURcEuQZ/w2D+oRxsJ1e1EHrCiL6ro9ebIqSOHbCBky7ObE1oAXJw3beRTp5/LyiaxR/Czd/d82 RFg5XDDkhFgRoGDf8yruur/GmFXY1AWIOFbevUgEMQbNS9y/EoF+QYoLFEfPto0ZMhgVnPFmW3o 34lhojl5D3TUvp4ww600NJu9wGQFRlA8Y/ZxYfnCNLiKKIbghSo1MlmV7Aw9dbDIrWpuSJCF/9s 8SIt/kxYqFsEOt6vvF3kgT3s/NNDylXiAAoDZcfYUb9C9zs=
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_061332_363237_1B349F3A 
X-CRM114-Status: GOOD (  13.93  )
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

RHJpdmVycyB0aGF0IHNpbGVudGx5IGZhaWwgdG8gcHJvYmUgcHJvdmlkZSBhIGJhZCB1c2VyIGV4
cGVyaWVuY2UgYW5kCm1ha2UgaXQgdW5uZWNlc3NhcmlseSBoYXJkIHRvIGRlYnVnIHN1Y2ggYSBm
YWlsdXJlLiBGaXggaXQgYnkgdXNpbmcKZGV2X2Vycl9wcm9iZSgpIGluc3RlYWQgb2YgYSBwbGFp
biByZXR1cm4uCgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4K
U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRlYmlhbi5vcmc+Ci0t
LQpIZWxsbywKCmNoYW5nZXMgc2luY2UgKGltcGxpY2l0KSB2MSwgc2VudCB3aXRoIE1lc3NhZ2Ut
SWQ6CjIwMjQwMjI3MTExODM3LjM5NTQyMi0yLXVrbGVpbmVrQGRlYmlhbi5vcmc6CgogLSB1c2Ug
ZGV2IGluc3RlYWQgb2Ygcm9ja2NoaXAtPnBjaS5kZXYgYXMgbm90aWNlZCBieSBTZXJnZSBTZW1p
bi4KIC0gYWRkZWQgUmV2aWV3ZWQtYnk6IHRhZyBmb3IgSGVpa28uIEkgYXNzdW1lIGhlIGFncmVl
cyB0byBhYm92ZQogICBpbXByb3ZlbWVudCBhbmQgYWRkaW5nIHRoZSB0YWcgZGVzcGl0ZSB0aGUg
Y2hhbmdlIGlzIGZpbmUuCgpCZXN0IHJlZ2FyZHMKVXdlCgogZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgMjEgKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCmluZGV4IGQ2ODQyMTQxZDM4NC4u
YTEzY2E4M2NlMjYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1y
b2NrY2hpcC5jCkBAIC0yMjUsMTEgKzIyNSwxNSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVf
Y2xrX2luaXQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQogCiAJcmV0ID0gZGV2bV9j
bGtfYnVsa19nZXRfYWxsKGRldiwgJnJvY2tjaGlwLT5jbGtzKTsKIAlpZiAocmV0IDwgMCkKLQkJ
cmV0dXJuIHJldDsKKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQsICJmYWlsZWQgdG8g
Z2V0IGNsb2Nrc1xuIik7CiAKIAlyb2NrY2hpcC0+Y2xrX2NudCA9IHJldDsKIAotCXJldHVybiBj
bGtfYnVsa19wcmVwYXJlX2VuYWJsZShyb2NrY2hpcC0+Y2xrX2NudCwgcm9ja2NoaXAtPmNsa3Mp
OworCXJldCA9IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHJvY2tjaGlwLT5jbGtfY250LCByb2Nr
Y2hpcC0+Y2xrcyk7CisJaWYgKHJldCkKKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQs
ICJmYWlsZWQgdG8gZW5hYmxlIGNsb2Nrc1xuIik7CisKKwlyZXR1cm4gMDsKIH0KIAogc3RhdGlj
IGludCByb2NrY2hpcF9wY2llX3Jlc291cmNlX2dldChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2LApAQCAtMjM3LDEyICsyNDEsMTQgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Jlc291
cmNlX2dldChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAogewogCXJvY2tjaGlwLT5hcGJf
YmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwgImFwYiIp
OwogCWlmIChJU19FUlIocm9ja2NoaXAtPmFwYl9iYXNlKSkKLQkJcmV0dXJuIFBUUl9FUlIocm9j
a2NoaXAtPmFwYl9iYXNlKTsKKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRS
X0VSUihyb2NrY2hpcC0+YXBiX2Jhc2UpLAorCQkJCSAgICAgImZhaWxlZCB0byBtYXAgYXBiIHJl
Z2lzdGVyc1xuIik7CiAKIAlyb2NrY2hpcC0+cnN0X2dwaW8gPSBkZXZtX2dwaW9kX2dldF9vcHRp
b25hbCgmcGRldi0+ZGV2LCAicmVzZXQiLAogCQkJCQkJICAgICBHUElPRF9PVVRfSElHSCk7CiAJ
aWYgKElTX0VSUihyb2NrY2hpcC0+cnN0X2dwaW8pKQotCQlyZXR1cm4gUFRSX0VSUihyb2NrY2hp
cC0+cnN0X2dwaW8pOworCQlyZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJS
KHJvY2tjaGlwLT5yc3RfZ3BpbyksCisJCQkJICAgICAiZmFpbGVkIHRvIGdldCByZXNldCBncGlv
XG4iKTsKIAogCXJvY2tjaGlwLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X2V4
Y2x1c2l2ZSgmcGRldi0+ZGV2KTsKIAlpZiAoSVNfRVJSKHJvY2tjaGlwLT5yc3QpKQpAQCAtMzIw
LDEwICszMjYsOSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAkJcm9ja2NoaXAtPnZwY2llM3YzID0gTlVMTDsKIAl9IGVsc2Ug
ewogCQlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKHJvY2tjaGlwLT52cGNpZTN2Myk7Ci0JCWlmIChy
ZXQpIHsKLQkJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSB2cGNpZTN2MyByZWd1bGF0
b3JcbiIpOwotCQkJcmV0dXJuIHJldDsKLQkJfQorCQlpZiAocmV0KQorCQkJcmV0dXJuIGRldl9l
cnJfcHJvYmUoZGV2LCByZXQsCisJCQkJCSAgICAgImZhaWxlZCB0byBlbmFibGUgdnBjaWUzdjMg
cmVndWxhdG9yXG4iKTsKIAl9CiAKIAlyZXQgPSByb2NrY2hpcF9wY2llX3BoeV9pbml0KHJvY2tj
aGlwKTsKCmJhc2UtY29tbWl0OiA2NjEzNDc2ZTIyNWUwOTBjYzlhYWQ0OWJlN2ZhNTA0ZTI5MGRk
MzNkCi0tIAoyLjQzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
