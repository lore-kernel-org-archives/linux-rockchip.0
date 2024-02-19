Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8A20C48BF8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 11:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZimefDwasU0xPunDioq6RbXhXhZ7phrZ0xeZk3ySjLw=; b=MBVUiWArpiFTEB
	L4ZqE8wqmBuwMetqBaGVPOEwZHskP2xWTBv8Ja5zwNItLNousC5WlkzKQl2uUbvxChYKutqMILBqG
	f8J6Vbbmzt6PTCPixC78dluJ1ZMbtmEEcEOtF0X7wsi4TkKlT5+88lu3K7tLFMjaDSpqbwmbZxIMj
	LJDDVbzQRYWA16U/5Aua+VhSjKn0YYqf6yybpJo9iAsrARl+x9wa059zr7iB9vb6Gy/C48DtOTWUM
	8paqdIEjCoQcEgh19Mbw8pXzGTLEiRAI44SkFSmRGz1tU6V7DDlqeL10vN2HYDV+wjcnsnh314Y5l
	WyraRlmBkFik7ZUHrvRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc2EC-0000000AJ0U-2139;
	Mon, 19 Feb 2024 11:54:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc2E8-0000000AIzH-2EUj;
	Mon, 19 Feb 2024 11:54:29 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8365345B;
	Mon, 19 Feb 2024 12:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708343659;
	bh=/54XkQRIaMoh0oyLd5k/+n5EWpirSB7YraPB3iemee0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OGQZ+uzj6S60sRWV3cHkar0scCy41nytkDQw/oQIDciNTC6hgL18tcdAkYpt+matI
	 pCoHQBqRNwMm4zCsLbWzxlV5T7llaJwCoketLO3IBrTV0jsJCSOxjVZUrVhysYTFYq
	 yfOxw4zgZeUddRmalFjxBloINbWmvlnglG0YnTic=
Date: Mon, 19 Feb 2024 13:54:30 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: Umang Jain <umang.jain@ideasonboard.com>,
	Adam Ford <aford173@gmail.com>,
	=?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	linux-kernel@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] media: rkisp1: Allow higher input resolution
Message-ID: <20240219115430.GC13043@pendragon.ideasonboard.com>
References: <20240217185202.1754750-1-megi@xff.cz>
 <20240218205908.GA12766@pendragon.ideasonboard.com>
 <pftafukuzq7qzbhlvwtmeg3mburnttylgy4246timlghtrdgx4@r6munvmj6oqt>
 <CAHCN7x+zi3WxnY-mxZFKePs1cS=-DprEmh_CnypJ4XK7xBzjMQ@mail.gmail.com>
 <b500676e-431f-40fc-868b-9f9bb359a109@ideasonboard.com>
 <ZdMpSLqYVFbU7sF0@pyrite.rasen.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZdMpSLqYVFbU7sF0@pyrite.rasen.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_035428_734226_832B75BA 
X-CRM114-Status: GOOD (  39.07  )
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

