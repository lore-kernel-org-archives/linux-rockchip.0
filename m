Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C6DDCD37AC
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 07:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6393OBQ3P2lLeu3U8c3v6dTyMiW3CMGR37ZL34pmZdc=; b=k1VQOMcRVYlKhl
	0R8Fv83HJYJjVbjvh7f0gZZi0iFgd6Bf9rZvcR6NnGyI/QIH+TV5lVGHRUdb32u4kwb+S0Eme38NO
	aL8oumHFHWyg51Tl+sjkJgeWjaHYHbTIjzSvHwzGIZ54Z429G6X1AXHmXyegJS5AOd2Khr69Dn1Xr
	f4yBaBM8NP9sKzzSMkyNCsM9MiyBUHmwE9NzdCrdjcEekuUUgJnzSYX6dCZu8j8ZRBuuIVlJ/Y1xk
	DR6ZrsnIhEbPn0vNyINLfsZhflxFG0hVkbXRciP+y7gOqIq6Ueaeg0a01qQqH7VPh81WqmqtDcob1
	6tOwTWkXCpxAAgpV+4rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKxu-0000000CaaG-0THN;
	Mon, 11 May 2026 07:22:10 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKxq-0000000CaZV-2AM9;
	Mon, 11 May 2026 07:22:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778484121;
	bh=sFa6mjTeZA+YdjdzIRkDzWZvvTvkozLyw4GG3pLu5g8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=R0ATEsm367q/tkMguEZtJEF8nYKvKUL0gTj0GCcC8/uZna4C01SpMlCgkLx2kQYk0
	 O5H+L/N0pbg0Oz228uuYg+9w152APlplCi51FE76IIfaJp3/Ao5751ugoplRzFLXdN
	 g9jttptHdPwZRptAyQbvZw67uX58bZAMEZO8TB6j7UetCC5jYJkcUdwj4+lqte2MYg
	 15hnSw+r9vFlVNlzqozLqLBGEz/SYnR94ROkin6AdwacWP9rDGsiFITS/v7IhvDaDU
	 R6ZSKwaTYUi0tjHH9K/+vSP4xTPTQtu1fjZ3KxWhwRiGMuX6Mfx3guxwFpoZ9DJw0E
	 s3THntGpbBFrw==
Received: from [100.64.1.43] (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8C5AE17E05FC;
	Mon, 11 May 2026 09:22:01 +0200 (CEST)
Message-ID: <36e114a3-8240-480b-a53a-6aa3810bf089@collabora.com>
Date: Mon, 11 May 2026 09:22:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 1/5] dt-bindings: vendor-prefixes: Add Verisilicon
To: Diederik de Haas <diederik@cknow-tech.com>, joro@8bytes.org,
 will@kernel.org, robin.murphy@arm.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
 <20260415072349.44237-2-benjamin.gaignard@collabora.com>
 <DIEC8YT0XK4O.VAG6G4H31KJM@cknow-tech.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <DIEC8YT0XK4O.VAG6G4H31KJM@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_002206_704400_43EBC166 
X-CRM114-Status: GOOD (  10.21  )
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

CkxlIDA5LzA1LzIwMjYgw6AgMTk6NTYsIERpZWRlcmlrIGRlIEhhYXMgYSDDqWNyaXTCoDoKPiBP
biBXZWQgQXByIDE1LCAyMDI2IGF0IDk6MjMgQU0gQ0VTVCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IFZlcmlzaWxpY29uIE1pY3JvZWxlY3Ryb25pY3MgaXMgYSBjb21wYW55IGJhc2VkIGlu
IFNoYW5naGFpLCBDaGluYSwKPj4gZGV2ZWxvcHBpbmcgaGFyZHdhcmUgYmxvY2tzIGZvciBTb0Mu
Cj4+Cj4+IGh0dHBzOi8vdmVyaXNpbGljb24uY29tLwo+Pgo+PiBBZGQgdGhlaXIgbmFtZSB0byB0
aGUgbGlzdCBvZiB2ZW5kb3JzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFy
ZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gQWNrZWQtYnk6IENvbm9yIERv
b2xleSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+Cj4+IC0tLQo+PiAgIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCB8IDIgKysKPj4gICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPj4gaW5kZXgg
ZWU3ZmQzY2ZlMjAzLi5lYmQ5MDcyMzAwYTggMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAo+PiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPj4gQEAgLTE3
NjEsNiArMTc2MSw4IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+PiAgICAgICBkZXNjcmlwdGlvbjog
VmFyaXNjaXRlIEx0ZC4KPj4gICAgICJedmRsLC4qIjoKPj4gICAgICAgZGVzY3JpcHRpb246IFZh
biBkZXIgTGFhbiBiLnYuCj4+ICsgICJedmVyaXNpbGljb24sLioiOgo+PiArICAgIGRlc2NyaXB0
aW9uOiBWZXJpU2lsaWNvbiBNaWNyb2VsZWN0cm9uaWNzCj4+ICAgICAiXnZlcnRleGNvbSwuKiI6
Cj4+ICAgICAgIGRlc2NyaXB0aW9uOiBWZXJ0ZXhjb20gVGVjaG5vbG9naWVzLCBJbmMuCj4+ICAg
ICAiXnZpYSwuKiI6Cj4gRlRSOiBBbm90aGVyIHZlcnNpb24gb2YgdGhpcyBwYXRjaCBpcyBhbHJl
YWR5IHByZXNlbnQgaW4gTGludXMnIHRyZWU6Cj4gYzEzMWQ3ODg0MGQ3ICgiZHQtYmluZGluZ3M6
IHZlbmRvci1wcmVmaXhlczogYWRkIHZlcmlzaWxpY29uIikKCkl0IHNlZW1zIGl0IGhhcyBiZWVu
IG1lcmdlZCByaWdodCA3LjAtcmMxIHRoYXQgSSB1c2VkIGZvciB0aGlzIHNlcmllcy4KQm90aCBh
cmUgYWxtb3N0IGlkZW50aWNhbCBzbyB3ZSBjYW4gaWdub3JlIG1pbmUuCgpSZWdhcmRzLApCZW5q
YW1pbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
