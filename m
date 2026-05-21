Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B0ECD4F3D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 14:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFBtpmTzT9wJfXVZZ8kEApsU1Oebz/2iedVgWMgI7WY=; b=L+7QVntFyAXCjs
	6xEb1Wg1H2lyvWSAjT/jOBWXYbxi5LDGy3hNyMJDta06h611i977BlaUn5TS2d6P1eN0C0fCexHL6
	Hm63DXVeNdofUtwKQEnpFLjMntG6d+vr2f7Xvl8KQyaKu3uHJcpFFbx1PP0lMzlECEhRcS/vpLLA5
	gW5Gtc0Ix4w1mQZoK518BtG/INhqdyyJM6EVE/4j75WrdMaGLK90hpXFMdR1JD6tF4FTwTauVbbqX
	GYdbuc5chjcF0NIhJmWZnZ67jpCPgLeEcoLDYLE1aqSMWPfN9Q9bKKuwc3iTN8GwJnHEc9jRViwbF
	bjFdTcsBsfBG/c9FEPxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4OM-000000083us-3G6u;
	Thu, 21 May 2026 14:28:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4OK-000000083ti-3DPi
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 14:28:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4OC-0000xx-9s; Thu, 21 May 2026 16:28:44 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4OB-0017PQ-0r;
	Thu, 21 May 2026 16:28:43 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4OB-00000004X5s-2zV1;
	Thu, 21 May 2026 16:28:43 +0200
Date: Thu, 21 May 2026 16:28:43 +0200
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
Subject: Re: [PATCH v7 18/28] media: rockchip: rga: use card type to specify
 rga type
Message-ID: <ag8Wmzu98CypE4ZV@pengutronix.de>
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
 <20260521-spu-rga3-v7-18-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-spu-rga3-v7-18-3f33e8c7145f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_072852_806616_1D786CE3 
X-CRM114-Status: GOOD (  20.77  )
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

T24gVGh1LCAyMSBNYXkgMjAyNiAwMDo0NDoyMyArMDIwMCwgU3ZlbiBQw7xzY2hlbCB3cm90ZToK
PiBJbiBwcmVwYXJhdGlvbiBvZiB0aGUgUkdBMyBzdXBwb3J0IGFkZCBhIGZpbGVkIHRvIHRoZSBy
Z2FfaHcgc3RydWN0CgoqZmllbGQKCj4gdG8gc3BlY2lmeSB0aGUgZGVzaXJlZCBjYXJkIHR5cGUg
dmFsdWUuIFRoaXMgYWxsb3dzIHRoZSB1c2VyIHRvCj4gZGlmZmVyZW50aWF0ZSB0aGUgUkdBMiBh
bmQgUkdBMyB2aWRlbyBkZXZpY2Ugbm9kZXMuCj4gCj4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVm
cmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBT
dmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyB8IDEgKwo+ICBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyAgICB8IDQgKysrLQo+ICBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCAgICB8IDEgKwo+ICAzIGZpbGVzIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCj4gaW5kZXggZjI5MDA4MTJiYTc2Zi4uNDNm
ZDAyM2I3NTcxYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EtaHcuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS1ody5jCj4gQEAgLTU3Nyw2ICs1NzcsNyBAQCBzdGF0aWMgc3RydWN0IHJnYV9mbXQgZm9y
bWF0c1tdID0gewo+ICB9Owo+ICAKPiAgY29uc3Qgc3RydWN0IHJnYV9odyByZ2EyX2h3ID0gewo+
ICsJLmNhcmRfdHlwZSA9ICJyZ2EyIiwKClRoaXMgY2hhbmdlcyB0aGUgY2FyZCB0eXBlIGZyb20g
InJvY2tjaGlwLXJnYSIgdG8gInJnYTIiLCB3aGljaCBpcyBhCnVzZXIgc3BhY2UgdmlzaWJsZSBj
aGFuZ2UgYW5kIG1heSBicmVhayB1c2VyIHNwYWNlLiBJcyB0aGlzIGFjY2VwdGFibGUKb3IgZXZl
biBpbnRlbnRpb25hbD8KCk1pY2hhZWwKCj4gIAkuZm9ybWF0cyA9IGZvcm1hdHMsCj4gIAkubnVt
X2Zvcm1hdHMgPSBBUlJBWV9TSVpFKGZvcm1hdHMpLAo+ICAJLmNtZGJ1Zl9zaXplID0gUkdBX0NN
REJVRl9TSVpFLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4g
aW5kZXggMjI5NTRiYmFlNTVmYy4uOTE3NzViNDNmZjYxNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4gQEAgLTM1NCw4ICszNTQsMTAgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCB2NGwyX2ZpbGVfb3BlcmF0aW9ucyByZ2FfZm9wcyA9IHsKPiAgc3RhdGlj
IGludAo+ICB2aWRpb2NfcXVlcnljYXAoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0
cnVjdCB2NGwyX2NhcGFiaWxpdHkgKmNhcCkKPiAgewo+ICsJc3RydWN0IHJvY2tjaGlwX3JnYSAq
cmdhID0gdmlkZW9fZHJ2ZGF0YShmaWxlKTsKPiArCj4gIAlzdHJzY3B5KGNhcC0+ZHJpdmVyLCBS
R0FfTkFNRSwgc2l6ZW9mKGNhcC0+ZHJpdmVyKSk7Cj4gLQlzdHJzY3B5KGNhcC0+Y2FyZCwgInJv
Y2tjaGlwLXJnYSIsIHNpemVvZihjYXAtPmNhcmQpKTsKPiArCXN0cnNjcHkoY2FwLT5jYXJkLCBy
Z2EtPmh3LT5jYXJkX3R5cGUsIHNpemVvZihjYXAtPmNhcmQpKTsKPiAgCXN0cnNjcHkoY2FwLT5i
dXNfaW5mbywgInBsYXRmb3JtOnJnYSIsIHNpemVvZihjYXAtPmJ1c19pbmZvKSk7Cj4gIAo+ICAJ
cmV0dXJuIDA7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKPiBp
bmRleCBkZjUyNWM2YWVhOGI2Li5jZWUyZTc1ZWE4OWYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKPiBAQCAtMTQ5LDYgKzE0OSw3IEBAIHN0YXRpYyBp
bmxpbmUgdm9pZCByZ2FfbW9kKHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSwgdTMyIHJlZywgdTMy
IHZhbCwgdTMyIG1hc2spCj4gIH07Cj4gIAo+ICBzdHJ1Y3QgcmdhX2h3IHsKPiArCWNvbnN0IGNo
YXIgKmNhcmRfdHlwZTsKPiAgCXN0cnVjdCByZ2FfZm10ICpmb3JtYXRzOwo+ICAJdTMyIG51bV9m
b3JtYXRzOwo+ICAJc2l6ZV90IGNtZGJ1Zl9zaXplOwo+IAo+IC0tIAo+IDIuNTQuMAo+IAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
