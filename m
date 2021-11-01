Return-Path: <SRS0=5X13=PU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0A4C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 22:12:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E08B60FE8
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 22:12:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1E08B60FE8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCUKJPkC8ftqbC5Gu3K5o5Sq977fN71pihMZ5pT00WE=; b=0t1RTwt6wexnYb
	4iU3qycJOU7jUq0wG77qtlJyHmoCcxOvGHqasXw52Osb1q6YumOaA45xoFeCTSP4jkvPpZfnGW1Ss
	FRLu5KhejCGT31LvFzRAStGpZTb4jVAVqEXXJxtp6FFxVsRi/x5hL1HTSjAUunQ5JERF7jQJLCydb
	LfLkNrGhswKwSLFGE0xmmorx0hXBz8t/7ayppFdbXXPJVRXCXiwCXy8JVbl3bLgQsZUXFDkbTfaBT
	8P0L8xNR9+pp72PA6Gl04SshWYMc6pVail1+tJUcb+C6fWNNC+p1ovenDzEWDyEKFB2IKetxgXeui
	C8Qr16w4CUZJ95X3BnFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhfXL-00HONl-Pd; Mon, 01 Nov 2021 22:12:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhfX8-00HOLf-VW; Mon, 01 Nov 2021 22:12:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98688D6E;
 Mon,  1 Nov 2021 15:12:01 -0700 (PDT)
