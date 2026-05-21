Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A92CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 14:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5iOy/gWZ7dldOmNzLGpFzToC1L4Ito9s4MYrfxx60U=; b=a9M5PEv20ZxSbi
	dC/yu+aaNH1UPfWj7/N21at1JYPJO4VHcx1aXCM1Ash3b68D086VayeKyH826NsgrnBYNRUz5MbIp
	RF/tfTsUnUXWeSOsFGb08spaDraPy1TUg6mMVD7NoOfGvMEqKO9B75StaTtN9YUEo//cU09fX1hBh
	RlDHvnLGbX8MratUKuQxNteAzabwJ3fUvk8MtMCsUkrHOr25tmslnnhJXAkqRHmMvT2K29dQazUjy
	rXN9oGiP/flPMb9WvoQu2V9hBKYHITxg9ezZsjBfAN4dS2ogmOU1Wt1kAsAyhDI7SfJK7TOvr0Q41
	2QkFpeqFjKOSBgmQn5bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4In-000000082xJ-2t7s;
	Thu, 21 May 2026 14:23:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4Il-000000082wA-23Sz
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 14:23:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Ic-00005O-K7; Thu, 21 May 2026 16:22:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Ia-0017OY-2m;
	Thu, 21 May 2026 16:22:57 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Ib-00000004Wwg-1IML;
	Thu, 21 May 2026 16:22:57 +0200
Date: Thu, 21 May 2026 16:22:57 +0200
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
Subject: Re: [PATCH v7 15/28] media: rockchip: rga: align stride to 4 bytes
Message-ID: <ag8VQas7BPnKZNxd@pengutronix.de>
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
 <20260521-spu-rga3-v7-15-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-spu-rga3-v7-15-3f33e8c7145f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_072307_530424_5C6D6F17 
X-CRM114-Status: GOOD (  24.47  )
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

