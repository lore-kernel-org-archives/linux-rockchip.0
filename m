Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8107C48BC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 10:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAtOM+0Wpt+or/nAlvEqD1bYtM1wCulmcSjdot01Xsw=; b=Ic5naze9dWDEnV
	pBOlxyp1wwYn7LegHD4CTbBp0SvVw27PIUQtvahraT/oDUWa/pOO+ZldmLsVGjeUcyEbP7uUN3ef5
	863lGvEJ8J2XDP1iKG1Qv99RBlSMmrDYnPHwvaOdM/DYlDuJ0g+Fq0HARSh1QzDx/xziSY8AY20t4
	TY5HHSv8GFv0VaB/z+bvQpptGTxdk/u4cUBx6D9/3ohyT9i6RDBvn2DAV5JlLef5Otqs65bkjCeY+
	t0dshXqhGivWbw+doTdbbj46HFuZP/WDgz6mCgYmepHi+fkxyzZCl+88BVAROIioLmGwivMsKKO89
	CEy9nMrFYcZZYggRUjDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc0ca-00000009yro-26mv;
	Mon, 19 Feb 2024 10:11:36 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc0cW-00000009ypa-2nc6;
	Mon, 19 Feb 2024 10:11:34 +0000
Received: from pyrite.rasen.tech (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A388866F;
	Mon, 19 Feb 2024 11:11:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708337484;
	bh=BMkkhuKdON4JFZpecVwN90mUFXfKmOeyHVVeBOHZJbg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ktb2AKDDnf4Nc5TQ3VpTXsQcoDku1HYDQBbS+0isGB9Udu8nvhda1xBdmctkDrp4a
	 VmGyqVI11UIIAb/H/tkS11uvD0ZWxB2RA2+XThOuOfpHlaYRiVeXkfIzVgB2vwXmNP
	 /qa8fXlpP2+Qb9Ym2nVtBiMZa8U+re/XvP7HYPvQ=
Date: Mon, 19 Feb 2024 19:11:20 +0900
From: Paul Elder <paul.elder@ideasonboard.com>
To: Umang Jain <umang.jain@ideasonboard.com>
Cc: Adam Ford <aford173@gmail.com>,
	=?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-kernel@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] media: rkisp1: Allow higher input resolution
Message-ID: <ZdMpSLqYVFbU7sF0@pyrite.rasen.tech>
References: <20240217185202.1754750-1-megi@xff.cz>
 <20240218205908.GA12766@pendragon.ideasonboard.com>
 <pftafukuzq7qzbhlvwtmeg3mburnttylgy4246timlghtrdgx4@r6munvmj6oqt>
 <CAHCN7x+zi3WxnY-mxZFKePs1cS=-DprEmh_CnypJ4XK7xBzjMQ@mail.gmail.com>
 <b500676e-431f-40fc-868b-9f9bb359a109@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b500676e-431f-40fc-868b-9f9bb359a109@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_021132_878468_44D884D3 
X-CRM114-Status: GOOD (  36.40  )
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

