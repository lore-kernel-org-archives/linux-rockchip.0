Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92152CA0EDB
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 19:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzMMCjKRHi4G4Hps5Y1kp36jqz/7fF/NTK/y5xWocfo=; b=U3YRWTyV4l2fA7
	fqTERwKyoD/v6F+gLHknwNnIpx5tFJTzsWL12FAQqZG8iVU2TZBL7JzN/nVz7L4U3QD6YI3lDP07b
	FskB7IuHNov8kR9ngoJ95X1HYYUO62WBsFNo7LK+rhYING/X0uzCa3pNl1vDKJvfMtYBSkFWEA8n9
	h2Jg6Ljwy9teDnzkIZhErrTQ7YszLSFmSn9wRsmuayt8wKaAAvYAfRVx/Vk8a91XujvmDYHBwg0M5
	K+MXpw3iQwIxkJbnkBeGrQGYij9ONN76109TE02uFQR76khDRu3remHSAg6I8Zr/8YbNxlVyXGmyW
	jWAQ6VgN9tb52Ic1bpwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluiV-0000000BrRg-0O6W;
	Tue, 12 Aug 2025 19:31:27 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulsqm-0000000BaTa-0z89
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Aug 2025 17:31:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1755019909;
 bh=lLNl7MI8X4M5cxrMR25hGPEYfSQVqkkWhNzJlEstFA0=;
 b=c/A+57ABEc86qFRkbT3YxSoUTbk1suErG6+UYUEVudmnMctx2i3e+4mauZi7y5BuVtasDxxmK
 dmkb6agWunYlH+g7vP1xsLY5VxFRnRYHMiW2F8UuAv2hrX+3rXOjXZsnKBLWBWxWBJtiiMCS8Ke
 MBZGTCMeD5YgtZqjk4GCGRMTsJWyZHBke4KsWjqAdZN3qwToof8kme/gPXzu5pT3LSmkcTUBO05
 C9RkclPkmcta6oV9mG95nZEkEPUKIIfo5UHWYcj6VwUBdR9n7fGWmp16/WFg1zg7/5ahC3C1+IA
 mavOTTFDqHfNwJdyjAyvfLvHpKENsPslfoL02B6Eq0kw==
X-Forward-Email-ID: 689b7a6df092412ac2631c2f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.2.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <efdf8c99-d166-4b78-afc5-d4a6eb5ac046@kwiboo.se>
Date: Tue, 12 Aug 2025 19:31:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] media: rkvdec: Add HEVC backend
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Bee <knaerzche@gmail.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250810212454.3237486-1-jonas@kwiboo.se>
 <50162371fd54fc976a84fcf57c9b69112a892c46.camel@collabora.com>
 <1dd29158-0660-4254-ac00-1316768d9b82@kwiboo.se>
 <91864a1c047d2bdfce202b070716a694ede47d5e.camel@collabora.com>
 <a66feb89fa02f05b187e5603ffc3b1501ef3cbd5.camel@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <a66feb89fa02f05b187e5603ffc3b1501ef3cbd5.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_103152_396953_8C9F278B 
X-CRM114-Status: GOOD (  10.11  )
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

