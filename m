Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE35C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 18:40:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2E96216FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 18:40:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F2E96216FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A+twYM3vgZTMdp5MhhdJtfAVAYwD81WqZapx00fiPDw=; b=uhUZR7+FXwQKXXyL/Ac8yRcoA
	OxLkYggylN5OE/UhUYSlDGxuv63G3vnwDkqinOOdQbtiS/RIn6vY62F4mcVWZ51ZJkYyihqEYrPpC
	7RUKxWlvTYbU8VZGDXR8KfbRgR7q4DfsXUKgdyd3x8h1Yki2xmPdJB9A1U5BvQXMbnq2cwSenELxn
	w5Qk2PhbEkxZK+1U9OnRNtst/RKgfmLeI8QbJQ4pqnZCXXDmhtjtx6WUJCO6rV9wL+I5MGrR7AvhB
	OZj15oBzEjKFWHv+b6n5sOUYNMOZnqkmJ7CZ69onkAsUFrcYybFw1oyP1tNx2dzGJsDfsH3ZXtiP5
	BsztPGagA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1vvN-0007CQ-5t; Tue, 19 Jan 2021 18:40:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1vvK-0007C2-VV
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 18:40:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D412311B3;
 Tue, 19 Jan 2021 10:40:10 -0800 (PST)
