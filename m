Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F0DC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 17:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GM2DabH//lnyJjc8/dwQVUS6hP5DGCYh8HeMnKCjrjA=; b=2RKqqOMzKptm0G
	u2K9Zfz4cPzQDB+XqlmtFqIhmBIOthSCwHKnghn5632BTF3Dj51/9Yb5Di9wcfUUAOdO42EjOz9RP
	V60bia2NqiSez1nax6OayaaOKpBmGPg+NS5XLBzvMzU/AOo+j+vszcevTTlakPeQ03LVm3f1tH/YG
	sn6alK/xhv1Lk+PDivYLwk4Q420/U862XZvlsYlLHaAr+sPwQqtWsCbKQH5I4LOFbRys67E7iDCkt
	89HIAu2rXGSzJjhLfEXeex3ylbIWztW3atedILGwdD1Y2ZZaBScnZnFQatzWrlowaYabNRz0yBKbT
	tGYkbFH6r1V8I9GFb0oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmzsy-00000000Veb-1LKc;
	Wed, 20 Mar 2024 17:37:56 +0000
Received: from luna.linkmauve.fr ([82.65.109.163])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmzss-00000000Vc6-4B4i;
	Wed, 20 Mar 2024 17:37:52 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id E7254FDAD15; Wed, 20 Mar 2024 18:37:44 +0100 (CET)
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
Subject: [PATCH 0/4] Enable JPEG encoding on rk3588
Date: Wed, 20 Mar 2024 18:37:29 +0100
Message-ID: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_103751_206739_72B4B7A6 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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
ClsxXSBodHRwczovL2NyYXRlcy5pby9jcmF0ZXMvb25peAoKRW1tYW51ZWwgR2lsIFBleXJvdCAo
NCk6CiAgZHQtYmluZGluZ3M6IGlvbW11OiByb2NrY2hpcDogRml4IHJrMzU4OCB2YXJpYW50CiAg
bWVkaWE6IGR0LWJpbmRpbmc6IG1lZGlhOiBEb2N1bWVudCByazM1ODjigJlzIHZlcHUxMjEKICBh
cm02NDogZHRzOiByb2NrY2hpcDogQWRkIFZFUFUxMjEgdG8gcmszNTg4CiAgbWVkaWE6IHZlcmlz
aWxpY29uOiBFbmFibGUgVkVQVTEyMSBvbiByazM1ODgKCiAuLi4vYmluZGluZ3MvbWVkaWEvcm9j
a2NoaXAscmszNTY4LXZlcHUueWFtbCAgfCAgMSArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OHMuZHRzaSAgICAgfCA4MiArKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2lv
bW11L3JvY2tjaGlwLWlvbW11LmMgICAgICAgICAgICAgICAgfCAgMyArCiAuLi4vbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jICAgfCAgMSArCiAuLi4vbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmggICAgfCAgMSArCiAuLi4vcGxhdGZvcm0vdmVyaXNp
bGljb24vcm9ja2NoaXBfdnB1X2h3LmMgICAgfCAxMyArKysKIDYgZmlsZXMgY2hhbmdlZCwgMTAw
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCi0tIAoyLjQ0LjAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
