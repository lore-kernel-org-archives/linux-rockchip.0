Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3231CE674B1
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Nov 2024 07:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zi8MZ6jCmyOZnHAqnjkFfF4yHFbrDRd7T/uCaEW2h0k=; b=LVkMkZ/lbPcMzq
	PNSTKL+MANWqgTaEOpXJT1d3dRLby9bPUomOPVbnt97Mw2lCK6W76Ezh8vtMfGg0574l/AgsnIAMr
	Xx1nR5OGgLDZso6Qhsnfs7/bM9P7i3GSYWbPnQjzvDAQnzgUybQmSBGNifDEmPlqBZBeS1APlQCQw
	kh1wo+8lZan2DX3Ye39SCcQD0waZ7pkiHOsAmumhnyl0hyhohaseFVDQIxux1/609VzaoxamcKysW
	STIKJl6MnjvF2ojgza57p9ZgbB94epKTNXzRVKRu4hwWtDY5J//F8StA2LAPGV/i7tt4SxYn6L50T
	0YMPgZK2oiSC9nQ8EpRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6mZO-00000006BsT-2yP1;
	Fri, 01 Nov 2024 07:59:46 +0000
Received: from mail-m606.netease.com ([210.79.60.6])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6mZ8-00000006Bnu-3InN;
	Fri, 01 Nov 2024 07:59:33 +0000
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 183987c6;
	Fri, 1 Nov 2024 15:59:18 +0800 (GMT+08:00)
Message-ID: <eb96b240-f3ee-4057-b016-c746d48cc1b4@rock-chips.com>
Date: Fri, 1 Nov 2024 15:59:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card
 detect
To: Ulf Hansson <ulf.hansson@linaro.org>, Robin Murphy <robin.murphy@arm.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Jaehoon Chung <jh80.chung@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org
References: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
 <4920950.GXAFRqVoOG@diego>
 <CAPDyKFosf_+m9j8YgHa-PsC2SV8+Aou2O6bTbMfzGBpQ2sY8YA@mail.gmail.com>
 <69d06c04-cc8c-4435-a622-33d5dcd1fa24@arm.com>
 <CAPDyKFoU=AoQqXov_-qFo8xjEbiDAk9mtTtCR9HAYz_gg-bnzQ@mail.gmail.com>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <CAPDyKFoU=AoQqXov_-qFo8xjEbiDAk9mtTtCR9HAYz_gg-bnzQ@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkwaQlYfQk8YQklLSh5PTUhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a92e6bc62c103afkunm183987c6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRQ6Hzo5LjIjTE9KSUhIFxRW
	GkNPCz5VSlVKTEhLT09MQk5CTE5JVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFITkJMNwY+
DKIM-Signature: a=rsa-sha256;
	b=Ns2PAmM3r3IVo0z1BD9bWzhY49ezgnto/lCiZiqHcWvBOHPb/A16zDxfwiJa5XmD9Kq+7evbQpnVKcBtIO8uqQFV6WquR4xpX94n/2J949wt9rM7N+BKjxsdqrHzVtftHH5tHj1nP850u2tkMsiaKiyObzVPr06Dc1mNbEPFe5Y=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=UUxatgIjseNyDqt3FqqOob4pJSJxFWPR3CwFmtzwsvQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_005931_461890_DB2D3FE4 
X-CRM114-Status: GOOD (  24.54  )
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

