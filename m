Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93177C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 09:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0D+wTDTOjJG4eNx0wNHvaxoHchL0BFvdtX0g711BAk=; b=H/POCkmxtasXOC
	ySgU/Fv4sNybRtUVBZ+23Fwmfe+MWqAI+rojtKxoX/GPDVya880sLroKkeo69UExC+ZXzuy+pJMUs
	wNzC8lFV+zudVTVq9fiJOwopSrGhwfzxCBTwgZ1adJq4Rv4vXjU+2jFkULDZikTnC+2Wy6CxWzC4h
	BpcS2/gqpzv5QiOTN2y5h7oS04mNYaPKB0Oc9MjWO9wRWhseeBJzymYXAcBcx0S1geqGs+ZP6p1SS
	ds+8Z96iGXBDaA6XThEnRpn8MeLW3qpc0ngU70mIeUvbf0NRNhya3ZsmWoyUK+Ehcja6gQ4adNJDZ
	j93dcWz9kEIy9QKZRsug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8dca-00ALux-2L;
	Thu, 30 Nov 2023 09:46:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8dcV-00ALuE-1h
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 09:46:11 +0000
Received: from pyrite.rasen.tech (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4C8FA8C1;
	Thu, 30 Nov 2023 10:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701337523;
	bh=WV7upD+FFFLTGLLvYXanKOUa5AfZ/hueHZz/fvxdFs4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r0Uj9+5qe67C6Pydq2UHI1hU/Hen3vw9eP2fegrtiiJHGHALBlTm9iQfnAvJSiw4t
	 9iwswI/vIKzyTdqRk3QdkY/bbmflEs6SSb4KmmqmoXtjGVvLbq5+oWeFgWTWq/sant
	 D4jRguRlCRe4weLwctTbLoDc81RjbkuwG4A7b2u4=
Date: Thu, 30 Nov 2023 18:45:48 +0900
From: Paul Elder <paul.elder@ideasonboard.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com
Subject: Re: [PATCH v4 00/11] media: rkisp1: Add support for i.MX8MP
Message-ID: <ZWhZzNQ6VWcfvWZy@pyrite.rasen.tech>
References: <20231129092759.242641-1-paul.elder@ideasonboard.com>
 <CAHCN7xLgypy8YMhxM1g27DWU7hY3nwAYLYRSMMDtODeGdd_CQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xLgypy8YMhxM1g27DWU7hY3nwAYLYRSMMDtODeGdd_CQg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_014608_431179_F458C4CA 
X-CRM114-Status: GOOD (  26.63  )
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

T24gV2VkLCBOb3YgMjksIDIwMjMgYXQgMDU6MzY6MjVBTSAtMDYwMCwgQWRhbSBGb3JkIHdyb3Rl
Ogo+IE9uIFdlZCwgTm92IDI5LCAyMDIzIGF0IDM6MjjigK9BTSBQYXVsIEVsZGVyIDxwYXVsLmVs
ZGVyQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+ID4KPiA+IFRoaXMgc2VyaWVzIGV4dGVuZHMg
dGhlIHJraXNwMSBkcml2ZXIgdG8gc3VwcG9ydCB0aGUgSVNQIGZvdW5kIGluIHRoZQo+ID4gTlhQ
IGkuTVg4TVAgU29DLgo+ID4KPiA+IFRoZSBJU1AgSVAgY29yZXMgaW4gdGhlIFJvY2tjaGlwIFJL
MzM5OSAoa25vd24gYXMgdGhlICJSb2NrY2hpcCBJU1AxIikKPiA+IGFuZCBpbiB0aGUgTlhQIGku
TVg4TVAgaGF2ZSB0aGUgc2FtZSBvcmlnaW4sIGFuZCBoYXZlIHNsaWdodGx5IGRpdmVyZ2VkCj4g
PiBvdmVyIHRpbWUgYXMgdGhleSBhcmUgbm93IGluZGVwZW5kZW50bHkgZGV2ZWxvcGVkIChhZmFp
aykgYnkgUm9ja2NoaXAKPiA+IGFuZCBWZXJpU2lsaWNvbi4gVGhlIGxhdHRlciBpcyBtYXJrZXRl
ZCB1bmRlciB0aGUgbmFtZSAiSVNQODAwME5hbm8iLAo+ID4gYW5kIGlzIGNsb3NlIGVub3VnaCB0
byB0aGUgUkszMzk5IElTUCB0aGF0IGl0IGNhbiBlYXNpbHkgYmUgc3VwcG9ydGVkIGJ5Cj4gPiB0
aGUgc2FtZSBkcml2ZXIuCj4gPgo+ID4gVGhlIGxhc3QgdHdvIHBhdGNoZXMgYWRkIHN1cHBvcnQg
Zm9yIFVZVlkgb3V0cHV0IGZvcm1hdCwgd2hpY2ggY2FuIGJlCj4gPiBpbXBsZW1lbnRlZCBvbiB0
aGUgSVNQIHZlcnNpb24gaW4gdGhlIGkuTVg4TVAgYnV0IG5vdCBpbiB0aGUgb25lIGluIHRoZQo+
ID4gUkszMzk5Lgo+ID4KPiA+IFRoaXMgdmVyc2lvbiBvZiB0aGUgc2VyaWVzIHNwZWNpZmljYWxs
eSBoYXMgYmVlbiB0ZXN0ZWQgb24gYSBQb2x5aGV4Cj4gPiBEZWJpeCBtb2RlbCBBIHdpdGggYW4g
aW14MjE5IChSYXNwYmVycnkgUGkgY2FtIHYyKS4KPiAKPiBJIGhhdmUgdGVzdGVkIHByZXZpb3Vz
IHZlcnNpb25zIHdpdGggYSBpbXgyMTkgY2FtZXJhIHJ1bm5pbmcgaW4gNC1sYW5lCj4gbW9kZSB3
aXRoIGdyZWF0IHN1Y2Nlc3MuICBTaG91bGQgSSBhcHBseSB0aGlzIHNlcmllcyBhZ2FpbnN0Cj4g
bGludXgtbmV4dCwgb3IgZG8gSSBuZWVkIHRvIGFwcGx5IGl0IGFnYWluc3Qgc29tZXRoaW5nIGlu
IHRoZSBtZWRpYQo+IHRyZWUgdG8gdGVzdD8gIEkgaG9wZSB0byB0ZXN0IGl0IHRvbmlnaHQgb3Ig
dG9tb3Jyb3cuCgpJIGhhdmUgaXQgYXBwbGllZCBvbiA2LjctcmMxLgoKClRoYW5rcywKClBhdWwK
Cj4gPgo+ID4gTGF1cmVudCBQaW5jaGFydCAoMik6Cj4gPiAgIG1lZGlhOiBya2lzcDE6IEFkZCBh
bmQgdXNlIHJraXNwMV9oYXNfZmVhdHVyZSgpIG1hY3JvCj4gPiAgIG1lZGlhOiBya2lzcDE6IENv
bmZpZ3VyZSBnYXNrZXQgb24gaS5NWDhNUAo+ID4KPiA+IFBhdWwgRWxkZXIgKDkpOgo+ID4gICBt
ZWRpYTogcmtpc3AxOiBTdXBwb3J0IHNldHRpbmcgbWVtb3J5IHN0cmlkZSBmb3IgbWFpbiBwYXRo
Cj4gPiAgIG1lZGlhOiBya2lzcDE6IFN1cHBvcnQgZGV2aWNlcyBsYWNraW5nIHNlbGYgcGF0aAo+
ID4gICBtZWRpYTogcmtpc3AxOiBTdXBwb3J0IGRldmljZXMgbGFja2luZyBkdWFsIGNyb3AKPiA+
ICAgbWVkaWE6IHJraXNwMTogRml4IFJTWl9DVFJMIGJpdHMgZm9yIGkuTVg4TVAKPiA+ICAgZHQt
YmluZGluZ3M6IG1lZGlhOiBya2lzcDE6IEFkZCBpLk1YOE1QIElTUCB0byBjb21wYXRpYmxlCj4g
PiAgIG1lZGlhOiBya2lzcDE6IEFkZCBtYXRjaCBkYXRhIGZvciBpLk1YOE1QIElTUAo+ID4gICBt
ZWRpYTogcmtpc3AxOiBTaGlmdCBETUEgYnVmZmVyIGFkZHJlc3NlcyBvbiBpLk1YOE1QCj4gPiAg
IG1lZGlhOiBya2lzcDE6IEFkZCBZQyBzd2FwIGNhcGFiaWxpdHkKPiA+ICAgbWVkaWE6IHJraXNw
MTogQWRkIFVZVlkgYXMgYW4gb3V0cHV0IGZvcm1hdAo+ID4KPiA+ICAuLi4vYmluZGluZ3MvbWVk
aWEvcm9ja2NoaXAtaXNwMS55YW1sICAgICAgICAgfCAgMzcgKysrKy0KPiA+ICAuLi4vcGxhdGZv
cm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMgfCAxMjggKysrKysrKysrKysrLS0t
LS0KPiA+ICAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jb21tb24uaCAgfCAg
MzUgKysrKy0KPiA+ICAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1kZXYuYyAg
ICAgfCAgNjYgKysrKysrKy0tCj4gPiAgLi4uL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lz
cDEtaXNwLmMgICAgIHwgMTMxICsrKysrKysrKysrKysrKysrLQo+ID4gIC4uLi9wbGF0Zm9ybS9y
b2NrY2hpcC9ya2lzcDEvcmtpc3AxLXJlZ3MuaCAgICB8ICAzMiArKysrKwo+ID4gIC4uLi9wbGF0
Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLXJlc2l6ZXIuYyB8ICAyNyArKy0tCj4gPiAgaW5j
bHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaCAgICAgICAgICAgIHwgICAyICsKPiA+ICA4
IGZpbGVzIGNoYW5nZWQsIDM5OCBpbnNlcnRpb25zKCspLCA2MCBkZWxldGlvbnMoLSkKPiA+Cj4g
PiAtLQo+ID4gMi4zOS4yCj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
