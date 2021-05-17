Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87A4AC43460
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 11:05:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 089D561242
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 11:05:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 089D561242
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eAqmEycKZVJD1AXpDJQNPTbyBsiu8pFXKMNGgWlkPIU=; b=RW/aUi3NRdq0FLX+hYakUXpN0
	5o68PagNVfw7R/wcgG96PH5TY8a5DjFR9SRpWZnOPs5R5NNlqq5ZarvW6ovDPl0Bbzas3P90IGvh6
	9+n238BgvCqbPvc+PXjxMupcIYbmwCJ5fwLGa/NhmlFVRDQYYarqpjNEcVQuOQr4Ul7cFikCjYylD
	DNI6yrKo/M4utJFHcMQSKl4J9xxhjWQteqQNpn3mgB4DCB8xZ5dKtjJJ7otm/4PfKIHrgwYf8Zdig
	AW6Urd6xDA9n9raDfZ/A8+BC5Yj9XKdx2ZcXpAH/9+II/HvUTvyVi4W5wuYJ2ZtuDTRv2IAYmes/x
	1FjsmUSAA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lib3t-00Eg6I-DM; Mon, 17 May 2021 11:05:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lib1j-00EfuB-RJ; Mon, 17 May 2021 11:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=6gVi5hZ7r0PKZmW7WSmt5RxQXxhLgKrUSiadVXOI6ps=; b=ZgR0NsvTdZM/oG5rVMahuuw7KV
 vv7E3DoTE40Zq2JQJZcaZtpglwoEMlfjmD8dr+DDKKjlPcsu6N8NzrRPNXphkOoLB3N8QaScAJgtg
 oRejzzqGfJlnFzslLjmv40TC7rvUA1W0JbBIyDwy/3xvJ5vo1qtFBpEJl4A9PdwWySb+Y+MQeKoiN
 7Y/iB90xrdsdUJ5defy+alqYB9au/00uCwj1DZLkFWfqczn1gnBX8jqx7NysXZ+srYproFpwV5Va9
 luOq9Cb/T2F0TxMrhppvO7tYcR6C9d2yZS7k44eBwFttOAhuHrZQtJXPoefO4W0XlYKzClPpjnedK
 RX82cw/Q==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lib1d-00DhXn-RJ; Mon, 17 May 2021 11:03:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 70B4FAE89;
 Mon, 17 May 2021 11:03:04 +0000 (UTC)
Subject: Re: [PATCH 3/9] arm64: dts: rockchip: Prepare Rockchip RK1808
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20210516230551.12469-1-afaerber@suse.de>
 <20210516230551.12469-4-afaerber@suse.de>
 <f46625ed-4c83-9fd2-52cd-e07a4d93a254@gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <3f5767aa-77c4-6007-adfa-a85bf0a7e9ad@suse.de>
Date: Mon, 17 May 2021 13:03:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <f46625ed-4c83-9fd2-52cd-e07a4d93a254@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_040306_203941_7E887636 
X-CRM114-Status: GOOD (  20.29  )
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