T24gVGh1LCAyMSBNYXkgMjAyNiAwMDo0NDoyMCArMDIwMCwgU3ZlbiBQw7xzY2hlbCB3cm90ZToK
PiBBZGQgYW4gYWxpZ25tZW50IHNldHRpbmcgdG8gcmdhX2h3IHRvIHNldCB0aGUgZGVzaXJlZCBz
dHJpZGUgYWxpZ25tZW50Lgo+IEFzIHRoZSBSR0EyIHJlZ2lzdGVyIGZvciB0aGUgc3RyaWRlIGNv
dW50cyBpbiB3b3JkIHVuaXRzLCB0aGUgY29kZQo+IGFscmVhZHkgZGl2aWRlcyB0aGUgYnl0ZXNw
ZXJsaW5lIHZhbHVlIGJ5IDQgd2hlbiB3cml0aW5nIGl0IGludG8gdGhlCj4gcmVnaXN0ZXIuIFRo
ZXJlZm9yZSBmaXggdGhlIGFsaWdubWVudCB0byBhIG11bHRpcGxlIG9mIDQgdG8gYXZvaWQKPiBw
b3RlbnRpYWwgb2ZmIGJ5IG9uZSBlcnJvcnMgZHVlIGZyb20gdGhlIGRpdmlzaW9uLgo+IAo+IFJl
dmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25p
eC5kZT4KClJldmlld2VkLWJ5OiBNaWNoYWVsIFRyZXR0ZXIgPG0udHJldHRlckBwZW5ndXRyb25p
eC5kZT4KCj4gCj4gLS0tCj4gQ2hhbmdlZCBpbiB2NjoKPiAtIERyb3AgdW5pbnRlbmRlZCBjaGFu
Z2UgZnJvbSBmbXQtPmZvdXJjYyB0byBwaXhfZm10LT5waXhlbGZvcm1hdAo+ICAgRmxhZ2dlZCBi
eSBTYXNoaWtvOgo+ICAgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNDI4LXNw
dS1yZ2EzLXY1LTAtZWI3ZjVkMDE5ZDg2JTQwcGVuZ3V0cm9uaXguZGU/cGFydD0xNQo+IC0tLQo+
ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyB8ICAxICsKPiAg
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgfCAxMSArKysrKyst
LS0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCAgICB8ICAx
ICsKPiAgMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1o
dy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMKPiBpbmRl
eCA5ODgxYzE0ZjkwOGQ1Li5kYWMzY2I2YWExN2QzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMKPiBAQCAtNTgwLDYgKzU4MCw3IEBAIGNvbnN0
IHN0cnVjdCByZ2FfaHcgcmdhMl9odyA9IHsKPiAgCS5tYXhfd2lkdGggPSBNQVhfV0lEVEgsCj4g
IAkubWluX2hlaWdodCA9IE1JTl9IRUlHSFQsCj4gIAkubWF4X2hlaWdodCA9IE1BWF9IRUlHSFQs
Cj4gKwkuc3RyaWRlX2FsaWdubWVudCA9IDQsCj4gIAo+ICAJLnN0YXJ0ID0gcmdhX2h3X3N0YXJ0
LAo+ICAJLmhhbmRsZV9pcnEgPSByZ2FfaGFuZGxlX2lycSwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwo+IGluZGV4IGJmNmJiY2JmYzg2OWIuLmQwODBjYjY3Mjc0
MGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwo+IEBA
IC0yMzQsMTAgKzIzNCwxMCBAQCBzdGF0aWMgaW50IHJnYV9vcGVuKHN0cnVjdCBmaWxlICpmaWxl
KQo+ICAJY3R4LT5pbiA9IGRlZl9mcmFtZTsKPiAgCWN0eC0+b3V0ID0gZGVmX2ZyYW1lOwo+ICAK
PiAtCXY0bDJfZmlsbF9waXhmbXRfbXAoJmN0eC0+aW4ucGl4LAo+IC0JCQkgICAgY3R4LT5pbi5m
bXQtPmZvdXJjYywgZGVmX3dpZHRoLCBkZWZfaGVpZ2h0KTsKPiAtCXY0bDJfZmlsbF9waXhmbXRf
bXAoJmN0eC0+b3V0LnBpeCwKPiAtCQkJICAgIGN0eC0+b3V0LmZtdC0+Zm91cmNjLCBkZWZfd2lk
dGgsIGRlZl9oZWlnaHQpOwo+ICsJdjRsMl9maWxsX3BpeGZtdF9tcF9hbGlnbmVkKCZjdHgtPmlu
LnBpeCwgY3R4LT5pbi5mbXQtPmZvdXJjYywKPiArCQkJCSAgICBkZWZfd2lkdGgsIGRlZl9oZWln
aHQsIHJnYS0+aHctPnN0cmlkZV9hbGlnbm1lbnQpOwo+ICsJdjRsMl9maWxsX3BpeGZtdF9tcF9h
bGlnbmVkKCZjdHgtPm91dC5waXgsIGN0eC0+b3V0LmZtdC0+Zm91cmNjLAo+ICsJCQkJICAgIGRl
Zl93aWR0aCwgZGVmX2hlaWdodCwgcmdhLT5ody0+c3RyaWRlX2FsaWdubWVudCk7Cj4gIAo+ICAJ
aWYgKG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmcmdhLT5tdXRleCkpIHsKPiAgCQlyZXQgPSAt
RVJFU1RBUlRTWVM7Cj4gQEAgLTM5Myw3ICszOTMsOCBAQCBzdGF0aWMgaW50IHZpZGlvY190cnlf
Zm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYp
Cj4gIAkJZm10ID0gJmh3LT5mb3JtYXRzWzBdOwo+ICAKPiAgCXY0bDJfYXBwbHlfZnJtc2l6ZV9j
b25zdHJhaW50cygmcGl4X2ZtdC0+d2lkdGgsICZwaXhfZm10LT5oZWlnaHQsICZmcm1zaXplKTsK
PiAtCXY0bDJfZmlsbF9waXhmbXRfbXAocGl4X2ZtdCwgZm10LT5mb3VyY2MsIHBpeF9mbXQtPndp
ZHRoLCBwaXhfZm10LT5oZWlnaHQpOwo+ICsJdjRsMl9maWxsX3BpeGZtdF9tcF9hbGlnbmVkKHBp
eF9mbXQsIGZtdC0+Zm91cmNjLAo+ICsJCQkJICAgIHBpeF9mbXQtPndpZHRoLCBwaXhfZm10LT5o
ZWlnaHQsIGh3LT5zdHJpZGVfYWxpZ25tZW50KTsKPiAgCXBpeF9mbXQtPmZpZWxkID0gVjRMMl9G
SUVMRF9OT05FOwo+ICAKPiAgCXJldHVybiAwOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmdhL3JnYS5oCj4gaW5kZXggMDRhZWI3YjQyOTUyMy4uMzg1MTgxNDY5MTBhNiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAo+ICsr
KyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCj4gQEAgLTE1MCw2
ICsxNTAsNyBAQCBzdHJ1Y3QgcmdhX2h3IHsKPiAgCXNpemVfdCBjbWRidWZfc2l6ZTsKPiAgCXUz
MiBtaW5fd2lkdGgsIG1pbl9oZWlnaHQ7Cj4gIAl1MzIgbWF4X3dpZHRoLCBtYXhfaGVpZ2h0Owo+
ICsJdTggc3RyaWRlX2FsaWdubWVudDsKPiAgCj4gIAl2b2lkICgqc3RhcnQpKHN0cnVjdCByb2Nr
Y2hpcF9yZ2EgKnJnYSwKPiAgCQkgICAgICBzdHJ1Y3QgcmdhX3ZiX2J1ZmZlciAqc3JjLCBzdHJ1
Y3QgcmdhX3ZiX2J1ZmZlciAqZHN0KTsKPiAKPiAtLSAKPiAyLjU0LjAKPiAKPiAKCi0tIApQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBNaWNoYWVsIFRyZXR0ZXIg
ICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAg
fCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZS8gfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2Vy
aWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2
OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
