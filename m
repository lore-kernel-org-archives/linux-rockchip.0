Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B0CCD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 13:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KYJyZAWZp/HQPBZ6OXAMvZYVvp782qGLlyVhCwsVHM=; b=nV/DpN+rDhxjCu
	YAEhjjk+fYjnVKW3/rNn7txmA104bAftwU9fiSdGuIbFVMMPPfN/1dtUa/mqXt7c6DNCbvrhZyneQ
	QD3yo0VVyhNNSFlk8v/URFwFx3IORgxv5AuPBoGDGf8cA6qZB8q1RSsrvBtkH/PdPTVWfMcBMsDPI
	fVbywU8z2+8SNUl2Di7pDZYxMpFVdA9mCRBvOMrpyFGl3POK/mZxsoVEkLApU1Dv140trt3a+SL4+
	0KqHKT63fbhSORVzVQBm/7u+zhSpvP/MePdTa4mkFv+2OwGH5nWjLFCRv829F8XxXfFew6yF9cQEx
	brHvPnRN5o53i4TMKY1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ3hC-00000007vqV-056h;
	Thu, 21 May 2026 13:44:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ3h8-00000007voo-4AOk
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 13:44:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ3h0-0001JK-60; Thu, 21 May 2026 15:44:06 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ3gy-00174N-2S;
	Thu, 21 May 2026 15:44:05 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ3gz-00000004WQz-0oP0;
	Thu, 21 May 2026 15:44:05 +0200
Date: Thu, 21 May 2026 15:44:05 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sven =?utf-8?Q?P=C3=BCschel?= <s.pueschel@pengutronix.de>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	nicolas@ndufresne.ca, sebastian.reichel@collabora.com,
	p.zabel@pengutronix.de,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v7 10/28] media: rockchip: rga: announce and sync
 colorimetry
Message-ID: <ag8MJaSIVt4Q_y_U@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Sven =?utf-8?Q?P=C3=BCschel?= <s.pueschel@pengutronix.de>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	nicolas@ndufresne.ca, sebastian.reichel@collabora.com,
	p.zabel@pengutronix.de,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
 <20260521-spu-rga3-v7-10-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-spu-rga3-v7-10-3f33e8c7145f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_064415_033987_387D8658 
X-CRM114-Status: GOOD (  27.18  )
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

