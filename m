Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,BIGNUM_EMAILS,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04D3EC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 02:18:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CCD9564EC8
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 02:18:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CCD9564EC8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lWXikbGV6beVIvezAkncEVeXjuCLwg3xr+bO7PuTSTo=; b=UFD1mEWxa16WQOy3g71JkMpLX
	LLGZ+VruZyxdfwpRwmT2xyPzmqNIuH0m1mFfcCTOe4+IlnLK7ItMClhPhMaiCvgdMUvtTLEp3J0dS
	sSBMQcwsS20XjQiY9fEpFMngYrG7jRu6a30CyYLKZs1E/ivkB+fIBw5CL3JlFEEceEX72UgV+6hdv
	HpWfeuFnMoI7X9ZyDUaMGe+YJM0/I94zN3xTHjKtXa38/USGA465zvREVoZs1Vz9nyoooBrIuBDMc
	gq5fGVzKqHnIWzOsRAq2DtO+9QcBllM2ke0uEuTNQH/Xo+/0RzBZykp6lAUp31ygamjEjCNKcqW1L
	NUCOGptPQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lF6E4-0001jo-R9; Thu, 25 Feb 2021 02:18:00 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lF6Dz-0001j1-Ue
 for linux-rockchip@lists.infradead.org; Thu, 25 Feb 2021 02:17:59 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 9C83D753;
 Thu, 25 Feb 2021 10:17:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.76] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4303T140473561245440S1614219461056529_; 
 Thu, 25 Feb 2021 10:17:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <edb3996bb4b85072960a16637b0355ca>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Huang Jiachai <hjc@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Daniel Stone <daniel@fooishbar.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
