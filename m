Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 247ECC04FF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 14:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=53UC3IBYRTDPqLYgMd5Vra4o3FWhuMZvxPLb2gOx/b8=; b=aEVK13VHPhg32g
	TY/7+t1FW1+ps+AueyGPNyEYfVsCOcCN03Wmv/bafMa/XUcG7SPT7s5hjRNztV+cn9ddAEPy43Kma
	lac+sxeqLbphXV6iWC74R8uEUldFNRJrXsOz4f5pHhsk6MRzYUp1OTmLkYdj5FwMGSBBhIhnyEnjx
	smHPoDmrvkd7fycnsJRLPZeXYrUWL4t7KCi6dBPDIF7CJC4Z+q9T22u9CpCtsUZ7uis/ZPQmQvD/q
	MxH2H7TpXwPxLJU74ZHw6KdWgs20UD+sLhu+BNt/31lVFNpovMXuM1Q5fM4oaz+r6Ocv8QlrdBi13
	oS81AR9vamJ2dv7c2ydw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxSYR-00000002Y0Y-499p;
	Thu, 18 Apr 2024 14:15:59 +0000
Received: from luna.linkmauve.fr ([82.65.109.163])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxSXz-00000002Xhz-1m8F;
	Thu, 18 Apr 2024 14:15:42 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id 53F9810D1B03; Thu, 18 Apr 2024 16:15:14 +0200 (CEST)
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
Subject: [PATCH v4 0/2] Enable JPEG encoding on rk3588
Date: Thu, 18 Apr 2024 16:15:04 +0200
Message-ID: <20240418141509.2485053-1-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_071531_718490_99A26FCA 
X-CRM114-Status: GOOD (  13.98  )
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
ClsxXSBodHRwczovL2NyYXRlcy5pby9jcmF0ZXMvb25peAoKQ2hhbmdlcyBzaW5jZSB2MzoKLSBL
ZWVwIGFsbCB0aGUgcHJldmlvdXMgdGFncywgc29ycnkgSSBmb3Jnb3QgdG8gZG8gdGhhdCBpbiB0
aGUgcHJldmlvdXMKICB2ZXJzaW9uLgotIFJlbW92ZSBhbiBleHRyYSBtZWRpYTogaW4gdGhlIGZp
cnN0IHBhdGNoLgoKQ2hhbmdlcyBzaW5jZSB2MjoKLSBPbmx5IGV4cG9zZSBhIHNpbmdsZSBWRVBV
MTIxLCBzaW5jZSB0aGUgZHJpdmVyIGRvZXNu4oCZdCB5ZXQgc3VwcG9ydAogIGV4cG9zaW5nIHRo
ZW0gYWxsIGFzIGEgc2luZ2xlIHZpZGVvIG5vZGUgdG8gdXNlcnNwYWNlLgoKQ2hhbmdlcyBzaW5j
ZSB2MToKLSBEcm9wcGVkIHBhdGNoZXMgMSBhbmQgNC4KLSBVc2UgdGhlIHByb3BlciBjb21wYXRp
YmxlIGZvcm0sIHNpbmNlIHRoaXMgZGV2aWNlIHNob3VsZCBiZSBmdWxseQogIGNvbXBhdGlibGUg
d2l0aCB0aGUgVkVQVSBvZiByazM1NnguCi0gRGVzY3JpYmUgd2hlcmUgdGhlIFZFUFUxMjEgbmFt
ZSBjb21lcyBmcm9tLCBhbmQgbGlzdCBvdGhlciBlbmNvZGVycwogIGFuZCBkZWNvZGVycyBwcmVz
ZW50IGluIHRoaXMgU29DLgotIFByb3Blcmx5IHRlc3QgdGhlIGRldmljZSB0cmVlIGNoYW5nZXMs
IEkgcHJldmlvdXNseSBjb3VsZG7igJl0IHNpbmNlIEkKICB3YXMgdXNpbmcgYSB0b28gcmVjZW50
IHZlcnNpb24gb2YgcHl0aG9uLWpzb25zY2hlbWHigKYKCkVtbWFudWVsIEdpbCBQZXlyb3QgKDIp
OgogIG1lZGlhOiBkdC1iaW5kaW5nOiBEb2N1bWVudCByazM1ODjigJlzIFZFUFUxMjEKICBhcm02
NDogZHRzOiByb2NrY2hpcDogQWRkIG9uZSBWRVBVMTIxIHRvIHJrMzU4OAoKIC4uLi9iaW5kaW5n
cy9tZWRpYS9yb2NrY2hpcCxyazM1NjgtdmVwdS55YW1sICB8ICA4ICsrKy0tCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaSAgICAgfCAyOSArKysrKysrKysrKysrKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgot
LSAKMi40NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
