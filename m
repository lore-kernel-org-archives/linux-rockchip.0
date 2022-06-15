Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89BDAC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 10:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvFW+BEvbqVeppbr+Yf8O6rwPzzY6Xec8dLHIweY5jM=; b=e7tOMoEilPxCE8
	gwF5QUBEkFmvuwJCR4URoCBjpjqaOt8g8LIcL/tiyideA+bdsEHw0mbWNOKsDVtC+ruj99/XSc5HR
	bwmD7CnS3fCsnCsKwglAXPdV5BbASTR48Lr05QOfEpKheYZ/TbMb7LxpKU/Ak3c06WWtRPzhvmkb2
	/tV1tH6/gGeTzmzuFXUxioEhvHdM4TO+QkomTjHtSQEeimN3qErxyVLVr4mGpZtmYJoEl4b6ldZ0M
	N19qyLAi8dFWq97zsoqc0bphBFIOCkHViOC8T9/gVczt3ogDhgSI2lrAW+bgMszelsyRVChlzMWtI
	YfWnYLZAfuXj2NZ9lQQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Q6m-00DlmF-Dq; Wed, 15 Jun 2022 10:18:44 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Q6V-00DldM-1C; Wed, 15 Jun 2022 10:18:29 +0000
Received: from [IPV6:2a01:e0a:120:3210:7d5:f5ba:f463:c8a9] (unknown [IPv6:2a01:e0a:120:3210:7d5:f5ba:f463:c8a9])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6E9F066016CE;
	Wed, 15 Jun 2022 11:18:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655288303;
	bh=V7WoLBoKSld8AcdjidjXLlEz+rIIWI1rpx4mYKHlf0g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ReXebInobCF2yiDjK2XUuvUxqMFi01BFGPAMRXga+6F4dbs8pKr5KXz9HRgMFlvZs
	 KKEBFogBRSo26pAUM5uPDye7G6ZZETtdx+Y5Vt4myNkWt/FaHCBNbjvNk1dqNFHBHI
	 mixs+XsKD6hGCPYITzZlHhpPTXxtHQD40fz7KPae+UUTwUy7TFMOaFLZXAfKkqUg15
	 cQg+2/qDifBjQfH+F1VTh4XB8tWlZxl5SVYtzeGmXOqC30GIHzqUksRn1LUR5gdQXs
	 r0yXGhvjcgNNnu24HvFsUy5pvlead/dHqNXnwJfW4qgDoIin4Y3D7rTIgAl7TRt1k4
	 LpcPKqQ+D2MOw==
Message-ID: <6cb4ab4f-1132-f386-6dd0-bf4eeab4433c@collabora.com>
Date: Wed, 15 Jun 2022 12:18:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v8 01/17] videodev2.h: add V4L2_CTRL_FLAG_DYNAMIC_ARRAY
Content-Language: en-US
To: Hans Verkuil <hverkuil@xs4all.nl>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 kernel@collabora.com, Hans Verkuil <hverkuil-cisco@xs4all.nl>
References: <20220614083614.240641-1-benjamin.gaignard@collabora.com>
 <20220614083614.240641-2-benjamin.gaignard@collabora.com>
 <63052d74-d3c7-a9cc-cb18-a58f8937ec06@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <63052d74-d3c7-a9cc-cb18-a58f8937ec06@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_031827_479055_8B8CB421 
