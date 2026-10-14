Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79407CC6B24
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 07:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9MeeA/xdDl0gybR/vFM1ADAAaNhTxWy62n1TNESMlw=; b=P8SCWiOm5wMysK
	lbnH8nfiB7KTecYXltDqE6p5ZT2VT457B1uhSGQvIDi4K24/7JP8D8ozq9uMs/M0ECeT1r5HsrXBi
	pZ9nrkB12kWbCaWHrgJt/fgcA/sydjnn428FfVAowTBQO4nckewLLzrKoF6qNdIixOF/+f5w5XAZA
	PFEtEfbZx/WNH+5SXJNWkElNrguBtxyBR1SarvuDAWZTlkQs2qcTXbus/Xgyh+yZQpPWYhHBqqDiu
	gKT1hGujkM6ZzQ3lT7LgV+IIVM3i8w3pDVj5YwQKfTDUqTqgcPyG/bgsH7QrkDlz69UgqN6SvNqaK
	LvalJ8SF+hGxBWUl2ShQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGtP7-0000000ElKf-49Bi;
	Wed, 14 Oct 2026 07:28:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGtP7-0000000ElJZ-0FiT;
	Wed, 14 Oct 2026 07:28:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A80D43868;
	Wed, 14 Oct 2026 07:28:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD0AA1F000FF;
	Wed, 14 Oct 2026 07:27:55 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v2] PCI: rockchip: Skip the Tpvperl wait when power is
 already valid
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: =?utf-8?q?Enrique_Hern=C3=A1ndez_Bello?= <ehbello@gmail.com>
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
 mani@kernel.org, bhelgaas@google.com, robh@kernel.org, heiko@sntech.de, 
 dlemoal@kernel.org, linux-pci@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20260911211559.207990-1-ehbello@gmail.com>
References: <20260911211559.207990-1-ehbello@gmail.com>
Date: Wed, 14 Oct 2026 12:57:47 +0530
Message-Id: <179196286749.38040.5597453767131590054.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2102;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=n3FTo4mK9R/lIGl5C3jeelRqRYzuENdY8tuLlXHAZOc=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBqzy72A6EYqXUa8oem4GQlieL7BdAjqrbq/LHus
 95HXXNGgXqJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCas8u9gAKCRBVnxHm/pHO
 9VzpB/9GLv7F5DEMWwQ3WZjJLu4Q7SDngruevsqLwGdrOGO7UOVSUAgVdr7yQ57EUHYIaeZF5jp
 Pl/kg+HBvpSxkjLex1X5MQSkf2u1VGWSk0SZT/0DsNYYQzNE/9oBlSZLEzdCZJeu/+/OyRl6Xyk
 LCuLsMqwOy+cVpFLHNsNLqxRjcnKBlDyVo+76vBGsF/woWmS9WeFOWS/I9RYFhJ5M2Qjrx0zJEu
 4UGxgjsyHy9OhBypKbC/c+0i59rAqfwMZn4NxjTHpwQEkQW1zgafnsKHcXnSdc2zrYqzVA3jBv5
 CkBZWRKvHxzrhppg5Wu6eG3LH4WUTlgxkkBZoiHvsH+0v0CG
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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

