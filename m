Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A7C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 12:23:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 097B461241
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 12:23:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 097B461241
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lkyihyq3Vmfk2KaL1Chj8mmXO7ClnFGcbWSQ/oeJthE=; b=n5dn0tHx5hHuBg/2Bsm1DS/JA
	kEAczcg3gyyUqHLaH7nxRb5BbZXi3HpeTq7kM8aeIQV614p30bSpz7PMC5BR+9GAX2uwS+bLCB7C7
	yCdS79yVV9/CyQB4Ztm6O1G8wdomYnAUUE1tw5Iy0TuiT29V0C8O1U12HKJfd5iEYbMxK3heU7xv1
	Jpvw4QEm6AYGl0a5+JwHjOTBpwiTbPr4IVnJ5wKNk+4UXJislbUfIDotSbK0rlnMEMxqV/6jzfCko
	9YA3O4ytu3ZtyyZbCeNf2NR/RKcTm357RE4l8TJX0xylpbCXgTse81OBLFgWT0pm4cBulaiFKhsSo
	mnZnjwSng==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1licH4-00EsqG-Hd; Mon, 17 May 2021 12:23:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1licGZ-00Esk4-08; Mon, 17 May 2021 12:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=QWKi0Yr3gUV/XqNVxPHq5T7Tn2J/6fRvarJLRAaOPl8=; b=ALYdq7NZnptcr2uHy/QKfjY4jv
 KFvRl/JCd985WTEd75kJK8b99j9mIZ1IlENDlyaJciXVa/OU/G6ZEn4FTku0eu5OFYXm+b4/b3fD7
 4flpRSuYXjM4Fv/zryaJ8c2DYcrxPDCjHBsi0kOqpNt+oFq+IfbSKnpSafsc7we9jovYWpiSXYl98
 b8kqoUZtqCexaHGgGCChg607mSb4p1QQHeNnU4YIJPyAzLiaFwt4eeKcl2GXN8c40GQjJDZeTSg4P
 TUilePiXjvX0F452XcaDX77W1HfNF/RID20Vfh+BzmYJpEtjgB2ViBmZLyix5h26Ii/rPUqttPCYe
 5dLwVZAw==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1licGT-00DkhQ-Q5; Mon, 17 May 2021 12:22:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 1B6C8B1C2;
 Mon, 17 May 2021 12:22:28 +0000 (UTC)
Subject: Re: [PATCH 0/9] arm64: dts: rockchip: Initial Toybrick TB-RK1808M0
 support
To: Marc Zyngier <maz@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
References: <20210516230551.12469-1-afaerber@suse.de>
 <87im3hvikv.wl-maz@kernel.org>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <e633c5ac-7cd6-c733-a295-6dca8ba9c605@suse.de>