T24gTW9uLCBGZWIgMTksIDIwMjQgYXQgMDI6MzM6MjFQTSArMDUzMCwgVW1hbmcgSmFpbiB3cm90
ZToKPiBIaSBBbGwsCj4gCj4gT24gMTkvMDIvMjQgNzozOSBhbSwgQWRhbSBGb3JkIHdyb3RlOgo+
ID4gT24gU3VuLCBGZWIgMTgsIDIwMjQgYXQgMzowMuKAr1BNIE9uZMWZZWogSmlybWFuIDxtZWdp
QHhmZi5jej4gd3JvdGU6Cj4gPiA+IE9uIFN1biwgRmViIDE4LCAyMDI0IGF0IDEwOjU5OjA4UE0g
KzAyMDAsIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gPiA+ID4gSGkgT25kcmVqLAo+ID4gPiA+
IAo+ID4gPiA+IChDQydpbmcgUGF1bCBhbmQgVW1hbmcpCj4gPiA+ID4gCj4gPiA+ID4gVGhhbmsg
eW91IGZvciB0aGUgcGF0Y2guCj4gPiA+ID4gCj4gPiA+ID4gT24gU2F0LCBGZWIgMTcsIDIwMjQg
YXQgMDc6NTE6NThQTSArMDEwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiA+ID4gPiBGcm9t
OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSW4gQlNQ
IGRyaXZlciwgaXQgaXMgYWxsb3dlZCwgYW5kIGl0IHdvcmtzIGluIHByYWN0aWNlLiBUZXN0ZWQg
b24KPiA+ID4gPiA+IFBpbmVwaG9uZSBQcm8vUkszMzk5IHdpdGggSU1YMjU4IGF0IGZ1bGwgcmVz
Lgo+ID4gPiA+IFBhdWwsIFVtYW5nLCBkbyBJIHJlY2FsbCBjb3JyZWN0bHkgdGhhdCB5b3UgaGF2
ZSBhIHNpbWlsYXIgY2hhbmdlID8KPiA+ID4gPiBDb3VsZCB5b3UgcmV2aWV3IGFuZCB0ZXN0IHRo
aXMgKGVzcGVjaWFsbHkgb24gdGhlIGkuTVg4TVApID8KPiA+ID4gSXQncyBhbHNvIGEgbGltaXQg
ZnJvbSB0aGUgZGF0YXNoZWV0LCBzbyB0aGUgY2hhbmdlIHNob3VsZCBub3QgYmUgdGhhdAo+ID4g
PiBjb250cm92ZXJzaWFsOgo+ID4gPiAKPiA+ID4gICAgaHR0cHM6Ly9tZWdvdXMuY29tL2RsL3Rt
cC9kMmIzMzMwNDNlY2ViYWYzLnBuZwo+ID4gPiAKPiA+ID4gKHNvIHRoYXQgaXQgZG9lc24ndCBz
b3VuZCBsaWtlIEkganVzdCBjb3BpZWQgdGhlIEJTUCB2YWx1ZXMpCj4gPiA+IAo+ID4gIEZyb20g
d2hhdCBJIHNlZSBpbiB0aGUgaS5NWDhNIFBsdXMgcmVmZXJlbmNlIG1hbnVhbCwgaXQgaGFzIGEg
bWF4Cj4gPiByZXNvbHV0aW9uIG9mIDQwOTZ4MzA3Miwgc28gaXQgbWlnaHQgYmUgbmVjZXNzYXJ5
IHRvIG1vdmUgdGhpcyBvZmYKPiAKPiBUaGlzIGlzIHdoYXQgSSAoYW5kIEkgYXNzdW1lIFBhdWwg
dG9vKSBoYXZlIGJlZW4gd29ya2luZyB3aXRoIG9uIGkuTVg4TQo+IFBsdXMuIFNvIGl0J3MgdGhl
IGtub3duIGFuZCB0ZXN0ZWQgdmFsdWUgb2YgbWF4IElTUCBpbnB1dCBmcm9tIG91dCBzaWRlLgo+
ID4gZnJvbSBhICNkZWZpbmUgaW50byBhIHN0cnVjdHVyZSB0aGF0IHZhcmllcyBieSBwcm9kdWN0
IGZhbWlseS4KClllcywgdGhpcyBpcyB3aGF0IG5lZWRzIHRvIGJlIGRvbmUuIEhlcmUncyB3aGF0
IEkgaGF2ZSBpbiBteSBub3RlczoKCi0gVGhlIFJLMzM5OSBUUk0gc2F5cyA0NDE2eDMzMTIgbWF4
IGlucHV0IGFuZCBvdXRwdXQgb24gbWFpbiBwYXRoLCB3aXRoCiAgMTkyMHgxMDgwIG1heCBvdXRw
dXQgb24gc2VsZiBwYXRoLgotIFRoZSBQWDMwIGRhdGFzaGVldCBbMV0gc2F5cyAzMjY0eDI0NDgg
bWF4IGlucHV0IGFuZCBvdXRwdXQgb24gbWFpbgogIHBhdGgsIHdpdGggMTkyMHgxMDgwIG1heCBv
dXRwdXQgb24gc2VsZiBwYXRoLgotIFRoZSBSSzMyODggZG9jdW1lbnRhdGlvbiBbMl0gKHVuZGVy
ICJDYW1lcmEgSW50ZXJmYWNlIGFuZCBJbWFnZQogIFByb2Nlc3NvciIpIHNheXMgNDQxNngzMzEy
IG1heCBpbnB1dCBhbmQgb3V0cHV0IG9uIG1haW4gcGF0aCwgd2l0aAogIDE5MjB4MTA4MCBtYXgg
b3V0cHV0IG9uIHNlbGYgcGF0aC4KLSBUaGUgaS5NWDhNUCByZWZlcmVuY2UgbWFudWFsICh0aGUg
b3BlbiBvbmUpIFszXSAoaW4gdGFibGUgMTMtMSkgc2F5cwogIDQwOTZ4MzA3MiBtYXggcmVzb2x1
dGlvbiBpbiBzaW5nbGUgSVNQIG1vZGUKClRoZSBpLk1YOE0gUGx1cyBzZWVtcyB0byBpbmRlZWQg
YmUgbGltaXRlZCB0byA0MDk2eDMwNzIsIGJ1dCB0aGUgVFBHIGlzCmNhcGFibGUgb2YgZ2VuZXJh
dGluZyA0NDE2eDMzMTIsIGFuZCB0aGUgSVNQIHdvcmtzIGZpbmUgaW4gYnlwYXNzIChhbmQKdGhl
cmVmb3JlIHJhdykgbW9kZSwgc28gdGVjaG5pY2FsbHkgaXQgaGFzIGRpZmZlcmVudCBtYXhpbXVt
IHNpemVzCmRlcGVuZGluZyBvbiB0aGUgZm9ybWF0IHdoaWNoIG1ha2VzIHRoaXMgbW9yZSBleGNp
dGluZy4KCkluIGFueSBjYXNlLCB0aGUgUFgzMCAoYXNzdW1pbmcgdGhlIGRhdGFzaGVldCBpcyBj
b3JyZWN0KSBvbmx5IHN1cHBvcnRzCnVwIHRvIDMyNjR4MjQ0OCwgc28gdGhlIGV4aXN0aW5nICNk
ZWZpbmUgaXMgaW5jb3JyZWN0IGFueXdheS4KCkkgZG9uJ3QgaGF2ZSBhIFBYMzAgbm9yIGFuIFJL
MzI4OCBzbyBJIGNhbid0IHRlc3QgdGhvc2UsIGFuZCBJIGhhdmVuJ3QKc2V0IHVwIG15IE9WNjRB
NDAgeWV0IHdoaWNoIChJJ3ZlIGhlYXJkKSBjYW4gYmUgdXNlZCB0byB0ZXN0IGV2ZW4gYmlnZ2Vy
CnJlc29sdXRpb25zLgoKClBhdWwKClsxXSBodHRwczovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5j
b20vaW1hZ2VzLzgvODcvUm9ja2NoaXBfUFgzMF9EYXRhc2hlZXRfVjEuNC0yMDE5MTIyNy5wZGYK
WzJdIGh0dHBzOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS9pbWFnZXMvNC80OS9Sb2NrY2hp
cF9SSzMyODhfRGF0YXNoZWV0X1YyLjctMjAxOTEyMjcucGRmClszXSAocmVxdWlyZXMgbG9naW4p
IGh0dHBzOi8vd3d3Lm54cC5jb20vcHJvZHVjdHMvcHJvY2Vzc29ycy1hbmQtbWljcm9jb250cm9s
bGVycy9hcm0tcHJvY2Vzc29ycy9pLW14LWFwcGxpY2F0aW9ucy1wcm9jZXNzb3JzL2ktbXgtOC1h
cHBsaWNhdGlvbnMtcHJvY2Vzc29ycy9pLW14LThtLXBsdXMtYXJtLWNvcnRleC1hNTMtbWFjaGlu
ZS1sZWFybmluZy12aXNpb24tbXVsdGltZWRpYS1hbmQtaW5kdXN0cmlhbC1pb3Q6SU1YOE1QTFVT
CgoKPiAKPiBZZWFoIQo+ID4gCj4gPiBhZGFtCj4gPiA+IHJlZ2FyZHMsCj4gPiA+ICAgICAgICAg
IG8uCj4gPiA+IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4
ZmYuY3o+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oIHwgNCArKy0tCj4gPiA+ID4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiAKPiA+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNw
MS9ya2lzcDEtY29tbW9uLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNw
MS9ya2lzcDEtY29tbW9uLmgKPiA+ID4gPiA+IGluZGV4IDRiNmIyOGMwNWI4OS4uNzQwOThkZGJl
ZWIzIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmgKPiA+ID4gPiA+IEBAIC0zMyw4
ICszMyw4IEBAIHN0cnVjdCBkZW50cnk7Cj4gPiA+ID4gPiAgICNkZWZpbmUgUktJU1AxX0lTUF9T
RF9TSU5LICAgICAgICAgICAgICAgICBCSVQoMSkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gICAvKiBt
aW4gYW5kIG1heCB2YWx1ZXMgZm9yIHRoZSB3aWR0aHMgYW5kIGhlaWdodHMgb2YgdGhlIGVudGl0
aWVzICovCj4gPiA+ID4gPiAtI2RlZmluZSBSS0lTUDFfSVNQX01BWF9XSURUSCAgICAgICAgICAg
ICAgICAgICAgICAgNDAzMgo+ID4gPiA+ID4gLSNkZWZpbmUgUktJU1AxX0lTUF9NQVhfSEVJR0hU
ICAgICAgICAgICAgICAgICAgICAgIDMwMjQKPiA+ID4gPiA+ICsjZGVmaW5lIFJLSVNQMV9JU1Bf
TUFYX1dJRFRIICAgICAgICAgICAgICAgICAgICAgICA0NDE2Cj4gPiA+ID4gPiArI2RlZmluZSBS
S0lTUDFfSVNQX01BWF9IRUlHSFQgICAgICAgICAgICAgICAgICAgICAgMzMxMgo+ID4gPiA+ID4g
ICAjZGVmaW5lIFJLSVNQMV9JU1BfTUlOX1dJRFRIICAgICAgICAgICAgICAgICAgICAgICAzMgo+
ID4gPiA+ID4gICAjZGVmaW5lIFJLSVNQMV9JU1BfTUlOX0hFSUdIVCAgICAgICAgICAgICAgICAg
ICAgICAzMgo+ID4gPiA+ID4gCj4gPiA+ID4gLS0KPiA+ID4gPiBSZWdhcmRzLAo+ID4gPiA+IAo+
ID4gPiA+IExhdXJlbnQgUGluY2hhcnQKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
