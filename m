Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C14E7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 17:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bt+tE4ILwxIXrZNL+bfcEvygM0qVSMLVNXm8Nm+CMi0=; b=y2CJKJ5lnVQcgb
	BIubgLGHAaIIjA5SroH3Ij4FMk53Rj96OMJMJhIxx8y+CvrssswCXdCAYuwmh0+b0ylOPE39ecmw7
	H5n9uQ+bIcL2xzUUB7WMLZeMDe6gX9S/eVxTU7Vm70BEFhgpdTAVhcBzGDz7kmncw/kzdWmE74Fej
	+SpsNfcBujAzxvY5guPdDHSA0KcO/KE1dWlnH3/fbdyeDIS8PIIW2h2nu4MAHn9+eSy5sI70iPmZE
	ttcsf51WIZuByzPGXfAIL1TvQrukqhJ4eUI4VdAuYMDkYyQ/HjUGWUzy0BvSzyOlEEThG4/HFXaUC
	SZswW9tEqdvEl6VGAvGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLn7T-00000001DGu-0YeK;
	Thu, 12 Dec 2024 17:36:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLmp8-000000019DO-2HST;
	Thu, 12 Dec 2024 17:18:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 952FC5C5CD6;
	Thu, 12 Dec 2024 17:17:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B59C5C4CED3;
	Thu, 12 Dec 2024 17:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734023881;
	bh=gUkmLslWwau7PQ/rqBKBXnsLHUj3XhDqGxojh6HslHA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=cwKkrDWjiW8TR9jqZjKrU5uWhsvufo/SKwmpc6Rrg5GZe5ncsc0bu0jgz9DXMVafs
	 8R6byDSjz6nc2ZkWvgF5RbtYq71wKsVEdqrV6fwEA6XyvtQIdZKd4xkI+0SIzcCFap
	 ML8vQ0pyQ0njSAHDp0uPzqdPz71t2MOZDRe/1enAn+qslPZy3NqdtQoF5MD0jD+xqw
	 29v5HrtCmxHLLU5wAX/vzzKNtSLBKqwG6zJvUnfq+UeiVScxVgufqWl55r7UM6J8CF
	 xTOLKFCL1wLJZ+pr0NBzm3mztQKnxZg/w1/U8W2DTEW5wm2t8fkr66dfhpSTfhjRjL
	 xwR/tXpUcsMIQ==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org, jikos@kernel.org, jic23@kernel.org, 
 Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 jdelvare@suse.com, linux@roeck-us.net, srinivas.pandruvada@linux.intel.com, 
 bentiss@kernel.org, dmitry.torokhov@gmail.com, pavel@ucw.cz, 
 ukleinek@debian.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-input@vger.kernel.org, linux-iio@vger.kernel.org, 
 linux-leds@vger.kernel.org
In-Reply-To: <20241107114712.538976-1-heiko@sntech.de>
References: <20241107114712.538976-1-heiko@sntech.de>
Subject: Re: [PATCH v9 0/9] Drivers to support the MCU on QNAP NAS devices
Message-Id: <173402387748.2234929.7484373598047473898.b4-ty@kernel.org>
Date: Thu, 12 Dec 2024 17:17:57 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_091802_626068_51CF6E2E 
X-CRM114-Status: GOOD (  12.69  )
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

