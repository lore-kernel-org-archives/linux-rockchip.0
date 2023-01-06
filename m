Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35DECC4708D
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 11:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaaN5zn8LzaIyDNkecbRW4oQS4UGhrt6Anh5lQ4sUcM=; b=1IRe4+WrU+GGvN
	LQJIShr7lvwZt+xhVRpn1gsi4xj4V19T7Mwvp+/qVXvDgGBA3ikNZFZNm1ik2JQmf7G0XiAvAhXj5
	B8thZOa9I94fnDKpe6m6gQz7fjszoFiI8ajJt01YOAsbyP+ZfSYjroookCm1vaiolmQhQuh43D4Um
	/GpkKqRQDebQGsI1sWJDVT50L+SSVYKO2SjqAvRPmY9iCPLWEyb2YMBWyL1RrxMTi4yZ4mDHnq9Wb
	CzSr7ASH88IZZjdUNXVEtukgyBnSt/V5IIwLiBwcJx16GAg+0ayxESwzSiXet/CesQyxGgw0qynnS
	wCTqU7/ZrvxKvBG1eraQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDl7s-007npW-LA; Fri, 06 Jan 2023 11:43:08 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050:0:465::101])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDl7p-007nnk-H1
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 11:43:07 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4NpM0K0sZFz9sTD;
	Fri,  6 Jan 2023 12:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1673005377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+MKewvQAOmy/Zn8oNArbj5sMzsVqtojw6uyLjAN8pxw=;
	b=RR68Uij7oOSXHjTTB6IOaiZ/WbfzNHq250+jiBWvglyo7RsQaixfIba1oTOVzP+MdTCWcf
	Jyzp435Zmhb4JdZueZrcdt7ZjPijmFyzYkIdLkAOyk/2VRX8pMXF+7pDR3Zgh7S901EvLS
	M9YeS46cK2eNA11KeWC1zaBgnwu5vISzjr8xftwfjXd7T8V9EwXqJ6jnEbkSVAx5s3y8V0
	Ucish6QEzF4eXtaehQG4YxrtXfk0Y7NMwXCqtJ4zfn8XBPoaI6SDM0n/zAvHSBA/1eMjBr
	/UbXykZOCpYV6Cg1HUXtLxoZmh/2XaE9ToBZ5CfSs0rtN2nUiCv6+py6c8s5jg==
Message-ID: <9455bc5b-2074-4f48-71a7-5c816ee19a78@mailbox.org>
Date: Fri, 6 Jan 2023 12:42:54 +0100
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] drm/rockchip: vop: Leave vblank enabled in
 self-refresh
To: Brian Norris <briannorris@chromium.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>
Cc: "kernelci.org bot" <bot@kernelci.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, stable@vger.kernel.org
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <20230105174001.2.Ic07cba4ab9a7bd3618a9e4258b8f92ea7d10ae5a@changeid>
Content-Language: en-CA
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel.daenzer@mailbox.org>
In-Reply-To: <20230105174001.2.Ic07cba4ab9a7bd3618a9e4258b8f92ea7d10ae5a@changeid>
X-MBO-RS-META: tq4hqps3dpqxcfuhdffygmxousg6bo4x
X-MBO-RS-ID: a6ab78268fa770b490a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_034305_851871_3E140C53 
X-CRM114-Status: GOOD (  27.33  )
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