SGkgVWxmLCBSb2JpbiwgSGVpa28sCgpPbiAyMDI0LzEwLzcgMTc6NDksIFVsZiBIYW5zc29uIHdy
b3RlOgo+IE9uIEZyaSwgNCBPY3QgMjAyNCBhdCAxOTozNCwgUm9iaW4gTXVycGh5IDxyb2Jpbi5t
dXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4+IE9uIDAyLzEwLzIwMjQgMTA6NTUgcG0sIFVsZiBIYW5z
c29uIHdyb3RlOgo+Pj4gT24gU2F0LCAxNCBTZXB0IDIwMjQgYXQgMTM6NTIsIEhlaWtvIFN0w7xi
bmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Pj4+IEFtIERvbm5lcnN0YWcsIDEyLiBTZXB0
ZW1iZXIgMjAyNCwgMDk6MjY6MTQgQ0VTVCBzY2hyaWViIEtldmVyIFlhbmc6Cj4+Pj4+IEluIG9y
ZGVyIHRvIG1ha2UgdGhlIFNEIGNhcmQgaG90cGx1ZyB3b3JraW5nIHdlIG5lZWQgdGhlIGNhcmQg
ZGV0ZWN0Cj4+Pj4+IGZ1bmN0aW9uIGxvZ2ljIGluc2lkZSB0aGUgY29udHJvbGxlciBhbHdheXMg
d29ya2luZy4gVGhlIHJ1bnRpbWUgUE0gd2lsbAo+Pj4+PiBnYXRlIHRoZSBjbG9jayBhbmQgdGhl
IHBvd2VyIGRvbWFpbiwgd2hpY2ggc3RvcHMgY29udHJvbGxlciB3b3JraW5nIHdoZW4KPj4+Pj4g
bm8gZGF0YSB0cmFuc2ZlciBoYXBwZW4uCj4+Pj4+Cj4+Pj4+IFNvIGxldHMgc2tpcCBlbmFibGUg
cnVudGltZSBQTSB3aGVuIHRoZSBjYXJkIG5lZWRzIHRvIGRldGVjdGVkIGJ5IHRoZQo+Pj4+PiBj
b250cm9sbGVyIGFuZCB0aGUgY2FyZCBpcyByZW1vdmFibGUuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1v
ZmYtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4gU28gZm9y
IHRoZSBjaGFuZ2UgaXRzZWxmIHRoaXMgbG9va3MgZ29vZCwgaS5lLiBpdCBmaXhlcyBhbiBpc3N1
ZSBmb3IgYmFvcmRzIHJlbHlpbmcKPj4+PiBvbiB0aGUgb24tY2hpcC1jYXJkLWRldGVjdC4KPj4+
Pgo+Pj4+Cj4+Pj4gQnV0IGZvciBib2FyZHMgZG9pbmcgdGhhdCwgdGhlIGNvbnRyb2xsZXIgd2ls
bCBiZSBydW5uaW5nIF9hbGwgdGhlIHRpbWVfCj4+Pj4gZXZlbiBpZiB0aGVyZSBpcyBuZXZlciBh
bnkgY2FyZCBpbnNlcnRlZC4KPj4+Pgo+Pj4+IFNvIHJlbHlpbmcgb24gdGhlIG9uLXNvYyBjYXJk
LWRldGVjdCB3aWxsIGVmZmVjdGl2ZWx5IGluY3JlYXNlIHRoZSBwb3dlci0KPj4+PiBjb25zdW1w
dGlvbiBvZiB0aGUgYm9hcmQgLSBldmVuIGl0IGl0J2xsIG5ldmVyIHVzZSBhbnkgc2QtY2FyZD8K
WWVzLCB0aGlzIGlzIGhvdyB0aGUgY29udHJvbGxlciB3b3JrcywgdGhlIGNvbnRyb2xsZXIgbmVl
ZHMgdGhlIGNsb2NrIHRvIAptYWtlIHRoZSBkZXRlY3QgbG9naWMgd29yay4KSWYgd2UgdXNlIGdw
aW8gdG8gaW1wbGVtZW50IHRoaXMgY2FyZC1kZXRlY3QsIGl0IHdvcmtzIGJlY2F1c2UgdGhlIEdQ
SU8gCmNvbnRyb2xsZXIvY2xvY2sga2VlcHMgd29ya2luZy4KRm9yIHRoZSBkd19tbWMgZHJpdmVy
IHN1cHBvcnQsIHdlIHNob3VsZCBzdXBwb3J0IGJvdGgga2luZCBvZiBpbXBsZW1lbnQgCmR1ZSB0
byB0aGUgY29udHJvbGxlciBoYXMgdGhpcyBmdW5jdGlvbiwKc28gdGhpcyBwYXRjaCBpcyBmb3Ig
dGhlIGNhcmQtZGV0ZWN0IGltcGxlbWVudCBieSB0aGUgZHdtbWMgY29udHJvbGxlciwgCnRoZSBj
b250cm9sbGVyIG5lZWQgdG8ga2VlcCB3b3JraW5nCi0gb25seSBmb3Igc2QtY2FyZCAoc28gbm90
IGluY2x1ZGUgdGhlICJub24tcmVtb3ZhYmxlICIgZGV2aWNlKQotIGFsc28gbm90IGRpc2FibGUg
cnBtIHdoZW4gImNkLWdwaW9zIiBpcyB1c2VkLgoKRm9yIHRoZSBwb3dlciBjb25zdW1wdGlvbiwg
SSBiZWxpZXZlIGl0IHdpbGwgaW5jcmVhc2UsIGJ1dCB2ZXJ5IHZlcnkgCnNtYWxsLCB3ZSBjYW4n
dCBldmVuIG1vbml0b3IgdGhlIGNoYW5nZQppZiB3ZSB1c2UgdGhlIG5vcm1hbCBlcXVpcG1lbnQu
IFRoZSBkcml2ZXIgc2hvdWxkIG1ha2UgZnVuY3Rpb24gd29ya3MgCmZpcnN0LCBhbmQgdGhlbiBj
b25zaWRlciB0aGUgcG93ZXIuCgpUaGlzIHBhdGNoIGlzIHRvIG1ha2UgdGhlIGR3bW1jIGZ1bmN0
aW9uIHdvcmtzIHdpdGhvdXQgZ3BpbydzIGhlbHAgaW4gCmR3bW1jIGRyaXZlciwKIMKgYW5kIGhh
cyBubyBhZmZlY3QgdG8gdGhlIGdwaW8gb3B0aW9uLCBwZW9wbGUgc3RpbGwgYWJsZSB0byB1c2Ug
Z3BpbyB0byAKZG8gdGhlIGNkLgoKClRoYW5rcywKLSBLZXZlcgo+Pj4gR29vZCBwb2ludCEgQSBi
ZXR0ZXIgb3B0aW9uIGlzIHRvIHVzZSBhIHBvbGxpbmcgYmFzZWQgbWVjaGFuaXNtIC0gYW5kCj4+
PiB3ZSBoYXZlIE1NQ19DQVBfTkVFRFNfUE9MTCBmb3IgZXhhY3RseSB0aGF0Lgo+Pj4KPj4+IE1v
cmVvdmVyLCBvbiBEVCBiYXNlZCBwbGF0Zm9ybXMgb25lIGNhbiBldmVuIHVzZSB0aGUgImJyb2tl
bi1jZCIKPj4+IHByb3BlcnR5IHRvIGluZGljYXRlIHRoaXMuCj4+IEV4Y2VwdCB0aGF0IGdvZXMg
ZnVydGhlciB0aGFuIGlzIG5lZWRlZCBoZXJlLCBzaW5jZSBpdCB3b3VsZCBmYWxsIGJhY2sKPj4g
ZW50aXJlbHkgdG8gc29mdHdhcmUtYmFzZWQgcG9sbGluZyBmb3IgY2FyZCBwcmVzZW5jZS4gSW4g
dGhpcyBjYXNlIHRoZQo+PiBDRCBmdW5jdGlvbiBpcyBub3QgYnJva2VuIGluIHRlcm1zIG9mIGFj
dHVhbGx5IGRldGVjdGluZyBhIGNhcmQsIGl0IGp1c3QKPj4gZG9lc24ndCB3b3JrIHRvIHdha2Ug
dGhlIGNvbnRyb2xsZXIgdXAgZnJvbSBzdXNwZW5kIGJlY2F1c2UgaXQgY2FuJ3QKPj4gZmlyZSBp
dHMgb3duIGludGVycnVwdCB3aGlsZSBwb3dlcmVkIG9mZi4gSW4gcHJpbmNpcGxlIGFsbCB3ZSBz
aG91bGQKPj4gcmVxdWlyZSBoZXJlIGlzIHRvIHBlcmlvZGljYWxseSByZXN1bWUvc3VzcGVuZCB0
aGUgZGV2aWNlLCB0byBwcm92aWRlIGEKPj4gd2luZG93IGZvciB0aGUgaW50ZXJydXB0IHRvIHdv
cmsgYW5kIG5vcm1hbCBvcGVyYXRpb24gdG8gdGFrZSBvdmVyIGlmCj4+IGFwcHJvcHJpYXRlLgo+
IFdlbGwsIEkgd291bGQgbm90IG9iamVjdCBpZiAiYnJva2VuLWNkIiB3b3VsZCBiZSB1c2VkIGZv
ciB0aGlzIGNhc2UKPiB0b28uIEkgYmVsaWV2ZSBpdCBhbHJlYWR5IGlzLgo+Cj4gQW5vdGhlciBv
cHRpb24gd291bGQgYmUgdG8gbG9vayBhdCBhIGNvbXBhdGlibGUgc3RyaW5nIGFuZCBzZXQKPiBN
TUNfQ0FQX05FRURTX1BPTEwgYmFzZWQgb24gdGhhdC4KPgo+PiBPZiBjb3Vyc2UgdGhlIHJlYWxs
eSBjbGV2ZXIgd2F5IHdvdWxkIGJlIGZvciBzdXNwZW5kIHRvIHN3aXRjaCB0aGUgcGluCj4+IGlu
dG8gR1BJTyBtb2RlLCBhbmQgc2V0IHRoZSBHUElPIGludGVycnVwdCBhcyBhIHdha2V1cCB0byB0
cmlnZ2VyIHJlc3VtZQo+PiBhbmQgc3dpdGNoIGl0IGJhY2sgYWdhaW4sIGJ1dCBwZXJoYXBzIHRo
YXQncyBhIGJpdCB0cmlja3kgd2l0aG91dAo+PiBleHBsaWNpdCBwaW5jdHJsIHN0YXRlcyBpbiB0
aGUgRFQgOi8KPiBSaWdodC4gQSBkZWRpY2F0ZWQgR1BJTyBwaW4gZm9yIHRoZSBjYXJkIGRldGVj
dCBpcyBjZXJ0YWlubHkgdGhlCj4gcHJlZmVycmVkIG1ldGhvZCwgaWYgeW91IGNhcmUgYWJvdXQg
bm90IHdhc3RpbmcgcG93ZXIuCj4KPiBLaW5kIHJlZ2FyZHMKPiBVZmZlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
