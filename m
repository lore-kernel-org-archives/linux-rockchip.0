Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B335AD232C7
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 00:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=45KvbT6pA8BDckfmhYM3AELfZK/At86Uy9EK7ojO7zU=; b=BBlPvk1Smff5EOyTB6dGApQmc3
	1PGpavzIXCtIkTknkcebUNzuO4fSDzj7WDCCOGIig4Oa+pnu2GcfO6wUdBROW/0zLpsBQpEyi5HKd
	OSedPLTyhxJOCOCRzZR2sjQLPuSvpryRmLzKLQwwYZ3Q20Mer26wscqxss5Y5qo9TMDZgM+418sqI
	AIZD/FisvHzWVAWIyxGVllXuskzHJORwfzEn0Hu/nh3vYfDIfe9kbixYokldYBzHtfci20VI+JjWe
	nJNeLnB4mmU8ma+N3ELttsd0N5EZC1Aak2MkHLoaa7ARbhjoqASFx0p5K8Z6SKByTAP6jFdrG6iR+
	zF4jnQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve0DY-000000011iS-293A;
	Fri, 09 Jan 2026 00:19:04 +0000
Received: from out-177.mta0.migadu.com ([91.218.175.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve0DU-000000011h9-2VeW
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 00:19:03 +0000
Date: Fri, 9 Jan 2026 02:18:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kazlauskas.me;
	s=key1; t=1767917916;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nCxWzD7XefMnb2KSnz2TCVaRls3T3YnJmZsjG7yIB3U=;
	b=Y5i/RX0WIPn/iBakC/xTTpT9UAuFtMrYCtZgMw1wIMBWd0maAFWPWyn/HU9GZ6hORNyFCD
	YhtZLX45zZlDx2krytVfyJ+C2WbLpJzUbd6RfJEvlckX7MxVOjdxTfkEaYTU+6Bcr43Evo
	9fMuINMxmqxMJEmMEd7Jq0oKQihpodI=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Simonas Kazlauskas <linux-rockchip@kazlauskas.me>
To: Matteo Martelli <matteomartelli3@gmail.com>, 
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] rk3328: request that SoC resets use the first reset
Message-ID: <keilew4ubsqvz3knh6vfegsf5i7g6zssuyvrt4bxdip7ppv7rf@32eqp2z4ogsf>
References: <66qwutykozwkh6veu6ojbmwp4glmefrvkncyu6gytdpy76kj2k@fpgggo4wczpt>
 <017728fd7496ea3f4a632f1e3f4e768c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <017728fd7496ea3f4a632f1e3f4e768c@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_161901_056294_79E963BF 
X-CRM114-Status: GOOD (  25.80  )
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

TWF0dGVvIE1hcnRlbGxpIHdyb3RlOgo+Cj5IaSBTaW1vbmFzLAo+Cj5PbiBUaHUsIDI2IERlYyAy
MDI0IDAwOjIzOjEzICswMjAwLCBTaW1vbmFzIEthemxhdXNrYXMgPGxpbnV4LXJvY2tjaGlwQGth
emxhdXNrYXMubWU+IHdyb3RlOgo+PiBPbiBteSB0ZXN0IGJvYXJkIChSYWR4YSBSb2NrUGlFKS9z
ZXR1cCB0aGUgc2Vjb25kIHJlc2V0IGRvZXMgbm90IGFwcGVhcgo+PiB0byBiZSB3b3JraW5nIGF0
IGFsbCAtIHJlcXVlc3Rpbmcgc2Vjb25kIHJlc2V0IGV2ZW4gYXMgZWFybHkgYXMgaW5zaWRlCj4+
IHRoZSBVLUJvb3Qgd2lsbCBlbnRpcmVseSBoYW5nIHRoZSBDUFUgd2l0aCB0aGUgb25seSB3YXkg
dG8gcmVjb3ZlciBmcm9tCj4+IGl0IGJlaW5nIHRvIHB1bGwgcGh5c2ljYWwgUlNUIHBpbiB0byBn
cm91bmQgb3IgdG8gcG93ZXIgY3ljbGUgdGhlCj4+IGRldmljZS4gV2hpbGUgdGhlcmUgbWF5IGJl
IHdheXMgdG8gc2V0IHVwIHRoZSBzZWNvbmQgcmVzZXQgc3VjaCB0aGF0IGl0Cj4+IHdvdWxkIHdv
cmsgY29ycmVjdGx5LCBpdCBpcyBwcmV0dHkgY2xlYXIgdG8gbWUgdGhhdCBhdCBsZWFzdCBMaW51
eAo+PiBkb2Vzbid0IGRvIHRoYXQgY3VycmVudGx5Lgo+Pgo+PiBTT0MgcmVzZXQgc291cmNlcyAo
d2F0Y2hkb2cgdGltZXIgaW4gcGFydGljdWxhcikgZGVmYXVsdHMgdG8gdXNpbmcgdGhlCj4+IHNl
Y29uZCB0eXBlIG9mIHJlc2V0LCBzbyBhbnkgYXR0ZW1wdHMgdG8gdXNlIHRoZSBmZWF0dXJlIG9u
IG15IGJvYXJkIGFyZQo+PiB1bnN1Y2Nlc3NmdWwuIEluc3RlYWQgb2YgdGhlIFNvQyByZXNldCwg
YSBoYW5nIG9jY3Vycy4KPgo+SSBoYXZlIGVuY291bnRlcmVkIGV4YWN0bHkgdGhlIHNhbWUgaXNz
dWUgb24gbXkgcm9jazY0IGJvYXJkLiBUaGUgU29DIGhhbmdzCj53aGVuIHRoZSB3YXRjaGRvZyB0
cmllcyB0byByZXNldCB0aGUgYm9hcmQuIEkgaGF2ZW4ndCB0ZXN0ZWQgeW91ciBwYXRjaCAoeWV0
KQo+YnV0IEkgZm9sbG93ZWQgdGhlIGV4YW1wbGUgaW4geW91ciBjb3ZlciBsZXR0ZXIgYW5kIGJ5
IHNldHRpbmcgdGhlIGZpcnN0IGdsb2JhbAo+cmVzZXQgaW4gdS1ib290IHRoZSB3YXRjaGRvZyBj
YW4gcmVzZXQgdGhlIGJvYXJkIHByb3Blcmx5Ogo+Cj5tdyBmZjQ0MDA5MCAzYTk4YzA2NCAgICAj
IENSVV9HTEJfQ05UX1RIOiBzZXQgZmlyc3QgZ2xvYmFsIHJlc2V0IGZvciBXRFQgYW5kIFRTQURD
Cj5tdyBmZjFhMDAwMCBiICAgICAgICAgICAjIGVuYWJsZSB3YXRjaGRvZwo+Cj5UaGlzIHJlc2V0
cyB0aGUgYm9hcmQuIFRoZW4gYnkgd3JpdGluZyBiYWNrIHRvIENSVV9HTEJfQ05UX1RIIHRvIGl0
cyBkZWZhdWx0IHZhbHVlCj4zYTk4MDA2NCAoc28gc2Vjb25kIGdsb2JhbCByZXNldCksIGFuZCBl
bmFibGluZyB0aGUgd2F0Y2hkb2cgdGhlIGJvYXJkIGRvZXMgbm90Cj5yZXNldCBidXQgaXQgaGFu
Z3MgaW5zdGVhZC4KPgo+Pgo+PiBUaGlzIGNoYW5nZSBtYWtlcyBhIHJlcXVlc3QgdGhhdCBTb0Mg
cmVzZXQgc291cmNlcyB1c2UgdGhlIGZpcnN0IHJlc2V0Owo+PiB0aGUgc2FtZSBvbmUgYXMgdGhl
IHJlZ3VsYXIgcmVzZXQgdGhhdCBvY2N1cnMgYXMgcGFydCBvZiBhIHJlZ3VsYXIKPj4gcmVib290
Lgo+Pgo+PiBDb250ZXh0OiBUaGUgc2Vjb25kIHR5cGUgb2YgcmVzZXQgaXMgc3VwcG9zZWQgdG8g
cHJlc2VydmUgR1BJTyBhbmQgR1JGCj4+IHN0YXRlLCB3aGljaCB0byBtZSBzb3VuZHMgdW5kZXNp
cmFibGUsIGVzcGVjaWFsbHkgZm9yIFdEVCB1c2U6IHdoYXQgaWYKPj4gdGhlIEdQSU8vR1JGIHN0
YXRlIHdhcyBleGFjdGx5IHRoZSBwYXJ0IHRoYXQgbGVkIHRvIFdEVCBlbGFwc2U/Cj4KPkkgYWdy
ZWUgdGhhdCB0aGUgaGFyZHdhcmUgZGVmYXVsdCBzZWVtcyB1bmRlc2lyYWJsZSBhbmQgaGF2aW5n
IHRoZSBkcml2ZXIKPnNldHRpbmcgaXQgdG8gdGhlIGZpcnN0IGdsb2JhbCByZXNldCBzZWVtcyBh
IG1vcmUgcmVhc29uYWJsZSBkZWZhdWx0IHRvIG1lLgo+SG93ZXZlciBpZiBpdCBzaG91bGQgYmUg
Y29uZmlndXJhYmxlIEknbSBub3Qgc3VyZSB3aGF0IHdvdWxkIGJlIHRoZSBiZXN0IHdheS4KPkRp
ZCB5b3UgcmVjZWl2ZSBhbnkgZmVlZGJhY2sgb24gdGhpcz8gQWRkaW5nIEhlaWtvIHRvIHRoZSBj
YyBsaXN0IHdobyBob3BlZnVsbHkKPm1pZ2h0IGJlIGludGVyZXN0ZWQgaW4gdGhpcyBwYXRjaCBh
bmQgcHJvdmlkZSBzb21lIGluc2lnaHRzLgo+Cj5PbiBhIHNpZGUgbm90ZSBJJ20gYWxzbyB0aGlu
a2luZyB0aGF0IGEgc2ltaWxhciBwYXRjaCBjb3VsZCBiZSBzdWJtaXR0ZWQgdG8KPnUtYm9vdCwg
c2luY2UgdGhlIHdhdGNoZG9nIG1pZ2h0IGJlIGVuYWJsZWQgYnkgdGhlIGJvb3Rsb2FkZXIgYXMg
d2VsbC4KCkhleSBNYXR0ZW8sCgpIYXZlbuKAmXQgcmVjZWl2ZWQgYW55IHJlc3BvbnNlcy9yZXZp
ZXdzL3JlYWN0aW9ucyB0byBteSBwYXRjaCwgbm8uIFlvdXLigJlzIGlzIHRoZSAKZmlyc3QuCgpJ
IGV2ZW4gcmVhY2hlZCBvdXQgdG8gc29tZSBlbmdpbmVlcnMgb24gdGhlaXIgZm9ydW1zL2NoYXQg
KGRvbid0IHJlbWVtYmVyIApleGFjdGx5IHdoaWNoIGNoYW5uZWxzIGF0IHRoaXMgcG9pbnQsIHRo
b3VnaC4pIEkndmUgYmVlbiBzdWNjZXNzZnVsbHkgcGF0Y2hpbmcgCm15IGtlcm5lbCBkdXJpbmcg
dGhlIG5peG9zIHN5c3RlbSBpbWFnZSBidWlsZCwgc28gdGhlcmUgd2FzIGxpdHRsZSByZWFzb24g
Zm9yIAptZSB0byBrZWVwIGZvbGxvd2luZyB1cCBhZnRlciBJIGdvdCB0aG9yb3VnaGx5IGlnbm9y
ZWQgdGhlIGZpcnN0IHRpbWUgYXJvdW5kLgoKSWYgeW91IGNhbiBmaW5kIHNvbWVib2R5IHdpbGxp
bmcgdG8gdGFrZSBhIGxvb2ssIGl0IHdvdWxkIGJlIGdyZWF0bHkgCmFwcHJlY2lhdGVkIQoKQ2hl
ZXJzLApTLgoKUC5TLiBBZGRlZCB0aGUgbWFpbGluZyBsaXN0IGJhY2sgdG8gYFRvYC4KCj5CZXN0
IHJlZ2FyZHMsCj5NYXR0ZW8gTWFydGVsbGkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
