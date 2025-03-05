Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD184C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 04:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4sT9S4bl6xT8swC1fIKsdRiD6NEAclrpJ06mqWjAb1Y=; b=eSKIYoPibK034xmnsR2speXe8b
	1To+Em7BvZXvwlyMaJTyRLx7/PX+4fHyamth5Comagc/rsJxnTDnagrPg181OHWFpM8qpz/8Wn3k8
	XtYzQO1CASlDWyXlkXkpMmCn59iPDRYffessCidkFvxDTrATYESrisLIsf3e6ek5qHoicqLFnCZxM
	RIMarvvcqn9lcutzp2fkQU2KG4sDKQFu5W0SCt60Cr5criOpTb5q+e95z5ItGxrbrP55aDTbbrpqL
	Y9gFJ16ylftXGjsdm5WLd6wtOcVpgnlCDXb9BZn3xEYXur2JHFnYp8BYZzcOnHBZSgc61qsGDUTQ8
	Lu+g4N9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpg3c-00000006w1o-3fut;
	Wed, 05 Mar 2025 04:08:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpg23-00000006vxc-2FNV;
	Wed, 05 Mar 2025 04:06:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=pDELCpQeeRsQjBq8mPwKYZFbE0oodQGK1z39/kbbFVc=; b=Qe85svnzlMZAx4aQyhcrCLL1o4
	NVHR8cPGhMnl01PyIp30XyxHwpIGbzTC3gR9t09cS0hRmmredZV6owXhOfb9ZY9i7uqmtPBeeKKG1
	BYsBAm4vJL+3Y5JZpNfSnngO+8STW+x+2AvkGY9nZARzko3PxxHO/7xrbIR1FecRg/fk4OAB4BWDu
	4oi+nJ2AH+Ww1SzH2147HatyKbq0ub35PCpt5yh4OVJ6pO8y/w5yYRiw+FaO2QX6FnjbRrk8J2sIE
	BNU1bfGD1M7/Op55tLnvNuI/TTw4/prdSdBSzXHfjBYGwe6ia8rL+POTzHzkzcJ/i+U3GoitK2JSl
	ukh7Noaw==;
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpg20-00000004fze-2AHE;
	Wed, 05 Mar 2025 04:06:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1741147601;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pDELCpQeeRsQjBq8mPwKYZFbE0oodQGK1z39/kbbFVc=;
	b=CBDAyr6gphxZstlSVsbNMId1zpTUhZp+pAWmgYDZI5aTdeZ+5+nb+TBqrBtQUrnRTU1GZb
	Si9rzNzGXCDlFD2IIB8gCrmBa9Nc2M0oIKh9vnT4w05EvX9lPTgrhpPOsEq3w5XvwHskT2
	QL282+8PZd6XrT0eT+hA0aCCcL5b1WNM7Gt/Uv5uLkpGedTMgV4WCyrpb2z9DgSIm6AEDo
	pz8reP1rIZJj47AjtbDQDxo/pGlHwaTqqcZZspE8HTRxdAvt38uDCTONarVUiCj9VLoQ2e
	ItwzTTEgIUEqZftGQ1ALfausu/4JWSVp95OuTAKXQ1LTQ7d9/w5eUNfvBHlIsQ==
Date: Wed, 05 Mar 2025 05:06:41 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, didi.debian@cknow.org, chris@z9.de
Subject: Re: [PATCH v2 0/2] Slightly improve hardware description of Pine64
 RockPro64
In-Reply-To: <2630232.Icojqenx9y@diego>
References: <cover.1740941097.git.dsimic@manjaro.org>
 <174104113599.8946.16805724674396090918.b4-ty@sntech.de>
 <757afa87255212dfa5abf4c0e31deb08@manjaro.org> <2630232.Icojqenx9y@diego>
