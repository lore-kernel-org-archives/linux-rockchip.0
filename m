Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DBD6C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 09:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLZHLYtEWEYxaN53+twQTCbYyK9kt8ILl7cP7MfncS8=; b=3nDH1/7uZZsSqs
	G26JGYY8o5tGVjw5vbBoYV+7EZtajn4fOssNrkDnK/F7p/CZS9rMnCwwAuz/j4Ru1ovUeg8oD/Tij
	snim1O01ZJoHbLia/wANVRY63M5RlTiWqxudwT2BWKM1iLnXKi6mbOgkO6jGr+oHOuDEwE8xff7U2
	AofCi+SUI8AEFzghTvHXtd74A44cSsqc6KzoWsByK+c/qaaRD+HzKQh3ok/VLnKuRVyxlB75HO8Yj
	cWEMYwxLz8k3cGXPksqpxJts6/GGFY1rx6hCXtpapjVe9M7GwELXRN3Oe94HqVwoB0A2Yjmbh8Qwb
	OtjgufLhu7LQStFAcNbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werfj-00000001FGL-00UW;
	Wed, 01 Jul 2026 09:55:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werff-00000001FFR-1IWR;
	Wed, 01 Jul 2026 09:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=YXbWsJdVyrdyTG0h5l7l2loSKTm6mVXPsPtw2ami5dk=; b=CBFCH8L3XGKiP/K1ZN7vVXVeHO
	TYkbcdRb7HG3F74/uf8JkzcO+CYf/pQ8hVd/bQW64Ez2rZ4zxcV4TD0jnnJseomf1envfpC8mnB+Q
	AXx+xHjOmIhyrn9yFTao5hqiJWjmm1v9eFQzdTye49MOlx8QrLadNqQKz4MVVq9UicyCi7m9t222i
	SUAkN9B4gjxbnt2lMrxs+JROzdPZgH7xqe3MBWAMt+K5c4hXSLlrlhoQtMTZaYHbAKEzBypRxVrM4
	X4p3CoGibwpF2ye7JhDmqplKnFc8fTDvLGL3P4wY8T7vuXpwFxPsznPvG3gb2gCl+RTv1YHEL7YtO
	PBd3NovA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>, linux-can@vger.kernel.org,
 1579567540@qq.com
Cc: Vincent Mailhol <mailhol@kernel.org>, kernel@pengutronix.de,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, luch00 <1579567540@qq.com>
Subject: Re: [PATCH 2/3] can: rockchip: add RK3588 CAN-FD support
Date: Wed, 01 Jul 2026 11:55:39 +0200
Message-ID: <2064877.jZfb76A358@diego>
In-Reply-To: <tencent_124D6134EB32480979234201E688087E5408@qq.com>
References: <20260701070128.2096267-1-1579567540@qq.com>
 <tencent_124D6134EB32480979234201E688087E5408@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_025555_546005_23A85632 
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