Received: from [10.57.80.217] (unknown [10.57.80.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C65D03F5A1;
 Mon,  1 Nov 2021 15:11:59 -0700 (PDT)
Message-ID: <3e42ae24-8db4-fb11-edf2-a25bca47ecae@arm.com>
Date: Mon, 1 Nov 2021 22:11:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] clk: composite: Also consider .determine_rate for rate +
 mux composites
Content-Language: en-GB
From: Robin Murphy <robin.murphy@arm.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: sboyd@kernel.org, heiko@sntech.de, knaerzche@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 "kernelci@groups.io" <kernelci@groups.io>,
 Collabora Kernel ML <kernel@collabora.com>, Chen-Yu Tsai <wens@csie.org>
References: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
 <20211015120559.3515645-1-martin.blumenstingl@googlemail.com>
 <04a58d50-634b-fa20-95b4-eb6831f77e85@collabora.com>
 <CAFBinCAEt9_EfLYWZEzTBK6iN97+Wacho7pNd2LYDPX3+goMzg@mail.gmail.com>
 <b6468523-a730-6a44-f4b9-3fd5b9ea2354@arm.com>
In-Reply-To: <b6468523-a730-6a44-f4b9-3fd5b9ea2354@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_151203_152695_16607CB5 
X-CRM114-Status: GOOD (  29.32  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMS0xMS0wMSAyMTo1OSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjEtMTEtMDEg
MjA6NTgsIE1hcnRpbiBCbHVtZW5zdGluZ2wgd3JvdGU6Cj4+IEhpIEd1aWxsYXVtZSwKPj4KPj4g
T24gTW9uLCBOb3YgMSwgMjAyMSBhdCA5OjE5IFBNIEd1aWxsYXVtZSBUdWNrZXIKPj4gPGd1aWxs
YXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gSGkgTWFydGluLAo+Pj4K
Pj4+IFBsZWFzZSBzZWUgdGhlIGJpc2VjdGlvbiByZXBvcnQgYmVsb3cgYWJvdXQgYSBib290IGZh
aWx1cmUgb24KPj4+IHJrMzMyOC1yb2NrNjQuCj4+Pgo+Pj4gUmVwb3J0cyBhcmVuJ3QgYXV0b21h
dGljYWxseSBzZW50IHRvIHRoZSBwdWJsaWMgd2hpbGUgd2UncmUKPj4+IHRyaWFsaW5nIG5ldyBi
aXNlY3Rpb24gZmVhdHVyZXMgb24ga2VybmVsY2kub3JnIGJ1dCB0aGlzIG9uZQo+Pj4gbG9va3Mg
dmFsaWQuCj4+Pgo+Pj4gU29tZSBtb3JlIGRldGFpbHMgY2FuIGJlIGZvdW5kIGhlcmU6Cj4+Pgo+
Pj4gwqDCoCBodHRwczovL2xpbnV4Lmtlcm5lbGNpLm9yZy90ZXN0L2Nhc2UvaWQvNjE3ZjExZjVj
MTU3YjY2NmZiMzM1OGU2Lwo+Pj4KPj4+IEhlcmUncyB3aGF0IGFwcGVhcnMgdG8gYmUgdGhlIGNh
dXNlIG9mIHRoZSBwcm9ibGVtOgo+Pj4KPj4+IFvCoMKgwqAgMC4wMzM0NjVdIENQVTogQ1BVcyBz
dGFydGVkIGluIGluY29uc2lzdGVudCBtb2Rlcwo+Pj4gW8KgwqDCoCAwLjAzMzU1N10gVW5leHBl
Y3RlZCBrZXJuZWwgQlJLIGV4Y2VwdGlvbiBhdCBFTDEKPj4+IFvCoMKgwqAgMC4wMzQ0MzJdIElu
dGVybmFsIGVycm9yOiBCUksgaGFuZGxlcjogZjIwMDA4MDAgWyMxXSBQUkVFTVBUIFNNUAo+IAo+
IFdoYXQncyB3ZWlyZCBpcyB0aGF0IHRoYXQncyByZWFsbHkganVzdCB0aGUgc2FtZSBXQVJOIHRo
YXQncyBhbHNvIAo+IHByZXNlbnQgaW4gJ3N1Y2Nlc3NmdWwnIGxvZ3MsIGV4Y2VwdCBmb3Igc29t
ZSByZWFzb24gaXQncyBiZWhhdmluZyBhcyBpZiAKPiB0aGUgYnJlYWsgaGFuZGxlciBoYXNuJ3Qg
YmVlbiByZWdpc3RlcmVkLCBkZXNwaXRlIHRoYXQgaGF2aW5nIGhhcHBlbmVkIAo+IGxvbmcgYmVm
b3JlIHdlIGdvdCB0byBzbXBfaW5pdCgpLiBBdCB0aGlzIHBvaW50IHdlJ3JlIGFsc28gc3RpbGwg
c29tZSAKPiB3YXkgb2ZmIGdldHRpbmcgYXMgZmFyIGFzIGluaXRjYWxscywgc28gSSdtIG5vdCBz
dXJlIHRoYXQgdGhlIGNsb2NrIAo+IGRyaXZlciB3b3VsZCBiZSBpbiB0aGUgcGljdHVyZSBhdCBh
bGwgeWV0Lgo+IAo+IElzIHRoZSBiaXNlY3Rpb24gcmVwZWF0YWJsZSwgb3IgaXMgdGhpcyBqdXN0
IHJhbmRvbSBmbGFraW5lc3MgbWlzbGVhZGluZyAKPiB0aGluZ3M/IEknZCBhbHNvIG5vdGUgdGhh
dCB5b3UgbmVlZCBwcmV0dHkgaG9ycmlmaWNhbGx5IGJyb2tlbiBmaXJtd2FyZSAKPiB0byBoaXQg
dGhhdCB3YXJuaW5nIGluIHRoZSBmaXJzdCBwbGFjZSwgd2hpY2ggbWlnaHQgY2FzdCBhIGJpdCBv
ZiBkb3VidCAKPiBvdmVyIHRoZSB0cnVzdHdvcnRoaW5lc3Mgb2YgdGhhdCBib2FyZCBhbHRvZ2V0
aGVyLgoKQWgsIG9uIGNsb3NlciBpbnNwZWN0aW9uIGl0IG1pZ2h0IGJlIGVudGlyZWx5IHJlcGVh
dGFibGUgZm9yIGEgZ2l2ZW4gCmtlcm5lbCBidWlsZCwgYnV0IHdpdGggdGhlIGJlaGF2aW91ciBi
ZWluZyB2ZXJ5IHNlbnNpdGl2ZSB0byBjb2RlL2RhdGEgCnNlZ21lbnQgbGF5b3V0IGNoYW5nZXMu
Li4KCi4uLgoyMzo0NDoyNC40NTc5MTcgIEZpbGVuYW1lICcxMDA3MDYwL3RmdHAtZGVwbG95LWR2
ZG55ZGN3L2tlcm5lbC9JbWFnZScuCjIzOjQ0OjI0LjQ2MDE3OCAgTG9hZCBhZGRyZXNzOiAweDIw
MDAwMDAKLi4uCjIzOjQ0OjI3LjE4MDk2MiAgQnl0ZXMgdHJhbnNmZXJyZWQgPSAzMzY4MTkyMCAo
MjAxZjIwMCBoZXgpCi4uLgoyMzo0NDoyNy4yODgxMzUgIEZpbGVuYW1lIAonMTAwNzA2MC90ZnRw
LWRlcGxveS1kdmRueWRjdy9yYW1kaXNrL3JhbWRpc2suY3Bpby5nei51Ym9vdCcuCjIzOjQ0OjI3
LjI4ODQ2NSAgTG9hZCBhZGRyZXNzOiAweDQwMDAwMDAKLi4uCgpZZWFoLCB0aGF0J2xsIGJlIGEg
cHJvYmxlbSA7KQoKQ2hlZXJzLApSb2Jpbi4KCj4+PiBUaGVyZSBkb2Vzbid0IGFwcGVhciB0byBi
ZSBhbnkgb3RoZXIgcGxhdGZvcm0gaW4gS2VybmVsQ0kgc2hvd2luZwo+Pj4gdGhlIHNhbWUgaXNz
dWUuCj4+IFRoYXQncyBhIHN0cmFuZ2UgZXJyb3IgZm9yIHRoZSBjaGFuZ2VzIGZyb20gbXkgcGF0
Y2guCj4+IEF0IGZpcnN0IGdsYW5jZSBJIGRvbid0IHNlZSBhbnkgcmVsYXRpb24gdG8gY2xrLWNv
bXBvc2l0ZSBjb2RlOgo+PiAtIHRoZSBjYWxsIHRyYWNlIGRvZXNuJ3QgaGF2ZSBhbnkgcmVmZXJl
bmNlcyB0byBDQ0Ygb3Igcm9ja2NoaXAgY2xvY2sgCj4+IGRyaXZlcnMKPj4gLSBjbGstcmszMzI4
LmMgdXNlcyBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstY3B1LmMgdG8gcmVnaXN0ZXIgdGhlIENQ
VQo+PiBjbG9jayB3aGljaCBkb2VzIG5vdCB1c2UgY2xrLWNvbXBvc2l0ZQo+Pgo+PiBDaGVuLVl1
IGhhcyB0ZXN0ZWQgdGhpcyBwYXRjaCAocGx1cyBbMF0pIG9uIFJLMzM5OSBhbmQgZGlkbid0IG9i
c2VydmUKPj4gYW55IHByb2JsZW1zLgo+PiBTbyBtYXliZSB0aGlzIGlzIGEgUkszMzI4IHNwZWNp
ZmljIGlzc3VlPwo+PiBBbnl3YXlzLCBJIGFtIGludGVyZXN0ZWQgaW4gZml4aW5nIHRoaXMgaXNz
dWUgYmVjYXVzZSByZXZlcnRpbmcgaXMKPj4gYmVjb21pbmcgbW9yZSBhbmQgbW9yZSBjb21wbGV4
IChzaW5jZSBJIHRoaW5rIHdlJ3JlIGF0IGVpZ2h0IGNvbW1pdHMKPj4gd2hpY2ggd291bGQgbmVl
ZCB0byBiZSByZXZlcnRlZCBpbiB0b3RhbCkuCj4+Cj4+PiBQbGVhc2UgbGV0IHVzIGtub3cgaWYg
eW91IG5lZWQgaGVscCBkZWJ1Z2dpbmcgdGhlIGlzc3VlIG9yIGlmIHlvdQo+Pj4gaGF2ZSBhIGZp
eCB0byB0cnkuCj4+IENvdWxkIHlvdSBwbGVhc2UgdHJ5IFswXSB3aGljaCBpcyB0aGUgc2Vjb25k
IHBhdGNoIGluIHRoZSBzZXJpZXMgd2hpY2gKPj4gZmluYWxseSBtYWRlIGl0IHVwc3RyZWFtLgo+
PiBUaGlzIHNlY29uZCBwYXRjaCBpcyBub3QgaW4gNS4xNSBiZWNhdXNlIEkgYmVsaWV2ZWQgdGhh
dCBpdCdzIG9ubHkKPj4gc29tZXRoaW5nIHRvIG1ha2UgdGhlIGNvZGUgaW4gY2xrLWNvbXBvc2l0
ZS5jIG1vcmUgZnV0dXJlLXByb29mLiBJdCdzCj4+IG5vdCBhIGNvbmRpdGlvbiB0aGF0IEkgYW0g
YXdhcmUgb2YuCj4+Cj4+IEkgZG9uJ3QgaGF2ZSBhbnkgUm9ja2NoaXAgYm9hcmRzIG15c2VsZi4K
Pj4gU28gSSBhbSB0aGFua2Z1bCBmb3IgYW55IGhlbHAgSSBjYW4gZ2V0Lgo+Pgo+Pgo+PiBCZXN0
IHJlZ2FyZHMsCj4+IE1hcnRpbgo+Pgo+Pgo+PiBbMF0gCj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Nsay9saW51eC5naXQvY29tbWl0Lz9oPWNsay1u
ZXh0JmlkPTY1OTQ5ODhmZDYyNWZmMGQ5YThmOTBmMTc4OGUxNjE4NTM1OGEzZTYgCj4+Cj4+Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IExpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKPj4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