Message-ID: <40aed1a2c3d4015881694e847beca683@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_040652_628467_6B96760E 
X-CRM114-Status: GOOD (  17.40  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI1LTAzLTA0IDIyOjUyLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBEaWVuc3RhZywgNC4gTcOkcnogMjAyNSwgMDc6NDQ6NTkgTUVaIHNjaHJpZWIgRHJhZ2Fu
IFNpbWljOgo+PiBPbiAyMDI1LTAzLTAzIDIzOjM2LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4g
PiBPbiBTdW4sIDAyIE1hciAyMDI1IDE5OjQ4OjAyICswMTAwLCBEcmFnYW4gU2ltaWMgd3JvdGU6
Cj4+ID4+IFRoaXMgaXMgYSBzbWFsbCBzZXJpZXMgdGhhdCBpbnRyb2R1Y2VzIHNtYWxsIGltcHJv
dmVtZW50cyB0byB0aGUgd2F5Cj4+ID4+IFBpbmU2NCBSb2NrUHJvNjQgWzFdIHNpbmdsZS1ib2Fy
ZC1jb21wdXRlciBpcyBkZXNjcmliZWQgaW4gdGhlIERUCj4+ID4+IGZpbGVzLgo+PiA+PiBUaGlz
IGFwcGxpZXMgdG8gYm90aCBwcm9kdWN0aW9uLXJ1biByZXZpc2lvbnMgb2YgdGhlIFJvY2tQcm82
NC4KPj4gPj4KPj4gPj4gVGhlIGludHJvZHVjZWQgaW1wcm92ZW1lbnRzIGJvaWwgZG93biB0byBl
bGltaW5hdGluZyBzb21lIHdhcm5pbmdzCj4+ID4+IGZyb20KPj4gPj4gdGhlIGtlcm5lbCBsb2cs
IGJ5IGFkZGluZyBhIHByZXZpb3VzbHkgdW5kZWZpbmVkIHJlZ3VsYXRvciBhbmQgYnkKPj4gPj4g
YWRkaW5nCj4+ID4+IHNvbWUgcHJldmlvdXNseSBtaXNzaW5nIHJlZmVyZW5jZXMgdG8gdGhlIHJl
Z3VsYXRvcnMuCj4+ID4+Cj4+ID4+IFsuLi5dCj4+ID4KPj4gPiBBcHBsaWVkLCB0aGFua3MhCj4+
ID4KPj4gPiBbMS8yXSBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGF2ZGQgSERNSSBzdXBwbGll
cyB0byBSb2NrUHJvNjQgYm9hcmQKPj4gPiBkdHNpCj4+ID4gICAgICAgY29tbWl0OiBiZDFjOTU5
ZjM3ZjM4NGI0NzdmNTE1NzIzMzFiMGRjODI4YmQwMDlhCj4+ID4gWzIvMl0gYXJtNjQ6IGR0czog
cm9ja2NoaXA6IEFkZCBtaXNzaW5nIFBDSWUgc3VwcGxpZXMgdG8gUm9ja1BybzY0Cj4+ID4gYm9h
cmQgZHRzaQo+PiA+ICAgICAgIGNvbW1pdDogNjRlZjRhNDMyMGU3YWEzZjBmMjY3ZTAxZjE3MGY1
MmI5MGJmMGIxYgo+PiA+Cj4+ID4gSSd2ZSBtb3ZlZCB0aGUgcGNpZTEydiBzdXBwbHkgdXAgb25l
IGxpbmUuCj4+ID4gV2hpbGUgaW4gYSBtYXRoZW1hdGljYWwgc2Vuc2UgaXQncyB0cnVlIDEyID4g
My4zLCB3ZSdyZSBzb3J0aW5nCj4+ID4gYWxwaGFiZXRpY2FsLCBzbyBpdCdzIDE/PyA8IDM/PyAu
Cj4+ID4KPj4gPiBBbmQgeWVzIEkgc3ltcGF0aGl6ZSB3aXRoIDMuMyA8IDEyLCBidXQgYWxzbyBo
YXZlIGNvbWUgdG8gYXBwcmVjaWF0ZQo+PiA+IG5vdAo+PiA+IGhhdmluZyBvdmVybHkgbWFueSBz
cGVjaWFsIGNhc2VzIDotKQo+PiAKPj4gR3JlYXQsIHRoYW5rcyEgOikKPj4gCj4+IEknbSBmaW5l
IHdpdGggdGhlIGFscGhhYmV0aWNhbCBvcmRlcmluZywgYWxiZWl0IHdpdGggc29tZSBjYXZlYXRz
Cj4+IGRlc2NyaWJlZCBiZWxvdywgYnV0IHRoZSBmb2xsb3dpbmcgcGFydCBvZiB0aGUgcGF0Y2gg
ZGVzY3JpcHRpb24KPj4gc2hvdWxkIGFsc28gYmUgcmVtb3ZlZCwgaWYgcG9zc2libGUsIHNvIHRo
ZSBwYXRjaCBkZXNjcmlwdGlvbiBmdWxseQo+PiBtYXRjaGVzIHRoZSBpbnRyb2R1Y2VkIGNoYW5n
ZXM6Cj4+IAo+PiAgICBTaHVmZmxlIGFuZCByZW9yZGVyIHRoZSAidnBjaWUqLXN1cHBseSIgcHJv
cGVydGllcyBhIGJpdCwgc28gCj4+IHRoZXkncmUKPj4gc29ydGVkCj4+ICAgIGFscGhhbnVtZXJp
Y2FsbHksIHdoaWNoIGlzIGEgYml0IG1vcmUgbG9naWNhbCBhbmQgbW9yZSB1c2VmdWwgdGhhbgo+
PiBoYXZpbmcKPj4gICAgdGhlc2UgcHJvcGVydGllcyBsaXN0ZWQgaW4gdGhlaXIgc3RyaWN0IGFs
cGhhYmV0aWNhbCBvcmRlci4KPiAKPiBJJ3ZlIGFtZW5kZWQgdGhlIGNvbW1pdCwgZHJvcHBpbmcg
dGhpcyBibG9jawoKVGhhbmtzIQoKPj4gSSdtIGhvcGluZyB5b3UnbGwgYWdyZWUgdGhhdCBzcGVj
aWZ5aW5nIGFscGhhbnVtZXJpY2FsIG9yZGVyaW5nCj4+IGZvciB0aGUgcHJvcGVydGllcyBpbiB0
aGUgRFRTIGNvZGluZyBzdHlsZSBpcyB0aGUgd2F5IHRvIGdvLCBqdXN0Cj4+IGxpa2UgaXQncyBh
bHJlYWR5IHNwZWNpZmllZCBmb3IgdGhlIG9yZGVyaW5nIG9mIHRoZSBub2Rlcy4gIEknbGwKPj4g
Z28gYWhlYWQgYW5kIHN1Ym1pdCBhbiBhcHByb3ByaWF0ZSBwYXRjaCBmb3IgdGhlIERUIGd1aWRl
bGluZXMuCj4gCj4gdnBjaWUwdjktc3VwcGx5ID0gPCZ2Y2NhXzB2OT47Cj4gdnBjaWUxdjgtc3Vw
cGx5ID0gPCZ2Y2NhXzF2OD47Cj4gdnBjaWUzdjMtc3VwcGx5ID0gPCZ2Y2MzdjNfcGNpZT47Cj4g
dnBjaWUxMnYtc3VwcGx5ID0gPCZ2Y2MxMnZfZGNpbj47Cj4gCj4gSW4gdGhlIGVuZCBJIGRvbid0
IGNhcmUgX3RoYXRfIG11Y2gsIGJ1dCBwZXJzb25hbGx5IEkgZmluZCB0aGF0Cj4gYWxwaGFudW1l
cmljYWwgb3JkZXJpbmcgaGFyZGVyIHRvIHJlYWQgOy0pIC4KPiAKPiBCZWNhdXNlIGluIHRoZSBl
eGFtcGxlIGFib3ZlLCBteSBtaW5kIG5vdyBjb25zdGFudGx5IHNob3V0cwo+ICJ3aHkgaXMgdnBj
aWUxLi4uIGFmdGVyIHZwY2llMy4uLiAuLi4uLiBvb29vaCByaWdodCwgaXQncyAKPiBhbHBoYS1u
dW1lcmljYWwiCj4gCj4gQnV0IEkgY2FuIGxpdmUgd2l0aCBpdCBJIGd1ZXNzIDstKSAuCj4gQXMg
My4zIGlzIHNtYWxsZXIgdGhhbiAxMiBhZnRlcmFsbC4KCk9oLCBJIGtub3cgdmVyeSB3ZWxsIGZp
cnN0LWhhbmQgaG93IGFscGhhbnVtZXJpY2FsIG9yZGVyaW5nIG1heQpsb29rIGFuZCBmZWVsIHN0
cmFuZ2UgYXQgZmlyc3QuLi4gOikKCkkgdXNlZCBscygxKSB3aXRob3V0IHRoZSAiLXYiIG9wdGlv
biBmb3IgbWFueSwgbWFueSB5ZWFycywgYW5kIHRoZQp0aGluZ3MgbG9va2VkIGEgYml0IHN0cmFu
Z2UgYWZ0ZXIgSSBkZWNpZGVkIHRvIGFkZCAiLXYiIHRvIGl0cyBzZXQKb2Ygb3B0aW9ucyBhdCBz
b21lIHBvaW50LCBidXQgYWZ0ZXIgYSBzaG9ydCBwZXJpb2Qgb2YgZ2V0dGluZyB1c2VkCnRvIGl0
LCBhbHBoYW51bWVyaWNhbCBzb3J0aW5nIGJlY2FtZSBzbyBsb2dpY2FsIGFuZCB1c2VmdWwgdG8g
bWUgdGhhdAphbHBoYWJldGljYWwgb3JkZXJpbmcgaXMgYWN0dWFsbHkgbm93IGhhcmRlciB0byBy
ZWFkIGFuZCBpcyBsb29raW5nCmEgYml0IHN0cmFuZ2UgdG8gbWUuIDopCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
