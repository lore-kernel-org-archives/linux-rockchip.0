Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBCE7C52D7B
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 14:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVcOhzXC8ytCDMbRs1Ab9bl2Ufu13YYfDxoGot0F2Kw=; b=oIJ+SM6V5lmcUA
	ecaWxmP7CDcmyKwVixVoYqoSg89d957E6Ib89662zgzQws68z0IyjyoSvH1mFc3M6v/lJTT1ryElZ
	WzkWbx9pxCI88XhOiN+z2fxzhPM4pLn3XcMqGRDZIC1soygg4baw964AWK17cwUEPmceDFGH9cN0b
	Gsewltre6/vvLx7o0buTi7xCBaO4Niy94Iu0A8gqgnD9gO9LgtlYHaSacqxjzN9aZCtS0SFVbEHn0
	7j1g9YzztuBzPC13LLb8OAsZCmj8usoolacPFFWIN1xfHaOZ4DnT9PZ1ufEy8uPnAzaDSSoTkQ/oM
	bJ81ix34fVke1gKZjitw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdsw2-000000046Qj-3Vls;
	Tue, 13 Aug 2024 14:55:42 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdsqW-0000000457o-294L;
	Tue, 13 Aug 2024 14:50:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723560555; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=T7k15fzR6ZeRas0Yws11RUsu/Wmry+zxDI8dDDUpMt6uIXhI4Dm5BdHluSIP5n9ucncwQrMpEe11BIQ6iamc+2ld0Q+wj6APeZoVS1yMKVLJPvhbEj0oDBHes7BO1qpxgQe+sK7CsqL9Ofpo8jDgSbB7v5URQsbhfsyzb2AbbYQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723560555; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=9A8PfA0lD2m3WJCSallRUQuWCv07fL5sTjlZMRnm8cE=; 
	b=acrygEnLK2dju+kCdrgd+KXQpuhTfuWEkzj6AE1WIxltzT2Or4BNuk17I/GeyC4od5LImQ2oSLCE1a+aAIwu548TRJ90ckgHiMu9jyqyJbf0dBbnPAuHsw8RE3UMl6cM/rReV/4NRfFzWIcA72lja6yJ8r6aDmKlZcUEs6Gg1zE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723560555;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=9A8PfA0lD2m3WJCSallRUQuWCv07fL5sTjlZMRnm8cE=;
	b=hZabVRNGAAs7o4UBRDD+FaffzLp2vM5Om2YbqE0tOUMSwyN7yioHL4IiXmoehtp/
	lv4l5yX3nQSrIsQNmMHeF9dCMTC5hM4gznjBXqSwSt9sVIgYFTXoXMEzzgb9ZQw7yXb
	PWf0MxhjGZSsg/lGzKPTZ8AaOt5Uj+JdQN+HZ0HU=
Received: by mx.zohomail.com with SMTPS id 1723560553528681.1259506022782;
	Tue, 13 Aug 2024 07:49:13 -0700 (PDT)
Message-ID: <05d1af7a-0bea-464f-a551-3fd8bf5ea9d5@collabora.com>
Date: Tue, 13 Aug 2024 17:49:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
 <2006431.fxN4lLDhpz@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <2006431.fxN4lLDhpz@diego>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_075000_604662_F332C877 
X-CRM114-Status: GOOD (  19.68  )
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

