Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BF5ACD5BB1
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 12:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uWnyBHRI8gwEg/vEQtgpjrzXOvJamLpD2KN2fKO5wk=; b=gTDExg0UdpKteb
	TNnVKklLLuwTlMzD4MI5GZkaveDVJa6ehkJg3Gp3U3JVosZaGMr10xHyxEK72wnq9CANlE8JMkOtk
	+xcK99u2KoFoSXXtd7jLa5KS7RaGZVnLDHmfGhqHbrfgWx06J4pXlDmPwpRQ3dpDKPEY0o+1nHqeA
	sx4DCJbSi/2pZQqhMBGyNHN4p+o7f3Lbu01rQeqYzo7oqul62RpC5C1fZwU7eTMKQGjol9SHKjAV9
	APdrmEjIwsLbodIXY+heep+7paFgybAa6cElbvCQgyh/Xo6CDDFyVIWNDAgxc8pKGIdJe7X4F4NJ4
	mv/f7tHJrd9bVnghuv0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2lc-00000007l2n-3ETg;
	Thu, 21 May 2026 12:44:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2la-00000007l1i-0JC4
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 12:44:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ2lJ-0000Zz-Iy; Thu, 21 May 2026 14:44:29 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ2lH-0016dC-2c;
	Thu, 21 May 2026 14:44:28 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ2lI-00000004VX3-121G;
	Thu, 21 May 2026 14:44:28 +0200
Date: Thu, 21 May 2026 14:44:28 +0200
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
Subject: Re: [PATCH v7 06/28] media: rockchip: rga: fix too small buffer size
Message-ID: <ag7-LGxKRLKLucfS@pengutronix.de>
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
 <20260521-spu-rga3-v7-6-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-spu-rga3-v7-6-3f33e8c7145f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_054446_112911_DBC0C9C0 
X-CRM114-Status: GOOD (  20.52  )
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

T24gVGh1LCAyMSBNYXkgMjAyNiAwMDo0NDoxMSArMDIwMCwgU3ZlbiBQw7xzY2hlbCB3cm90ZToK
PiBGaXggdGhlIGNvbW1hbmQgYnVmZmVyIHNpemUgYmVpbmcgb25seSBhIHF1YXJ0ZXIgb2YgdGhl
IGFjdHVhbCBzaXplLgo+IFRoZSBSR0FfQ01EQlVGX1NJWkUgbWFjcm8gd2FzIHBvdGVudGlhbGx5
IGludGVuZGVkIHRvIHNwZWNpZnkgdGhlIGxlbmd0aAo+IG9mIHRoZSBjbWRidWYgdTMyIGFycmF5
IHBvaW50ZXIuIEJ1dCBhcyBpdCdzIHVzZWQgdG8gc3BlY2lmeSB0aGUgc2l6ZSBvZgo+IHRoZSBh
bGxvY2F0aW9uLCB3aGljaCBpcyBjb3VudGVkIGluIGJ5dGVzLiBUaGVyZWZvcmUgYWRqdXN0IHRo
ZSBtYWNybwo+IHNpemUgdG8gYnl0ZXMgYXMgaXQgYmV0dGVyIG1hdGNoZXMgdGhlIHZhcmlhYmxl
IG5hbWUgYW5kIGFkanVzdCBpdCdzCj4gdXNlcnMgYWNjb3JkaW5nbHkuCj4gCj4gQXMgdGhlIGNv
bW1hbmQgYnVmZmVyIGlzIHJlbGF0aXZlbHkgc21hbGwsIGl0IHByb2JhYmx5IGRpZG4ndCBjYXVz
ZWQKPiBhbiBpc3N1ZSBkdWUgdG8gYmVpbmcgc21hbGxlciB0aGFuIGEgc2luZ2xlIHBhZ2UuCj4g
Cj4gRml4ZXM6IGY3ZTdiNDhlNmQ3OSAoIlttZWRpYV0gcm9ja2NoaXAvcmdhOiB2NGwyIG0ybSBz
dXBwb3J0IikKPiBSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNu
ZUBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2No
ZWxAcGVuZ3V0cm9uaXguZGU+Cj4gCj4gLS0tCj4gCj4gRmxhZ2dlZCBieSBTYXNoaWtvOgo+IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDMyNS1zcHUtcmdhMy12NC0wLWU5MGVj
MWM2MTM1NCU0MHBlbmd1dHJvbml4LmRlP3BhcnQ9MTAKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgfCAyICstCj4gIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5oIHwgMiArLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwo+IGluZGV4IDQzZWQ3NDJhMTY0OTIuLmQxNjE4YmIy
NDc1MDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLWh3LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Et
aHcuYwo+IEBAIC00MTQsNyArNDE0LDcgQEAgc3RhdGljIHZvaWQgcmdhX2NtZF9zZXQoc3RydWN0
IHJnYV9jdHggKmN0eCwKPiAgewo+ICAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5y
Z2E7Cj4gIAo+IC0JbWVtc2V0KHJnYS0+Y21kYnVmX3ZpcnQsIDAsIFJHQV9DTURCVUZfU0laRSAq
IDQpOwo+ICsJbWVtc2V0KHJnYS0+Y21kYnVmX3ZpcnQsIDAsIFJHQV9DTURCVUZfU0laRSk7CgpN
YXliZSB1c2UgcmdhLT5ody0+Y21kYnVmX3NpemUgaW5zdGVhZCBvZiBSR0FfQ01EQlVGX1NJWkUg
dG8gcmVhbGx5IGJlCmluIHN5bmMgd2l0aCB0aGUgYWxsb2NhdGlvbi4KCkFueXdheToKClJldmll
d2VkLWJ5OiBNaWNoYWVsIFRyZXR0ZXIgPG0udHJldHRlckBwZW5ndXRyb25peC5kZT4KCj4gIAo+
ICAJcmdhX2NtZF9zZXRfc3JjX2FkZHIoY3R4LCBzcmMtPmRtYV9kZXNjX3BhKTsKPiAgCS8qCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5o
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmgKPiBpbmRleCBj
YzZiZDdmNWIwMzAwLi4yYjg1MzdhNWZkMGQ3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmgKPiBAQCAtNiw3ICs2LDcgQEAKPiAgI2lmbmRlZiBf
X1JHQV9IV19IX18KPiAgI2RlZmluZSBfX1JHQV9IV19IX18KPiAgCj4gLSNkZWZpbmUgUkdBX0NN
REJVRl9TSVpFIDB4MjAKPiArI2RlZmluZSBSR0FfQ01EQlVGX1NJWkUgMHg4MAo+ICAKPiAgLyog
SGFyZHdhcmUgbGltaXRzICovCj4gICNkZWZpbmUgTUFYX1dJRFRIIDgxOTIKPiAKPiAtLSAKPiAy
LjU0LjAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