T24gMjAyNi0wOS0xMSAyMjoxNSArMDEwMCwgRW5yaXF1ZSBIZXJuw6FuZGV6IEJlbGxvIHdyb3Rl
Ogo+IFNpbmNlIGNvbW1pdCBjNDdmOTBiZTRjODkgKCJQQ0k6IHJvY2tjaGlwLWhvc3Q6IEZpeAo+
IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoKSBQRVJTVCMgaGFuZGxpbmciKSwgYSBKTWlj
cm9uIEpNQjU4NQo+IGJlaGluZCBhbiByazMzOTkgcm9vdCBwb3J0IGFsbW9zdCBuZXZlciBiZWNv
bWVzIHVzYWJsZTogdGhlIGxpbmsgdHJhaW5zCj4gbm9ybWFsbHksIGJ1dCB0aGUgZW5kcG9pbnQn
cyBjb25maWd1cmF0aW9uIHNwYWNlIG5ldmVyIGFuc3dlcnMsIHNvIHRoZQo+IGRldmljZSBpcyBu
b3QgZW51bWVyYXRlZC4gT24gdGhpcyBjb250cm9sbGVyIGEgY29uZmlndXJhdGlvbiByZWFkIHRo
YXQKPiBnZXRzIG5vIHVzYWJsZSBjb21wbGV0aW9uIGlzIHJlcG9ydGVkIGFzIGFuIGV4dGVybmFs
IGFib3J0IHJhdGhlciB0aGFuCj4gYXMgYW4gYWxsLW9uZXMgcmVzcG9uc2UsIHdoaWNoIG9uIGFy
bTY0IGJyaW5ncyB0aGUgbWFjaGluZSBkb3duLgo+IAo+IFRoZSBjaGFuZ2UgYWRkZWQgYW4gdW5j
b25kaXRpb25hbCAxMDAgbXMgc2xlZXAgc28gdGhhdCBQRVJTVCMgc3RheXMKPiBhc3NlcnRlZCBm
b3IgYXQgbGVhc3QgVHB2cGVybCBhZnRlciBwb3dlciBiZWNvbWVzIHZhbGlkLiBUaGUgd2FpdCBp
cwo+IHBlcmZvcm1lZCB3aGlsZSBQRVJTVCMgaXMgYXNzZXJ0ZWQsIHNvIGl0IGFsc28gZXh0ZW5k
cyB0aGUgcmVzZXQgYnkKPiAxMDAgbXMsIGFuZCB0aGlzIGVuZHBvaW50IGRvZXMgbm90IHRvbGVy
YXRlIHRoZSBsb25nZXIgYXNzZXJ0aW9uLgo+IAoKVGhpcyBpcyBoYXJkIHRvIGJlbGlldmUuIEZp
cnN0IG9mIGFsbCwgVHB2cGVybCBpcyB0aGUgbWluIHRpbWUgc3BlY2lmaWVkIGJ5IHRoZQpDRU0g
c3BlYyB0byBhbGxvdyB0aGUgcG93ZXIgdG8gYmUgc3RhYmxlLCBub3QgdGhlIG1heC4gRXZlbiBp
ZiB0aGUgYm9vdGxvYWRlcgpoYXMgYWxyZWFkeSBlbmFibGVkIHRoZSBwb3dlciBzdXBwbHkgZHVy
aW5nIGJvb3QsIGl0IHdvdWxkJ3ZlIHRha2VuIHNldmVyYWwKc2Vjb25kcyBmb3IgdGhlIGtlcm5l
bCBkcml2ZXIgdG8gcHJvYmUgYW5kIGV4ZWN1dGUgdGhpcyBkZWxheSBvZiAxMDBtcy4gQnV0CmNs
YWltaW5nIHRoYXQgdGhlIEVuZHBvaW50IGRvZXNuJ3QgdG9sZXJhdGUgdGhpcyAxMDBtcyBkZWxh
eSwgYnV0IHN0aWxsIHNldmVyYWwKc2Vjb25kcyBvZiB0aGUgYm9vdCBkZWxheSBpcyBxdWl0ZSBo
YXJkIHRvIGJlbGlldmUuCgpNYXliZSB0aGUgaXNzdWUgaXMgd2l0aCB0aGUgZGVsYXkgYmV0d2Vl
biBQRVJTVCMgYXNzZXJ0IGFuZCBkZWFzc2VydD8gSXMgdGhlClBFUlNUIyBzaWduYWwgcG9sYXJp
dHkgb24gdGhlIGJvYXJkIERUUyBjb3JyZWN0PyBXZSB1c2VkIHRvIHNlZSBFbmRwb2ludApmaXJt
d2FyZSBjcmFzaGVzIHdoZW4gdGhlIHBvbGFyaXR5IHdhcyBpbmNvcnJlY3QgYW5kIHRoZSBFbmRw
b2ludCBnb3QgY29uZnVzZWQKd2l0aCBpbmNvcnJlY3QgUEVSU1QjIHNlcXVlbmNlLgoKPiBUcHZw
ZXJsIGlzIGNvdW50ZWQgZnJvbSB0aGUgc3VwcGxpZXMgYmVjb21pbmcgdmFsaWQgKFBDSWUgQ0VN
IHI1LjEsCj4gc2VjIDIuOS4yKS4gT24gYm9hcmRzIHdob3NlIFBDSWUgc3VwcGxpZXMgYXJlIGFs
d2F5cy1vbiAtLSB2Y2MzdjNfcGNpZQo+IG9uIFJPQ0sgUGkgNCBpcyByZWd1bGF0b3ItYWx3YXlz
LW9uIGFuZCByZWd1bGF0b3ItYm9vdC1vbiAtLSBwb3dlciBoYXMKPiBiZWVuIHZhbGlkIHNpbmNl
IGJvb3QsIHNlY29uZHMgYmVmb3JlIHRoZSBkcml2ZXIgcHJvYmVzLCBzbyB0aGUKPiByZXF1aXJl
bWVudCBpcyBhbHJlYWR5IG1ldCBhbmQgdGhlIHNsZWVwIG9ubHkgbGVuZ3RoZW5zIHRoZSByZXNl
dC4KPiAKCkkgZG8gYWdyZWUgdGhhdCB0aGUgVHB2cGVybCBkZWxheSBpcyAqcmVkdW5kYW50KiBp
ZiB0aGUgc3VwcGxpZXMgYXJlIGFscmVhZHkKZW5hYmxlZCBieSB0aGUgYm9vdGxvYWRlci4gQnV0
IEkgZG8gbm90IGFncmVlIHRoYXQgaXQgY2F1c2VzIHRoZSBFbmRwb2ludCB0byBub3QKcmVzcG9u
ZC4KCi0gTWFuaQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