SGkgSm9oYW4sCgpPbiAxNy4wNS4yMSAwMzoyOSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+IFNlbmQg
dGhlIGNvbXBsZXRlIHNlcmllIHRvIGFsbCBtYWludGFpbmVycyBhbmQgbWFpbCBsaXN0cy4KClRo
YXQncyB1bmhlbHBmdWwgLSBhbGwgcGF0Y2hlcyB3ZW50IHRvIGxpbnV4LXJvY2tjaGlwLCBMQUtN
TCBhbmQgTEtNTCwKYW5kIGdldF9tYWludGFpbmVycy5wbCB3YXMgdXNlZC4gVGhlIGNvdmVyIGxl
dHRlciB3YXMgZXhwbGljaXRseSBjb3BpZWQKdG8gRFRNTCBhcyBnZXRfbWFpbnRhaW5lcnMucGwg
ZG9lc24ndCBjYXRjaCBpdC4gWW91J2xsIGZpbmQgdGhlbSBoZXJlOgoKaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyMTA1MTYyMzA1NTEuMTI0NjktMS1hZmFlcmJlckBz
dXNlLmRlLwoKV2hpY2ggbWFpbGluZyBsaXN0IG9yIG1haW50YWluZXIgZG8geW91IHRoaW5rIGFs
bCBzaG91bGQndmUgZ29uZSB0byBpbgphZGRpdGlvbj8gWW91J3JlIG5vdCBsaXN0ZWQgYW55d2hl
cmUgaW4gbGludXgtbmV4dCBNQUlOVEFJTkVSUy4gSWYgeW91CndhbnQgdG8gYmUgQ0MnZWQsIHlv
dSBjYW4gbmljZWx5IGFzayBtZSB0byBmb3IgYSB2MiAoYW5kIGV4cGxhaW5pbmcgd2h5CndvdWxk
IGhlbHAgZm9yIHRoZSBuZXh0IHNlcmllcyksIG9yIHlvdSBjYW4gc2VuZCBwYXRjaGVzIGFnYWlu
c3QKTUFJTlRBSU5FUlMgeW91cnNlbGYuCgpDb3B5aW5nIGFsbCBtYWludGFpbmVycyBhbmQgbGlz
dHMgd291bGQgbGlrZWx5IG5vdCBiZSBhcHByZWNpYXRlZCBieSB0aGUKY29sbGVhZ3VlcyBhbmQg
bWF5IGdldCBtYWlscyBmbGFnZ2VkIGFzIHNwYW0uCgo+ID09PQo+IEhlaWtvJ3Mgc29ydCBydWxl
czoKPiAKPiBjb21wYXRpYmxlCj4gcmVnCj4gaW50ZXJydXB0cwo+IFthbHBoYWJldGljYWxdCj4g
c3RhdHVzIFtpZiBuZWVkZWRdCj4gCj4gPT09Cj4gTXkgaW5jb21wbGV0ZSBsaXN0Ogo+IAo+IEZv
ciBub2RlczoKPiBJZiBleGlzdHMgb24gdG9wOiBtb2RlbCwgY29tcGF0aWJsZSBhbmQgY2hvc2Vu
Lgo+IFNvcnQgdGhpbmdzIHdpdGhvdXQgcmVnIGFscGhhYmV0aWNhbCBmaXJzdCwKPiB0aGVuIHNv
cnQgdGhlIHJlc3QgYnkgcmVnIGFkZHJlc3MuCj4gCj4gSW5zaWRlIG5vZGVzOgo+IElmIGV4aXN0
cyBvbiB0b3A6IGNvbXBhdGlibGUsIHJlZyBhbmQgaW50ZXJydXB0cy4KPiBJbiBhbHBoYWJldGlj
YWwgb3JkZXIgdGhlIHJlcXVpcmVkIHByb3BlcnRpZXMuCj4gVGhlbiBpbiBhbHBoYWJldGljYWwg
b3JkZXIgdGhlIG90aGVyIHByb3BlcnRpZXMuCj4gQW5kIGFzIGxhc3QgdGhpbmdzIHRoYXQgc3Rh
cnQgd2l0aCAnIycgaW4gYWxwaGFiZXRpY2FsIG9yZGVyLgo+IEFkZCBzdGF0dXMgYmVsb3cgYWxs
IG90aGVyIHByb3BlcnRpZXMgZm9yIHNvYyBpbnRlcm5hbCBjb21wb25lbnRzIHdpdGgKPiBhbnkg
Ym9hcmQtc3BlY2lmaWNzLgo+IEtlZXAgYW4gZW1wdHkgbGluZSBiZXR3ZWVuIHByb3BlcnRpZXMg
YW5kIG5vZGVzLgo+IAo+IEV4Y2VwdGlvbnM6Cj4gU29ydCBwaW5jdHJsLTAgYWJvdmUgcGluY3Ry
bC1uYW1lcywgc28gaXQgc3RheXMgaW4gbGluZSB3aXRoIGNsb2NrLW5hbWVzCj4gYW5kIGRtYS1u
YW1lcy4KPiBTb3J0IHNpbXBsZS1hdWRpby1jYXJkLG5hbWUgYWJvdmUgb3RoZXIgc2ltcGxlLWF1
ZGlvLWNhcmQgcHJvcGVydGllcy4KPiBTb3J0IHJlZ3VsYXRvci1uYW1lIGFib3ZlIG90aGVyIHJl
Z3VsYXRvciBwcm9wZXJ0aWVzLgo+IFNvcnQgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgYWJvdmUg
cmVndWxhdG9yLW1heC1taWNyb3ZvbHQuCj4gCj4gPT09CgoKSGVyZSdzIGEgcnVsZSBmb3IgeW91
OiBObyB0b3AtcG9zdGluZyBvbiBrZXJuZWwgbGlzdHMuCgoKPiAKPiBGaXggY29tcGxldGUgZHRz
aSBmb3IgcHJvcGVydHkgc29ydCBvcmRlciEKPiBBZGQgbW9yZSBkcml2ZXJzLiAoY3J1LCBwaW5j
dHJsKQoKLUVUT05FISBJIGRvbid0IHdvcmsgZm9yIFJvY2tjaGlwLCBzbyBkb24ndCBjb21tYW5k
IG1lIHRvIGFkZCBkcml2ZXJzCmZvciB0aGVtIHRoYXQgSSBoYXZlIG5vIHNvdXJjZSBjb2RlIGZv
ciAoY292ZXIgbGV0dGVyKSBub3IgY29tcGxldGUgVFJNLgpZb3UncmUgd2VsY29tZSB0aGF0IEkg
ZGlkIHRoaXMgc2VydmljZSB0byB0aGUga2VybmVsIGNvbW11bml0eSBpbiBteQpzcGFyZSB0aW1l
Li4uIElmIHlvdSBsb29rIHVwIHRoZSBkYXRlIG9mIEhhY2t3ZWVrIDIwLCB5b3UnbGwgZmluZCB0
aGF0Cml0IHRvb2sgbWUgdHdvIG1vbnRocyB0byBnZXQgdGhpcyBwYXRjaHNldCBiaW5kaW5nLWRv
Y3VtZW50ZWQgYW5kCmNsZWFuZWQgdXAgdG8gdGhpcyBwb2ludCwgc28gYnkgZXh0cmFwb2xhdGlv
biBpdCdzIHVucmVhbGlzdGljIHRvIGV4cGVjdAptdWNoIG1vcmUgb2YgbWUgaGVyZSBhbnl0aW1l
IHNvb24uIFJ1ZGVuZXNzIGNlcnRhaW5seSBkb2VzIG5vdCBtb3RpdmF0ZS4KCkhlaWtvIGtub3dz
IG1lIC0gaWYgaGUgaGFzIGFueSBjb21tZW50cywgaGUgc2hvdWxkIGJlIHdlbGwgY2FwYWJsZSBv
Zgp2b2ljaW5nIHRoZW0gaGltc2VsZiBpbmxpbmUuIEkgd2lsbCBub3QgZm9sbG93IG5vbnNlbnNp
Y2FsIHJ1bGVzIHRoYXQKZGl2ZXJnZSBmcm9tIG90aGVyIG1haW5saW5lIGFybS1zb2MgdmVuZG9y
cyAtIHVubGVzcyBJJ3ZlIG1pc3NlZCBzb21lCm5ldyBkaXJlY3RpdmUgZnJvbSBSb2Igb3IgYXJt
LXNvYyBtYWludGFpbmVycyB0aGF0IHdvdWxkIGFwcGx5IHRvIGFsbC4KClRoYW5rcyBmb3Igbm90
aGluZywKCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgK
TWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2
cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