Date: Mon, 17 May 2021 14:22:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <87im3hvikv.wl-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_052230_159193_D9495FD3 
X-CRM114-Status: GOOD (  35.32  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWFyYywKCk9uIDE3LjA1LjIxIDExOjAyLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gTW9u
LCAxNyBNYXkgMjAyMSAwMDowNTo0MiArMDEwMCwKPiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVy
QHN1c2UuZGU+IHdyb3RlOgo+PiBQYXRjaGVzIGFyZSBiYXNlZCBvbiB0aGUgc2hpcHBpbmcgdG95
YnJpY2suZHRiIGZpbGUuCgo+PiBodHRwOi8vdC5yb2NrLWNoaXBzLmNvbS9lbi93aWtpLnBocD9t
b2Q9dmlldyZpZD0xMTAgZ2l2ZXMgaW5zdHJ1Y3Rpb25zIGZvcgoKPj4gY29tcGlsaW5nIHNvdXJj
ZXMsIGJ1dCBubyBzb3VyY2UgZG93bmxvYWQgb3IgbGluayBpcyBhY3R1YWxseSBwcm92aWRlZC4K
Cj4+IAoKPj4gSSBlbmNvdW50ZXJlZCBhIGhhbmc6IGVhcmx5Y29uIHJldmVhbGVkIGl0IGJlaW5n
IHJlbGF0ZWQgdG8gS1ZNIGFuZAo+PiB2R0lDLiAgRGlzYWJsaW5nIEtWTSBpbiBLY29uZmlnIHdv
cmtzIGFyb3VuZCBpdCwgYXMgZG9lcyByZW1vdmluZwo+PiB0aGUgdkdJQyBpcnEgaW4gRFQuICBJ
J3ZlIGFscmVhZHkgdHJpZWQgbG93IGFuZCBoaWdoIGZvciB0aGUgdkdJQwo+PiBpbnRlcnJ1cHQs
IHNvIG5vIGNsdWUgd2hhdCBtaWdodCBjYXVzZSBpdC4gT24gYW4gbVBDSWUgY2FyZCB3aXRoIDEK
Pj4gR2lCIG9mIFJBTSBJIGZpZ3VyZWQgS1ZNIGlzIG5vdCBnb2luZyB0byBiZSBhIG1ham9yIHVz
ZSBjYXNlLCBzbyBpZgo+PiB3ZSBmaW5kIG5vIG90aGVyIHNvbHV0aW9uLCB3ZSBjb3VsZCBqdXN0
IGRlbGV0ZSB0aGUgaW50ZXJydXB0cwo+PiBwcm9wZXJ0eSBpbiBpdHMgLmR0cywgYXMgZGVtb25z
dHJhdGVkIGhlcmUuCj4gCj4gSSB0aGluayB5b3UgZmlndXJlZCBpdCBvdXQgd3JvbmcsCgpEaWQg
ST8gSSBpZGVudGlmaWVkIHRoYXQgYW4gaXNzdWUgcmVzdWx0aW5nIGluIG5vIHNlcmlhbCBjb25z
b2xlIHdhcwpkZXBlbmRlbnQgb24gQ09ORklHX0tWTSBiZWluZyBlbmFibGVkIGFuZCBzcGVjaWZp
Y2FsbHkgdG8gdGhlIHZHSUMKaW50ZXJydXB0IGJlaW5nIHNwZWNpZmllZCBpbiBteSBEVC4gVGhh
dCdzIGFsbCBJIHNhaWQuCgpJIG5ldmVyIGNsYWltZWQgS1ZNIGNvZGUgd2FzIHRvIGJsYW1lLCB5
b3Ugc2hvdWxkIGtub3cgbWUgYmV0dGVyIGJ5IG5vdyEKCj4gZm9yIGEgbnVtYmVyIG9mIHJlYXNv
bnM6Cj4gCj4gLSBLVk0gaGFuZ2luZyBpcyB1c3VhbGx5IGEgc2lnbiB0aGF0IHlvdSBoYXZlIGRl
c2NyaWJlZCB0aGUgcGxhdGZvcm0KPiAgIHRoZSB3cm9uZyB3YXkuIEVpdGhlciB5b3UgYXJlIHN0
ZXBwaW5nIG92ZXIgcmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbnMsCj4gICBvciB5b3UgaGF2ZSBiYWRs
eSBkZXNjcmliZWQgdGhlIEdJQyBpdHNlbGYuCgpUaGlzIHdob2xlIHNlcmllcyBpcyBhYm91dCBh
IG5ldyBEVCBoYXJkd2FyZSBkZXNjcmlwdGlvbiwgc28geWVzLCB0aGF0CmlzIHRoZSBtb3N0IGxp
a2VseSBzb3VyY2Ugb2YgdGhlIHByb2JsZW0gSSdtIG9ic2VydmluZy4gV2l0aG91dCBmdXJ0aGVy
CmhpbnRzIGhvdyB0byB2ZXJpZnkgd2hhdCBtYXkgY2F1c2UgaXQsIHlvdSdyZSBqdXN0IHN0YXRp
bmcgdGhlIG9idmlvdXMuCgpUaGUgb25seSAvcmVzZXJ2ZWQtbWVtb3J5IGVudHJpZXMgaW4gdGhl
IHNoaXBwaW5nIERUQiBhcmUgZHJtLWxvZ28gb2YKc2l6ZSAwIGFuZCByYW1vb3BzIC0gdGhlIGxh
dHRlciBJIGNvdWxkIHRyeSB0byB0ZXN0LCBidXQgSSdkIGFzc3VtZSB0aGF0CnRvIGp1c3QgYmUg
YSBzb2Z0d2FyZSBjb252ZW50aW9uIHRoYXQgZm9yIGxhY2sgb2Ygb29wcyBzaG91bGQgbm90IGFm
ZmVjdApLVk0gaGVyZT8KCkFuZCB3aHkgd291bGQgcmVzZXJ2ZWQgbWVtb3J5IGFmZmVjdCB0aGUg
dkdJQyBidXQgbm8gb3RoZXIgZHJpdmVyIGRvaW5nCmFsbG9jYXRpb25zPyBBbnkgd2F5IHRvIG5h
cnJvdyBpdCBkb3duLCBkb2VzIHZHSUMgYWxsb2NhdGUgc3BlY2lhbGx5PwoKT25seSBvdGhlciBp
c3N1ZSBJJ20gc2VlaW5nIGlzIERlYmlhbiBmYWlsaW5nIHRvIG1vdW50IHBhcnRpdGlvbnMgdGhh
dCBJCmNoZWNrZWQgSSBkbyBoYXZlIGRyaXZlcnMgYnVpbHQgaW4gZm9yIGFuZCBlbmRzIHVwIGZh
aWxpbmcgdG8gcHJvdmlkZSBhbgplbWVyZ2VuY3kgc2hlbGwuIEluIG9yZGVyIHRvIGJvb3QgYSBj
bGVhbiBvcGVuU1VTRSByb290ZnMgZm9yIGNvbXBhcmlzb24KSSdkIGZpcnN0IG5lZWQgdG8gZmln
dXJlIG91dCBhZGRpbmcgYW55IFVTQiBob3N0IG5vZGVzIGFuZCBjbG9ja3MuCgo+IAo+IC0gSXQg
Y291bGQgYWxzbyBiZSBhIGJ1ZyBpbiBLVk0sIHdoaWNoIHdpbGwgbmVlZCB0byBiZSBmaXhlZC4g
SWYKPiAgIHRoYXQncyBiZWNhdXNlIHRoZSBIVyBpcyBicm9rZW4sIHdlIG5lZWQgdG8gYmUgYWJs
ZSB0byBkZXRlY3QgaXQuCj4gCj4gLSBZb3UgY2Fubm90IGJlIHByZXNjcmlwdGl2ZSBvZiB3aGF0
IGEgdXNlciBpcyBnb2luZyB0byBydW4uIFBlb3BsZQo+ICAgaGF2ZSBiZWVuIHJ1bm5pbmcgS1ZN
IG9uIHN5c3RlbXMgd2l0aCBsZXNzIG1lbW9yeSB0aGFuIHRoYXQuCj4gCj4gU28gbm8sIHdlIGRv
bid0IHBhcGVyIG92ZXIgdGhlc2UgaXNzdWVzLgoKQXMgeW91IGNhbiBzZWUgaW4gcGF0Y2ggMywg
aXQgZG9lcyBpbmNsdWRlIHRoZSB2R0lDIGludGVycnVwdCwgc28gdGhhdAphbnlvbmUgd2l0aCBh
Y2Nlc3MgdG8gdGhlIFRCLTk2QUlvVCBvciBhbnkgRVZCIGNhbiB0ZXN0IEtWTSBhbmQgcmVwb3J0
CnN1Y2Nlc3Mgb3IgZmFpbHVyZS4gVGh1cyBJIGRvbid0IHNlZSBtZSBhcyBwYXBlcmluZyBvdmVy
IHNvbWV0aGluZyBoZXJlLgoKSG93ZXZlciwgcGF0Y2ggNSBpcyBuZWVkZWQgdG8gdGVzdCB0aGlz
IHBhdGNoc2V0IG9uIGF0IGxlYXN0IE0wIC0gdG8KaGF2ZSBzZXJpYWwgYW5kIGVNTUMgcm9vdGZz
IHdvcmtpbmcgLSB1bnRpbCBhIGJldHRlciBmaXggaXMgZm91bmQuCgo+IFdlIHdvcmsgb3V0IHdo
YXQgaXMgZ29pbmcKPiB3cm9uZyBhbmQgd2UgZml4IGl0LgoKVGhhbmtzLiBZb3Ugd2VyZSBzcGVj
aWZpY2FsbHkgY29waWVkIHRvIGFkdmlzZSBvbgpob3cgdG8gZmlndXJlIG91dCB3aGF0IG1pZ2h0
IGNhdXNlIGl0LCBzbyB0aGF0IHdlL0kgY2FuIGZpeCBpdCBwcm9wZXJseS4gOikKCkFzIEkgbWVu
dGlvbmVkLCBJIGFscmVhZHkgdHJpZWQgY2hhbmdpbmcgdGhlIGludGVycnVwdCBiZXR3ZWVuIGhp
Z2ggYW5kCmxvdyAod2hpY2ggd2FzIGEgbGlrZWx5IGJ1ZyBzb3VyY2Ugb24gUmVhbHRlayBSSzEz
MTkgKHdoZXJlIEknbSBzdGlsbAp3YWl0aW5nIG9uIHRoZW0gdG8gY29uZmlybSBhIH55ZWFyIGxh
dGVyLi4uKSkuCkkgZG9uJ3QgaGF2ZSBhIGRhdGEgc291cmNlIG90aGVyIHRoYW4gdGhlIGRvd25z
dHJlYW0gLmR0YiB0byBjaGVjayB0aGUKaW50ZXJydXB0IG51bWJlciAtIG1haW5saW5lIFBYMzAv
UkszMzA4L1JLMzMyOC9SSzMzNjgvUkszMzk5IGRvIGFsbCB1c2UKOSBhbmQgaGlnaCBjb25zaXN0
ZW50bHkgdGhvdWdoLCBzbyBJIGZpZ3VyZWQgaXQncyBsaWtlbHkgY29ycmVjdC4KCldoYXQgSSB3
YXMgd29uZGVyaW5nIGlzIHdoZXRoZXIgdGhlIHZHSUMsIHNpbWlsYXIgdG8gYXJjaCB0aW1lciwg
bWlnaHQKbmVlZCBzb21lIGluaXRpYWxpemF0aW9uIGluIHRoZSBib290bG9hZGVyPyAoTm90ZTog
Tm8gVS1Cb290IHNvdXJjZXMKZWl0aGVyIGF0IHRoZSBsaW5rLikKVW5mb3J0dW5hdGVseSBJJ20g
c2VlaW5nIGEgcmVjdXJyaW5nIHBhdHRlcm4gKGNmLiBSZWFsdGVrKSB0aGF0IHZlbmRvcnMKaW4g
dGhlaXIgQlNQcyBkb24ndCBlbmFibGUgS1ZNIGFuZCB0aHVzIGRvbid0IHZhbGlkYXRlIHRoZWly
IGhhcmR3YXJlCmRlc2NyaXB0aW9uIGFnYWluc3QgS1ZNOyB0aGVpciBzaGlwcGluZyA0LjQgYmFz
ZWQga2VybmVsIGhlcmUgZG9lcyBub3QKc2VlbSB0byBoYXZlIEtWTSBlbmFibGVkLgoKT3IgaXMg
aXQgcG9zc2libGUgZm9yIHZlbmRvcnMgdG8gYWN0dWFsbHkgaGF2ZSBhIENvcnRleC1BMzUgd2l0
aG91dCB0aGUKQXJtdjggVmlydHVhbGl6YXRpb24gRXh0ZW5zaW9ucyBpbiBzaWxpY29uPyBJZiBz
bywgaG93IGNvdWxkIG9uZSB2ZXJpZnk/CgpUaGFua3MsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3
YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJn
LCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcp
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