Received: from [10.57.39.58] (unknown [10.57.39.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 59B753F66E;
 Tue, 19 Jan 2021 10:40:09 -0800 (PST)
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: Johan Jonker <jbx6244@gmail.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Simon Xue <xxm@rock-chips.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210118091739.247040-1-xxm@rock-chips.com>
 <20210118091739.247040-2-xxm@rock-chips.com>
 <e143ad9e-1cfd-e59d-0079-513c036981ba@gmail.com> <2336601.uoxibFcf9D@diego>
 <677c102d-0b9b-1a12-0ac6-4dd0a1023b68@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c9ff67c7-ca1d-d4a6-aef5-4c75688ed6d3@arm.com>
Date: Tue, 19 Jan 2021 18:40:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <677c102d-0b9b-1a12-0ac6-4dd0a1023b68@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_134015_179185_19C5CA8A 
X-CRM114-Status: GOOD (  25.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMS0wMS0xOSAxNToxMSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+IEhpIFNpbW9uLCBIZWlr
bywKPiAKPiBPbiAxLzE5LzIxIDI6MTQgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBIaSBK
b2hhbiwKPj4KPj4gQW0gRGllbnN0YWcsIDE5LiBKYW51YXIgMjAyMSwgMTQ6MDc6NDEgQ0VUIHNj
aHJpZWIgSm9oYW4gSm9ua2VyOgo+Pj4gSGkgU2ltb24sCj4+Pgo+Pj4gVGhhbmsgeW91IGZvciB0
aGlzIHBhdGNoIGZvciByazM1NjggcGNpZS4KPj4+Cj4+PiBJbmNsdWRlIHRoZSBSb2NrY2hpcCBk
ZXZpY2UgdHJlZSBtYWludGFpbmVyIGFuZCBhbGwgb3RoZXIgcGVvcGxlL2xpc3RzCj4+PiB0byB0
aGUgQ0MgbGlzdC4KPj4+Cj4+PiAuL3NjcmlwdHMvY2hlY2twYXRjaC5wbCAtLXN0cmljdCA8cGF0
Y2gxPiA8cGF0Y2gyPgo+Pj4KPj4+ICAgLi9zY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIC0tbm9y
b2xlcyAtLW5vcm9sZXN0YXRzIC0tbm9naXQtZmFsbGJhY2sKPj4+IC0tbm9naXQgPHBhdGNoMT4g
PHBhdGNoMj4KPj4+Cj4+PiBnaXQgc2VuZC1lbWFpbCAtLXN1cHByZXNzLWNjIGFsbCAtLWRyeS1y
dW4gLS1hbm5vdGF0ZSAtLXRvCj4+PiBoZWlrb0BzbnRlY2guZGUgLS1jYyA8Li4+IDxwYXRjaDE+
IDxwYXRjaDI+Cj4+Pgo+Pj4gVGhpcyBTb0MgaGFzIG5vIHN1cHBvcnQgaW4gbWFpbmxpbmUgbGlu
dXgga2VybmVsIHlldC4KPj4+IEluIGFsbCB0aGUgZm9sbG93aW5nIHlhbWwgZG9jdW1lbnRzIGZv
ciByazM1Njggd2UgbmVlZCBoZWFkZXJzIHdpdGgKPj4+IGRlZmluZXMgZm9yIGNsb2NrcyBhbmQg
cG93ZXIgZG9tYWlucywgZXRjLgo+Pj4KPj4+IEZvciBleGFtcGxlOgo+Pj4gI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2Nsb2NrL3JrMzU2OC1jcnUuaD4KPj4+ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9w
b3dlci9yazM1NjgtcG93ZXIuaD4KPj4+Cj4+PiBDb3VsZCBSb2NrY2hpcCBzdWJtaXQgZmlyc3Qg
Y2xvY2tzIGFuZCBwb3dlciBkcml2ZXJzIGVudHJpZXMgYW5kIGEgYmFzaWMKPj4+IHJrMzU2OC5k
dHNpICsgZXZiIGR0cz8KPj4+IEluY2x1ZGUgYSBwYXRjaCB0byB0aGlzIHNlcmllIHdpdGggMyBw
Y2llIG5vZGVzIGFkZGVkIHRvIHJrMzU2OC5kdHNpLgo+Pj4KPj4+IEEgZHRic19jaGVjayBvbmx5
IHdvcmtzIHdpdGggYSBjb21wbGV0ZSBkdHNpIGFuZCBldmIgZHRzLgo+Pj4KPj4+IG1ha2UgQVJD
SD1hcm02NCBkdGJzX2NoZWNrCj4+PiBEVF9TQ0hFTUFfRklMRVM9RG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPj4+Cj4+PiBPbiAxLzE4
LzIxIDEwOjE3IEFNLCBTaW1vbiBYdWUgd3JvdGU6Cj4+Pj4gU2lnbmVkLW9mZi1ieTogU2ltb24g
WHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAuLi4vYmluZGluZ3MvcGNp
L3JvY2tjaGlwLWR3LXBjaWUueWFtbCAgICAgICAgfCAxMDEgKysrKysrKysrKysrKysrKysrCj4+
Pj4gICAxIGZpbGUgY2hhbmdlZCwgMTAxIGluc2VydGlvbnMoKykKPj4+PiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3
LXBjaWUueWFtbAo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPj4+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZmE2NjRjZmZmYjI5Cj4+Pj4gLS0t
IC9kZXYvbnVsbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
Y2kvcm9ja2NoaXAtZHctcGNpZS55YW1sCj4+Pj4gQEAgLTAsMCArMSwxMDEgQEAKPj4+PiArIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+Pj4+ICsl
WUFNTCAxLjIKPj4+PiArLS0tCj4+Pj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVt
YXMvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCMKPj4+PiArJHNjaGVtYTogaHR0cDovL2Rldmlj
ZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+Pj4gKwo+Pj4+ICt0aXRsZTogRGVz
aWduV2FyZSBiYXNlZCBQQ0llIFJDIGNvbnRyb2xsZXIgb24gUm9ja2NoaXAgU29Dcwo+Pj4+ICsK
Pj4+Cj4+Pj4gK21haW50YWluZXJzOgo+Pj4+ICsgIC0gU2hhd24gTGluIDxzaGF3bi5saW5Acm9j
ay1jaGlwcy5jb20+Cj4+Pj4gKyAgLSBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPj4+
Cj4+PiBtYWludGFpbmVyczoKPj4+ICAgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4KPj4+Cj4+PiBBZGQgb25seSBwZW9wbGUgd2l0aCBtYWludGFpbmVyIHJpZ2h0cy4KPj4KPj4g
SSdkIGRpc2FncmVlIG9uIHRoaXMgOy0pCj4gCj4gQWxsIHJvYWRzIGxlYWRzIHRvIEhlaWtvLi4u
IDspCj4gCj4gSXQgdGFrZXMgbG9uZyB0ZXJtIGNvbW1pdG1lbnQuCj4gWWVhciBpbiwgeWVhciBv
dXQuCj4gS2VlcGluZyB5b3Vyc2VsZiB1cCB0byBkYXRlIHdpdGggdGhlIGxhdGVzdCBwY2VpIGRl
dmVsb3BtZW50Lgo+IENvbW11bmljYXRlIGluIEVuZ2xpc2guCj4gQmUgYWJsZSB0byBzdWJtaXQg
cGF0Y2hlcyB3aXRob3V0IGVycm9ycy4uLiA7KQo+IFJldmlldyBvdGhlciBwZW9wbGVzIHBhdGNo
ZXMuCj4gUmVzcG9uZCBpbiBzaG9ydCB0aW1lLgo+IEJ1ZyBmaXhpbmcuCgpDcmlrZXksIGl0J3Mg
b25seSBhIERUIGJpbmRpbmcuLi4gOi8KCj4gSWYgdGhhdCdzIHdoYXQgeW91IHJlYWxseSB3YW50
LCB0aGVuIHlvdSBtdXN0IGluY2x1ZGUgYSBwYXRjaCB0byB0aGlzCj4gc2VyaWUgZm9yIE1BSU5U
QUlORVJTLgoKSSB0aGluayBpZiBCam9ybiBhbmQgTG9yZW56byB3YW50IGEgc3BlY2lmaWNhbGx5
IG5hbWVkIHN1Yi1tYWludGFpbmVyIApmb3IgdGhlIGRyaXZlciBpdHNlbGYsIHdlIGNhbiBsZXQg
dGhlbSBzYXkgc28gcmF0aGVyIHRoYW4gcHJlc3VtZS4KClJvYmluLgoKPiAKPiBDaGVjayBwYXRj
aCB3aXRoOgo+IAo+IC4vc2NyaXB0cy9wYXJzZS1tYWludGFpbmVycy5wbCAtLWlucHV0PU1BSU5U
QUlORVJTIC0tb3V0cHV0PU1BSU5UQUlORVJTCj4gLS1vcmRlcgo+IAo+IE90aGVyd2lzZSBpdCdz
IHNhZmUgdG8gaW5jbHVkZSB0aGF0IHBlcnNvbiBtZW50aW9uZWQgYWJvdmUuCj4gCj4+Cj4+IFRo
ZSBtYWludGFpbmVyIGZvciBpbmRpdmlkdWFsIGRyaXZlcnMgc2hvdWxkIGJlIHRoZSBwZXJzb25z
IHdobyBhcmUKPj4gYWN0dWFsbHkga25vdyB0aGUgaGFyZHdhcmUuIFdlIGhhdmUgaW5kaXZpZHVh
bCBSb2NrY2hpcCBkZXZlbG9wZXJzCj4+IHRha2luZyBjYXJlIG9mIG90aGVyIGRyaXZlcnMgYXMg
d2VsbCBhbHJlYWR5Lgo+Pgo+PiBBbmQgbm9ybWFsbHkgc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5w
bCBzaG91bGQgYWxyZWFkeSBpbmNsdWRlIG1lCj4+IGR1ZSB0byB0aGUgd2lsZGNhcmQgZm9yIHRo
aW5ncyBoYXZpbmcgInJvY2tjaGlwIiBpbiB0aGUgbmFtZS4KPj4KPj4KPj4gSGVpa28KPj4KPj4K
Pj4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