T24gTW9uLCBGZWIgMTksIDIwMjQgYXQgMDc6MTE6MjBQTSArMDkwMCwgUGF1bCBFbGRlciB3cm90
ZToKPiBPbiBNb24sIEZlYiAxOSwgMjAyNCBhdCAwMjozMzoyMVBNICswNTMwLCBVbWFuZyBKYWlu
IHdyb3RlOgo+ID4gT24gMTkvMDIvMjQgNzozOSBhbSwgQWRhbSBGb3JkIHdyb3RlOgo+ID4gPiBP
biBTdW4sIEZlYiAxOCwgMjAyNCBhdCAzOjAy4oCvUE0gT25kxZllaiBKaXJtYW4gPG1lZ2lAeGZm
LmN6PiB3cm90ZToKPiA+ID4gPiBPbiBTdW4sIEZlYiAxOCwgMjAyNCBhdCAxMDo1OTowOFBNICsw
MjAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gPiA+ID4gT24gU2F0LCBGZWIgMTcsIDIw
MjQgYXQgMDc6NTE6NThQTSArMDEwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiA+ID4gPiA+
IEZyb206IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gSW4gQlNQIGRyaXZlciwgaXQgaXMgYWxsb3dlZCwgYW5kIGl0IHdvcmtzIGluIHByYWN0aWNl
LiBUZXN0ZWQgb24KPiA+ID4gPiA+ID4gUGluZXBob25lIFByby9SSzMzOTkgd2l0aCBJTVgyNTgg
YXQgZnVsbCByZXMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gUGF1bCwgVW1hbmcsIGRvIEkgcmVjYWxs
IGNvcnJlY3RseSB0aGF0IHlvdSBoYXZlIGEgc2ltaWxhciBjaGFuZ2UgPwo+ID4gPiA+ID4gQ291
bGQgeW91IHJldmlldyBhbmQgdGVzdCB0aGlzIChlc3BlY2lhbGx5IG9uIHRoZSBpLk1YOE1QKSA/
Cj4gPiA+ID4KPiA+ID4gPiBJdCdzIGFsc28gYSBsaW1pdCBmcm9tIHRoZSBkYXRhc2hlZXQsIHNv
IHRoZSBjaGFuZ2Ugc2hvdWxkIG5vdCBiZSB0aGF0Cj4gPiA+ID4gY29udHJvdmVyc2lhbDoKPiA+
ID4gPiAKPiA+ID4gPiAgICBodHRwczovL21lZ291cy5jb20vZGwvdG1wL2QyYjMzMzA0M2VjZWJh
ZjMucG5nCj4gPiA+ID4gCj4gPiA+ID4gKHNvIHRoYXQgaXQgZG9lc24ndCBzb3VuZCBsaWtlIEkg
anVzdCBjb3BpZWQgdGhlIEJTUCB2YWx1ZXMpCj4gPiA+ID4gCj4gPiA+ICBGcm9tIHdoYXQgSSBz
ZWUgaW4gdGhlIGkuTVg4TSBQbHVzIHJlZmVyZW5jZSBtYW51YWwsIGl0IGhhcyBhIG1heAo+ID4g
PiByZXNvbHV0aW9uIG9mIDQwOTZ4MzA3Miwgc28gaXQgbWlnaHQgYmUgbmVjZXNzYXJ5IHRvIG1v
dmUgdGhpcyBvZmYKPiA+IAo+ID4gVGhpcyBpcyB3aGF0IEkgKGFuZCBJIGFzc3VtZSBQYXVsIHRv
bykgaGF2ZSBiZWVuIHdvcmtpbmcgd2l0aCBvbiBpLk1YOE0KPiA+IFBsdXMuIFNvIGl0J3MgdGhl
IGtub3duIGFuZCB0ZXN0ZWQgdmFsdWUgb2YgbWF4IElTUCBpbnB1dCBmcm9tIG91dCBzaWRlLgo+
ID4KPiA+ID4gZnJvbSBhICNkZWZpbmUgaW50byBhIHN0cnVjdHVyZSB0aGF0IHZhcmllcyBieSBw
cm9kdWN0IGZhbWlseS4KPiAKPiBZZXMsIHRoaXMgaXMgd2hhdCBuZWVkcyB0byBiZSBkb25lLiBI
ZXJlJ3Mgd2hhdCBJIGhhdmUgaW4gbXkgbm90ZXM6Cj4gCj4gLSBUaGUgUkszMzk5IFRSTSBzYXlz
IDQ0MTZ4MzMxMiBtYXggaW5wdXQgYW5kIG91dHB1dCBvbiBtYWluIHBhdGgsIHdpdGgKPiAgIDE5
MjB4MTA4MCBtYXggb3V0cHV0IG9uIHNlbGYgcGF0aC4KPiAtIFRoZSBQWDMwIGRhdGFzaGVldCBb
MV0gc2F5cyAzMjY0eDI0NDggbWF4IGlucHV0IGFuZCBvdXRwdXQgb24gbWFpbgo+ICAgcGF0aCwg
d2l0aCAxOTIweDEwODAgbWF4IG91dHB1dCBvbiBzZWxmIHBhdGguCj4gLSBUaGUgUkszMjg4IGRv
Y3VtZW50YXRpb24gWzJdICh1bmRlciAiQ2FtZXJhIEludGVyZmFjZSBhbmQgSW1hZ2UKPiAgIFBy
b2Nlc3NvciIpIHNheXMgNDQxNngzMzEyIG1heCBpbnB1dCBhbmQgb3V0cHV0IG9uIG1haW4gcGF0
aCwgd2l0aAo+ICAgMTkyMHgxMDgwIG1heCBvdXRwdXQgb24gc2VsZiBwYXRoLgo+IC0gVGhlIGku
TVg4TVAgcmVmZXJlbmNlIG1hbnVhbCAodGhlIG9wZW4gb25lKSBbM10gKGluIHRhYmxlIDEzLTEp
IHNheXMKPiAgIDQwOTZ4MzA3MiBtYXggcmVzb2x1dGlvbiBpbiBzaW5nbGUgSVNQIG1vZGUKPiAK
PiBUaGUgaS5NWDhNIFBsdXMgc2VlbXMgdG8gaW5kZWVkIGJlIGxpbWl0ZWQgdG8gNDA5NngzMDcy
LCBidXQgdGhlIFRQRyBpcwo+IGNhcGFibGUgb2YgZ2VuZXJhdGluZyA0NDE2eDMzMTIsIGFuZCB0
aGUgSVNQIHdvcmtzIGZpbmUgaW4gYnlwYXNzIChhbmQKPiB0aGVyZWZvcmUgcmF3KSBtb2RlLCBz
byB0ZWNobmljYWxseSBpdCBoYXMgZGlmZmVyZW50IG1heGltdW0gc2l6ZXMKPiBkZXBlbmRpbmcg
b24gdGhlIGZvcm1hdCB3aGljaCBtYWtlcyB0aGlzIG1vcmUgZXhjaXRpbmcuCj4gCj4gSW4gYW55
IGNhc2UsIHRoZSBQWDMwIChhc3N1bWluZyB0aGUgZGF0YXNoZWV0IGlzIGNvcnJlY3QpIG9ubHkg
c3VwcG9ydHMKPiB1cCB0byAzMjY0eDI0NDgsIHNvIHRoZSBleGlzdGluZyAjZGVmaW5lIGlzIGlu
Y29ycmVjdCBhbnl3YXkuCj4gCj4gSSBkb24ndCBoYXZlIGEgUFgzMCBub3IgYW4gUkszMjg4IHNv
IEkgY2FuJ3QgdGVzdCB0aG9zZSwgYW5kIEkgaGF2ZW4ndAo+IHNldCB1cCBteSBPVjY0QTQwIHll
dCB3aGljaCAoSSd2ZSBoZWFyZCkgY2FuIGJlIHVzZWQgdG8gdGVzdCBldmVuIGJpZ2dlcgo+IHJl
c29sdXRpb25zLgoKVGhhbmtzIGZvciB0aGUgc3VtbWFyeSBQYXVsLgoKT25kxZllaiwgd291bGQg
eW91IGJlIGludGVyZXN0ZWQgaW4gaW1wbGVtZW50aW5nIHRoaXMgPwoKPiBbMV0gaHR0cHM6Ly9v
cGVuc291cmNlLnJvY2stY2hpcHMuY29tL2ltYWdlcy84Lzg3L1JvY2tjaGlwX1BYMzBfRGF0YXNo
ZWV0X1YxLjQtMjAxOTEyMjcucGRmCj4gWzJdIGh0dHBzOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBz
LmNvbS9pbWFnZXMvNC80OS9Sb2NrY2hpcF9SSzMyODhfRGF0YXNoZWV0X1YyLjctMjAxOTEyMjcu
cGRmCj4gWzNdIChyZXF1aXJlcyBsb2dpbikgaHR0cHM6Ly93d3cubnhwLmNvbS9wcm9kdWN0cy9w
cm9jZXNzb3JzLWFuZC1taWNyb2NvbnRyb2xsZXJzL2FybS1wcm9jZXNzb3JzL2ktbXgtYXBwbGlj
YXRpb25zLXByb2Nlc3NvcnMvaS1teC04LWFwcGxpY2F0aW9ucy1wcm9jZXNzb3JzL2ktbXgtOG0t
cGx1cy1hcm0tY29ydGV4LWE1My1tYWNoaW5lLWxlYXJuaW5nLXZpc2lvbi1tdWx0aW1lZGlhLWFu
ZC1pbmR1c3RyaWFsLWlvdDpJTVg4TVBMVVMKPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
T25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiAg
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jb21tb24uaCB8
IDQgKystLQo+ID4gPiA+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oCj4gPiA+ID4g
PiA+IGluZGV4IDRiNmIyOGMwNWI4OS4uNzQwOThkZGJlZWIzIDEwMDY0NAo+ID4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9u
LmgKPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lz
cDEvcmtpc3AxLWNvbW1vbi5oCj4gPiA+ID4gPiA+IEBAIC0zMyw4ICszMyw4IEBAIHN0cnVjdCBk
ZW50cnk7Cj4gPiA+ID4gPiA+ICAgI2RlZmluZSBSS0lTUDFfSVNQX1NEX1NJTksgICAgICAgICAg
ICAgICAgIEJJVCgxKQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gICAvKiBtaW4gYW5kIG1heCB2
YWx1ZXMgZm9yIHRoZSB3aWR0aHMgYW5kIGhlaWdodHMgb2YgdGhlIGVudGl0aWVzICovCj4gPiA+
ID4gPiA+IC0jZGVmaW5lIFJLSVNQMV9JU1BfTUFYX1dJRFRIICAgICAgICAgICAgICAgICAgICAg
ICA0MDMyCj4gPiA+ID4gPiA+IC0jZGVmaW5lIFJLSVNQMV9JU1BfTUFYX0hFSUdIVCAgICAgICAg
ICAgICAgICAgICAgICAzMDI0Cj4gPiA+ID4gPiA+ICsjZGVmaW5lIFJLSVNQMV9JU1BfTUFYX1dJ
RFRIICAgICAgICAgICAgICAgICAgICAgICA0NDE2Cj4gPiA+ID4gPiA+ICsjZGVmaW5lIFJLSVNQ
MV9JU1BfTUFYX0hFSUdIVCAgICAgICAgICAgICAgICAgICAgICAzMzEyCj4gPiA+ID4gPiA+ICAg
I2RlZmluZSBSS0lTUDFfSVNQX01JTl9XSURUSCAgICAgICAgICAgICAgICAgICAgICAgMzIKPiA+
ID4gPiA+ID4gICAjZGVmaW5lIFJLSVNQMV9JU1BfTUlOX0hFSUdIVCAgICAgICAgICAgICAgICAg
ICAgICAzMgo+ID4gPiA+ID4gPiAKCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