T24gOC8xMi8yMDI1IDI6NDQgUE0sIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gSSBmb3Jnb3Qs
IAo+IAo+IExlIG1hcmRpIDEyIGFvw7t0IDIwMjUgw6AgMDg6MzggLTA0MDAsIE5pY29sYXMgRHVm
cmVzbmUgYSDDqWNyaXTCoDoKPj4+IEpDVC1WQy1IRVZDX1YxIG9uIEdTdHJlYW1lci1ILjI2NS1W
NEwyU0wtR3N0MS4wOgo+Pj4KPj4+IC0gREJMS19EX1ZJWFNfMiAoZmFpbCkKPj4+IC0gRFNMSUNF
X0FfSEhJXzUgKGZhaWwpCj4+PiAtIEVYVF9BX2VyaWNzc29uXzQgKGZhaWwpCj4+PiAtIFBJQ1NJ
WkVfQV9Cb3NzZW5fMSAoZXJyb3IpCj4+PiAtIFBJQ1NJWkVfQl9Cb3NzZW5fMSAoZXJyb3IpCj4+
PiAtIFBJQ1NJWkVfQ19Cb3NzZW5fMSAoZXJyb3IpCj4+PiAtIFBJQ1NJWkVfRF9Cb3NzZW5fMSAo
ZXJyb3IpCj4+PiAtIFNBT0RCTEtfQV9NYWluQ29uY2VwdF80IChmYWlsKQo+Pj4gLSBTQU9EQkxL
X0JfTWFpbkNvbmNlcHRfNCAoZmFpbCkKPj4+IC0gVFNVTkVRQkRfQV9NQUlOMTBfVGVjaG5pY29s
b3JfMiAoZXJyb3IpCj4gCj4gSSdtZSBnZXR0aW5nIHRoZSBzYW1lIHJlc3VsdCBpZiBJIGZvcmNl
IGEgc2luZ2xlIGpvYiBpbiBmbHVzdGVyLiBUaGUgdGVzdCBJCj4gcG9zdGVkIHdhcyB3aXRoIDIg
am9icy4gRGV0bGV2IGZvdW5kIHRoYXQgdGhlIGlvbW11IHJlc2V0IGlzIHJlcXVpcmVkIGluIG1v
cmUKPiBjYXNlcyBvbiBSSzM1ODgvMzU3NiwgcGVyaGFwcyB0aGUgSEVWQyBkZWNvZGVyIGluIG9s
ZGVyIGhhcmR3YXJlIG5lZWRzIHRoZSBzYW1lLAo+IEkgd2lsbCB0cnkgYW5kIHJlcG9ydC4KClZl
bmRvciBrZXJuZWwgWzFdIGNoZWNrIGZvbGxvd2luZyBiaXRzIGZyb20gUktWREVDX1JFR19JTlRF
UlJVUFQgcmVnIHRvCmRlY2lkZSBpZiBhIGZ1bGwgSFcgcmVzZXQgc2hvdWxkIGJlIGRvbmUuCgog
IGVycl9tYXNrID0gUktWREVDX0JVRl9FTVBUWV9TVEEKICAJICAgfCBSS1ZERUNfQlVTX1NUQQog
IAkgICB8IFJLVkRFQ19DT0xNVl9SRUZfRVJSX1NUQQogIAkgICB8IFJLVkRFQ19FUlJfU1RBCiAg
CSAgIHwgUktWREVDX1RJTUVPVVRfU1RBOwoKQWRkaW5nIHByb3BlciByZXNldCBzdXBwb3J0IGNh
biBiZSByYXRoZXIgaW52b2x2ZWQgYW5kIG1haW4gcmVhc29uIHdoeQp0aGlzIHNlcmllcyBkb2Vz
IG5vdCBoYW5kbGUgaXQsIGJldHRlciBzdWl0ZWQgZm9yIGEgc2VwYXJhdGUgZnV0dXJlCnNlcmll
cy4KClByb3BlciBIVyByZXNldCB3aWxsIHJlcXVpcmUgZS5nLiBkdC1iaW5kaW5ncywgRFQgdXBk
YXRlcywgcG11IGlkbGUKcmVxdWVzdCBpbnRlZ3JhdGlvbiBhbmQgZm9yIHJrMzMyOCB2ZW5kb3Ig
ZXZlbiBtb3ZlZCBWUFUgcmVzZXQgdG8gVEYtQS4KCkRvaW5nIHRoZSBpb21tdSBkZXRhY2gvYXR0
YWNoIGRhbmNlIG5vdCBvbmx5IG9uIFJLVkRFQ19TT0ZUUkVTRVRfUkRZCmNvdWxkIHBvc3NpYmxl
IGltcHJvdmUgc29tZSBjYXNlcywgdW50aWwgZnVsbCByZXNldCBjYW4gYmUgaW1wbGVtZW50ZWQu
CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL0t3aWJvby9saW51eC1yb2NrY2hpcC9ibG9iL2xpbnV4
LTYuMS1zdGFuLXJrcjYuMS9kcml2ZXJzL3ZpZGVvL3JvY2tjaGlwL21wcC9tcHBfcmt2ZGVjLmMj
TDkyNC1MOTMxCgpSZWdhcmRzLApKb25hcwoKPiAKPiBOaWNvbGFzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
