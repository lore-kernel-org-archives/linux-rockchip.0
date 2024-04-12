Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B896C04FF8
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 15:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vavpRHE67U6oH64LRWweR+bOZ5GM2kHYYAyDOMhTerc=; b=cg2xur+celYzfG
	NbCrDDGVQGqEcloowT/ewY2Bi3WlmrnX8oibx1gDo2rBpPtUNtCVsrKqsAXZ6iTkJBM0uCwWiD3Fq
	U/7TYhbhsFc0BvG+zd8UIWg4blj6y0dCus+XjB5QKTGoxg7uXmq/D3fLG0LUbn6wWvL7oty5NnAjw
	STsbeexhYkL7HeJ8dC/eGE7GxQ1B04xmjZq3RHaWey8WI/eb33WTpnJJK5Lyv1c3ybkgyomwMCI/o
	3NIgLp2d7/HkhAuyT+6U7LsETS0YUeVM6bb4iSYYIWMds5yKdj5m5mZl57d10yNFqXxTXfQ6NYQTQ
	Vu3bv1wGWgSO/v7rN/4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvIcl-00000000AfU-48Dy;
	Fri, 12 Apr 2024 15:15:31 +0000
Received: from [2a01:e0a:828:c7c0:e2d5:5eff:fe2d:8e8] (helo=luna.linkmauve.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvIca-00000000AXI-2mVS;
	Fri, 12 Apr 2024 15:15:22 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id 7066A10A2673; Fri, 12 Apr 2024 17:15:17 +0200 (CEST)
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
Subject: [PATCH v3 0/2] Enable JPEG encoding on rk3588
Date: Fri, 12 Apr 2024 17:15:09 +0200
Message-ID: <20240412151515.837824-1-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_081520_858668_42DE8222 
X-CRM114-Status: GOOD (  13.16  )
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
ClsxXSBodHRwczovL2NyYXRlcy5pby9jcmF0ZXMvb25peAoKQ2hhbmdlcyBzaW5jZSB2MjoKLSBP
bmx5IGV4cG9zZSBhIHNpbmdsZSBWRVBVMTIxLCBzaW5jZSB0aGUgZHJpdmVyIGRvZXNu4oCZdCB5
ZXQgc3VwcG9ydAogIGV4cG9zaW5nIHRoZW0gYWxsIGFzIGEgc2luZ2xlIHZpZGVvIG5vZGUgdG8g
dXNlcnNwYWNlLgoKQ2hhbmdlcyBzaW5jZSB2MToKLSBEcm9wcGVkIHBhdGNoZXMgMSBhbmQgNC4K
LSBVc2UgdGhlIHByb3BlciBjb21wYXRpYmxlIGZvcm0sIHNpbmNlIHRoaXMgZGV2aWNlIHNob3Vs
ZCBiZSBmdWxseQogIGNvbXBhdGlibGUgd2l0aCB0aGUgVkVQVSBvZiByazM1NnguCi0gRGVzY3Jp
YmUgd2hlcmUgdGhlIFZFUFUxMjEgbmFtZSBjb21lcyBmcm9tLCBhbmQgbGlzdCBvdGhlciBlbmNv
ZGVycwogIGFuZCBkZWNvZGVycyBwcmVzZW50IGluIHRoaXMgU29DLgotIFByb3Blcmx5IHRlc3Qg
dGhlIGRldmljZSB0cmVlIGNoYW5nZXMsIEkgcHJldmlvdXNseSBjb3VsZG7igJl0IHNpbmNlIEkK
ICB3YXMgdXNpbmcgYSB0b28gcmVjZW50IHZlcnNpb24gb2YgcHl0aG9uLWpzb25zY2hlbWHigKYK
CkVtbWFudWVsIEdpbCBQZXlyb3QgKDIpOgogIG1lZGlhOiBkdC1iaW5kaW5nOiBtZWRpYTogRG9j
dW1lbnQgcmszNTg44oCZcyBWRVBVMTIxCiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBvbmUg
VkVQVTEyMSB0byByazM1ODgKCiAuLi4vYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAscmszNTY4LXZl
cHUueWFtbCAgfCAgOCArKystLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LmR0c2kgICAgIHwgMjkgKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzNSBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKLS0gCjIuNDQuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