SGksCgpBbSBNaXR0d29jaCwgMS4gSnVsaSAyMDI2LCAwOTowMToyNyBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIDE1Nzk1Njc1NDBAcXEuY29tOgo+IEZyb206IGx1Y2gwMCA8
MTU3OTU2NzU0MEBxcS5jb20+CgpwbGVhc2UgdXNlIGEgcmVhbCBuYW1lLCBub3QgYW4gYWxpYXMu
CgoKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIFJLMzU4OHYyIENBTi1GRCBjb250cm9sbGVyIGJ5IGlu
dHJvZHVjaW5nIGEKPiBkZWRpY2F0ZWQgbW9kZWwgSUQgYW5kIE9GIG1hdGNoIGVudHJ5Lgo+IAo+
IFRoZSBibG9jayBpcyBjbG9zZWx5IHJlbGF0ZWQgdG8gdGhlIGV4aXN0aW5nIFJLMzU2OCB2YXJp
YW50cywgYnV0IGl0Cj4gY2Fubm90IHJldXNlIHRoZWlyIG1hdGNoIGRhdGEgdW5jaGFuZ2VkLiBJ
biBwYXJ0aWN1bGFyLCBSSzM1ODh2Mgo+IGVuY29kZXMgUlhfRklGT19DTlQgaW4gYml0cyA3OjUg
aW5zdGVhZCBvZiA2OjQsIHNvIHRoZSBSWCBwYXRoIG5lZWRzCj4gU29DLXNwZWNpZmljIGhhbmRs
aW5nLgo+IAo+IFZhbGlkYXRpb24gb24gUkszNTg4djIgYWxzbyBzaG93cyB0aGF0IGl0cyBvYnNl
cnZlZCBlcnJhdGEgcHJvZmlsZSBkb2VzCj4gbm90IGZ1bGx5IG1hdGNoIHJrMzU2OHYyL3JrMzU2
OHYzLCBzbyBrZWVwIGEgZGVkaWNhdGVkIGRldnR5cGUgZm9yIHRoaXMKPiB2YXJpYW50IGluc3Rl
YWQgb2YgcmVseWluZyBvbiBhbiByazM1NjggZmFsbGJhY2suCgpGdW5uaWx5IGVub3VnaCwgd2Ug
c2VlbSB0byBoYXZlIHdvcmtlZCBvbiB0aGUgc2FtZSB0b3BpYwphdCB0aGUgc2FtZSB0aW1lIDot
KQoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI2MDYzMDE2NDMzNi4zNDQ0NTUwLTEt
aGVpa29Ac250ZWNoLmRlLwoKPiBTaWduZWQtb2ZmLWJ5OiBsdWNoMDAgPDE1Nzk1Njc1NDBAcXEu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9jYW4vcm9ja2NoaXAvcm9ja2NoaXBfY2FuZmQtY29y
ZS5jIHwgMTQgKysrKysrKysrKysrKysKPiAgZHJpdmVycy9uZXQvY2FuL3JvY2tjaGlwL3JvY2tj
aGlwX2NhbmZkLXJ4LmMgICB8ICA1ICsrKystCj4gIGRyaXZlcnMvbmV0L2Nhbi9yb2NrY2hpcC9y
b2NrY2hpcF9jYW5mZC5oICAgICAgfCAxMiArKysrKysrKysrKy0KPiAgMyBmaWxlcyBjaGFuZ2Vk
LCAyOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9jYW4vcm9ja2NoaXAvcm9ja2NoaXBfY2FuZmQtY29yZS5jIGIvZHJpdmVycy9uZXQv
Y2FuL3JvY2tjaGlwL3JvY2tjaGlwX2NhbmZkLWNvcmUuYwo+IGluZGV4IDI5ZGUwYzAxZS4uM2My
NDgwNzg1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2Nhbi9yb2NrY2hpcC9yb2NrY2hpcF9j
YW5mZC1jb3JlLmMKPiArKysgYi9kcml2ZXJzL25ldC9jYW4vcm9ja2NoaXAvcm9ja2NoaXBfY2Fu
ZmQtY29yZS5jCj4gQEAgLTUwLDYgKzUwLDE1IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmtjYW5m
ZF9kZXZ0eXBlX2RhdGEgcmtjYW5mZF9kZXZ0eXBlX2RhdGFfcmszNTY4djMgPSB7Cj4gIAkJUktD
QU5GRF9RVUlSS19DQU5GRF9CUk9LRU4sCj4gIH07Cj4gIAo+ICsvKiBUZXN0cyBvbiB0aGUgcmsz
NTg4djIgcmVwcm9kdWNlIEVycmF0dW0gNSwgYnV0IG5vdAo+ICsgKiBFcnJhdHVtIDYgb3IgdGhl
IHNwZWNpYWwgQ0FOLUZEIGZyYW1lcyB0aGF0IHRyaWdnZXIgRXJyb3IgSW50ZXJydXB0cwo+ICsg
KiBvbiByazM1Njh2Mi9yazM1Njh2My4KPiArICovCgpIZXJlIEkgY291bGQgcmVwcm9kdWNlIGVy
cmF0dW0gNiB0aG91Z2g6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyNjA2MzAxNjQz
MzYuMzQ0NDU1MC00LWhlaWtvQHNudGVjaC5kZS8KCgpbLi4uXQoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvY2FuL3JvY2tjaGlwL3JvY2tjaGlwX2NhbmZkLXJ4LmMgYi9kcml2ZXJzL25ldC9j
YW4vcm9ja2NoaXAvcm9ja2NoaXBfY2FuZmQtcnguYwo+IGluZGV4IDQ3NWMwNDA5ZS4uZmU2NGRi
MzczIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2Nhbi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5m
ZC1yeC5jCj4gKysrIGIvZHJpdmVycy9uZXQvY2FuL3JvY2tjaGlwL3JvY2tjaGlwX2NhbmZkLXJ4
LmMKPiBAQCAtMjgxLDcgKzI4MSwxMCBAQCBya2NhbmZkX3J4X2ZpZm9fZ2V0X2xlbihjb25zdCBz
dHJ1Y3QgcmtjYW5mZF9wcml2ICpwcml2KQo+ICB7Cj4gIAljb25zdCB1MzIgcmVnID0gcmtjYW5m
ZF9yZWFkKHByaXYsIFJLQ0FORkRfUkVHX1JYX0ZJRk9fQ1RSTCk7Cj4gIAo+IC0JcmV0dXJuIEZJ
RUxEX0dFVChSS0NBTkZEX1JFR19SWF9GSUZPX0NUUkxfUlhfRklGT19DTlQsIHJlZyk7Cj4gKwlp
ZiAocHJpdi0+ZGV2dHlwZV9kYXRhLm1vZGVsID09IFJLQ0FORkRfTU9ERUxfUkszNTg4VjIpCj4g
KwkJcmV0dXJuIEZJRUxEX0dFVChSS0NBTkZEX1JFR19SWF9GSUZPX0NUUkxfUlhfRklGT19DTlRf
UkszNTg4LCByZWcpOwo+ICsKPiArCXJldHVybiBGSUVMRF9HRVQoUktDQU5GRF9SRUdfUlhfRklG
T19DVFJMX1JYX0ZJRk9fQ05UX1JLMzU2OCwgcmVnKTsKPiAgfQo+ICAKPiAgaW50IHJrY2FuZmRf
aGFuZGxlX3J4X2ludChzdHJ1Y3QgcmtjYW5mZF9wcml2ICpwcml2KQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9jYW4vcm9ja2NoaXAvcm9ja2NoaXBfY2FuZmQuaCBiL2RyaXZlcnMvbmV0L2Nh
bi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5mZC5oCj4gaW5kZXggOTMxMzFjN2Q3Li5mNjEwNWI5MDQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvY2FuL3JvY2tjaGlwL3JvY2tjaGlwX2NhbmZkLmgK
PiArKysgYi9kcml2ZXJzL25ldC9jYW4vcm9ja2NoaXAvcm9ja2NoaXBfY2FuZmQuaAo+IEBAIC0y
MTQsNyArMjE0LDggQEAKPiAgI2RlZmluZSBSS0NBTkZEX1JFR19UWEVWRU5UX0ZJRk9fQ1RSTF9U
WEVfRklGT19FTkFCTEUgQklUKDApCj4gIAo+ICAjZGVmaW5lIFJLQ0FORkRfUkVHX1JYX0ZJRk9f
Q1RSTCAweDExOAo+IC0jZGVmaW5lIFJLQ0FORkRfUkVHX1JYX0ZJRk9fQ1RSTF9SWF9GSUZPX0NO
VCBHRU5NQVNLKDYsIDQpCj4gKyNkZWZpbmUgUktDQU5GRF9SRUdfUlhfRklGT19DVFJMX1JYX0ZJ
Rk9fQ05UX1JLMzU2OCBHRU5NQVNLKDYsIDQpCj4gKyNkZWZpbmUgUktDQU5GRF9SRUdfUlhfRklG
T19DVFJMX1JYX0ZJRk9fQ05UX1JLMzU4OCBHRU5NQVNLKDcsIDUpCgpPaCwgZGlkbid0IHNlZSB0
aGlzIHdoZW4gZG9pbmcgbXkgdmFyaWFudCBvZiB0aGUgc3VwcG9ydCwgc28gY29vbCB0aGF0IHlv
dQpmb3VuZCB0aGlzLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
