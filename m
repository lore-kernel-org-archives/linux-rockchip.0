Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF52410AB82D
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 22:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05eVzAD6e639P+T+QtsSuMJBbuXBpdO0v6CcQhaBhA4=; b=PQE7vizVvTmDk/
	1nQzo2+TGqmODACNJyt/Ub3QDPV0TVuY/9SdV8Rc2wpA5GQ0SYOa+1Jlcq3x40yR3QQ3A/2qCcc2D
	1i/9SZJ6Cr1viu1CyRQScnYwDM8po/4ZeyOMwz1UtM6u5SmqmJ/Mly5CMpY4qG72BRRyDDuqpFRmH
	rFn608J2YHNi/oE97GeWGRHDWumH0oKKGW8GIzj4xTflQHMfPhEoEUqY//kMEMOjzXIWdlMLa4XWh
	nV9REkUjMIApqAGSLiH5/IzYbUKqWkYaHPeAmFSoz6xD9Afo4FK7/OFdQZpGkNfcgXMxcspeXC7l4
	WZJUbFZRqAWueDaQymTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5tWQ-00000006LTo-3yB9;
	Thu, 26 Mar 2026 22:49:50 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5tWO-00000006LTL-0Kro;
	Thu, 26 Mar 2026 22:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774565383;
	bh=72AnQfC7Y2zJajeESpEpdCNxcAMsKHMg0UXOwH4hjjk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KDf/+QElodAdciXe4nenVpGbeDnLtNoWUP/RyrXaW25je4P1sP6n7TWv0wLf1FmdV
	 H/jXbj/VroQO09XAWWp/5Eo8jhuLgdoaPD65v1bGvgrISeU+1a2gO3JgEC+ngS2o23
	 uOVBq/QprGE9MVVkUEMKYuyqZ3wAMbeKTfqd4wFLZOp9km2EAEuY8iwAotAlr6t1Ed
	 UDE94iE2b9BV8DGEN1MQ1vA7TqGtnb9NONQrPWmDrycbV+ZPoyWhkKJxAK4q6VjRDq
	 9/5sno361FDIgs8D+CHFWtTK2DPOJ1O8Ow3tImEYc449ZLQxsbSctYGOCye8VS9KpR
	 5xj2lP4/hjdTg==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8C01417E6002;
	Thu, 26 Mar 2026 23:49:42 +0100 (CET)
Message-ID: <1af216b1-c78b-41fb-80eb-992e487e63e6@collabora.com>
Date: Thu, 26 Mar 2026 23:49:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] media: dt-bindings: rockchip,rk3568-mipi-csi2: add
 rk3588 compatible
To: Rob Herring <robh@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Frank Li <Frank.li@nxp.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Collabora Kernel Team <kernel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260305-rk3588-csi2rx-v3-0-754473981f39@collabora.com>
 <20260305-rk3588-csi2rx-v3-1-754473981f39@collabora.com>
 <20260325210634.GA3963190-robh@kernel.org>
 <703bcf13-ab45-4e9a-b80c-80911d85d819@collabora.com>
 <CAL_JsqLy4=z24-RrJWLp3hPpTwYLJ8=ehRw8cRdhZiW-eAsYCA@mail.gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <CAL_JsqLy4=z24-RrJWLp3hPpTwYLJ8=ehRw8cRdhZiW-eAsYCA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_154948_302799_18EE5891 
X-CRM114-Status: GOOD (  18.91  )
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

