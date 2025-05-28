Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39960C5AD49
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 15:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLdjPPaAPf88WgGCGe6a2c2//J7wO7M+wgfuNypwGIE=; b=MVd+Wnsm4UFJnF
	ND+r7ocqF1dqiTRdL2Q48X9GmcUtA7Ue+ov3jtNYt6F/ek9IKQAg3EHQXpYE2MKic1W6NqTDBI3RY
	qELckdMLlxyuML5b41+OFwb5I3g26abmSnDQmblbhVCKSNIKpOU80ud0AD51DzN6Or7DFDyFeubKf
	62Fl09Aoz/dOEtW5XjG/6qQZFAqSPpLnqcxSZSAmZHcismiuaXyIraLtU5WBnaH3trnfEgfFGoXQh
	vsYXJJknhVwTHw2DJUjhCfBVe8EZJ9PhYx8FPbno7OaMFNBxsrcpbX8ymkn9BwvuIfHFTD1WSuXN6
	cErf2U4lwgi1mUEh4Tdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIa2-0000000DXLq-1f03;
	Wed, 28 May 2025 15:20:34 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIQn-0000000DWHK-2WPg
	for linux-rockchip@lists.infradead.org;
	Wed, 28 May 2025 15:11:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1748445059;
	bh=2insgHiZQR7p5wDJ020t1ub628/CBQGfKrAAC0h7XjM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=ocTIM4H1xvxfaSzI137wEbK2D5Nwa7Cpjz4v9oBNtA9O+rufRY7TJbOGrbgcOOjWA
	 XYJjQoZrJ9jOX5aYU5RwxYcPrBH2xlWJcqPe5e0YMBDY7uqStF6a9uYP7DzmgBeZwh
	 MPX6QnjVOy+2gMk+zVK9SnPqxQU+APeKYKTFiTBBNVyh88q6lJbjGIL78B+GpuB9vG
	 rLIj1kklzMKLvzJUDJlfAJMRyZvTETb3yiCUVF4JpAWPkYuO1Q08eD/DOuw2tTvCq+
	 VYFYn1RRyM15IZZSn/MD+dbLeaXsKM08JM3KwM7G/5cg5tXOxR9qgsS/MHYjK1HuVD
	 VWGQd+o1twxzg==