X-CRM114-Status: GOOD (  29.31  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE1LzA2LzIwMjIgw6AgMTE6MzMsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IEhpIEJl
bmphbWluLAo+Cj4gT24gNi8xNC8yMiAxMDozNSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+
IEZyb206IEhhbnMgVmVya3VpbCA8aHZlcmt1aWwtY2lzY29AeHM0YWxsLm5sPgo+Pgo+PiBBZGQg
YSBuZXcgZmxhZyB0aGF0IGluZGljYXRlcyB0aGF0IHRoaXMgY29udHJvbCBpcyBhIGR5bmFtaWNh
bGx5IHNpemVkCj4+IGFycmF5LiBBbHNvIGRvY3VtZW50IHRoaXMgZmxhZy4KPj4KPj4gQ3VycmVu
dGx5IGR5bmFtaWNhbGx5IHNpemVkIGFycmF5cyBhcmUgbGltaXRlZCB0byBvbmUgZGltZW5zaW9u
YWwgYXJyYXlzLAo+PiBidXQgdGhhdCBtaWdodCBjaGFuZ2UgaW4gdGhlIGZ1dHVyZSBpZiB0aGVy
ZSBpcyBhIG5lZWQgZm9yIGl0Lgo+Pgo+PiBUaGUgaW5pdGlhbCB1c2UtY2FzZSBvZiBkeW5hbWlj
IGFycmF5cyBhcmUgc3RhdGVsZXNzIGNvZGVjcy4gQSBmcmFtZQo+PiBjYW4gYmUgZGl2aWRlZCBp
biBtYW55IHNsaWNlcywgc28geW91IHdhbnQgdG8gcHJvdmlkZSBhbiBhcnJheSBjb250YWluaW5n
Cj4+IHNsaWNlIGluZm9ybWF0aW9uIGZvciBlYWNoIHNsaWNlLiBUeXBpY2FsbHkgdGhlIG51bWJl
ciBvZiBzbGljZXMgaXMgc21hbGwsCj4+IGJ1dCB0aGUgc3RhbmRhcmQgYWxsb3cgZm9yIGh1bmRy
ZWRzIG9yIHRob3VzYW5kcyBvZiBzbGljZXMuIER5bmFtaWMgYXJyYXlzCj4+IGFyZSBhIGdvb2Qg
c29sdXRpb24gc2luY2Ugc2l6aW5nIHRoZSBhcnJheSBmb3IgdGhlIHdvcnN0IGNhc2Ugd291bGQg
d2FzdGUKPj4gc3Vic3RhbnRpYWwgYW1vdW50cyBvZiBtZW1vcnkuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEhhbnMgVmVya3VpbCA8aHZlcmt1aWwtY2lzY29AeHM0YWxsLm5sPgo+PiAtLS0KPj4gICAu
Li4vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvdmlkaW9jLXF1ZXJ5Y3RybC5yc3QgICAgICAgICAg
fCA4ICsrKysrKysrCj4+ICAgaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgMSArCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRp
YS92NGwvdmlkaW9jLXF1ZXJ5Y3RybC5yc3QgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkv
bWVkaWEvdjRsL3ZpZGlvYy1xdWVyeWN0cmwucnN0Cj4+IGluZGV4IDg4ZjYzMDI1MmQ5OC4uYTIw
ZGZhMmE5MzNiIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvdjRsL3ZpZGlvYy1xdWVyeWN0cmwucnN0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNw
YWNlLWFwaS9tZWRpYS92NGwvdmlkaW9jLXF1ZXJ5Y3RybC5yc3QKPj4gQEAgLTYyNSw2ICs2MjUs
MTQgQEAgU2VlIGFsc28gdGhlIGV4YW1wbGVzIGluIDpyZWY6YGNvbnRyb2xgLgo+PiAgIAlgYFY0
TDJfQ1RSTF9GTEFHX0dSQUJCRURgYCBmbGFnIHdoZW4gYnVmZmVycyBhcmUgYWxsb2NhdGVkIG9y
Cj4+ICAgCXN0cmVhbWluZyBpcyBpbiBwcm9ncmVzcyBzaW5jZSBtb3N0IGRyaXZlcnMgZG8gbm90
IHN1cHBvcnQgY2hhbmdpbmcKPj4gICAJdGhlIGZvcm1hdCBpbiB0aGF0IGNhc2UuCj4+ICsgICAg
KiAtIGBgVjRMMl9DVFJMX0ZMQUdfRFlOQU1JQ19BUlJBWWBgCj4+ICsgICAgICAtIDB4MDgwMAo+
PiArICAgICAgLSBUaGlzIGNvbnRyb2wgaXMgYSBkeW5hbWljYWxseSBzaXplZCAxLWRpbWVuc2lv
bmFsIGFycmF5LiBJdAo+PiArICAgICAgICBiZWhhdmVzIHRoZSBzYW1lIGFzIGEgcmVndWxhciBh
cnJheSwgZXhjZXB0IHRoYXQgdGhlIG51bWJlcgo+PiArCW9mIGVsZW1lbnRzIGFzIHJlcG9ydGVk
IGJ5IHRoZSBgYGVsZW1zYGAgZmllbGQgaXMgYmV0d2VlbiAxIGFuZAo+PiArCWBgZGltc1swXWBg
LiBTbyBzZXR0aW5nIHRoZSBjb250cm9sIHdpdGggYSBkaWZmZXJlbnRseSBzaXplZAo+PiArCWFy
cmF5IHdpbGwgY2hhbmdlIHRoZSBgYGVsZW1zYGAgZmllbGQgd2hlbiB0aGUgY29udHJvbCBpcwo+
PiArCXF1ZXJpZWQgYWZ0ZXJ3YXJkcy4KPiBJIGFtIHByb3Bvc2luZyBhIGNoYW5nZSB0byB0aGUg
ZHluYW1pYyBhcnJheSBpbXBsZW1lbnRhdGlvbjogaW5pdGlhbGx5Cj4gZHluYW1pYyBhcnJheSBj
b250cm9scyBzdGFydCBvZmYgYXMgZW1wdHkgYXJyYXlzICgwIGVsZW1lbnRzKS4gVGhpcyBhbHNv
Cj4gYWxsb3dzIHVzZXJzcGFjZSB0byBzZXQgYSBkeW5hbWljIGFycmF5IGNvbnRyb2wgdG8gYW4g
ZW1wdHkgYXJyYXkuCj4KPiBJdCBwcm9iYWJseSB3b3VsZCBhbHNvIG1ha2Ugc2Vuc2UgdG8gYWRk
IGEgbWluX2R5bl9lbGVtcyB0byBzZXQgdGhlIG1pbmltdW0KPiBhbGxvd2VkIG51bWJlciBvZiBl
bGVtZW50cyBmb3IgYSBkeW5hbWljIGFycmF5LiBUaGlzIHdvdWxkIG1vc3QgbGlrZWx5IGJlCj4g
ZWl0aGVyIDAgb3IgMS4KPgo+IEluIHRoZSBjb250ZXh0IG9mIHRoaXMgSEVWQyBzZXJpZXMsIGRv
ZXMgaXQgaGVscCB0byBhbGxvdyBlbXB0eSBkeW5hbWljIGFycmF5cz8KPgo+IEZvciBWNEwyX0NJ
RF9TVEFURUxFU1NfSEVWQ19FTlRSWV9QT0lOVF9PRkZTRVRTIGluIHBhcnRpY3VsYXIgaXQgbG9v
a3MgbGlrZQo+IGl0IHdvdWxkIG1ha2Ugc2Vuc2Ugc2luY2UgSSB0aGluayAoY29ycmVjdCBtZSBp
ZiBJIGFtIHdyb25nKSB0aGVyZSBjYW4gYmUgMAo+IGVudHJ5IHBvaW50IG9mZnNldHMuIFNvIHdp
dGggZW1wdHkgYXJyYXlzIHN1cHBvcnRlZCB3b3VsZCB0aGUgZmllbGQKPiBudW1fZW50cnlfcG9p
bnRfb2Zmc2V0cyBzdGlsbCBiZSBuZWVkZWQ/Cgp5ZXMgaXQgcG9zc2libGUgdG8gaGF2ZSAwIGVu
dHJ5IHBvaW50IG9mZnNldHMgaW4gYml0c3RyZWFtIGJ1dCBpbiB0aGlzIGNhc2UKSSB0aGluayB0
aGUgc3RhY2sgd29uJ3QgdXNlIFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX0VOVFJZX1BPSU5UX09G
RlNFVFMgYmVjYXVzZQppdCBoYXZlIG5vdCBkYXRhIHRvIHNlbmQuCkkgaGF2ZSBpbnRyb2R1Y2Ug
bnVtX2VudHJ5X3BvaW50X29mZnNldHMgZmllbGQgYmVjYXVzZSBtb3N0IG9mIHRoZSBkcml2ZXJz
Cm9ubHkgbmVlZCB0aGlzIGluZm9ybWF0aW9uIGFuZCBub3QgdGhlIGZ1bGwgb2Zmc2V0cyBhcnJh
eSBzbyBJIHRoaW5rIGl0IGlzIG5lZWRlZC4KRm9yIG5vdyBub25lIG9mIHRoZSBkcml2ZXJzIHVz
ZSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19FTlRSWV9QT0lOVF9PRkZTRVRTCmNvbnRyb2wsIGl0
IGlzIGhlcmUgdG8gYmUgZnV0dXJlIHByb29mLgoKUmVnYXJkcywKQmVuamFtaW4KCj4KPiBJZiB5
b3Ugd2FudCB0byB0ZXN0LCB0aGVuIGxldCBtZSBrbm93IGFuZCBJIG1haWwgYSB2ZXJ5IHNpbXBs
ZSBwYXRjaCBhZGRpbmcKPiBzdXBwb3J0IGZvciBlbXB0eSBhcnJheXMgKG5vdCB5ZXQgbWluX2R5
bl9lbGVtcywgdGhvdWdoKS4KPgo+IFJlZ2FyZHMsCj4KPiAJSGFucwo+Cj4+ICAgCj4+ICAgUmV0
dXJuIFZhbHVlCj4+ICAgPT09PT09PT09PT09Cj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkv
bGludXgvdmlkZW9kZXYyLmggYi9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmgKPj4gaW5k
ZXggNTMxMWFjNGZkZTM1Li45MDE4YWE5ODRkYjMgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvdWFw
aS9saW51eC92aWRlb2RldjIuaAo+PiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYy
LmgKPj4gQEAgLTE4OTAsNiArMTg5MCw3IEBAIHN0cnVjdCB2NGwyX3F1ZXJ5bWVudSB7Cj4+ICAg
I2RlZmluZSBWNEwyX0NUUkxfRkxBR19IQVNfUEFZTE9BRAkweDAxMDAKPj4gICAjZGVmaW5lIFY0
TDJfQ1RSTF9GTEFHX0VYRUNVVEVfT05fV1JJVEUJMHgwMjAwCj4+ICAgI2RlZmluZSBWNEwyX0NU
UkxfRkxBR19NT0RJRllfTEFZT1VUCTB4MDQwMAo+PiArI2RlZmluZSBWNEwyX0NUUkxfRkxBR19E
WU5BTUlDX0FSUkFZCTB4MDgwMAo+PiAgIAo+PiAgIC8qICBRdWVyeSBmbGFncywgdG8gYmUgT1Jl
ZCB3aXRoIHRoZSBjb250cm9sIElEICovCj4+ICAgI2RlZmluZSBWNEwyX0NUUkxfRkxBR19ORVhU
X0NUUkwJMHg4MDAwMDAwMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
