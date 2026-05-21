Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DA23CD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 14:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmKnOivQY7iIzTGDI3WYvGh/6CV2hIOPjHU60xUU6FU=; b=ZDDhQZZGFtpKCe
	L8baxqeK3YUhtNoB/WMZdJKvvT4hjlHZ75bb/DWm/uGBBwHfMpmjR7TxSP4+Tv873dF48bJaWRLci
	VxefS4IMFfSctXx8e45LCbO64hwwhaei5Q7dgR3CZTZb/ZK7OTS+9BPD3madfD1AO7SkA7HIHRR+3
	ZIm7EvbQmxbY+WVkG/PVMBqKLwqErwvOdMYMLRYo4yyfFV9I6ZN26h81tami7VX9IbTcFMbumdOk5
	zcwwF/0RLT9g4GQnMwoMyT86nc7D0cU51WDkRSjdVN/ZYxGR1qPdtolOuKOcBFkW807chEu9ZqEyC
	E8HRH7jvCKiQuq9Av09w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4Dw-000000081pe-1JHF;
	Thu, 21 May 2026 14:18:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4Dt-000000081oH-1mdX
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 14:18:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Dj-0007o0-Qt; Thu, 21 May 2026 16:17:55 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Di-0017O6-30;
	Thu, 21 May 2026 16:17:55 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Dj-00000004Wuk-1aW2;
	Thu, 21 May 2026 16:17:55 +0200
Date: Thu, 21 May 2026 16:17:55 +0200
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
Subject: Re: [PATCH v7 13/28] media: rockchip: rga: calculate x_div/y_div
 using v4l2_format_info
Message-ID: <ag8UEzt23aQHzGF-@pengutronix.de>
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
 <20260521-spu-rga3-v7-13-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-spu-rga3-v7-13-3f33e8c7145f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_071805_612461_BA587DA5 
X-CRM114-Status: GOOD (  24.35  )
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