T24gMS82LzIzIDAyOjQwLCBCcmlhbiBOb3JyaXMgd3JvdGU6Cj4gSWYgd2UgZGlzYWJsZSB2Ymxh
bmsgd2hlbiBlbnRlcmluZyBzZWxmLXJlZnJlc2gsIHZibGFuayBBUElzIChsaWtlCj4gRFJNX0lP
Q1RMX1dBSVRfVkJMQU5LKSBubyBsb25nZXIgd29yay4gQnV0IHVzZXIgc3BhY2UgaXMgbm90IGF3
YXJlIHdoZW4KPiB3ZSBlbnRlciBzZWxmLXJlZnJlc2gsIHNvIHRoaXMgYXBwZWFycyB0byBiZSBh
biBBUEkgdmlvbGF0aW9uIC0tIHRoYXQKPiBEUk1fSU9DVExfV0FJVF9WQkxBTksgZmFpbHMgd2l0
aCBFSU5WQUwgd2hlbmV2ZXIgdGhlIGRpc3BsYXkgaXMgaWRsZSBhbmQKPiBlbnRlcnMgc2VsZi1y
ZWZyZXNoLgo+IAo+IFRoZSBkb3duc3RyZWFtIGRyaXZlciB1c2VkIGJ5IG1hbnkgb2YgdGhlc2Ug
c3lzdGVtcyBuZXZlciB1c2VkIHRvCj4gZGlzYWJsZSB2YmxhbmsgZm9yIFBTUiwgYW5kIGluIGZh
Y3QsIGV2ZW4gdXBzdHJlYW0sIHdlIGRpZG4ndCBkbyB0aGF0Cj4gdW50aWwgcmFkaWNhbGx5IHJl
ZGVzaWduaW5nIHRoZSBzdGF0ZSBtYWNoaW5lIGluIGNvbW1pdCA2YzgzNmQ5NjViYWQKPiAoImRy
bS9yb2NrY2hpcDogVXNlIHRoZSBoZWxwZXJzIGZvciBQU1IiKS4KPiAKPiBUaHVzLCBpdCBzZWVt
cyBsaWtlIGEgcmVhc29uYWJsZSBBUEkgZml4IHRvIHNpbXBseSByZXN0b3JlIHRoYXQKPiBiZWhh
dmlvciwgYW5kIGxlYXZlIHZibGFuayBlbmFibGVkLgo+IAo+IE5vdGUgdGhhdCB0aGlzIGFwcGVh
cnMgdG8gcG90ZW50aWFsbHkgdW5iYWxhbmNlIHRoZQo+IGRybV9jcnRjX3ZibGFua197b2ZmLG9u
fSgpIGNhbGxzIGluIHNvbWUgY2FzZXMsIGJ1dDoKPiAoYSkgZHJtX2NydGNfdmJsYW5rX29uKCkg
ZG9jdW1lbnRzIHRoaXMgYXMgT0sgYW5kCj4gKGIpIGlmIEkgZG8gdGhlIG5haXZlIGJhbGFuY2lu
ZywgSSBmaW5kIHN0YXRlIG1hY2hpbmUgaXNzdWVzIHN1Y2ggdGhhdAo+ICAgICB3ZSdyZSBub3Qg
aW4gc3luYyBwcm9wZXJseTsgc28gaXQncyBlYXNpZXIgdG8gdGFrZSBhZHZhbnRhZ2Ugb2YgKGEp
Lgo+IAo+IEJhY2twb3J0aW5nIG5vdGVzOgo+IE1hcmtpbmcgYXMgJ0ZpeGVzJyBjb21taXQgNmM4
MzZkOTY1YmFkICgiZHJtL3JvY2tjaGlwOiBVc2UgdGhlIGhlbHBlcnMKPiBmb3IgUFNSIiksIGJ1
dCBpdCBwcm9iYWJseSBkZXBlbmRzIG9uIGNvbW1pdCBiZWQwMzBhNDlmM2UKPiAoImRybS9yb2Nr
Y2hpcDogRG9uJ3QgZnVsbHkgZGlzYWJsZSB2b3Agb24gc2VsZiByZWZyZXNoIikgYXMgd2VsbC4K
PiAKPiBXZSBhbHNvIG5lZWQgdGhlIHByZXZpb3VzIHBhdGNoICgiZHJtL2F0b21pYzogQWxsb3cg
dmJsYW5rLWVuYWJsZWQgKwo+IHNlbGYtcmVmcmVzaCAiZGlzYWJsZSIiKSwgb2YgY291cnNlLgo+
IAo+IEZpeGVzOiA2YzgzNmQ5NjViYWQgKCJkcm0vcm9ja2NoaXA6IFVzZSB0aGUgaGVscGVycyBm
b3IgUFNSIikKPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+Cj4gTGluazogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsL1k1aXRmMCt5TklRYTZmVTRAc2lyZW5hLm9yZy51ay8K
PiBSZXBvcnRlZC1ieTogImtlcm5lbGNpLm9yZyBib3QiIDxib3RAa2VybmVsY2kub3JnPgo+IFNp
Z25lZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3JyaXNAY2hyb21pdW0ub3JnPgo+IC0t
LQo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIHwgNCAr
Ky0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4gaW5kZXgg
ZmExZjRlZTZkMTk1Li5jNTQxOTY3MTE0YjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPiBAQCAtNzE5LDExICs3MTksMTEgQEAgc3RhdGljIHZv
aWQgdm9wX2NydGNfYXRvbWljX2Rpc2FibGUoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ICAKPiAg
CW11dGV4X2xvY2soJnZvcC0+dm9wX2xvY2spOwo+ICAKPiAtCWRybV9jcnRjX3ZibGFua19vZmYo
Y3J0Yyk7Cj4gLQo+ICAJaWYgKGNydGMtPnN0YXRlLT5zZWxmX3JlZnJlc2hfYWN0aXZlKQo+ICAJ
CWdvdG8gb3V0Owo+ICAKPiArCWRybV9jcnRjX3ZibGFua19vZmYoY3J0Yyk7Cj4gKwo+ICAJLyoK
PiAgCSAqIFZvcCBzdGFuZGJ5IHdpbGwgdGFrZSBlZmZlY3QgYXQgZW5kIG9mIGN1cnJlbnQgZnJh
bWUsCj4gIAkgKiBpZiBkc3AgaG9sZCB2YWxpZCBpcnEgaGFwcGVuLCBpdCBtZWFucyBzdGFuZGJ5
IGNvbXBsZXRlLgoKVGhlIG91dCBsYWJlbCBpbW1lZGlhdGVseSB1bmxvY2tzIHZvcC0+dm9wX2xv
Y2sgYWdhaW4sIHNlZW1zIGEgYml0IHBvaW50bGVzcy4gOikKCkFGQUlDVCB0aGUgc2VsZl9yZWZy
ZXNoX2FjdGl2ZSBjYXNlIHNob3VsZCBqdXN0IHJldHVybiBpbW1lZGlhdGVseSwgdGhlIG91dCBs
YWJlbCB3b3VsZCBhbHNvIHNlbmQgYW55IHBlbmRpbmcgYXRvbWljIGNvbW1pdCBjb21wbGV0aW9u
IGV2ZW50LCB3aGljaCBzZWVtcyB3cm9uZyBub3cgdGhhdCB0aGUgdmJsYW5rIGludGVycnVwdCBp
cyBsZWZ0IGVuYWJsZWQuIChJIGFsc28gd29uZGVyIGlmIGRybV9jcnRjX3ZibGFua19vZmYgZG9l
c24ndCB0YWtlIGNhcmUgb2YgdGhhdCBhbHJlYWR5LCBhdCBsZWFzdCBhbWRncHUgZG9lc24ndCBk
byB0aGlzIGV4cGxpY2l0bHkgQUZBSUNUKQoKCi0tIApFYXJ0aGxpbmcgTWljaGVsIETDpG56ZXIg
ICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgaHR0cHM6Ly9yZWRoYXQuY29tCkxpYnJlIHNv
ZnR3YXJlIGVudGh1c2lhc3QgICAgICAgICAgfCAgICAgICAgIE1lc2EgYW5kIFh3YXlsYW5kIGRl
dmVsb3BlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
