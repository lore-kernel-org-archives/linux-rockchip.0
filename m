Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEE5AD44D53
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 11:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7BnpjUNVHdmphkiZlDejIRE4Hs2JhEzZzgPIrNenggo=; b=QeIK9G3UxBzVd9zx76h8vYeQ72
	/6AK+tMyeOvUZ3MfFIc5ir4Lx0M+fpIg0eC+crhZ/fkkWpHFvOjHbCYRXkLtsCfyMLDIuOTGsLekn
	IW7JVvQ1bIToiKO/2hCSg2J1YCYsp22F3ihgVz8U8p7JzLSvDhdro3AxywjzZqQix9O/ZbCt4ajKf
	17HKlGZAdjjdeB4mGsyZw13yqqRgOwJcEViqHx7SFMmr45Vw738/q8IpYlUcEfQchzZCBPo8LS9JB
	UWUtBQ6kbRNc8qAwwgyMYaPWJa1eYGd6CyLaVU4TErTG9K13X2So6YUJIPZgbXfU8Z5saiPeCMyyd
	aaenGpSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8eO2-00000002xBU-12M0;
	Wed, 06 Nov 2024 11:39:46 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8dXA-00000002nCF-1zbe;
	Wed, 06 Nov 2024 10:45:10 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1730889906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X8FgUJIVPnDpXU0UCJKNG07n1qA7azNbt7tpYPJJ9xQ=;
	b=xsyXRFSjJuvIbSEjNJMRsLDbna6IqWYVKDqByUClVhHGywFD1sM/9Xjpu9MNIU80TEZukh
	7HdK2aHO5PoYyj7SA04iVGh6LkXj2OK7QGdKwrJE31puGhujKR0ut9nCaJDQEqimpS1609
	Qkhasy/4DzuL8PPbL3kUiZy23y6ZzmNlz61pTuYSYaF3G45ORvEvJ+aCquHi284ZpCN0d3
	YQXZneHi7OP0ShfNFZfhCCuoYAMkz57Tl9eceq21x1HX4rduuCp6GVy2qHGBZZkmkb82xd
	FqhoUyAJFDTD2Wez0IsXX6uWOceKqSHbqV0m/sktblx46vPe/+4AGGBNKnh6qw==
Date: Wed, 06 Nov 2024 11:45:06 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Quentin Schulz
 <quentin.schulz@cherry.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alchark@gmail.com
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add OPP voltage ranges to RK3399
 OP1 SoC dtsi
In-Reply-To: <3252308.5fSG56mABF@diego>
References: <dbee35c002bda99e44f8533623d94f202a60da95.1730881777.git.dsimic@manjaro.org>
 <f6bb3387-4396-45d4-9cb4-594d58095510@cherry.de> <3252308.5fSG56mABF@diego>
