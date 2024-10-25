Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69849D149DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 18:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/jetISU5AgjIrfGMmRmET0OHPgDh3JtFM97KiTv4ZY=; b=SUNcD8bFGLRESE
	v3aLFah9Fl5J7QLdnDcMecszp1t8xaVLmSQH0vo6qyIbex1eyxbnv/jUkGYsJAdvNn5sjEd6cdKEC
	IMmbuE85cK6kNXn/eddKqgB0e21gJQDlZrpe3ww9WZ1agOssyekY2N/HpwgASmgdvbkaV4T6ym6N8
	PkjWVLzi67mkCTiG5XC90kgWMV3RhpFFs7di8TZZrEMWqTuTact2nddtkNLAKR5FSBQZoPtPUExdN
	eyTkCmjwA+sTbxqAqqqiWAZT7LUjf5C++q/h7lUe5hFb27C15NpTpkBbxjA9DfhHnOg7e9IwLPySo
	snG3k6iccwBeLxbyAZiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4P0E-00000004nPG-3CqM;
	Fri, 25 Oct 2024 18:25:38 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4OOq-00000004fbN-3f6K
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Oct 2024 17:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729878418;
	bh=ozBIpgyxnAgCBKNUleMXiK02jDu4q4LAhe4fTs4O04s=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=iUg44kWBzy9MSSIzXccTiM8CT+DmPeUOKRVz7wQSt6tXpAV8XHJyQsUgsBzcJMnrl
	 H2wUZKvZqhgtu4gEjEq5KdV9Uu1DBV6gHCy04fMhzVm1of3mNa4NMGY+2HUbDULdW9
	 xFEXp2AoyMZUxDeTtHC4LByH0c2gdHO7XSutsFlHIRzODNIrcBNAWxjH3U1rkuwqye
	 gujMmwRC7Ckl2G+l6HL4G9veMPSN9jM0QCowsOYc8GTEoqkKmo0RCqGQJQsuMRwLSy
	 O1fctHQo8IOTsgglaa0sk2pQsQXhu1OaLnC0ZBS48/rbMPInMEPBB216adib9YQKFs
	 dtLZ2T11X37QQ==
