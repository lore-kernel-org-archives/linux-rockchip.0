Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37D3BC3DA59
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jul 2024 12:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppCYJDuYeLQ3VvgH8T7pkILH8JB3aBz44TiwtRakzhI=; b=HkAQn8+veOvctb
	qmvJFlwBnyOmIOkY9ZbK/pW3VnKboD+73G4iTCYbzfqKe0LfYqmwrAJQeKK6VIP7AWsU5K86fljg7
	gJsZyve4vs4HLrXE1V7G93PliGMMfSxYj9+6VBESVL1nsS0+kNOX+NdOmTtE7vI2ya8FS4BWp0QP5
	lix/BwNJ07NOhAHbcUu2mYw7sJUU1on5j0simsDMaA2vx2gggyIOlOv9MrZ7T4y3GIzAkWL21UX0Q
	1gTyflyKY/reKr/XixuwpLwWDFAGC/4udFUYb/8WbgWnqq1QyYX3a1QLcmzqn8o1y6h5LPHDXZ2o6
	2fSAXf2ERm1RF3aixTtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUn2C-00000002hF3-1EyX;
	Fri, 19 Jul 2024 12:48:28 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUn1m-00000002h8R-3FeS;
	Fri, 19 Jul 2024 12:48:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721393280;
	bh=lS5+DXt/Ha+/JI2+xDkk3DujgnGSvw8WsiTRVQu7cac=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=pXi0Wi7kLk7pYItYTR/Iootaqw+OWGomCJC6fR296SD1F0G2qMQDSWkvJlyhTNlju
	 AMvVVWFSTXr2k1YmDkiaEf8+0ka/IqnVojEISGLiuGY/+JMF8bRPuUj0nqw+xXHOYg
	 z//ASEHHleuAFiQiSMB47YNO3ePmN00eNIGwCaDUvboD0e5VvZmH5tL6nxhmNgfjmb
	 AatVrDI668/lLOvJ41W9hE4jTR4u5GXoDmmRz78Fu7PTxEaz2udxkf1Cdy7VlCw6+S
	 +guZdS8HIxOnuZ/spebVjPkSCzDYZAgH52WI07G8vddLTcNgbxwmV3d3SQ5g57oJZw
	 WAZx9OTjpS4qg==
Received: from [100.77.12.232] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 3DA2F37821DE;
	Fri, 19 Jul 2024 12:47:59 +0000 (UTC)
Message-ID: <b1013e9a833cf0fc6ce0bf7d0b69daeaf2938f83.camel@collabora.com>
Subject: Re: [PATCH v4 1/4] MAINTAINERS: Add entry for Synopsys DesignWare
 HDMI RX Driver
From: Christopher Obbard <chris.obbard@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>, heiko@sntech.de, 
 mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org,  mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de,  jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com, 
 nicolas.dufresne@collabora.com, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Date: Fri, 19 Jul 2024 13:47:58 +0100
In-Reply-To: <20240719124032.26852-2-shreeya.patel@collabora.com>
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
	 <20240719124032.26852-2-shreeya.patel@collabora.com>
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_054802_963760_C19E81F3 
X-CRM114-Status: GOOD (  13.78  )
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

SGkgU2hyZWV5YSwKCk9uIEZyaSwgMjAyNC0wNy0xOSBhdCAxODoxMCArMDUzMCwgU2hyZWV5YSBQ
YXRlbCB3cm90ZToKPiBBZGQgYW4gZW50cnkgZm9yIFN5bm9wc3lzIERlc2lnbldhcmUgSERNSSBS
ZWNlaXZlciBDb250cm9sbGVyCj4gRHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNocmVleWEg
UGF0ZWwgPHNocmVleWEucGF0ZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAKPiBDaGFuZ2VzIGlu
IHY0IDotCj4gwqAgLSBObyBjaGFuZ2UKPiAKPiBDaGFuZ2VzIGluIHYzIDotCj4gwqAgLSBObyBj
aGFuZ2UKPiAKPiBDaGFuZ2VzIGluIHYyIDotCj4gwqAgLSBBZGQgYSBwYXRjaCBmb3IgTUFJTlRB
SU5FUlMgZmlsZSBjaGFuZ2VzCj4gCj4gwqBNQUlOVEFJTkVSUyB8IDggKysrKysrKysKPiDCoDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5F
UlMgYi9NQUlOVEFJTkVSUwo+IGluZGV4IDFjODdiNDcxOTQxYy4uMGYwZTFkNThhYmZmIDEwMDY0
NAo+IC0tLSBhL01BSU5UQUlORVJTCj4gKysrIGIvTUFJTlRBSU5FUlMKPiBAQCAtMjIxMzgsNiAr
MjIxMzgsMTQgQEAgRjoJZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLmMKPiDCoEY6CWRyaXZlcnMv
bmV0L3Bjcy9wY3MteHBjcy5oCj4gwqBGOglpbmNsdWRlL2xpbnV4L3Bjcy9wY3MteHBjcy5oCj4g
wqAKPiArU1lOT1BTWVMgREVTSUdOV0FSRSBIRE1JIFJYIENPTlRST0xMRVIgRFJJVkVSCgpQZXJo
YXBzIGEgbW9yZSBkZXNjcmlwdGl2ZSBuYW1lIGNvdWxkIGJlICJTWU5PUFNZUyBERVNJR05XQVJF
IEhETUkgUkVDRUlWRVIKRFJJVkVSIiB0byBiZXR0ZXIgbWF0Y2ggdGhlIElQIG5hbWU6Cmh0dHBz
Oi8vd3d3LnN5bm9wc3lzLmNvbS9kdy9pcGRpci5waHA/ZHM9ZHdjX2hkbWlfMjBfY3Nkc19yeAoK
Cj4gK006CVNocmVleWEgUGF0ZWwgPHNocmVleWEucGF0ZWxAY29sbGFib3JhLmNvbQpTaG91bGQg
dGhpcyBub3QgYmU6CiBTaHJlZXlhIFBhdGVsIDxzaHJlZXlhLnBhdGVsQGNvbGxhYm9yYS5jb20+
CgpZb3Ugc2VlbSB0byBiZSBtaXNzaW5nIHRoZSBmaW5hbCA+IGF0IHRoZSBlbmQgb2YgdGhlIGxp
bmUgPwoKCldpdGggdGhlIGFib3ZlIGZpeGVkOgpSZXZpZXdlZC1ieTogQ2hyaXN0b3BoZXIgT2Ji
YXJkIDxjaHJpcy5vYmJhcmRAY29sbGFib3JhLmNvbT4KCj4gK0w6CWxpbnV4LW1lZGlhQHZnZXIu
a2VybmVsLm9yZwo+ICtMOglrZXJuZWxAY29sbGFib3JhLmNvbQo+ICtTOglNYWludGFpbmVkCj4g
K0Y6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zbnBzLGR3LWhkbWkt
cngueWFtbAo+ICtGOglkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N5bm9wc3lzL2hkbWlyeC8qCj4g
Kwo+IMKgU1lOT1BTWVMgREVTSUdOV0FSRSBJMkMgRFJJVkVSCj4gwqBNOglKYXJra28gTmlrdWxh
IDxqYXJra28ubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KPiDCoFI6CUFuZHkgU2hldmNoZW5rbyA8
YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
