Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30709C87FCB
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 11:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTCDBk/cZRZwcLak2I8yyuquPt9O6BM3X+zTFqAex+E=; b=XPrXt0ADCrRg4Z
	0ODPNvagmQVlv2fytcXlUzdzGgNro2unxAIca9MArOBPxcNj5K8u6riQgGkP8UH8/7X6/MkoFRhqj
	vX8BxQ2rVPy8qvj2kTWi2CZMm9FnxLW/T+cmOzkj4k5MG7McBGY8HcRD0PAicBjHdpeJspgWC7UrY
	KhnbX0C7TXJxtoDJIMC+JqokmIaIGcZqLMacfCLGP+c7hEUWLsMzwGouIRA8dgdzQBSqj3Euqm5ft
	2H0YvVdGgNUPy04WI3Rw8Wk37wu90h2Oe1KYNN0c/R0xZ8DUelK+mqAisJ/pzivXldu6E5SGrRDLo
	0DPB6widd2riHtRBjIfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFaD-0000000CZi4-3p4L;
	Tue, 05 Aug 2025 11:11:53 +0000
Received: from mail-m21470.qiye.163.com ([117.135.214.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFVu-0000000CZEk-3FR3;
	Tue, 05 Aug 2025 11:07:28 +0000
Received: from [172.16.12.153] (gy-adaptive-ssl-proxy-3-entmail-virt135.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1e5e73aa8;
	Tue, 5 Aug 2025 19:07:10 +0800 (GMT+08:00)
Message-ID: <a7988745-ea31-45cd-8ffd-905e6e4d1315@rock-chips.com>
Date: Tue, 5 Aug 2025 19:07:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Add Type-C DP support for RK3399 EVB IND board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20250729090032.97-1-kernel@airkyi.com>
 <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
 <63ec11cf-7927-431a-995e-a5fc35ef1ba7@rock-chips.com>
 <pk5wecbbpxn7v4bdwtghhdnm76fmrmglelytljwfb4cgvpu2i6@rk5turgyt5xq>
 <0207826d-a987-4464-b306-29bdbfac45bc@rock-chips.com>
 <3e880194-5ac8-4056-929c-ac103bedc737@oss.qualcomm.com>
 <f726862a-bd18-43ee-b307-8daef2451e6b@rock-chips.com>
 <6nfmxwtwcvuyo2jaao7fele7jcgcykfpy7czbcbjmjxv7cs5sc@dmbtot73kw63>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <6nfmxwtwcvuyo2jaao7fele7jcgcykfpy7czbcbjmjxv7cs5sc@dmbtot73kw63>
X-HM-Tid: 0a9879e9ebce03abkunm2a7119d6701883
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGksaS1YZHR1IHR8ZTUoZGRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QO3VG4Co4nsteQv8Qv57Hfls+cf5t683+xOusxx1peKmZ26y3oXrzV2n1Yh8IPkMsUuZPGO92FYmZYsqJJuvr7R1Do+nJTWWLEytFOuX7IY7byJ2OCGPylXYwmvRz5z63+IDQxi0wCeE+ZhGlRNJmm2zpuZgUlf2I/6B0gWLdlA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=DcI3MBPSj0BIlngssBgBDQc0EsKF1spVCU2qV220AlE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_040727_469219_CA7B775F 
X-CRM114-Status: GOOD (  22.81  )
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

T24gOC81LzIwMjUgNjo0NCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKCj4gT24gVHVlLCBB
dWcgMDUsIDIwMjUgYXQgMDI6MzI6MTdQTSArMDgwMCwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4+IEhp
IERtaXRyeSwKPj4KPj4gT24gOC81LzIwMjUgMTI6MjYgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3Jv
dGU6Cj4+PiBPbiAwNS8wOC8yMDI1IDA5OjEzLCBDaGFveWkgQ2hlbiB3cm90ZToKPj4+PiBIaSBE
bWl0cnksCj4+Pj4KPj4+PiBPbiA4LzIvMjAyNSA1OjU1IFBNLCBEbWl0cnkgQmFyeXNoa292IHdy
b3RlOgo+Pj4+Cj4+Pj4gWy4uLl0KPj4+Pgo+Pj4+Cj4+Pj4+Pj4+IEJUVywgb25lIG9mIHRoZSBp
bXBvcnRhbnQgdGhpbmdzIHRvIGRvIGlzIHRvIGltcGxlbWVudCBleHRjb24tbGlrZQo+Pj4+Pj4+
PiBub3RpZmljYXRpb25zLiBJIGZvdW5kIGluY2x1ZGUvZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmgg
LCBidXQgaWYgdGhlCj4+Pj4+Pj4+IGF1eC1icmlkZ2UgaXMgdXNlZCwgdGhlIGJyaWRnZSBjaGFp
biB3b3VsZCBsb29rIGxpa2UgdGhpczoKPj4+Pj4+Pj4KPj4+Pj4+Pj4gUEhZMCBhdXgtYnJpZGdl
IC0tLSsKPj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fCAtLS0tPiBDRE4tRFAgYnJpZGdlCj4+Pj4+Pj4+IFBIWTEgYXV4LWJyaWRnZSAtLS0rCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IE9oLCBDRE4tRFAgYnJpZGdlIGhhcyB0d28gcHJldmlvdXMgYXV4LWJyaWRn
ZSEKPj4+Pj4+Pj4KPj4+Pj4+Pj4gTm93LCBJIHRyeSB0byB1c2UgZHJtX2Nvbm5lY3Rvcl9vb2Jf
aG90cGx1Z19ldmVudCgpIHRvIG5vdGlmeSBIUEQKPj4+Pj4+Pj4gc3RhdGUgYmV0d2VlbiBQSFkg
YW5kIENETi1EUCBjb250cm9sbGVyLgo+Pj4+Pj4+IERvZXMgaXQgYWN0dWFsbHkgd29yaz8gVGhl
IE9PQiBIUEQgZXZlbnQgd2lsbCBiZSByZXBvdGVkCj4+Pj4+Pj4gZm9yIHRoZSB1c2ItYwo+Pj4+
Pj4+IGNvbm5lY3RvcidzIGZ3bm9kZSwgYnV0IHRoZSBEUCBjb250cm9sbGVyIGlzbid0Cj4+Pj4+
Pj4gY29ubmVjdGVkIHRvIHRoYXQgbm9kZQo+Pj4+Pj4+IGFueWhvdy4gSWYgSSdtIG5vdCBtaXN0
YWtlbiwgdGhlIEhQRCBzaWduYWwgd2lsbCBub3QKPj4+Pj4+PiByZWFjaCBEUCBkcml2ZXIgaW4K
Pj4+Pj4+PiB0aGlzIGNhc2UuCj4+Pj4+PiBZZXMuwqAgV2hhdCB5b3UgbWVudGlvbmVkIGlzIHRo
ZSBjYXNlIGluCj4+Pj4+PiBkcml2ZXJzL3VzYi90eXBlYy9hbHRtb2Rlcy9kaXNwbGF5cG9ydC5j
IC4gSSBoYXZlIGFsc28gYWRkZWQKPj4+Pj4+IGEgbmV3IE9PQiBldmVudAo+Pj4+Pj4gbm90aWZ5
IGluIHRoZSBQSFkgZHJpdmVyIGluIFBhdGNoIDMsIHdoZXJlIHRoZSBleHBlY3RlZAo+Pj4+Pj4g
Zndub2RlIGlzIHVzZWQgaW4KPj4+Pj4+IHRoZSBQSFkuIFNvIG5vdyB3ZSBoYXZlIHR3byBPT0Ig
SFBEIGV2ZW50cywgb25lIGZyb20KPj4+Pj4+IGFsdG1vZGVzLyBkaXNwbGF5cG9ydC5jCj4+Pj4+
PiBhbmQgdGhlIG90aGVyIGZyb20gUEhZLiBPbmx5IHRoZSBIUEQgZnJvbSBQSFkgaXMgZXZlbnR1
YWxseQo+Pj4+Pj4gcGFzc2VkIHRvIHRoZSBEUAo+Pj4+Pj4gZHJpdmVyLgo+Pj4+PiBUaGlzIHdh
eSB5b3Ugd2lsbCBsb29zZSBJUlFfSFBEIHB1bHNlIGV2ZW50cyBmcm9tIHRoZSBEUC4gVGhleSBh
cmUgdXNlZAo+Pj4+PiBieSBEUFJYIChha2EgRFAgU2luaykgdG8gc2lnbmFsIHRvIERQVFggKERQ
IFNvdXJjZSkgdGhhdCB0aGVyZSB3YXMgYQo+Pj4+PiBjaGFuZ2Ugb24gdGhlIERQUlggc2lkZSBh
bmQgdGhlIERQVFggc2hvdWxkIHJlcmVhZCBsaW5rIHBhcmFtcwo+Pj4+PiBhbmQgbWF5YmUKPj4+
Pj4gcmV0cmFpbiB0aGUgbGluay4KPj4+PiBTb3JyeSwgSSBzdGlsbCBkb24ndCBxdWl0ZSB1bmRl
cnN0YW5kIHlvdXIgcG9pbnQuIEkgdGhpbmsgdGhlIGVudGlyZQo+Pj4+IG5vdGlmaWNhdGlvbiBw
YXRoIGlzIGFzIGZvbGxvd3M6Cj4+Pj4KPj4+PiBUeXBlLUMgbXV4IGNhbGxiYWNrIC0+IFJLMzM5
OSBVU0JEUCBQSFkgLT4gUEhZIGNhbGxzCj4+Pj4gZHJtX2Nvbm5lY3Rvcl9vb2JfaG90cGx1Z19l
dmVudCgpIC0+IERQIGRyaXZlcgo+Pj4+Cj4+Pj4gQXJlIHlvdSBjb25jZXJuZWQgdGhhdCB0aGUg
SVJRX0hQRCBldmVudCBpcyBub3QgYmVpbmcgaGFuZGxlZAo+Pj4+IHNvbWV3aGVyZSBhbG9uZyB0
aGUgcGF0aD8gSXMgaXQgdGhhdCB0aGUgVHlwZS1DIG11eCBjYWxsYmFjayBkaWRuJ3QKPj4+PiBu
b3RpZnkgdGhlIFBIWSwgb3IgdGhhdCBhZnRlciB0aGUgUEhZIHBhc3NlZCB0aGUgZXZlbnQgdG8g
dGhlIERQCj4+Pj4gZHJpdmVyIHZpYSB0aGUgT09CIGV2ZW50LCB0aGUgRFAgZHJpdmVyIGRpZG4n
dCBoYW5kbGUgaXQ/Cj4+PiBUaGUgSVJRX0hQRCBpcyBhbiBldmVudCBjb21pbmcgZnJvbSBEUFJY
LCBpdCBpcyBkZWxpdmVyZWQgYXMgYSBwYXJ0IG9mCj4+PiB0aGUgYXR0ZW50aW9uIFZETSwgc2Vl
IERQX1NUQVRVU19JUlFfSFBELiBJdCdzIGJlaW5nIGhhbmRsZWQgYnkgdGhlCj4+PiBhbHRtb2Rl
IGRpc3BsYXlwb3J0LmMgZHJpdmVyIGFuZCBpcyB0aGVuIGRlbGl2ZXJlZCBhcyBhbiBPT0IgaG90
cGx1Zwo+Pj4gY2FsbC4gSG93ZXZlciwgaXQncyBub3QgYSBtdXggZXZlbnQsIHNvIGl0IGlzIG5v
dCAoYW5kIGl0IHNob3VsZCBub3QpCj4+PiBiZWluZyBicm9hZGNhc3RlZCBvdmVyIHRoZSB0eXBl
Y19tdXggZGV2aWNlcy4KPj4+Cj4+PiBUaGUgd2F5IHdlIHdlcmUgaGFuZGxpbmcgdGhhdCBpcyBi
eSBoYXZpbmcgYSBjaGFpbiBvZiBkcm1fYXV4X2JyaWRnZXMKPj4+IGZvciBhbGwgaW50ZXJpbSBk
ZXZpY2VzLCBlbmRpbmcgdXAgd2l0aCBhIGRybV9kcF9ocGRfYnJpZGdlIHJlZ2lzdGVyZWQKPj4+
IGJ5IHRoZSBUQ1BNLiBUaGlzIHdheSB3aGVuIHRoZSBEUFJYIHRyaWdnZXJzIHRoZSBJUlFfSFBE
IGV2ZW50LCBpdCBpcwo+Pj4gYmVpbmcgaGFuZGxlZCBieSB0aGUgZGlzcGxheXBvcnQuYyBhbmQg
dGhlbiBkZWxpdmVyZWQgdGhyb3VnaCB0aGF0Cj4+PiBicmlkZ2UgdG8gdGhlIERQIGRyaXZlci4K
Pj4gSSB0aGluayB0aGUgaXNzdWUgZ29lcyBiYWNrIHRvIHRoZSBiZWdpbm5pbmcuIFRoZSBrZXkg
aXMgdG8gcmV1c2UgdGhlIGxvZ2ljCj4+IGluIGRpc3BsYXlwb3J0LmMsIGFuZCB0aGUgcHJldmlv
dXMgYXBwcm9hY2ggb2YgZGlyZWN0bHkgc2V0dGluZyB0aGUgZndub2RlCj4+IGhhcyBhbHJlYWR5
IGJlZW4gcmVqZWN0ZWQuIElzIGl0IGEgZ29vZCBpZGVhIHRvIHJlZ2lzdGVyIHRoZSBhdXggaHBk
IGJyaWRnZQo+PiBpbiBkaXNwbGF5cG9ydC5jPyBJbiB0aGlzIHdheSwgd2UgZG9uJ3QgbmVlZCB0
byByZWdpc3RlciBpdCB3aXRoIGEgYnVuY2ggb2YKPj4gUEQgZHJpdmVycyAoc3VjaCBhcyBmdXNi
MzAyKSwgd2hpY2ggc2VlbXMgbGlrZSBhIG1vcmUgZ2VuZXJpYyBzb2x1dGlvbi4KPiBkaXNwbGF5
cG9ydC5jIGNvbWVzIGludG8gcGxheSBvbmx5IHdoZW4geW91IGFjdHVhbGx5IGF0dGFjaCBhIERQ
IGRvbmdsZSwKPiB3aGljaCBpcyB0b28gbGF0ZSBmb3IgYnJpbmdpbmcgdXAgdGhlIGRpc3BsYXkg
cGlwZWxpbmUuIEJ1dCB5b3VyIHBvaW50Cj4gaXMgdmFsaWQsIGl0IG1pZ2h0IGJlIHdvcnRoIG1v
dmluZyBkcm1fZHBfaHBkIHJlZ2lzdHJhdGlvbiB0bwo+IHR5cGVjX3BvcnRfcmVnaXN0ZXJfYWx0
bW9kZSgpLgoKVmVyeSBpbnNpZ2h0ZnVsLCB0aGFuayB5b3UhIEkgd2lsbCB0cnkgdG8gZG8gdGhp
cyBpbiB2NCA6KQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