Received: from nicolas-tpx395.lan (unknown [IPv6:2606:6d00:15:862e::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B8C4817E36B5;
	Fri, 25 Oct 2024 19:46:56 +0200 (CEST)
Message-ID: <f42f85b801f9fc74e5cc1cee5984e9fc44f63ada.camel@collabora.com>
Subject: Re: [PATCH v6 11/11] media: rkvdec: Fix enumerate frame sizes
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Boris Brezillon
 <boris.brezillon@collabora.com>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Detlev Casanova
 <detlev.casanova@collabora.com>, Dan Carpenter <dan.carpenter@linaro.org>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Mauro Carvalho
 Chehab <mchehab+huawei@kernel.org>
Date: Fri, 25 Oct 2024 13:46:55 -0400
In-Reply-To: <20240909192522.1076704-12-jonas@kwiboo.se>
References: <20240909192522.1076704-1-jonas@kwiboo.se>
	 <20240909192522.1076704-12-jonas@kwiboo.se>
Organization: Collabora
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_104701_101647_59A4FD11 
X-CRM114-Status: GOOD (  16.02  )
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

TGUgbHVuZGkgMDkgc2VwdGVtYnJlIDIwMjQgw6AgMTk6MjUgKzAwMDAsIEpvbmFzIEthcmxtYW4g
YSDDqWNyaXTCoDoKPiBUaGUgVklESU9DX0VOVU1fRlJBTUVTSVpFUyBpb2N0bCBzaG91bGQgcmV0
dXJuIGFsbCBmcmFtZSBzaXplcyAoaS4gZS4KPiB3aWR0aCBhbmQgaGVpZ2h0IGluIHBpeGVscykg
dGhhdCB0aGUgZGV2aWNlIHN1cHBvcnRzIGZvciB0aGUgZ2l2ZW4gcGl4ZWwKPiBmb3JtYXQuCj4g
Cj4gRm9yIGNvZGVkIGZvcm1hdCByZXR1cm5pbmcgdGhlIGZyYW1lIHNpemUgdXNlZCB0byBlbmZv
cmNlIEhXIGFsaWdubWVudAo+IHJlcXVpcmVtZW50cyBmb3IgQ0FQVFVSRSBidWZmZXJzIGRvZXMg
bm90IG1ha2UgZnVsbHkgc2Vuc2UuCj4gCj4gSW5zdGVhZCwgc2lnbmFsIGFwcGxpY2F0aW9ucyB3
aGF0IHRoZSBtYXhpbXVtIGZyYW1lIHNpemUgdGhhdCBpcwo+IHN1cHBvcnRlZCBieSB0aGUgSFcg
ZGVjb2RlciB1c2luZyBhIGZyYW1lIHNpemUgb2YgY29udGludW91cyB0eXBlLgo+IAo+IEZpeGVz
OiBjZDMzYzgzMDQ0OGIgKCJtZWRpYTogcmt2ZGVjOiBBZGQgdGhlIHJrdmRlYyBkcml2ZXIiKQo+
IFN1Z2dlc3RlZC1ieTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgoKUmV2aWV3ZWQtYnk6IE5pY29s
YXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gdjY6
Cj4gLSBOZXcgcGF0Y2gKPiAKPiBXaXRoIHRoaXMgY2hhbmdlIEZGbXBlZyBWNEwyIFJlcXVlc3Qg
QVBJIGh3YWNjZWxzIGNhbiBpbXBsZW1lbnQgYSBzdHJpY3QKPiBjaGVjayBpZiBmcmFtZSBzaXpl
IGlzIHN1cHBvcnRlZCBieSB0aGUgdmlkZW8gZGV2aWNlOgo+IGh0dHBzOi8vZmZtcGVnLm9yZy9w
aXBlcm1haWwvZmZtcGVnLWRldmVsLzIwMjQtQXVndXN0LzMzMjAzNy5odG1sCj4gLS0tCj4gIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCAxMCArKysrKysrKy0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gaW5kZXggYzhjMTRmMzVhYzQ0Li45MDAyZWIz
YTU5ZTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMu
Ywo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiBAQCAtMzM0
LDggKzMzNCwxNCBAQCBzdGF0aWMgaW50IHJrdmRlY19lbnVtX2ZyYW1lc2l6ZXMoc3RydWN0IGZp
bGUgKmZpbGUsIHZvaWQgKnByaXYsCj4gIAlpZiAoIWZtdCkKPiAgCQlyZXR1cm4gLUVJTlZBTDsK
PiAgCj4gLQlmc2l6ZS0+dHlwZSA9IFY0TDJfRlJNU0laRV9UWVBFX1NURVBXSVNFOwo+IC0JZnNp
emUtPnN0ZXB3aXNlID0gZm10LT5mcm1zaXplOwo+ICsJZnNpemUtPnR5cGUgPSBWNEwyX0ZSTVNJ
WkVfVFlQRV9DT05USU5VT1VTOwo+ICsJZnNpemUtPnN0ZXB3aXNlLm1pbl93aWR0aCA9IDE7Cj4g
Kwlmc2l6ZS0+c3RlcHdpc2UubWF4X3dpZHRoID0gZm10LT5mcm1zaXplLm1heF93aWR0aDsKPiAr
CWZzaXplLT5zdGVwd2lzZS5zdGVwX3dpZHRoID0gMTsKPiArCWZzaXplLT5zdGVwd2lzZS5taW5f
aGVpZ2h0ID0gMTsKPiArCWZzaXplLT5zdGVwd2lzZS5tYXhfaGVpZ2h0ID0gZm10LT5mcm1zaXpl
Lm1heF9oZWlnaHQ7Cj4gKwlmc2l6ZS0+c3RlcHdpc2Uuc3RlcF9oZWlnaHQgPSAxOwo+ICsKPiAg
CXJldHVybiAwOwo+ICB9Cj4gIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
