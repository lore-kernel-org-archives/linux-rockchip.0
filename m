Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D69AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 May 2022 13:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oq8kHvQU7szac0BwsWLNqzW/BW6FeWTPZwGo0bJ+Si4=; b=KXFrMsH7RRcPHO
	HJhcMnmWWpexagI4LUgVCdXoBn7DM086LO1MjYUOG19wL4ni5HduonqcfuluEbY5etlhBbo/1oL+z
	T5sVMegxOwFkGMENaZ80J2NGcruLGjgjimqq44Xav4gNw4H+CcK/CbJpIPQdaYbcCh7zViFh17Er6
	B7ZFqKlg2i3Ch/0uyu1vIdwxXkhgL4helBi3NkSV5ddBCkAg3linsCECOIWBYFWk5MRmEP8qmtIIK
	tqpzAHf2m5uK2UzBQNSFjsyVAVr/jwY/1Pvi5csdOLJEunfk28ta/otg5pboAmwyJTlbargQ7jBa4
	2YDGHKHKRUZa4djBtNCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlsdb-0062oD-Sg; Tue, 03 May 2022 13:32:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlsdX-0062lh-Ng
 for linux-rockchip@lists.infradead.org; Tue, 03 May 2022 13:32:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 35C8E1F443C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651584734;
 bh=Yi4Uy3F9RG9QTJLxf0BYd+sKJm9SOsJsPZxDl2eQp+c=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=YAhIWzoJSCAXq5It7jKfdawVuvvInO28kuCcMsjmB6x+77mzHXZnyHilP2X+kVkxI
 IG9gajNggO4Y3/UONQQHveTQUWtDnJhYB8QO8n+/AYqw2IShuvKGAChfEE2P/jwF8t
 3JXnCyn9gdOp9d6Al9wIMsZxvDyjLx5oCRrHIjs49MkoAZFpJ9USC2wMGHoHgRoQ5F
 ffNYdTmmk3rTfsEZkalCVTIB80UOySDdGfQ9MO0652hUW4fdm0lThUOn2FdBqTL3PS
 9r5lXAxgJA82p2kER/89vTPTsz2fvGSksqKjzg5G4f5HdRSFzNNvU+X7H/tcuS4WjL
 /qqESlYcvrGPg==
Message-ID: <010be970-2463-f65b-dbef-0a2784530981@collabora.com>
Date: Tue, 3 May 2022 15:32:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2] media: hantro: HEVC: unconditionnaly set
 pps_{cb/cr}_qp_offset values
Content-Language: en-US
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 linux-media <linux-media@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, jon@nanocrew.net,
 Adam Ford <aford173@gmail.com>, Collabora Kernel ML <kernel@collabora.com>
References: <20220426135034.694655-1-benjamin.gaignard@collabora.com>
 <CAAEAJfAvUjtR4w0uaZ5yFueXu8jNbH-gmWUOEZxoJH78771RSA@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CAAEAJfAvUjtR4w0uaZ5yFueXu8jNbH-gmWUOEZxoJH78771RSA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_063220_023204_B1A42F31 