T24gVGh1LCAyMSBNYXkgMjAyNiAwMDo0NDoxOCArMDIwMCwgU3ZlbiBQw7xzY2hlbCB3cm90ZToK
PiBDYWxjdWxhdGUgdGhlIHhfZGl2IGFuZCB5X2RpdiB2YXJpYWJsZXMgd2l0aCB0aGUgaW5mb3Jt
YXRpb24gZnJvbQo+IHY0bDJfZm9ybWF0X2luZm8gaW5zdGVhZCBvZiBzdG9yaW5nIHRoZXNlIGlu
IHRoZSByZ2FfZm10IHN0cnVjdC4KPiAKPiBSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8
bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8
c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+CgpSZXZpZXdlZC1ieTogTWljaGFlbCBU
cmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXguZGU+Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyB8IDQ1ICsrKysrKystLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAg
fCAgMiAtLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EtaHcuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5j
Cj4gaW5kZXggNDA0OTg3OTY1MDdlMC4uMTdmN2E2N2MwYjRiYiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwo+ICsrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCj4gQEAgLTQyLDYgKzQyLDcgQEAg
cmdhX2dldF9hZGRyX29mZnNldChzdHJ1Y3QgcmdhX2ZyYW1lICpmcm0sIHN0cnVjdCByZ2FfYWRk
cl9vZmZzZXQgKm9mZnNldCwKPiAgewo+ICAJc3RydWN0IHJnYV9jb3JuZXJzX2FkZHJfb2Zmc2V0
IG9mZnNldHM7Cj4gIAlzdHJ1Y3QgcmdhX2FkZHJfb2Zmc2V0ICpsdCwgKmxiLCAqcnQsICpyYjsK
PiArCWNvbnN0IHN0cnVjdCB2NGwyX2Zvcm1hdF9pbmZvICpmb3JtYXRfaW5mbzsKPiAgCXVuc2ln
bmVkIGludCB4X2RpdiA9IDAsCj4gIAkJICAgICB5X2RpdiA9IDAsIHV2X3N0cmlkZSA9IDAsIHBp
eGVsX3dpZHRoID0gMDsKPiAgCj4gQEAgLTUwLDggKzUxLDE2IEBAIHJnYV9nZXRfYWRkcl9vZmZz
ZXQoc3RydWN0IHJnYV9mcmFtZSAqZnJtLCBzdHJ1Y3QgcmdhX2FkZHJfb2Zmc2V0ICpvZmZzZXQs
Cj4gIAlydCA9ICZvZmZzZXRzLnJpZ2h0X3RvcDsKPiAgCXJiID0gJm9mZnNldHMucmlnaHRfYm90
dG9tOwo+ICAKPiAtCXhfZGl2ID0gZnJtLT5mbXQtPnhfZGl2Owo+IC0JeV9kaXYgPSBmcm0tPmZt
dC0+eV9kaXY7Cj4gKwlmb3JtYXRfaW5mbyA9IHY0bDJfZm9ybWF0X2luZm8oZnJtLT5waXgucGl4
ZWxmb3JtYXQpOwo+ICsJLyogeF9kaXYgaXMgb25seSB1c2VkIGZvciB0aGUgdS92IHBsYW5lcy4K
PiArCSAqIFdoZW4gdGhlIGZvcm1hdCBkb2Vzbid0IGhhdmUgdGhlc2UsIHVzZSAxIHRvIGF2b2lk
IGEgZGl2aXNpb24gYnkgemVyby4KPiArCSAqLwo+ICsJaWYgKGZvcm1hdF9pbmZvLT5icHBbMV0p
Cj4gKwkJeF9kaXYgPSBmb3JtYXRfaW5mby0+aGRpdiAqIGZvcm1hdF9pbmZvLT5icHBfZGl2WzFd
IC8KPiArCQkJZm9ybWF0X2luZm8tPmJwcFsxXTsKPiArCWVsc2UKPiArCQl4X2RpdiA9IDE7Cj4g
Kwl5X2RpdiA9IGZvcm1hdF9pbmZvLT52ZGl2Owo+ICAJdXZfc3RyaWRlID0gZnJtLT5zdHJpZGUg
LyB4X2RpdjsKPiAgCXBpeGVsX3dpZHRoID0gZnJtLT5zdHJpZGUgLyBmcm0tPnBpeC53aWR0aDsK
PiAgCj4gQEAgLTQ3NiwxMjggKzQ4NSw5NiBAQCBzdGF0aWMgc3RydWN0IHJnYV9mbXQgZm9ybWF0
c1tdID0gewo+ICAJCS5jb2xvcl9zd2FwID0gUkdBX0NPTE9SX0FMUEhBX1NXQVAsCj4gIAkJLmh3
X2Zvcm1hdCA9IFJHQV9DT0xPUl9GTVRfQUJHUjg4ODgsCj4gIAkJLmRlcHRoID0gMzIsCj4gLQkJ
LnlfZGl2ID0gMSwKPiAtCQkueF9kaXYgPSAxLAo+ICAJfSwKPiAgCXsKPiAgCQkuZm91cmNjID0g
VjRMMl9QSVhfRk1UX0FCR1IzMiwKPiAgCQkuY29sb3Jfc3dhcCA9IFJHQV9DT0xPUl9SQl9TV0FQ
LAo+ICAJCS5od19mb3JtYXQgPSBSR0FfQ09MT1JfRk1UX0FCR1I4ODg4LAo+ICAJCS5kZXB0aCA9
IDMyLAo+IC0JCS55X2RpdiA9IDEsCj4gLQkJLnhfZGl2ID0gMSwKPiAgCX0sCj4gIAl7Cj4gIAkJ
LmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9YQkdSMzIsCj4gIAkJLmNvbG9yX3N3YXAgPSBSR0FfQ09M
T1JfUkJfU1dBUCwKPiAgCQkuaHdfZm9ybWF0ID0gUkdBX0NPTE9SX0ZNVF9YQkdSODg4OCwKPiAg
CQkuZGVwdGggPSAzMiwKPiAtCQkueV9kaXYgPSAxLAo+IC0JCS54X2RpdiA9IDEsCj4gIAl9LAo+
ICAJewo+ICAJCS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfUkdCMjQsCj4gIAkJLmNvbG9yX3N3YXAg
PSBSR0FfQ09MT1JfTk9ORV9TV0FQLAo+ICAJCS5od19mb3JtYXQgPSBSR0FfQ09MT1JfRk1UX1JH
Qjg4OCwKPiAgCQkuZGVwdGggPSAyNCwKPiAtCQkueV9kaXYgPSAxLAo+IC0JCS54X2RpdiA9IDEs
Cj4gIAl9LAo+ICAJewo+ICAJCS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfQkdSMjQsCj4gIAkJLmNv
bG9yX3N3YXAgPSBSR0FfQ09MT1JfUkJfU1dBUCwKPiAgCQkuaHdfZm9ybWF0ID0gUkdBX0NPTE9S
X0ZNVF9SR0I4ODgsCj4gIAkJLmRlcHRoID0gMjQsCj4gLQkJLnlfZGl2ID0gMSwKPiAtCQkueF9k
aXYgPSAxLAo+ICAJfSwKPiAgCXsKPiAgCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX0FSR0I0NDQs
Cj4gIAkJLmNvbG9yX3N3YXAgPSBSR0FfQ09MT1JfUkJfU1dBUCwKPiAgCQkuaHdfZm9ybWF0ID0g
UkdBX0NPTE9SX0ZNVF9BQkdSNDQ0NCwKPiAgCQkuZGVwdGggPSAxNiwKPiAtCQkueV9kaXYgPSAx
LAo+IC0JCS54X2RpdiA9IDEsCj4gIAl9LAo+ICAJewo+ICAJCS5mb3VyY2MgPSBWNEwyX1BJWF9G
TVRfQVJHQjU1NSwKPiAgCQkuY29sb3Jfc3dhcCA9IFJHQV9DT0xPUl9SQl9TV0FQLAo+ICAJCS5o
d19mb3JtYXQgPSBSR0FfQ09MT1JfRk1UX0FCR1IxNTU1LAo+ICAJCS5kZXB0aCA9IDE2LAo+IC0J
CS55X2RpdiA9IDEsCj4gLQkJLnhfZGl2ID0gMSwKPiAgCX0sCj4gIAl7Cj4gIAkJLmZvdXJjYyA9
IFY0TDJfUElYX0ZNVF9SR0I1NjUsCj4gIAkJLmNvbG9yX3N3YXAgPSBSR0FfQ09MT1JfUkJfU1dB
UCwKPiAgCQkuaHdfZm9ybWF0ID0gUkdBX0NPTE9SX0ZNVF9CR1I1NjUsCj4gIAkJLmRlcHRoID0g
MTYsCj4gLQkJLnlfZGl2ID0gMSwKPiAtCQkueF9kaXYgPSAxLAo+ICAJfSwKPiAgCXsKPiAgCQku
Zm91cmNjID0gVjRMMl9QSVhfRk1UX05WMjEsCj4gIAkJLmNvbG9yX3N3YXAgPSBSR0FfQ09MT1Jf
VVZfU1dBUCwKPiAgCQkuaHdfZm9ybWF0ID0gUkdBX0NPTE9SX0ZNVF9ZVVY0MjBTUCwKPiAgCQku
ZGVwdGggPSAxMiwKPiAtCQkueV9kaXYgPSAyLAo+IC0JCS54X2RpdiA9IDEsCj4gIAl9LAo+ICAJ
ewo+ICAJCS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfTlY2MSwKPiAgCQkuY29sb3Jfc3dhcCA9IFJH
QV9DT0xPUl9VVl9TV0FQLAo+ICAJCS5od19mb3JtYXQgPSBSR0FfQ09MT1JfRk1UX1lVVjQyMlNQ
LAo+ICAJCS5kZXB0aCA9IDE2LAo+IC0JCS55X2RpdiA9IDEsCj4gLQkJLnhfZGl2ID0gMSwKPiAg
CX0sCj4gIAl7Cj4gIAkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9OVjEyLAo+ICAJCS5jb2xvcl9z
d2FwID0gUkdBX0NPTE9SX05PTkVfU1dBUCwKPiAgCQkuaHdfZm9ybWF0ID0gUkdBX0NPTE9SX0ZN
VF9ZVVY0MjBTUCwKPiAgCQkuZGVwdGggPSAxMiwKPiAtCQkueV9kaXYgPSAyLAo+IC0JCS54X2Rp
diA9IDEsCj4gIAl9LAo+ICAJewo+ICAJCS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfTlYxMk0sCj4g
IAkJLmNvbG9yX3N3YXAgPSBSR0FfQ09MT1JfTk9ORV9TV0FQLAo+ICAJCS5od19mb3JtYXQgPSBS
R0FfQ09MT1JfRk1UX1lVVjQyMFNQLAo+ICAJCS5kZXB0aCA9IDEyLAo+IC0JCS55X2RpdiA9IDIs
Cj4gLQkJLnhfZGl2ID0gMSwKPiAgCX0sCj4gIAl7Cj4gIAkJLmZvdXJjYyA9IFY0TDJfUElYX0ZN
VF9OVjE2LAo+ICAJCS5jb2xvcl9zd2FwID0gUkdBX0NPTE9SX05PTkVfU1dBUCwKPiAgCQkuaHdf
Zm9ybWF0ID0gUkdBX0NPTE9SX0ZNVF9ZVVY0MjJTUCwKPiAgCQkuZGVwdGggPSAxNiwKPiAtCQku
eV9kaXYgPSAxLAo+IC0JCS54X2RpdiA9IDEsCj4gIAl9LAo+ICAJewo+ICAJCS5mb3VyY2MgPSBW
NEwyX1BJWF9GTVRfWVVWNDIwLAo+ICAJCS5jb2xvcl9zd2FwID0gUkdBX0NPTE9SX05PTkVfU1dB
UCwKPiAgCQkuaHdfZm9ybWF0ID0gUkdBX0NPTE9SX0ZNVF9ZVVY0MjBQLAo+ICAJCS5kZXB0aCA9
IDEyLAo+IC0JCS55X2RpdiA9IDIsCj4gLQkJLnhfZGl2ID0gMiwKPiAgCX0sCj4gIAl7Cj4gIAkJ
LmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9ZVVY0MjJQLAo+ICAJCS5jb2xvcl9zd2FwID0gUkdBX0NP
TE9SX05PTkVfU1dBUCwKPiAgCQkuaHdfZm9ybWF0ID0gUkdBX0NPTE9SX0ZNVF9ZVVY0MjJQLAo+
ICAJCS5kZXB0aCA9IDE2LAo+IC0JCS55X2RpdiA9IDEsCj4gLQkJLnhfZGl2ID0gMiwKPiAgCX0s
Cj4gIAl7Cj4gIAkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9ZVlU0MjAsCj4gIAkJLmNvbG9yX3N3
YXAgPSBSR0FfQ09MT1JfVVZfU1dBUCwKPiAgCQkuaHdfZm9ybWF0ID0gUkdBX0NPTE9SX0ZNVF9Z
VVY0MjBQLAo+ICAJCS5kZXB0aCA9IDEyLAo+IC0JCS55X2RpdiA9IDIsCj4gLQkJLnhfZGl2ID0g
MiwKPiAgCX0sCj4gIH07Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5oCj4gaW5kZXggNjQwZTUxMDI4NTM0MS4uMjdiM2M5YjRmMjIwYyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAo+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCj4gQEAgLTIwLDggKzIwLDYgQEAK
PiAgc3RydWN0IHJnYV9mbXQgewo+ICAJdTMyIGZvdXJjYzsKPiAgCWludCBkZXB0aDsKPiAtCXU4
IHlfZGl2Owo+IC0JdTggeF9kaXY7Cj4gIAl1OCBjb2xvcl9zd2FwOwo+ICAJdTggaHdfZm9ybWF0
Owo+ICB9Owo+IAo+IC0tIAo+IDIuNTQuMAo+IAo+IAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAg
ICAgICAgICAgICAgICAgICAgICAgICB8IE1pY2hhZWwgVHJldHRlciAgICAgICAgICAgICB8ClN0
ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHBzOi8vd3d3LnBl
bmd1dHJvbml4LmRlLyB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAg
ICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0s
IEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