SGkgUm9iLAoKT24gMy8yNi8yNiAyMDo0MiwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2VkLCBN
YXIgMjUsIDIwMjYgYXQgNDozNOKAr1BNIE1pY2hhZWwgUmllc2NoCj4gPG1pY2hhZWwucmllc2No
QGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Pgo+PiBIaSBSb2IsCj4+Cj4+IE9uIDMvMjUvMjYgMjI6
MDYsIFJvYiBIZXJyaW5nIHdyb3RlOgo+Pj4gT24gV2VkLCBNYXIgMjUsIDIwMjYgYXQgMTE6MjU6
MzRBTSArMDEwMCwgTWljaGFlbCBSaWVzY2ggd3JvdGU6Cj4+Pj4gVGhlIFJLMzU4OCBNSVBJIENT
SS0yIHJlY2VpdmVycyBhcmUgY29tcGF0aWJsZSB0byB0aGUgb25lcyBmb3VuZCBpbgo+Pj4+IHRo
ZSBSSzM1NjguCj4+Pj4gSW50cm9kdWNlIGEgbGlzdCBvZiBjb21wYXRpYmxlIHZhcmlhbnRzIGFu
ZCBhZGQgdGhlIFJLMzU4OCB2YXJpYW50IHRvCj4+Pj4gaXQuCj4+Pj4KPj4+PiBBY2tlZC1ieTog
Um9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPj4KPj4gRmlyc3Qgb2YgYWxsLCBh
cG9sb2dpZXMgZm9yIGFwcGx5aW5nIHlvdXIgQWNrZWQtYnkgdGFnLiBJIGZpZ3VyZWQKPj4gcmVz
b2x2aW5nIHRoZSBtZXJnZWQgY29uZmxpY3Qgd2FzIHRyaXZpYWwgYW5kIGltcG9zc2libGUgdG8g
c2NyZXcgdXAsIGJ1dC4uLgo+IAo+IE5vIHdvcnJpZXMuIEkgd291bGQgaGF2ZSBrZXB0IGl0IHRv
by4KPiAKPj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hA
Y29sbGFib3JhLmNvbT4KPj4+PiAtLS0KPj4+PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWVk
aWEvcm9ja2NoaXAscmszNTY4LW1pcGktY3NpMi55YW1sICAgfCAxMCArKysrKysrLS0tCj4+Pj4g
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pj4KPj4+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3Jv
Y2tjaGlwLHJrMzU2OC1taXBpLWNzaTIueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZWRpYS9yb2NrY2hpcCxyazM1NjgtbWlwaS1jc2kyLnlhbWwKPj4+PiBpbmRleCA0
YWM0YTNiNmY0MDYuLjNkM2IzY2Q3ODg4NCAxMDA2NDQKPj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAscmszNTY4LW1pcGktY3NpMi55YW1s
Cj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tj
aGlwLHJrMzU2OC1taXBpLWNzaTIueWFtbAo+Pj4+IEBAIC0xNiw5ICsxNiwxMyBAQCBkZXNjcmlw
dGlvbjoKPj4+Pgo+Pj4+ICBwcm9wZXJ0aWVzOgo+Pj4+ICAgIGNvbXBhdGlibGU6Cj4+Pj4gLSAg
ICBlbnVtOgo+Pj4+IC0gICAgICAtIGZzbCxpbXg5My1taXBpLWNzaTIKPj4+PiAtICAgICAgLSBy
b2NrY2hpcCxyazM1NjgtbWlwaS1jc2kyCj4+Pj4gKyAgICBvbmVPZjoKPj4+PiArICAgICAgLSBj
b25zdDogZnNsLGlteDkzLW1pcGktY3NpMgo+Pj4+ICsgICAgICAtIGNvbnN0OiByb2NrY2hpcCxy
azM1NjgtbWlwaS1jc2kyCj4+Pgo+Pj4gVGhlc2UgMiBzaG91bGQgYmUgYSBzaW5nbGUgZW51bSBh
cyB0aGV5IHdlcmUgYmVmb3JlLgo+Pgo+PiAuLi4gaG0uIFdlbGwuCj4+Cj4+IEZpcnN0LCBkbyB5
b3UgbWVhbgo+Pgo+PiBwcm9wZXJ0aWVzOgo+PiAgIGNvbXBhdGlibGU6Cj4+ICAgICBvbmVPZjoK
Pj4gICAgICAgLSBlbnVtOgo+PiAgICAgICAgICAtIGZzbCxpbXg5My1taXBpLWNzaTIKPj4gICAg
ICAgICAgLSByb2NrY2hpcCxyazM1NjgtbWlwaS1jc2kyCj4+ICAgICAgIC0gaXRlbXM6Cj4+ICAg
ICAgICAgIC0gZW51bToKPj4gICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtbWlwaS1jc2ky
Cj4+ICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU2OC1taXBpLWNzaTIKPj4gPwo+IAo+
IFllcy4KClRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uIHY0IGNvbWluZyB1cC4KCj4gCj4+
IElmIHNvLCB3aGF0IGlzIHRoZSBwcmFjdGljYWwgZGlmZmVyZW5jZT8KPiAKPiBGaXJzdCwgdGhl
biB5b3UgYXJlbid0IGNoYW5naW5nIHdoYXQncyBhbHJlYWR5IHRoZXJlLiBGb3IgdmFsaWRhdGlv
biwKPiB0aGVyZSBpcyBubyBkaWZmZXJlbmNlIG90aGVyIHRoYW4gZmFpbHVyZXMgd2l0aCAnb25l
T2YnIGdpdmUgcG9vcgo+IGVycm9yIG1lc3NhZ2VzLiBJdCB3b3VsZG4ndCBiZSBtdWNoIGJldHRl
ciwganVzdCBvbmUgbGVzcyBvbmVPZiBlbnRyeS4KCkknbGwgdHJ5IHRvIGtlZXAgdGhhdCBvbmUg
aW4gbWluZCEKCkJlc3QgcmVnYXJkcywKTWljaGFlbAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