Message-ID: <77bc2898bbbd2633d6713b4935bd5ee3@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_024508_825932_5F8A294F 
X-CRM114-Status: GOOD (  21.62  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTExLTA2IDEwOjQxLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBNaXR0d29jaCwgNi4gTm92ZW1iZXIgMjAyNCwgMTA6MzI6MDYgQ0VUIHNjaHJpZWIgUXVl
bnRpbiBTY2h1bHo6Cj4+IE9uIDExLzYvMjQgOTozMyBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+
PiA+IEFkZCBzdXBwb3J0IGZvciB2b2x0YWdlIHJhbmdlcyB0byB0aGUgQ1BVLCBHUFUgYW5kIERN
QyBPUFBzIGRlZmluZWQgaW4gdGhlCj4+ID4gU29DIGR0c2kgZm9yIFJvY2tjaGlwIE9QMSwgYXMg
YSB2YXJpYW50IG9mIHRoZSBSb2NrY2hpcCBSSzMzOTkuICBUaGlzIG1heSBiZQo+PiA+IHVzZWZ1
bCBpZiB0aGVyZSBhcmUgYW55IE9QMS1iYXNlZCBib2FyZHMgd2hvc2UgYXNzb2NpYXRlZCB2b2x0
YWdlIHJlZ3VsYXRvcnMKPj4gPiBhcmUgdW5hYmxlIHRvIGRlbGl2ZXIgdGhlIGV4YWN0IHZvbHRh
Z2VzOyBvdGhlcndpc2UsIGl0IGNhdXNlcyBubyBmdW5jdGlvbmFsCj4+ID4gY2hhbmdlcyB0byB0
aGUgcmVzdWx0aW5nIE9QUCB2b2x0YWdlcyBhdCBydW50aW1lLgo+PiA+Cj4+ID4gVGhlc2UgY2hh
bmdlcyBjYW5ub3QgY2F1c2Ugc3RhYmlsaXR5IGlzc3VlcyBvciBhbnkga2luZCBvZiBkYW1hZ2Us
IGJlY2F1c2UKPj4gPiBpdCdzIHBlcmZlY3RseSBzYWZlIHRvIHVzZSB0aGUgaGlnaGVzdCB2b2x0
YWdlIGZyb20gYW4gT1BQIGdyb3VwIGZvciBlYWNoIE9QUAo+PiA+IGluIHRoZSBzYW1lIGdyb3Vw
LiAgVGhlIG9ubHkgcG9zc2libGUgbmVnYXRpdmUgZWZmZWN0IG9mIHVzaW5nIGhpZ2hlciB2b2x0
YWdlcwo+PiA+IGlzIHdhc3RlZCBlbmVyZ3kgaW4gZm9ybSBvZiBzb21lIGFkZGl0aW9uYWxseSBn
ZW5lcmF0ZWQgaGVhdC4KPj4gPgo+PiA+IFJlcG9ydGVkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVl
bnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgo+PiAKPj4gV2VsbCwgSSBtZXJlbHkgaGlnaGxpZ2h0ZWQg
dGhhdCB0aGUgdm9sdGFnZSB3YXMgZGlmZmVyZW50IG9uIE9QMQo+PiBjb21wYXJlZCB0byBSSzMz
OTkgZm9yIHRoZSA2MDBNSHogT1BQIDopCj4+IAo+PiBTby4uLiBJZiB0aGVyZSdzIE9ORSBTb0Mg
SSdtIHByZXR0eSBzdXJlIGlzIHdvcmtpbmcgYXMgZXhwZWN0ZWQgaXQncyAKPj4gdGhlCj4+IE9Q
MSBmaXR0ZWQgb24gdGhlIEdydSBDaHJvbWVib29rcyB3aXRoIHRoZSBDaHJvbWl1bU9TIGtlcm5l
bCBmb3JrCj4+ICh0aG91Z2ggeWVzLCBJIGJlbGlldmUgYWxsIEdydSBDQiBhcmUgRW9MIHNpbmNl
IEF1Z3VzdCAyMDIzKS4gSW4gdGhlIAo+PiA2LjEKPj4ga2VybmVsIGZvcmssIHRoZXJlJ3MgYWxz
byBubyByYW5nZToKPj4gaHR0cHM6Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL2Nocm9taXVt
b3MvdGhpcmRfcGFydHkva2VybmVsLysvcmVmcy9oZWFkcy9jaHJvbWVvcy02LjEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktb3AxLW9wcC5kdHNpCj4gCj4geWVhaCwgdGhpcyBz
b21laG93IGdvZXMgcXVpdGUgYSBiaXQgaW50byB0aGUgInN0dWZmIHRoYXQgZG9lc24ndCBuZWVk
IAo+IHRvCj4gY2hhbmdlIiBhcmVhLiBPbiB0aGUgb25lIGhhbmQgaXQgZG9lcyBtYWtlICJzb21l
IiBzZW5zZSB0byB1bmlmeSB0aGluZ3MKPiBpZiB3ZSdyZSB1c2luZyByYW5nZXMgZXZlcnl3aGVy
ZSBlbHNlLgoKSSBhZ3JlZSB0aGF0IGl0IG1pZ2h0IGJlIHVubmVlZGVkLCBidXQgdGhlcmUncyBu
byBwb3NzaWJsZSBoYXJtLCBhbmQKdW5pZnlpbmcgdGhlIHRoaW5ncyBtYXkgYmUgc2VlbiBhcyBi
ZW5lZmljaWFsLgoKPiBPbiB0aGUgb3RoZXIgaGFuZCwgYXMgUXVlbnRpbiBub3RlZCBiZWxvdywg
YWxsIGV4aXN0aW5nIE9QMSBkZXZpY2VzIAo+IHNlZW0KPiB0byBydW4ganVzdCBmaW5lLCBhbmQg
dGhlcmUgd29uJ3QgYmUgYW55IG1vcmUgZW50ZXJpbmcgdGhlIGtlcm5lbC4KCkhtbSwgd2h5IGNh
bid0IHdlIGFkZCBtb3JlIE9QMS1iYXNlZCBkZXZpY2VzPyAgQXMgSSBtZW50aW9uZWQgaW4gbXkK
ZWFybGllciByZXNwb25zZSB0byBRdWVudGluLCBteSBwbGFuIGlzIHRvIGltcGxlbWVudCB0aGUg
Ym9hcmQgZHRzCmZvciBPUDEtYmFzZWQgVGlua2VyQm9hcmQgMlMsIHNvIEknZCBsaWtlIHRvIGtu
b3cgaXMgdGhlcmUgc29tZXRoaW5nCnRoYXQgbWlnaHQgcHJldmVudCB0aGF0IGJvYXJkIGR0cyBm
cm9tIGJlY29taW5nIG1lcmdlZD8KCj4gU28gd2hhdCBkbyB3ZSByZWFsaXNpdGljYWxseSBnYWlu
IGhlcmUsIGV4Y2VwdCBoaWRpbmcgZXhpc3RpbmcgCj4gZ2l0LWhpc3RvcnkKPiB1bmRlciBhbm90
aGVyIGxheWVyPwoKU29ycnksIEknbSBub3Qgc3VyZSB3aGF0IHdvdWxkIGJlY29tZSBoaWRkZW4g
YnkgdGhpcyBwYXRjaD8KCj4+IFNvIG5vdCBzdXJlIHdlIG5lZWQgdG8gaGFuZGxlIHRoZW9yZXRp
Y2FsIGNhc2VzIGhlcmUuIFdpbGwgbGV0Cj4+IG1haW50YWluZXJzIGRlY2lkZSBvbiB0aGF0IG9u
ZS4gRldJVywgdGhlcmUgYXJlIHR3byBvdGhlciBPUDEgZGV2aWNlcywKPj4gdGhlIFJvY2tQaTRB
KyBhbmQgUm9ja1BpNEIrIHdoaWNoIGRvIG5vdCBjaGFuZ2UgdGhlIE9QUCBlaXRoZXIuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