Received: from [IPv6:2606:6d00:17:b2fc::5ac] (unknown [IPv6:2606:6d00:17:b2fc::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4C49F17E153E;
	Wed, 28 May 2025 17:10:58 +0200 (CEST)
Message-ID: <0476c8d6ef2482688d07077592393074398c9ce0.camel@collabora.com>
Subject: Re: [PATCH] media: rkvdec: Switch to using structs instead of writel
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Detlev Casanova
	 <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "linux-media@vger.kernel.org"	 <linux-media@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org"	 <linux-rockchip@lists.infradead.org>,
 "linux-staging@lists.linux.dev"	 <linux-staging@lists.linux.dev>,
 "kernel@collabora.com" <kernel@collabora.com>, 
 "linux-kernel@vger.kernel.org"	 <linux-kernel@vger.kernel.org>
Date: Wed, 28 May 2025 11:10:57 -0400
In-Reply-To: <a787e6e0-d4ce-45e3-8263-2489585d3ec0@kwiboo.se>
References: <20250527150043.174415-1-detlev.casanova@collabora.com>
	 <a787e6e0-d4ce-45e3-8263-2489585d3ec0@kwiboo.se>
Organization: Collabora Canada
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_081101_793230_D395F993 
X-CRM114-Status: GOOD (  32.11  )
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

SGkgSm9uYXMsCgpMZSBtYXJkaSAyNyBtYWkgMjAyNSDDoCAxOTo1MSArMDIwMCwgSm9uYXMgS2Fy
bG1hbiBhIMOpY3JpdMKgOgo+IEhpIERldGxldiwKPiAKPiBPbiAyMDI1LTA1LTI3IDE3OjAwLCBE
ZXRsZXYgQ2FzYW5vdmEgd3JvdGU6Cj4gPiBJbiBhbiBlZmZvcnQgdG8gbWVyZ2UgdGhlIHJrdmRl
YzIgZHJpdmVyIFsxXSB3aXRoIHRoaXMgb25lLCBzd2l0Y2ggZnJvbQo+ID4gd3JpdGVsKCkgY2Fs
bHMgdG8gdXNpbmcgc3RydWN0cyB0byByZXByZXNlbnQgdGhlIHJlZ2lzdGVyIG1hcHBpbmdzLgo+
IAo+IFBsZWFzZSB3YWl0IHdpdGggdGhpcyB1bnRpbCBIRVZDIHN1cHBvcnQgaGFzIGxhbmRlZCwg
bm93IHRoYXQgSDI2NAo+IDQ6MjoyL0hpMTAgZmluYWxseSBoYXZlIGJlZW4gbWVyZ2VkIEkgd2Fz
IGhvcGluZyB0byBiZSBhYmxlIHRvIHNlbmQgYSB2MgoKCkRldGxldiBjb21tdW5pY2F0ZWQgdG8g
bWUgdGhhdCB0aGlzIHdhcyBtZWFudCB0byBoYXZlIHRoZSBSRkMgdGFnLiBUaGUgaW50ZW50CmJl
aW5nIHRvIGNoZWNrIHdpdGggb3RoZXJzIGlmIHRoZSB1c2FnZSBvZiBiaXRmaWVsZCBpbiBzdHJ1
Y3R1cmUgZm9yIHJlZ2lzdGVycyBpcwphY2NlcHRhYmxlLiBJIHBlcnNvbmFsbHkgbGlrZSBpdCwg
YW5kIGRvbid0IHNlZSBhbnkgaXNzdWUgd2l0aCBpdCBjb25zaWRlcmluZwp0aGUgcGVyZm9ybWFu
Y2UgaXMgbm90IGFmZmVjdGVkIGF0IGFsbC4gVGhlIGlkZWEgaXMgbm90IG5ldywgeW91IGNhbiBm
aW5kCnNpbWlsYXIgcHJvcG9zYWwgZnJvbSAyMDE5LgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMTkwMTMxMDMxMzMzLjExOTA1LTItYXlha2FAc291bGlrLmluZm8vCgo+IG9mIHRoZSBv
bGQgSEVWQyBzZXJpZXMgWzNdLiBJIHdhcyB3YWl0aW5nIG9uIHY2LjE2LXJjMSBiZWZvcmUgc2Vu
ZGluZwo+IHRoZSBzZXJpZXMgYnV0IGNhbiBzZW5kIGl0IHNvb25lciBpZiBuZWVkZWQsIFs0XSBo
YXMgY3VycmVudCBzdGF0ZSBvZiB2Mi4KClBsZWFzZSBkb24ndCB3YWl0IGZvciB0aGF0LCBqdXN0
IHNlbmQgYXMgc29vbiBhcyB5b3VyIGFyZSBoYXBweSB3aXRoIGl0LgpKdXN0IGJhc2VkIGl0IG9u
IGN1cnJlbnQgbWVkaWEtY29tbWl0dGVycy9uZXh0IGJyYW5jaCwgSSB3aWxsIGRlYWwgd2l0aCB0
aGUKcmVzdC4KCj4gCj4gSDI2NCA0OjI6Mi9IaTEwIGFuZCBIRVZDIGhhdmUgYmVlbiBpbiB0aGUg
d29ya3MgZm9yIGEgZmV3IHllYXJzIG5vdywKPiB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgaXQgZnVs
bHkgbGFuZCBiZWZvcmUgcmVmYWN0b3Jpbmcgc3RhcnRzIDstKQoKTXkgcm9hZG1hcCB3YXMgdGhh
dCBIRVZDIHdhcyBub3QgdHJ1bHkgYW4gdW5zdGFnaW5nIGRlcGVuZGVuY3kuIEkgd2FzIGEgbG90
Cm1vcmUgd29ycmllZCBhYm91dCBjb25jdXJyZW50IGRlY29kZSwgYnV0IEkgaGF2ZSBhIHBhdGNo
IGluIHF1ZXVlIG5vdy4gU28KdW5zdGFnaW5nIGlzIHdoYXQgSSB3aWxsIHByaW9yaXRpemUgb25j
ZSBhIHBhdGNoIGlzIG1hZGUuIE1lYW53aGlsZSwgYmV0dGVyIHNlbmQKeW91IHBhdGNoZXMgc29v
bi4KCj4gCj4gWzNdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjMxMTA1
MjMzNjMwLjM5Mjc1MDItMS1qb25hc0Brd2lib28uc2UKPiBbNF0gaHR0cHM6Ly9naXRodWIuY29t
L0t3aWJvby9saW51eC1yb2NrY2hpcC9jb21taXRzL2xpbnV4dHYtcmt2ZGVjLWhldmMtdjJiLwo+
IAo+ID4gVGhpcyBpcyBkb25lIGluIG9yZGVyIHRvIGhhdmUgYWxsIHN1cHBvcnRlZCBkZWNvZGVy
cyB1c2UgdGhlIHNhbWUgZm9ybWF0Cj4gPiBpbiB0aGUgZnV0dXJlIGFuZCBlYXNlIHJlYWRpbmcg
b2YgdGhlIGNvZGUuCj4gCj4gRG8geW91IGhhdmUgYW55IHdvcmstaW4tcHJvZ3Jlc3MgcGF0Y2hl
cyBmb3IgdGhpcz8KPiAKPiA+IFVzaW5nIHN0cnVjdHMgYWxzbyBpbXByb3ZlcyBzdGFiaWxpdHkg
YXMgdGhlIGhhcmR3YXJlIGlzIHRlc3RlZCBhbmQKPiA+IHZhbGlkYXRlZCBkb3duc3RyZWFtIHVz
aW5nIGEgc2ltaWxhciBtZXRob2QuCj4gPiBJdCB3YXMgbm90aWNlZCwgb24gZGVjb2RlcnMsIHRo
YXQ6Cj4gPiDCoC0gU29tZSByZWdpc3RlcnMgcmVxdWlyZSB0byBiZSB3cml0ZW4gaW4gaW5jcmVh
c2luZyBvcmRlciBbMl0KPiA+IMKgLSBTb21lIHJlZ2lzdGVycywgZXZlbiBpZiB1bnJlbGF0ZWQs
IG5lZWQgdG8gYmUgd3JpdHRlbiB0byB0aGVpciByZXNldAo+ID4gwqDCoCB2YWx1ZXMgKGl0IHdh
cyB0aGUgY2FzZSBoZXJlIGZvciBheGlfZGRyX1tyd11kYXRhKS4KPiA+IAo+ID4gVXNpbmcgc3Ry
dWN0cyBjYW4gYWxzbyBoZWxwIGltcHJvdmluZyBwZXJmb3JtYW5jZSBsYXRlciB3aGVuLCBlLmcu
Cj4gPiBtdWx0aWNvcmUgc3VwcG9ydCBpcyBhZGRlZCBvbiBSSzM1ODguCj4gCj4gQXJlIHlvdXIg
cmVmZXJyaW5nIHRvIHRoZSBsaW5rZWQtbGlzdCBmZWF0dXJlIChhbHNvIHByZXNlbnQgaW4gZS5n
Lgo+IFJLMzMyOCkgb3IganVzdCBmb3IgbXVsdGktY29yZSBwdXJwb3NlPwoKUkszNTg4IG11bHRp
LWNvcmUgZGVzaWduLCBidXQgdGhpcyBpcyBhbHNvIG5lZWRlZCBpZiB5b3Ugd2FudCB0byB1c2Ug
SFcgcXVldWVzLgpNdWx0aS1jb3JlIGlzIG1vcmUgcHJlc3NpbmcgYXQgdGhlIG1vbWVudCwgdGhl
IGJlbmVmaXQgb2YgdXNpbmcgSFcgcXVldWVzIHdpbGwKaGF2ZSB0byBiZSBwcm92ZW4uIEl0IGRv
ZXMgbm90IG1ha2UgYSBiaWcgZGlmZmVyZW5jZSBmb3IgYSBzaW5nbGUgbWVkaWEuCgpOaWNvbGFz
Cgo+IAo+IFJlZ2FyZHMsCj4gSm9uYXMKPiAKPiA+IFBlcmZvcm1hbmNlIHNlZW1zIHRvIGJlIHNs
aWdodGx5IGltcHJvdmVkLCBidXQgYXQgbGVhc3QsIG5vdCBtYWRlIHdvcnNlLgo+ID4gUnVubmlu
ZyBmbHVzdGVyJ3MgSlZULUFWQ19WMSB0ZXN0IHN1aXRlIHdpdGggR1N0cmVhbWVyIG9uIHRoZSBS
YWR4YSBST0NLCj4gPiBQSSA0IFNFIGdpdmVzIHRoZSBmb2xsb3dpbmcgdGltZXM6Cj4gPiAKPiA+
IEJlZm9yZSB0aGlzIHBhdGNoOgo+ID4gCj4gPiAtIC0tam9icyAxOiBSYW4gMTI5LzEzNSB0ZXN0
cyBzdWNjZXNzZnVsbHnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGluIDc3LjE2NyBzZWNz
Cj4gPiAtIC0tam9icyA2OiBSYW4gMTI5LzEzNSB0ZXN0cyBzdWNjZXNzZnVsbHnCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGluIDIzLjA0NiBzZWNzCj4gPiAKPiA+IFdpdGggdGhpcyBwYXRj
aDoKPiA+IC0gLS1qb2JzIDE6IFJhbiAxMjkvMTM1IHRlc3RzIHN1Y2Nlc3NmdWxsecKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW4gNzAuNjk4IHNlY3MKPiA+IC0gLS1qb2JzIDY6IFJhbiAx
MjkvMTM1IHRlc3RzIHN1Y2Nlc3NmdWxsecKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW4g
MjIuOTE3IHNlY3MKPiA+IAo+ID4gVGhpcyBhbHNvIHNob3dzIHRoYXQgdGhlIGZsdXN0ZXIgc2Nv
cmUgaGFzbid0IGNoYW5nZWQuCj4gPiAKPiA+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjUwMzI1MjEzMzAzLjgyNjkyNS0xLWRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEuY29t
Lwo+ID4gWzJdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMDAxMjcxNDMwMDkuMTU2
NzctNS1hbmRyemVqLnBAY29sbGFib3JhLmNvbS8KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRGV0
bGV2IENhc2Fub3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4g
wqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMgfCAxNjggKysrLS0t
Cj4gPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLXJlZ3MuaCB8IDU2NyAr
KysrKysrKysrKysrKy0tLS0tLS0KPiA+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9y
a3ZkZWMtdnA5LmPCoCB8IDIzOSArKysrLS0tLS0KPiA+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlh
L3JrdmRlYy9ya3ZkZWMuY8KgwqDCoMKgwqAgfMKgwqAgMSAtCj4gPiDCoDQgZmlsZXMgY2hhbmdl
ZCwgNTU5IGluc2VydGlvbnMoKyksIDQxNiBkZWxldGlvbnMoLSkKPiAKPiBbc25pcF0KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
