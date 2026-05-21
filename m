Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9138ECD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 14:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYjI8P1UHAhe7/HIm6/DRXxMJMOiDpJiFeQgCoLcAXs=; b=hl4JXhTugN/5bM
	XJ9CRIAm+bc4/6s3A+ctHJAB1xR6s7ILJpVySnEthZr9R4qNbzMqoNq5hnQlo5OCWzy0WSrMksBMC
	AeQbnUqv+YpbqpXqo4dqiIMy8aeZSEqUEQ9aCjCvMJzUvHQC4UoJfOtcrJXHQBCoDqZV0joRwyy+L
	sOjZH2BmRRI2v15wpnma7dkVjzMk4ti53UMFclAHLfpMtra/NK9u9gE2/WtA/TNh5zfc75/vz4jZ7
	6fMTosc0HQOfHkZpGARmxR/Tw31FbQcQDRLakDH8yVJqx3dG3PudxQRdTHT8fhA0F2uWRhGzB9NOr
	wTIKZv8rFOyFIWzwnWhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ47e-000000080TL-0jJn;
	Thu, 21 May 2026 14:11:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ47b-000000080SI-2C5X
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 14:11:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ47S-0006uw-C3; Thu, 21 May 2026 16:11:26 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ47Q-0017Ne-0g;
	Thu, 21 May 2026 16:11:24 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ47Q-00000004Ws9-2jnW;
	Thu, 21 May 2026 16:11:24 +0200
Date: Thu, 21 May 2026 16:11:24 +0200
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
Subject: Re: [PATCH v7 12/28] media: rockchip: rga: avoid odd frame sizes for
 YUV formats
Message-ID: <ag8SjJ4FvjS7GOrT@pengutronix.de>
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
 <20260521-spu-rga3-v7-12-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-spu-rga3-v7-12-3f33e8c7145f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_071135_558152_9CC19AF0 
X-CRM114-Status: GOOD (  21.96  )
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