T24gOC8xMy8yNCA0OjE3IFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNaXR0d29jaCwg
Ny4gQXVndXN0IDIwMjQsIDEzOjA3OjIyIENFU1Qgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6
Cj4+IFRoZSBSb2NrY2hpcCBSSzM1ODggU29DIGZhbWlseSBpbnRlZ3JhdGVzIHRoZSBTeW5vcHN5
cyBEZXNpZ25XYXJlIEhETUkKPj4gMi4xIFF1YWQtUGl4ZWwgKFFQKSBUWCBjb250cm9sbGVyLCB3
aGljaCBpcyBhIG5ldyBJUCBibG9jaywgcXVpdGUKPj4gZGlmZmVyZW50IGZyb20gdGhvc2UgdXNl
ZCBpbiB0aGUgcHJldmlvdXMgZ2VuZXJhdGlvbnMgb2YgUm9ja2NoaXAgU29Dcy4KPj4KPj4gVGhl
IGNvbnRyb2xsZXIgc3VwcG9ydHMgdGhlIGZvbGxvd2luZyBmZWF0dXJlcywgYW1vbmcgb3RoZXJz
Ogo+Pgo+PiAqIEZpeGVkIFJhdGUgTGluayAoRlJMKQo+PiAqIERpc3BsYXkgU3RyZWFtIENvbXBy
ZXNzaW9uIChEU0MpCj4+ICogNEtAMTIwSHogYW5kIDhLQDYwSHogdmlkZW8gbW9kZXMKPj4gKiBW
YXJpYWJsZSBSZWZyZXNoIFJhdGUgKFZSUikgaW5jbHVkaW5nIFF1aWNrIE1lZGlhIFN3aXRjaGlu
ZyAoUU1TKQo+PiAqIEZhc3QgVmFjdGl2ZSAoRlZBKQo+PiAqIFNDREMgSTJDIEREQyBhY2Nlc3MK
Pj4gKiBNdWx0aS1zdHJlYW0gYXVkaW8KPj4gKiBFbmhhbmNlZCBBdWRpbyBSZXR1cm4gQ2hhbm5l
bCAoRUFSQykKPj4KPj4gVGhpcyBpcyB0aGUgbGFzdCBjb21wb25lbnQgdGhhdCBuZWVkcyB0byBi
ZSBzdXBwb3J0ZWQgaW4gb3JkZXIgdG8gZW5hYmxlCj4+IHRoZSBIRE1JIG91dHB1dCBmdW5jdGlv
bmFsaXR5IG9uIHRoZSBSSzM1ODggYmFzZWQgU0JDcywgc3VjaCBhcyB0aGUKPj4gUkFEWEEgUm9j
ayA1Qi4gIFRoZSBvdGhlciBjb21wb25lbnRzIGFyZSB0aGUgVmlkZW8gT3V0cHV0IFByb2Nlc3Nv
cgo+PiAoVk9QMikgYW5kIHRoZSBTYW1zdW5nIElQIGJhc2VkIEhETUkvZURQIFRYIENvbWJvIFBI
WSwgZm9yIHdoaWNoIGJhc2ljCj4+IHN1cHBvcnQgaGFzIGJlZW4gYWxyZWFkeSBtYWRlIGF2YWls
YWJsZSB2aWEgWzFdIGFuZCBbMl0sIHJlc3BlY3RpdmVseS4KPj4KPj4gUGxlYXNlIG5vdGUgdGhp
cyBpcyBhIHJld29ya2VkIHZlcnNpb24gb2YgdGhlIG9yaWdpbmFsIHNlcmllcywgd2hpY2gKPj4g
cmVsaWVkIG9uIGEgY29tbW9uaXplZCBkdy1oZG1pIGFwcHJvYWNoLiAgU2luY2UgdGhlIGdlbmVy
YWwgY29uc2Vuc3VzCj4+IHdhcyB0byBoYW5kbGUgaXQgYXMgYW4gZW50aXJlbHkgbmV3IElQLCBJ
IGRyb3BwZWQgYWxsIHBhdGNoZXMgcmVsYXRlZCB0bwo+PiB0aGUgb2xkIGR3LWhkbWkgYW5kIFJv
Y2tjaGlwIGdsdWUgY29kZSAtIGEgZmV3IG9mIHRoZW0gbWlnaHQgc3RpbGwgbWFrZQo+PiBzZW5z
ZSBhcyBnZW5lcmFsIGltcHJvdmVtZW50cyBhbmQgd2lsbCBiZSBzdWJtaXR0ZWQgc2VwYXJhdGVs
eS4KPj4KPj4gSXQncyB3b3J0aCBtZW50aW9uaW5nIHRoZSBIRE1JIG91dHB1dCBzdXBwb3J0IGlz
IGN1cnJlbnRseSBsaW1pdGVkIHRvCj4+IFJHQiBvdXRwdXQgdXAgdG8gNEtANjBIeiwgd2l0aG91
dCBhdWRpbywgQ0VDIG9yIGFueSBvZiB0aGUgSERNSSAyLjEKPj4gc3BlY2lmaWMgZmVhdHVyZXMu
ICBNb3Jlb3ZlciwgdGhlIFZPUDIgZHJpdmVyIGlzIG5vdCBhYmxlIHRvIHByb3Blcmx5Cj4+IGhh
bmRsZSBhbGwgZGlzcGxheSBtb2RlcyBzdXBwb3J0ZWQgYnkgdGhlIGNvbm5lY3RlZCBzY3JlZW5z
LCBlLmcuIGl0Cj4+IGRvZXNuJ3QgY29wZSB3aXRoIG5vbi1pbnRlZ2VyIHJlZnJlc2ggcmF0ZXMu
Cj4+Cj4+IEEgcG9zc2libGUgd29ya2Fyb3VuZCBjb25zaXN0cyBvZiBlbmFibGluZyB0aGUgZGlz
cGxheSBjb250cm9sbGVyIHRvCj4+IG1ha2UgdXNlIG9mIHRoZSBjbG9jayBwcm92aWRlZCBieSB0
aGUgSERNSSBQSFkgUExMLiAgVGhpcyBpcyBzdGlsbCB3b3JrCj4+IGluIHByb2dyZXNzIGFuZCB3
aWxsIGJlIHN1Ym1pdHRlZCBsYXRlciwgYXMgd2VsbCBhcyB0aGUgcmVxdWlyZWQgRFRTCj4+IHVw
ZGF0ZXMuCj4+Cj4+IFRvIGZhY2lsaXRhdGUgdGVzdGluZyBhbmQgZXhwZXJpbWVudGF0aW9uLCBh
bGwgSERNSSBvdXRwdXQgcmVsYXRlZAo+PiBwYXRjaGVzLCBpbmNsdWRpbmcgdGhvc2UgcGFydCBv
ZiB0aGlzIHNlcmllcywgYXJlIGF2YWlsYWJsZSBhdCBbM10uCj4+Cj4+IFNvIGZhciBJIGNvdWxk
IG9ubHkgdmVyaWZ5IHRoaXMgb24gdGhlIFJBRFhBIFJvY2sgNUIgYm9hcmQuCj4gCj4gT24gYSBy
azM1ODgtdGlnZXItaGFpa291IChpbmNsdWRpbmcgaXRzIERTSSBoYXQgYW5kIG15IHByZWxpbWlu
YXJ5IERTSQo+IGRyaXZlcikgaXQgYWxzbyB3b3Jrcy4KPiAKPiBFdmVuIHdpdGggYm90aCBEU0kg
YW5kIEhETUkgYXQgdGhlIHNhbWUgdGltZS4gQm90aCBoZG1pIHBsdWdnZWQgaW4gb24KPiBib290
IGFuZCBhbHNvIHBsdWdnaW5nIGl0IGluIGR1cmluZyBydW50aW1lIG9mIHRoZSBib2FyZCwgZ2Vu
ZXJhdGVzIGEKPiBjbGVhbiBpbWFnZSBvbiBteSAxMDgwcCBkaXNwbGF5Lgo+IAo+IFNvLCBzZXJp
ZXMKPiBUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpUaGFua3Mg
Zm9yIGNoZWNraW5nIHRoaXMgb3V0IQoKUmVnYXJkcywKQ3Jpc3RpYW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
