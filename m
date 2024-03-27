Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45F5DC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 13:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1nPhMTcPBJIV9qE0v1q0xKrRQvUSNU1GJlQ6kmKlvqg=; b=F0aY84rTCnJ8+r
	n0/JiT2MtfXLICpei6Bgd22xypAQVlo3YVxbArBn+32ZgFGojLq9fQjFg3+pNUtilBzoDIlK1Gup5
	aI9vmla2WzWGMkJlTpmRfa/+7t8ejGP0RGQAjryXZcd1r9I1eXZckWg6i4eFA9xQ0Csi/pdpdoT4R
	GRmw+k+WTakZgD8rM1Muglb5G7pNMuY3AbrBa5BrexQXcuzqdJdM4cNarB2PudoQtDHf+G/llUWjD
	cVTqhKPa9U9s9BjqoV1jAs+6LWMU51T4NNeMYI9D1xO/lm36ebsJiMhAZ0kAcChQeiU8gfJDOZhaA
	8LASlJ6IJDzRB+uAK9EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpTXI-00000009FeR-3F6y;
	Wed, 27 Mar 2024 13:41:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpTWz-00000009FUe-1fDU;
	Wed, 27 Mar 2024 13:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=425/JIrUOfwZ7OXxSKoQezZWCz3PwekYKzEaxPQBkuc=; b=WHg9SgWyZ6aWJxOTcq+bU3zVVl
	lJmnzuJ4oAArivPuE9Wtk6mokJ8DactYuyi2fwsb/p8j6iZj+pwtGAc2nycf+TAyzTujZlcBG7qzq
	eAMBOu8Vdq1AG/8qNFoLhqQNZo+qKgGKqKdSlI83yx3J/pQYm3q0HMqJMPN9TZ3nZjePj8Hye+VWJ
	+ImMGpsyHMME9Uq7G1dY+0sERVkKxkOWxfwVkXWukww/U6Y+0Mt7CMuBepB4eLjmO9xWq+NnAlkmQ
	5tfm4sVYVU36vtgKJBkG379lI+FR13Ay6m2V61HEBs74lNzzn3jx7clNl/c2pWSsFHDyXjLRMhYsR
	GgXxjApQ==;
Received: from luna.linkmauve.fr ([82.65.109.163])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpTWv-00000000HAf-1vP4;
	Wed, 27 Mar 2024 13:41:27 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id E969D101AF33; Wed, 27 Mar 2024 14:41:16 +0100 (CET)
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
Subject: [PATCH v2 0/2] Enable JPEG encoding on rk3588
Date: Wed, 27 Mar 2024 14:41:10 +0100
Message-ID: <20240327134115.424846-1-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_134125_719782_65ED93AE 
X-CRM114-Status: GOOD (  12.16  )
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
ClsxXSBodHRwczovL2NyYXRlcy5pby9jcmF0ZXMvb25peAoKQ2hhbmdlcyBzaW5jZSB2MToKLSBE
cm9wcGVkIHBhdGNoZXMgMSBhbmQgNC4KLSBVc2UgdGhlIHByb3BlciBjb21wYXRpYmxlIGZvcm0s
IHNpbmNlIHRoaXMgZGV2aWNlIHNob3VsZCBiZSBmdWxseQogIGNvbXBhdGlibGUgd2l0aCB0aGUg
VkVQVSBvZiByazM1NnguCi0gRGVzY3JpYmUgd2hlcmUgdGhlIFZFUFUxMjEgbmFtZSBjb21lcyBm
cm9tLCBhbmQgbGlzdCBvdGhlciBlbmNvZGVycwogIGFuZCBkZWNvZGVycyBwcmVzZW50IGluIHRo
aXMgU29DLgotIFByb3Blcmx5IHRlc3QgdGhlIGRldmljZSB0cmVlIGNoYW5nZXMsIEkgcHJldmlv
dXNseSBjb3VsZG7igJl0IHNpbmNlIEkKICB3YXMgdXNpbmcgYSB0b28gcmVjZW50IHZlcnNpb24g
b2YgcHl0aG9uLWpzb25zY2hlbWHigKYKCkVtbWFudWVsIEdpbCBQZXlyb3QgKDIpOgogIG1lZGlh
OiBkdC1iaW5kaW5nOiBtZWRpYTogRG9jdW1lbnQgcmszNTg44oCZcyBWRVBVMTIxCiAgYXJtNjQ6
IGR0czogcm9ja2NoaXA6IEFkZCBWRVBVMTIxIHRvIHJrMzU4OAoKIC4uLi9iaW5kaW5ncy9tZWRp
YS9yb2NrY2hpcCxyazM1NjgtdmVwdS55YW1sICB8ICA4ICstCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OHMuZHRzaSAgICAgfCA4MCArKysrKysrKysrKysrKysrKysrCiAyIGZp
bGVzIGNoYW5nZWQsIDg2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgotLSAKMi40NC4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