T24gVGh1LCAwNyBOb3YgMjAyNCAxMjo0NzowMyArMDEwMCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6
Cj4gVGhpcyBpbXBsZW1lbnRzIGEgc2V0IG9mIGRyaXZlcnMgZm9yIHRoZSBNQ1UgdXNlZCBvbiBR
TkFQIE5BUyBkZXZpY2VzLgo+IAo+IE9mIGNvdXJzZSBubyBkb2N1bWVudGF0aW9uIGZvciB0aGUg
c2VyaWFsIHByb3RvY29sIGlzIGF2YWlsYWJsZSwgc28KPiB0aGFua2Z1bGx5IFFOQVAgaGFzIGEg
dG9vbCBvbiB0aGVpciByZXNjdWUtaW5pcmQgdG8gdGFsayB0byB0aGUgTUNVIGFuZAo+IEkgZm91
bmQgaW50ZXJjZXB0dHkgWzBdIHRvIGxpc3RlbiB0byB3aGF0IGdvZXMgb3ZlciB0aGUgc2VyaWFs
IGNvbm5lY3Rpb24uCj4gCj4gSW4gZ2VuZXJhbCBpdCBsb29rcyBsaWtlIHRoZXJlIGFyZSB0d28g
ZGlmZmVyZW50IGdlbmVyYXRpb25zIGluIGdlbmVyYWwsCj4gYW4gIkVDIiBkZXZpY2UgYW5kIG5v
dyB0aGlzICJNQ1UiIC0gcmVmZXJlbmNlZCBpbiB0aGUgc3RyaW5ncyBvZiB0aGUKPiB1c2Vyc3Bh
Y2UgaGFuZGxlcnMgZm9yIHRob3NlIGRldmljZXMuCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5r
cyEKClsxLzldIEhJRDogaGlkLXNlbnNvci1odWI6IGRvbid0IHVzZSBzdGFsZSBwbGF0Zm9ybS1k
YXRhIG9uIHJlbW92ZQogICAgICBjb21taXQ6IGUwNzlhMTIwZjMxZTNmOWMwMDE4MGFhMTNjMWRm
MThjYzEzOGY3ZmUKWzIvOV0gbWZkOiBjb3JlOiBtYWtlIHBsYXRmb3JtX2RhdGEgcG9pbnRlciBj
b25zdCBpbiBzdHJ1Y3QgbWZkX2NlbGwKICAgICAgY29tbWl0OiA4ZjQwMDlhZDkwMWM0NGYwNDI4
ZGJkZTY1NGM0ZGQxZmIyOWM4NjNiClszLzldIGR0LWJpbmRpbmdzOiBtZmQ6IGFkZCBiaW5kaW5n
IGZvciBxbmFwLHRzNDMzLW1jdSBkZXZpY2VzCiAgICAgIGNvbW1pdDogODg3N2JjZmYzZTNiNGYw
OGExZmMwMjMyZGJmZGFlZGEwODVjZmRmMwpbNC85XSBtZmQ6IGFkZCBiYXNlIGRyaXZlciBmb3Ig
cW5hcC1tY3UgZGV2aWNlcwogICAgICBjb21taXQ6IDk0NGNhODI2ZjY5ZTQ3MjM4NTNiMzg3Njg3
NWIwM2FlYWZlNjdiNjAKWzUvOV0gbGVkczogYWRkIGRyaXZlciBmb3IgTEVEcyBmcm9tIHFuYXAt
bWN1IGRldmljZXMKICAgICAgY29tbWl0OiBmZTZhMjFlZTM4ZjEyZTNlNWY5YWRiZDJmOWE4NDBi
ZTEwNWI5NDNmCls2LzldIElucHV0OiBhZGQgZHJpdmVyIGZvciB0aGUgaW5wdXQgcGFydCBvZiBx
bmFwLW1jdSBkZXZpY2VzCiAgICAgIGNvbW1pdDogNGIyN2UwZGEyNTczNzFkM2QxNDFmYWUzOGZk
YmRjM2MzYTY3YmNlNgpbNy85XSBod21vbjogYWRkIGRyaXZlciBmb3IgdGhlIGh3bW9uIHBhcnRz
IG9mIHFuYXAtbWN1IGRldmljZXMKICAgICAgY29tbWl0OiA0MTc1NTg3MmE4YThhYjhkMTY0NDQ1
OWQ5NjM0YzUzYjc0M2ZlMmJlCls4LzldIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBob29rIHVwIHRo
ZSBNQ1Ugb24gdGhlIFFOQVAgVFM0MzMKICAgICAgKG5vIGNvbW1pdCBpbmZvKQpbOS85XSBhcm02
NDogZHRzOiByb2NrY2hpcDogc2V0IGhkZCBsZWQgbGFiZWxzIG9uIHFuYXAtdHM0MzMKICAgICAg
KG5vIGNvbW1pdCBpbmZvKQoKLS0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
