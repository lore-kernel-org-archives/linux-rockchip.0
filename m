Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EA70C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 15:01:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 024E060F5E
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 15:01:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 024E060F5E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wYk9pqf6wUTZXa3jgl4KIqmf0v4jU/X8tF1p9QCsM5o=; b=WjsRuP3dsiEoaWWIfxG8dnnWuN
	dtQJdV6iQxYwL7W/hffVth4xRlH7+5gpKZ/WMFDjGCeqlNSIZW4tOpJfChn4yKnfaAJ5Y27+1G4Ig
	YsWuq9u6hZ94c5S16a9VP0fSwcfv6fNEB79NXUdGeWFqEfKq2Sdcravud/T2bG0elKEl/32T0Z2bG
	y9R3hNROZXV5Ljpd7ER9pv598q81qkibhQHoJ0mHrYE/O1CS4px1M/CLweDHUDEH1VIZzna/RVyrQ
	88RsqRtp/okhxgkwGE8uZmJwcYRjF+zUFzf5I3GlTqJclr+RuxgNDIRlQe9a/u6g2gpiPLz/MRYHI
	xqVHrbFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYrNZ-003Bdo-Fm; Fri, 08 Oct 2021 15:01:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYrNW-003Bc3-Ca
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 15:01:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id A4F701F45ABA
Subject: Re: [PATCH 0/2] media: rkvdec: Align decoder behavior with Hantro and
 Cedrus
To: Chen-Yu Tsai <wenst@chromium.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20211008100423.739462-1-wenst@chromium.org>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <c5393cf3-e2d1-4000-3bd1-00a09bb0ee8f@collabora.com>
Date: Fri, 8 Oct 2021 17:01:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211008100423.739462-1-wenst@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_080142_586530_7CC6C7E4 
X-CRM114-Status: GOOD (  20.89  )
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

SGkgQ2hlbi1ZdSBUc2FpLAoKVyBkbml1IDA4LjEwLjIwMjEgb8KgMTI6MDQsIENoZW4tWXUgVHNh
aSBwaXN6ZToKPiBIaSBldmVyeW9uZSwKPiAKPiBXaGlsZSB3b3JraW5nIG9uIHRoZSBya3ZkZWMg
SC4yNjQgZGVjb2RlciBmb3IgQ2hyb21lT1MsIEkgbm90aWNlZCBzb21lCj4gYmVoYXZpb3JhbCBk
aWZmZXJlbmNlcyBjb21wYXJlZCB0byBIYW50cm8gYW5kIENlZHJ1czoKPiAKPiAxLiBUaGUgZHJp
dmVyIGFsd2F5cyBvdmVycmlkZXMgdGhlIHNpemVpbWFnZSBzZXR0aW5nIGdpdmVuIGJ5IHVzZXJz
cGFjZQo+ICAgICBmb3IgdGhlIG91dHB1dCBmb3JtYXQuIFRoaXMgcmVzdWx0cyBpbiBpbnN1ZmZp
Y2llbnQgYnVmZmVyIHNwYWNlIHdoZW4KPiAgICAgcnVubmluZyB0aGUgQ2hyb21lT1MgdmlkZW9f
ZGVjb2RlX2FjY2VsZXJhdG9yX3Rlc3RzIHRlc3QgcHJvZ3JhbSwKPiAgICAgbGlrZWx5IGR1ZSB0
byBhIHNtYWxsIGluaXRpYWwgcmVzb2x1dGlvbiBmb2xsb3dlZCBieSBkeW5hbWljCj4gICAgIHJl
c29sdXRpb24gY2hhbmdlLgo+IAo+IDIuIERvZXNuJ3Qgc3VwcG9ydCBkeW5hbWljIHJlc29sdXRp
b24gY2hhbmdlLgo+IAo+IFRoaXMgc21hbGwgc2VyaWVzIGZpeGVzIGJvdGggYW5kIGFsaWducyB0
aGUgYmVoYXZpb3Igd2l0aCB0aGUgb3RoZXIgdHdvCj4gc3RhdGVsZXNzIGRlY29kZXIgZHJpdmVy
cy4gVGhpcyB3YXMgdGVzdGVkIG9uIHRoZSBkb3duc3RyZWFtIENocm9tZU9TCj4gNS4xMCBrZXJu
ZWwgd2l0aCBDaHJvbWVPUy4gQWxzbyBjb21waWxlZCB0ZXN0ZWQgb24gbWFpbmxpbmUgYnV0IEkg
ZG9uJ3QKPiBoYXZlIGFueSBvdGhlciBSSzMzOTkgZGV2aWNlcyBzZXQgdXAgdG8gdGVzdCB2aWRl
byBzdHVmZiwgc28gdGVzdGluZwo+IHdvdWxkIGJlIHZlcnkgbXVjaCBhcHByZWNpYXRlZC4KPiAK
PiBBbHNvLCBJJ20gbm90IHN1cmUgaWYgdXNlciBhcHBsaWNhdGlvbnMgYXJlIHJlcXVpcmVkIHRv
IGNoZWNrIHRoZSB2YWx1ZQo+IG9mIHNpemVpbWFnZSB1cG9uIFNfRk1UIHJldHVybi4gSWYgdGhl
IHZhbHVlIGlzIGRpZmZlcmVudCBvciB0b28gc21hbGwsCj4gd2hhdCBjYW4gdGhlIGFwcGxpY2F0
aW9uIGRvIGJlc2lkZXMgZmFpbD8gQUZBSUNUIGl0IGNhbid0IHNwbGl0IHRoZQo+IGRhdGEgb2Yg
b25lIGZyYW1lIChvciBzbGljZSkgYmV0d2VlbiBkaWZmZXJlbnQgYnVmZmVycy4KPiAKPiBBbmRy
emVqLCBJIGJlbGlldmUgdGhlIHNlY29uZCBwYXRjaCB3b3VsZCBjb25mbGljdCB3aXRoIHlvdXIg
VlA5IHNlcmllcy4KPiAKClRoZSBjb25mbGljdCBpcyByYXRoZXIgdHJpdmlhbCB0byBzb2x2ZS4g
QWRvcHRpbmcgeW91ciB2ZXJzaW9uIGRvZXMgbm90CmNoYW5nZSBpbiBhbnkgd2F5IChuZWl0aGVy
IGZvciBiZXR0ZXIgbm9yIGZvciB3b3JzZSkgdGhlIGZsdXN0ZXIgc2NvcmUKSSBnZXQgZm9yIHZw
OSB3aXRoIHJrdmRlYyBvbiBhIHJvY2twaTQgdXNpbmcgbXkgdnA5IHNlcmllcy4KClJlZ2FyZHMs
CgpBbmRyemVqCgo+IAo+IFJlZ2FyZHMKPiBDaGVuWXUKPiAKPiBDaGVuLVl1IFRzYWkgKDIpOgo+
ICAgIG1lZGlhOiBya3ZkZWM6IERvIG5vdCBvdmVycmlkZSBzaXplaW1hZ2UgZm9yIG91dHB1dCBm
b3JtYXQKPiAgICBtZWRpYTogcmt2ZGVjOiBTdXBwb3J0IGR5bmFtaWMgcmVzb2x1dGlvbiBjaGFu
Z2VzCj4gCj4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMgfCAg
NSArLS0KPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgICAgICB8IDQw
ICsrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9u
cygrKSwgMjIgZGVsZXRpb25zKC0pCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