X-CRM114-Status: GOOD (  22.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDAzLzA1LzIwMjIgw6AgMTU6MTIsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gT24gVHVlLCBBcHIgMjYsIDIwMjIgYXQgMTA6NTAgQU0gQmVuamFtaW4g
R2FpZ25hcmQKPiA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+IEFs
d2F5cyBzZXQgcHBzX2NiX3FwX29mZnNldCBhbmQgcHBzX2NyX3FwX29mZnNldCB2YWx1ZXMgaW4g
SGFudHJvL0cyCj4+IHJlZ2lzdGVyIHdoYXRldmVyIGlzIFY0TDJfSEVWQ19QUFNfRkxBR19QUFNf
U0xJQ0VfQ0hST01BX1FQX09GRlNFVFNfUFJFU0VOVAo+PiBmbGFnIHZhbHVlLgo+IEkgd291bGQg
c2F5IHdlIG5lZWQgbW9yZSBqdXN0aWZpY2F0aW9uIHdoeSB0aGlzIGlzIGNvcnJlY3QsIG9yIGF0
IGxlYXN0Cj4gY2hlY2tpbmcgd2hhdCB0aGUgcmVmZXJlbmNlIHZlbmRvciBpbXBsZW1lbnRhdGlv
biBpcyBkb2luZyAoYW5kIG1lbnRpb25pbmcKPiBpbiB0aGUgY29tbWl0IGRlc2NyaXB0aW9uIHNv
IHdlIGNhbiB0cmFjayBpdCBpbiB0aGUgZnV0dXJlKS4KClllcyB0aGF0IGlzIHdoYXQgdGhlIHZl
bmRvciBpbXBsZW1lbnRhdGlvbiBpcyBkb2luZy4KCj4KPj4gVGhpcyBmaXggQ0FJTklUX0dfU0hB
UlBfMyB0ZXN0IGluIGZsdXN0ZXIuCj4+Cj4gVGhpcyBjb3VsZCBzb3VuZCBsaWtlIGEgdGFkIGEg
cGVkYW50aWMgZGV0YWlsLCBidXQgSSdkIHNheSBpdCdzCj4gaW1wb3J0YW50IHdlIHN0b3AgcmVm
ZXJpbmcgdG8gdGVzdHMKPiBhcyAiZmx1c3RlciB0ZXN0cyIsIGFuZCBpbnN0ZWFkIHNheSBzb21l
dGhpbmcgbW9yZSBjb3JyZWN0IGFzICJIRVZDCj4gY29uZm9ybWFuY2UgdGVzdCBDQUlOSVRfR19T
SEFSUF8zIi4KCkFzIHlvdSB3YW50LgoKPgo+IEFsc28sIHdoZW4gd2UgYXJlIGZpeGluZyBjb25m
b3JtYW5jZSB0ZXN0cywgbGV0J3MgcGxlYXNlIGFkZCB0aGUKPiBGbHVzdGVyIHNjb3JlIChpbiB0
aGlzIGNhc2UsIEkgdGhpbmsgaXQncwo+IE9LIHRvIHJlZmVyIHRvIEZsdXN0ZXIpLgoKV2UgYXJl
IGZpeGluZyBidWdzIGluIHBhcmFsbGVsIGluIHRoZSBkcml2ZXIsIHRoZSB1QVBJIGFuZCBHU3Ry
ZWFtZXIKc28gZmx1c3RlciBzY29yZSBldm9sdXRpb24gcmVmbGVjdCB0aGF0IHByb2dyZXNzaW9u
IGFuZCBtYXliZSBub3Qgb25seQp3aGF0IHRoaXMgcGF0Y2ggaXMgZml4aW5nLgpUaGUgYmVzdCBJ
IGNvdWxkIHNheXMgaGVyZSBpcyB0aGF0IHBhdGNoIGZpeCBIRVZDIGNvbmZvcm1hbmNlIHRlc3QK
Q0FJTklUX0dfU0hBUlBfMyBzbyBmbHVzdGVyIHNjb3JlIGluY3JlYXNlIGJ5IG9uZS4KClJlZ2Fy
ZHMsCkJlbmphbWluCgo+Cj4gUFM6IFNhbWUgY29tbWVudHMgYXBwbHkgdG8gcGF0Y2ggIm1lZGlh
OiBoYW50cm86IEhFVkM6IEZpeCByZWZlcmVuY2UKPiBmcmFtZXMgbWFuYWdlbWVudCIuCj4KPiBU
aGFua3MsCj4gRXplcXVpZWwKPgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2Y19kZWMuYyB8IDkgKystLS0tLS0tCj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVj
LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4+
IGluZGV4IDZkZWIzMWI3Yjk5My4uNTAzZjRiMDI4YmM1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMKPj4gQEAgLTE5NCwx
MyArMTk0LDggQEAgc3RhdGljIHZvaWQgc2V0X3BhcmFtcyhzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4
KQo+PiAgICAgICAgICAgICAgICAgIGhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfbWF4X2N1X3Fw
ZF9kZXB0aCwgMCk7Cj4+ICAgICAgICAgIH0KPj4KPj4gLSAgICAgICBpZiAocHBzLT5mbGFncyAm
IFY0TDJfSEVWQ19QUFNfRkxBR19QUFNfU0xJQ0VfQ0hST01BX1FQX09GRlNFVFNfUFJFU0VOVCkg
ewo+PiAtICAgICAgICAgICAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9jYl9xcF9vZmZz
ZXQsIHBwcy0+cHBzX2NiX3FwX29mZnNldCk7Cj4+IC0gICAgICAgICAgICAgICBoYW50cm9fcmVn
X3dyaXRlKHZwdSwgJmcyX2NyX3FwX29mZnNldCwgcHBzLT5wcHNfY3JfcXBfb2Zmc2V0KTsKPj4g
LSAgICAgICB9IGVsc2Ugewo+PiAtICAgICAgICAgICAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUs
ICZnMl9jYl9xcF9vZmZzZXQsIDApOwo+PiAtICAgICAgICAgICAgICAgaGFudHJvX3JlZ193cml0
ZSh2cHUsICZnMl9jcl9xcF9vZmZzZXQsIDApOwo+PiAtICAgICAgIH0KPj4gKyAgICAgICBoYW50
cm9fcmVnX3dyaXRlKHZwdSwgJmcyX2NiX3FwX29mZnNldCwgcHBzLT5wcHNfY2JfcXBfb2Zmc2V0
KTsKPj4gKyAgICAgICBoYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX2NyX3FwX29mZnNldCwgcHBz
LT5wcHNfY3JfcXBfb2Zmc2V0KTsKPj4KPj4gICAgICAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUs
ICZnMl9maWx0X29mZnNldF9iZXRhLCBwcHMtPnBwc19iZXRhX29mZnNldF9kaXYyKTsKPj4gICAg
ICAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9maWx0X29mZnNldF90YywgcHBzLT5wcHNf
dGNfb2Zmc2V0X2RpdjIpOwo+PiAtLQo+PiAyLjMyLjAKPj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