T24gVGh1LCAyMSBNYXkgMjAyNiAwMDo0NDoxNyArMDIwMCwgU3ZlbiBQw7xzY2hlbCB3cm90ZToK
PiBBdm9pZCBvZGQgZnJhbWUgc2l6ZXMgZm9yIFlVViBmb3JtYXRzLCBhcyB0aGV5IG1heSBjYXVz
ZSB1bmRlZmluZWQKPiBiZWhhdmlvci4gVGhpcyBpcyBkb25lIGluIHByZXBhcmF0aW9uIGZvciB0
aGUgUkdBMywgd2hpY2ggaGFuZ3Mgd2hlbiB0aGUKPiBvdXRwdXQgZm9ybWF0IGlzIHNldCB0byAx
Mjl4MTI5IHBpeGVsIFlVVjQyMCBTUCAoTlYxMikuCj4gCj4gVGhpcyByZXF1aXJlbWVudCBpcyBk
b2N1bWVudGVkIGV4cGxpY2l0bHkgZm9yIHRoZSBSR0EzIGluICBzZWN0aW9uIDUuNi4zCj4gb2Yg
dGhlIFJLMzU4OCBUUk0gUGFydCAyLiBGb3IgdGhlIFJHQTIgdGhlIFJLMzU4OCBUUk0gUGFydCAy
Cj4gKHNlY3Rpb24gNi4xLjIpIGFuZCBSSzM1NjggVFJNIFBhcnQgMiAoc2VjdGlvbiAxNC4yKSBv
bmx5IG1lbnRpb25zIHRoZQo+IHgveSBvZmZzZXRzIGFuZCBzdHJpZGUgYWxpZ25pbmcgcmVxdWly
ZW1lbnRzLiBCdXQgdGhlIHZlbmRvciBkcml2ZXIgZm9yCj4gdGhlIFJHQTIgYWxzbyBjb250YWlu
cyBjaGVja3MgZm9yIHRoZSB3aWR0aCBhbmQgaGVpZ2h0IHRvIGJlIGFsaWduZWQgdG8KPiAyIGJ5
dGVzLgo+IAo+IFJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25l
QGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hl
bEBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLmMgfCAxOSArKysrKysrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4gaW5kZXggZjU5OWM5OTI4MjlkZC4uNzdiOGM3YWI3NDI3
NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Eu
Ywo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4gQEAg
LTMzNyw2ICszMzcsMTkgQEAgc3RhdGljIGludCB2aWRpb2NfdHJ5X2ZtdChzdHJ1Y3QgZmlsZSAq
ZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQo+ICAJc3RydWN0IHJnYV9j
dHggKmN0eCA9IGZpbGVfdG9fcmdhX2N0eChmaWxlKTsKPiAgCWNvbnN0IHN0cnVjdCByZ2FfaHcg
Kmh3ID0gY3R4LT5yZ2EtPmh3Owo+ICAJc3RydWN0IHJnYV9mbXQgKmZtdDsKPiArCXN0cnVjdCB2
NGwyX2ZybXNpemVfc3RlcHdpc2UgZnJtc2l6ZSA9IHsKPiArCQkubWluX3dpZHRoID0gaHctPm1p
bl93aWR0aCwKPiArCQkubWF4X3dpZHRoID0gaHctPm1heF93aWR0aCwKPiArCQkubWluX2hlaWdo
dCA9IGh3LT5taW5faGVpZ2h0LAo+ICsJCS5tYXhfaGVpZ2h0ID0gaHctPm1heF9oZWlnaHQsCj4g
KwkJLnN0ZXBfd2lkdGggPSAxLAo+ICsJCS5zdGVwX2hlaWdodCA9IDEsCj4gKwl9Owo+ICsKPiAr
CWlmICh2NGwyX2lzX2Zvcm1hdF95dXYodjRsMl9mb3JtYXRfaW5mbyhwaXhfZm10LT5waXhlbGZv
cm1hdCkpKSB7Cj4gKwkJZnJtc2l6ZS5zdGVwX3dpZHRoID0gMjsKPiArCQlmcm1zaXplLnN0ZXBf
aGVpZ2h0ID0gMjsKCklmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksIHRoaXMgbGltaXRhdGlvbiBt
YXkgYmUgYSByZXN1bHQgb2YgNDoyOjAKY2hyb21hIHN1YnNhbXBsaW5nLiBUaHVzLCBmb3JtYXRz
IHdpdGggNDoyOjIgc3Vic2FtcGxpbmcgd291bGQgYWxzbyB3b3JrCndpdGggc3RlcF9oZWlnaHQg
PSAxLgoKQXMgdGhpcyBtYXkgYmUgc29tZSBoYXJkd2FyZSBsaW1pdGF0aW9uLCBhIGNvbW1lbnQg
dGhhdCBwb2ludHMgdG8gdGhlClRSTSAoaW4gYWRkaXRpb24gdG8gdGhlIGNvbW1pdCBtZXNzYWdl
KSBtYXkgYmUgYmVuZWZpY2lhbCwgdG9vLgoKTWljaGFlbAoKPiArCX0KPiAgCj4gIAlpZiAoVjRM
Ml9UWVBFX0lTX0NBUFRVUkUoZi0+dHlwZSkpIHsKPiAgCQljb25zdCBzdHJ1Y3QgcmdhX2ZyYW1l
ICpmcm07Cj4gQEAgLTM1OCwxMSArMzcxLDcgQEAgc3RhdGljIGludCB2aWRpb2NfdHJ5X2ZtdChz
dHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQo+ICAJ
aWYgKCFmbXQpCj4gIAkJZm10ID0gJmh3LT5mb3JtYXRzWzBdOwo+ICAKPiAtCXBpeF9mbXQtPndp
ZHRoID0gY2xhbXAocGl4X2ZtdC0+d2lkdGgsCj4gLQkJCSAgICAgICBody0+bWluX3dpZHRoLCBo
dy0+bWF4X3dpZHRoKTsKPiAtCXBpeF9mbXQtPmhlaWdodCA9IGNsYW1wKHBpeF9mbXQtPmhlaWdo
dCwKPiAtCQkJCWh3LT5taW5faGVpZ2h0LCBody0+bWF4X2hlaWdodCk7Cj4gLQo+ICsJdjRsMl9h
cHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCZwaXhfZm10LT53aWR0aCwgJnBpeF9mbXQtPmhlaWdo
dCwgJmZybXNpemUpOwo+ICAJdjRsMl9maWxsX3BpeGZtdF9tcChwaXhfZm10LCBmbXQtPmZvdXJj
YywgcGl4X2ZtdC0+d2lkdGgsIHBpeF9mbXQtPmhlaWdodCk7Cj4gIAlwaXhfZm10LT5maWVsZCA9
IFY0TDJfRklFTERfTk9ORTsKPiAgCj4gCj4gLS0gCj4gMi41NC4wCj4gCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