ImFubm91bmNlIGNvbG9yaW1ldHJ5IiBpbiB0aGUgc3ViamVjdCBpcyBhIGJpdCBzdHJhbmdlLiBN
YXliZSByZXBocmFzZQp0aGUgc3ViamVjdCB0bwoKCW1lZGlhOiByb2NrY2hpcDogcmdhOiBhbm5v
dW5jZSBDU0MgYW5kIHN5bmMgY29sb3JpbWV0cnkKCk9uIFRodSwgMjEgTWF5IDIwMjYgMDA6NDQ6
MTUgKzAyMDAsIFN2ZW4gUMO8c2NoZWwgd3JvdGU6Cj4gQW5ub3VuY2UgdGhlIGNhcGFiaWxpdHkg
dG8gYWRqdXN0IHRoZSBxdWFudGl6YXRpb24gYW5kIHljYmNyX2VuYyBvbiB0aGUKPiBjYXB0dXJl
IHNpZGUgYW5kIGNoZWNrIGlmIHRoZSBTRVRfQ1NDIGZsYWcgaXMgc2V0IHdoZW4gdGhlIGNvbG9y
aW1ldHJ5Cj4gaXMgY2hhbmdlZC4gRnVydGhlcm1vcmUgY29weSB0aGUgY29sb3JpbWV0cnkgZnJv
bSB0aGUgb3V0cHV0IHRvIHRoZQo+IGNhcHR1cmUgc2lkZSB0byBmaXggdGhlIGN1cnJlbnRseSBm
YWlsaW5nIHY0bDItY29tcGxpYW5jZSB0ZXN0cywgd2hpY2gKPiBleHBlY3QgZXhhY3RseSB0aGlz
IGJlaGF2aW9yLgo+IAo+IFJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1
ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5w
dWVzY2hlbEBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKPiBpbmRleCBjYThkOGE1M2RjMjUxLi44YzM0ZjczZDY5
NzY0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKPiBA
QCAtNDM3LDYgKzQzNywxNSBAQCBzdGF0aWMgaW50IHZpZGlvY19lbnVtX2ZtdChzdHJ1Y3QgZmls
ZSAqZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJfZm10ZGVzYyAqZgo+ICAJZm10ID0gJmZv
cm1hdHNbZi0+aW5kZXhdOwo+ICAJZi0+cGl4ZWxmb3JtYXQgPSBmbXQtPmZvdXJjYzsKPiAgCj4g
KwlpZiAoZi0+dHlwZSAhPSBWNEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRVUkUgJiYKPiArCSAgICBm
LT50eXBlICE9IFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRV9NUExBTkUpCgpJcyB0aGVyZSBh
IHJlYXNvbiBmb3Igbm90IHVzaW5nIFY0TDJfVFlQRV9JU19DQVBUVVJFKGYtPnR5cGUpPyBJJ2Qg
YWxzbwppbnZlcnQgdGhlIGNvbmRpdGlvbiwgc2V0IHRoZSBmbGFncyBpbiB0aGUgYnJhbmNoIGFu
ZCBoYXZlIGEgc2luZ2xlIGV4aXQKcG9pbnQgb2YgdGhpcyBmdW5jdGlvbi4KCj4gKwkJcmV0dXJu
IDA7Cj4gKwo+ICsJLyogYWxsb3cgY2hhbmdpbmcgdGhlIHF1YW50aXphdGlvbiBhbmQgeGZlciBm
dW5jIGZvciBZVVYgZm9ybWF0cyAqLwo+ICsJaWYgKHY0bDJfaXNfZm9ybWF0X3l1dih2NGwyX2Zv
cm1hdF9pbmZvKGYtPnBpeGVsZm9ybWF0KSkpCj4gKwkJZi0+ZmxhZ3MgfD0gVjRMMl9GTVRfRkxB
R19DU0NfUVVBTlRJWkFUSU9OIHwKPiArCQkJICAgIFY0TDJfRk1UX0ZMQUdfQ1NDX1lDQkNSX0VO
QzsKPiArCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiBAQCAtNDU5LDggKzQ2OCwyNSBAQCBzdGF0
aWMgaW50IHZpZGlvY19nX2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0
IHY0bDJfZm9ybWF0ICpmKQo+ICBzdGF0aWMgaW50IHZpZGlvY190cnlfZm10KHN0cnVjdCBmaWxl
ICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCj4gIHsKPiAgCXN0cnVj
dCB2NGwyX3BpeF9mb3JtYXRfbXBsYW5lICpwaXhfZm10ID0gJmYtPmZtdC5waXhfbXA7Cj4gKwlz
dHJ1Y3QgcmdhX2N0eCAqY3R4ID0gZmlsZV90b19yZ2FfY3R4KGZpbGUpOwo+ICAJc3RydWN0IHJn
YV9mbXQgKmZtdDsKPiAgCj4gKwlpZiAoVjRMMl9UWVBFX0lTX0NBUFRVUkUoZi0+dHlwZSkpIHsK
PiArCQljb25zdCBzdHJ1Y3QgcmdhX2ZyYW1lICpmcm07Cj4gKwo+ICsJCWZybSA9IHJnYV9nZXRf
ZnJhbWUoY3R4LCBmLT50eXBlKTsKPiArCQlpZiAoSVNfRVJSKGZybSkpCj4gKwkJCXJldHVybiBQ
VFJfRVJSKGZybSk7Cj4gKwo+ICsJCWlmICghKHBpeF9mbXQtPmZsYWdzICYgVjRMMl9QSVhfRk1U
X0ZMQUdfU0VUX0NTQykpIHsKPiArCQkJcGl4X2ZtdC0+cXVhbnRpemF0aW9uID0gZnJtLT5waXgu
cXVhbnRpemF0aW9uOwo+ICsJCQlwaXhfZm10LT55Y2Jjcl9lbmMgPSBmcm0tPnBpeC55Y2Jjcl9l
bmM7Cj4gKwkJfQoKQXJlIHRoZXJlIGFueSBsaW1pdHMgb24gdGhlIGNvbG9yc3BhY2UgY29udmVy
c2lvbiB0aGF0IHRoZSBSR0EgY2FuIGRvPwpJZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5LCB1c2Vy
IHNwYWNlIG1heSBzZXQgYW4gYXJiaXRyYXJ5CnY0bDJfeWNiY3JfZW5jb2RpbmcgKGZvciBleGFt
cGxlIFY0TDJfWUNCQ1JfRU5DX0JUMjAyMCkgYW5kIHRoZSBkcml2ZXIKd2lsbCBoYXBwaWx5IGFj
Y2VwdCBpdC4KCj4gKwkJLyogZGlzYWxsb3cgdmFsdWVzIG5vdCBhbm5vdW5jZWQgaW4gdmlkaW9j
X2VudW1fZm10ICovCgoiZGlzYWxsb3cgdmFsdWVzIiBzb3VuZHMgc3RyYW5nZS4gTWF5YmU6CgoJ
CS8qIFRoZSBSR0EgY2Fubm90IGNvbnZlcnQgY29sb3JzcGFjZSBhbmQgeGZlcl9mdW5jICovCgo+
ICsJCXBpeF9mbXQtPmNvbG9yc3BhY2UgPSBmcm0tPnBpeC5jb2xvcnNwYWNlOwo+ICsJCXBpeF9m
bXQtPnhmZXJfZnVuYyA9IGZybS0+cGl4LnhmZXJfZnVuYzsKPiArCX0KPiArCj4gIAlmbXQgPSBy
Z2FfZm10X2ZpbmQocGl4X2ZtdC0+cGl4ZWxmb3JtYXQpOwo+ICAJaWYgKCFmbXQpCj4gIAkJZm10
ID0gJmZvcm1hdHNbMF07Cj4gQEAgLTUwNiw2ICs1MzIsMTcgQEAgc3RhdGljIGludCB2aWRpb2Nf
c19mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAq
ZikKPiAgCWZybS0+Zm10ID0gcmdhX2ZtdF9maW5kKHBpeF9mbXQtPnBpeGVsZm9ybWF0KTsKPiAg
CWZybS0+c3RyaWRlID0gcGl4X2ZtdC0+cGxhbmVfZm10WzBdLmJ5dGVzcGVybGluZTsKPiAgCj4g
KwkvKgo+ICsJICogQ29weSBjb2xvcmltZXRyeSBmcm9tIG91dHB1dCB0byBjYXB0dXJlIGFzIHJl
cXVpcmVkIGJ5IHRoZQo+ICsJICogdjRsMi1jb21wbGlhbmNlIHRlc3RzCj4gKwkgKi8KPiArCWlm
IChWNEwyX1RZUEVfSVNfT1VUUFVUKGYtPnR5cGUpKSB7Cj4gKwkJY3R4LT5vdXQucGl4LmNvbG9y
c3BhY2UgPSBwaXhfZm10LT5jb2xvcnNwYWNlOwo+ICsJCWN0eC0+b3V0LnBpeC55Y2Jjcl9lbmMg
PSBwaXhfZm10LT55Y2Jjcl9lbmM7Cj4gKwkJY3R4LT5vdXQucGl4LnF1YW50aXphdGlvbiA9IHBp
eF9mbXQtPnF1YW50aXphdGlvbjsKPiArCQljdHgtPm91dC5waXgueGZlcl9mdW5jID0gcGl4X2Zt
dC0+eGZlcl9mdW5jOwoKSSB3YXMgdmVyeSBjb25mdXNlZCwgYmVjYXVzZSBjdHgtPm91dCBpcyBh
Y3R1YWxseSB0aGUgZm9ybWF0IGZvcgpDQVBUVVJFLiBUaGUgY29tbWVudCBraW5kIG9mIGhlbHBz
IHRvIG1hcmsgdGhpcyB0cmFwLiBOb3Qgc3VyZSwgaWYgdGhlcmUKaXMgYW55dGhpbmcgdGhhdCBj
YW4gYmUgZG9uZSBhYm91dCB0aGlzLgoKTWljaGFlbAoKPiArCX0KPiArCj4gIAkvKiBSZXNldCBj
cm9wIHNldHRpbmdzICovCj4gIAlmcm0tPmNyb3AubGVmdCA9IDA7Cj4gIAlmcm0tPmNyb3AudG9w
ID0gMDsKPiAKPiAtLSAKPiAyLjU0LjAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