Message-ID: <d17ea299-b21e-b298-9098-f47b780be106@rock-chips.com>
Date: Thu, 25 Feb 2021 10:17:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_211757_071419_0C7E6AC0 
X-CRM114-Status: GOOD (  26.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFuaWVsLAoKIMKgwqDCoCBSSzMzOTkgYW5kIHB4MzAgY2FuIHN1cHBvcnQgWVRSIGFmYmMg
Zm9ybWF0W1JHQiBvbmx5XSwgdGhlcmUgaXMgYW4gCmhpZGRlbiBjb250cm9sIGJpdCB0byBjb250
cm9sIHRoaXMuCgpIaSBBbHlzc2EsCgogwqDCoMKgIENhbiB5b3UgYWRkIHRoZSBmb2xsb3dpbmcg
cGF0Y2ggdG8gdGVzdCBvbiB5b3VyIHBsYXRmb3JtPyB0aGFua3MuCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyAKYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IDk5YmRiNWEyYTE4NS4uMDc4MGFk
NDYyMzBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMK
QEAgLTEwNSw3ICsxMDUsNyBAQAogwqAjZGVmaW5lIEFGQkNfRk1UX1U4VThVOFU4wqDCoMKgwqDC
oCAweDUKIMKgI2RlZmluZSBBRkJDX0ZNVF9VOFU4VTjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgMHg0CgotI2RlZmluZSBBRkJDX1RJTEVfMTZ4MTbCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgQklUKDQpCisjZGVmaW5lIEFGQkNfRk1UX1lUUsKgwqDCoMKgwqDCoMKgwqDCoMKg
IEJJVCg0KQoKIMKgLyoKIMKgICogVGhlIGNvZWZmaWNpZW50cyBvZiB0aGUgZm9sbG93aW5nIG1h
dHJpeCBhcmUgYWxsIGZpeGVkIHBvaW50cy4KQEAgLTk1Miw3ICs5NTIsOSBAQCBzdGF0aWMgdm9p
ZCB2b3BfcGxhbmVfYXRvbWljX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lIAoqcGxhbmUsCiDCoMKg
wqDCoMKgwqDCoCBpZiAocm9ja2NoaXBfYWZiYyhmYi0+bW9kaWZpZXIpKSB7CiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IGFmYmNfZm9ybWF0ID0gCnZvcF9jb252ZXJ0X2FmYmNf
Zm9ybWF0KGZiLT5mb3JtYXQtPmZvcm1hdCk7CgotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBWT1BfQUZCQ19TRVQodm9wLCBmb3JtYXQsIGFmYmNfZm9ybWF0IHwgQUZCQ19USUxFXzE2eDE2
KTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGZiLT5tb2RpZmllciAmIEFGQkNf
Rk9STUFUX01PRF9ZVFIpCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBhZmJjX2Zvcm1hdCB8PSBBRkJDX0ZNVF9ZVFI7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFZPUF9BRkJDX1NFVCh2b3AsIGZvcm1hdCwgYWZiY19mb3JtYXQpOwogwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIFZPUF9BRkJDX1NFVCh2b3AsIGhyZWdfYmxvY2tfc3BsaXQs
IDApOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFZPUF9BRkJDX1NFVCh2b3AsIHdp
bl9zZWwsIFZPUF9XSU5fVE9fSU5ERVgodm9wX3dpbikpOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIFZPUF9BRkJDX1NFVCh2b3AsIGhkcl9wdHIsIGRtYV9hZGRyKTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmggCmIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuaAppbmRleCA0YTIwOTljYjU4MmUu
LjQ4ZTEzMWI4OGMyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcC5oCkBAIC0yMCw2ICsyMCw3IEBACiDCoCNkZWZpbmUgUk9DS0NISVBfQUZCQ19NT0QgXAog
wqDCoMKgwqDCoMKgwqAgRFJNX0ZPUk1BVF9NT0RfQVJNX0FGQkMoIFwKIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBBRkJDX0ZPUk1BVF9NT0RfQkxPQ0tfU0laRV8xNngxNiB8IEFGQkNf
Rk9STUFUX01PRF9TUEFSU0UgXAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfCBBRkJDX0ZPUk1BVF9NT0RfWVRSIFwKIMKgwqDCoMKgwqDCoMKgICkKCuWcqCAy
MDIxLzIvMjMgMjI6MjcsIERhbmllbCBTdG9uZSDlhpnpgZM6Cj4gSGksCj4KPiBPbiBXZWQsIDEy
IEF1ZyAyMDIwIGF0IDA4OjA1LCBBbHlzc2EgUm9zZW56d2VpZwo+IDxhbHlzc2Eucm9zZW56d2Vp
Z0Bjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4gVGhlIEFGQkMgZGVjb2RlciB1c2VkIGluIHRoZSBS
b2NrY2hpcCBWT1AgYXNzdW1lcyB0aGUgdXNlIG9mIHRoZQo+PiBZVVYtbGlrZSBjb2xvdXJzcGFj
ZSB0cmFuc2Zvcm0gKFlUUikuIFlUUiBpcyBsb3NzbGVzcyBmb3IgUkdCKEEpCj4+IGJ1ZmZlcnMs
IHdoaWNoIGNvdmVycyB0aGUgUkdCQTggYW5kIFJHQjU2NSBmb3JtYXRzIHN1cHBvcnRlZCBpbgo+
PiB2b3BfY29udmVydF9hZmJjX2Zvcm1hdC4gVXNlIG9mIFlUUiBpcyBzaWduYWxlZCB3aXRoIHRo
ZQo+PiBBRkJDX0ZPUk1BVF9NT0RfWVRSIG1vZGlmaWVyLCB3aGljaCBwcmlvciB0byB0aGlzIGNv
bW1pdCB3YXMgbWlzc2luZy4gQXMKPj4gc3VjaCwgYSBwcm9kdWNlciB3b3VsZCBoYXZlIHRvIGdl
bmVyYXRlIGJ1ZmZlcnMgdGhhdCBkbyBub3QgdXNlIFlUUiwKPj4gd2hpY2ggdGhlIFZPUCB3b3Vs
ZCBlcnJvbmVvdXNseSBkZWNvZGUgYXMgWVRSLCBsZWFkaW5nIHRvIHNldmVyZSB2aXN1YWwKPj4g
Y29ycnVwdGlvbi4KPj4KPj4gVGhlIHVwc3RyZWFtIEFGQkMgc3VwcG9ydCB3YXMgZGV2ZWxvcGVk
IGFnYWluc3QgYSBjYXB0dXJlZCBmcmFtZSwgd2hpY2gKPj4gZmFpbGVkIHRvIGV4ZXJjaXNlIG1v
ZGlmaWVyIHN1cHBvcnQuIFByaW9yIHRvIGJyaW5nLXVwIG9mIEFGQkMgaW4gTWVzYQo+PiAoaW4g
dGhlIFBhbmZyb3N0IGRyaXZlciksIG5vIG9wZW4gdXNlcnNwYWNlIHJlc3BlY3RlZCBtb2RpZmll
cgo+PiByZXBvcnRpbmcuIEFzIHN1Y2gsIHRoaXMgY2hhbmdlIGlzIG5vdCBleHBlY3RlZCB0byBh
ZmZlY3QgYnJva2VuCj4+IHVzZXJzcGFjZXMuCj4+Cj4+IFRlc3RlZCBvbiBSSzMzOTkgd2l0aCBQ
YW5mcm9zdCBhbmQgV2VzdG9uLgo+IEJ1bXBpbmcgdGhpcyBvbmU6IGl0IHNlZW1zIGxpa2UgdGhl
IFJvY2tjaGlwIFZPUCBlaXRoZXIgYWx3YXlzIGFwcGxpZXMKPiB0aGUgWVRSIHRyYW5zZm9ybSwg
b3IgaGFzIGEgWVRSIGNvbnRyb2wgYml0IHdoaWNoIGlzIG5vdCBkb2N1bWVudGVkIGluCj4gdGhl
IGRyaXZlcidzIHJlZ2lzdGVyIGRlZmluaXRpb25zLiBUaGlzIG1lYW5zIHRoYXQgaXQgaXMgaW5j
b3JyZWN0IHRvCj4gYWR2ZXJ0aXNlIHRoZSBjdXJyZW50bHktdXNlZCBtb2RpZmllciwgd2hpY2gg
c3BlY2lmaWVzIHRoYXQgWVRSIGlzCj4gX25vdF8gdXNlZCwgYW5kIGRvaW5nIHNvIGJyZWFrcyBQ
YW5mcm9zdCB3aGljaCBjb3JyZWN0bHkgdXNlcyB0aGUKPiBtb2RpZmllciBhcyBkb2N1bWVudGVk
LiBCYXNlZCBvbiBvdXIga25vd2xlZGdlIG9mIE1hbGksIHdlIGJlbGlldmUKPiB0aGF0IFBhbmZy
b3N0IGlzIGNvcnJlY3QsIGFuZCB0aGUgZXJyb3IgbGllcyB3aXRoIFJvY2tjaGlwIGVycm9uZW91
c2x5Cj4gdXNpbmcgdGhlIFlUUiB0cmFuc2Zvcm0gaW4gdGhlIFZPUCdzIEFGQkMgZGVjb2RlciBk
ZXNwaXRlIGRlY2xhcmluZwo+IHRocm91Z2ggdGhlIG1vZGlmaWVyIHRoYXQgWVRSIGlzIG5vdCBp
biB1c2UuCj4KPiBMb29raW5nIGF0IHRoZSBkb3duc3RyZWFtIHZlbmRvciB0cmVlLCBWT1AyIGFz
IHVzZWQgaW4gbmV3ZXIgU29DcyBoYXMKPiBleHBsaWNpdCBjb250cm9sIGJpdHMgZm9yIFlUUiBh
bmQgb3RoZXIgQUZCQyBrbm9icywgYnV0IHRoaXMgaGFzIGJlZW4KPiBzdWJzdGFudGlhbGx5IHJl
d29ya2VkIGZyb20gdGhlIG9yaWdpbmFsIFZPUCBhbmQgaXMgbm90IGFwcGxpY2FibGUgdG8KPiB0
aGlzIElQIGJsb2NrLgo+Cj4gTWFyaywgb3Igb3RoZXJzIGZyb20gUm9ja2NoaXAsIGNhbiB5b3Ug
cGxlYXNlOgo+IC0gZXhwbGFpbiBpZiB0aGVyZSBpcyBhIHdheSB0byBlbmFibGUvZGlzYWJsZSB0
aGUgWVRSIHRyYW5zZm9ybSBpbiB0aGUKPiBWT1AncyBBRkJDIGRlY29kZXIsIHNpbWlsYXIgdG8g
dGhlIHNwbGl0LWJsb2NrIGNvbnRyb2wgYml0Pwo+IC0gYWNrIHRoaXMgcGF0Y2ggd2hpY2ggY29y
cmVjdGx5IGRlY2xhcmVzIHRoYXQgdGhlIFlUUiB0cmFuc2Zvcm0gaXMgaW4KPiB1c2UgaW4gb3Jk
ZXIgdG8gbWFrZSBQYW5mcm9zdCB3b3JrLCBzbyBpdCBjYW4gYmUgbWVyZ2VkIHRocm91Z2gKPiBk
cm0tbWlzYywgb3IgcHJvdmlkZSBhbm90aGVyIHNvbHV0aW9uIHdoaWNoIGZpeGVzIHRoaXMgQVBJ
IG1pc3Rha2U/Cj4gLSBpZiBWT1AgZG9lcyBoYXZlIGEgaGlkZGVuIFlUUi1kaXNhYmxlIGJpdCwg
YWRkIHN1cHBvcnQgdG8gZGlzYWJsZQo+IFlUUiBzbyByb2NrY2hpcC1kcm0gY2FuIGNvbnRpbnVl
IGFkdmVydGlzaW5nIHRoZSBub24tWVRSIG1vZGlmaWVyLCBhbmQKPiBDYyB0aGlzIHBhdGNoIGZv
ciBiYWNrcG9ydGluZyB0byBldmVyeSBrZXJuZWwgdHJlZSB3aGljaCBkZWNsYXJlcyBBRkJDCj4g
bW9kaWZpZXIgc3VwcG9ydD8KPgo+IFRoYW5rcyBpbiBhZHZhbmNlLgo+Cj4gQ2hlZXJzLAo+IERh
bmllbAo+Cj4KPgotLSAKQmVzdCBSZWdhcmQKCum7hOWutumSlwpTYW5keSBIdWFuZwpBZGRyOiDn
po/lt57luILpvJPmpbzljLrpk5znm5jot6/ova/ku7blpKfpgZM4OeWPt+emj+W3nui9r+S7tuWb
rUHljLoyMeWPt+alvCgzNTAwMDMpCiAgICAgICBOby4gMjEgQnVpbGRpbmcsIEEgRGlzdHJpY3Qs
IE5vLjg5LHNvZnR3YXJlIEJvdWxldmFyZCAKRnV6aG91LEZ1amlhbixQUkMKVGVs77yaKzg2IDA1
OTEtODc4ODQ5MTkgIDg2OTAKRS1tYWls77yaaGpjQHJvY2stY2hpcHMuY29tCgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
