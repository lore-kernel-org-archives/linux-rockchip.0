Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2724C48BC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 23:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFHS0rB+Q3XnC+J1+8MebFfyksB8nd7EjKhZZUoaf6E=; b=VUwSf7g1ZzkzT4
	22Nm6DqHTlVULiDuoUjcxZhTaQWm4dRU+xhCPTMA4atYMoSRE9B8qt+mxHkuXS0pH3L7ACibVA8F1
	ZC7IEa25lKD3e1sUPO6/bXpdVo5vvK/7CocZOEpobmDajIdUDksEKDm04CAzDNMh47GmXurKJD9if
	/lwBfc6hUOhe+ENxrpzPbIhtYqx09nKUYeoICw8felA8XJHTK2X8gnvKAu5VG8X0O+nd7XIiBjmPD
	LU2+V4QYnah/dSPlpnAr5NE92e2W2OkltKFO5hp2QlpnggtU+RNFNJuJ60wizGZoOLMAXuxO3A2Uu
	sFgX/WIkU/QCmIy5XHzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rca1O-0000000GZNy-1QnV;
	Tue, 20 Feb 2024 23:59:34 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rca1K-0000000GZMF-0pEh;
	Tue, 20 Feb 2024 23:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708473568; bh=Ic3PGA9XbqqKUVLDmy67yPb63iQQ23yWWEgOCTHCJCE=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=GYIUefcOAZN+BZE0icF1FyKgsVi0wo2GLFm1cYpL1w0hwa9CExdRkmiJvcWkj4gJy
	 EFCFA8FMIspR1igCu5Mwgd5PTiXYbswC3WQ4BOgNOuGL3RRj+dxuDUU0tGwCrUe4fY
	 qU9f76Givi/PH3aLOFNx8FLNEM+avqGyPAnTF+g8=
Date: Wed, 21 Feb 2024 00:59:28 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, 
	Umang Jain <umang.jain@ideasonboard.com>, Adam Ford <aford173@gmail.com>, linux-kernel@vger.kernel.org, 
	Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, "open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] media: rkisp1: Allow higher input resolution
Message-ID: <va4xwavrvjkm7mydvu4jaikzthn3qjcox7ciudx334hdmp6op2@uoldcj4vyv2g>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Paul Elder <paul.elder@ideasonboard.com>, 
	Umang Jain <umang.jain@ideasonboard.com>, Adam Ford <aford173@gmail.com>, linux-kernel@vger.kernel.org, 
	Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, "open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240217185202.1754750-1-megi@xff.cz>
 <20240218205908.GA12766@pendragon.ideasonboard.com>
 <pftafukuzq7qzbhlvwtmeg3mburnttylgy4246timlghtrdgx4@r6munvmj6oqt>
 <CAHCN7x+zi3WxnY-mxZFKePs1cS=-DprEmh_CnypJ4XK7xBzjMQ@mail.gmail.com>
 <b500676e-431f-40fc-868b-9f9bb359a109@ideasonboard.com>
 <ZdMpSLqYVFbU7sF0@pyrite.rasen.tech>
 <20240219115430.GC13043@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240219115430.GC13043@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_155930_408547_B9EAD991 
X-CRM114-Status: GOOD (  41.68  )
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

SGVsbG8gTGF1cmVudCwKCk9uIE1vbiwgRmViIDE5LCAyMDI0IGF0IDAxOjU0OjMwUE0gKzAyMDAs
IExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gT24gTW9uLCBGZWIgMTksIDIwMjQgYXQgMDc6MTE6
MjBQTSArMDkwMCwgUGF1bCBFbGRlciB3cm90ZToKPiA+IE9uIE1vbiwgRmViIDE5LCAyMDI0IGF0
IDAyOjMzOjIxUE0gKzA1MzAsIFVtYW5nIEphaW4gd3JvdGU6Cj4gPiA+IE9uIDE5LzAyLzI0IDc6
MzkgYW0sIEFkYW0gRm9yZCB3cm90ZToKPiA+ID4gPiBPbiBTdW4sIEZlYiAxOCwgMjAyNCBhdCAz
OjAy4oCvUE0gT25kxZllaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PiB3cm90ZToKPiA+ID4gPiA+IE9u
IFN1biwgRmViIDE4LCAyMDI0IGF0IDEwOjU5OjA4UE0gKzAyMDAsIExhdXJlbnQgUGluY2hhcnQg
d3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFNhdCwgRmViIDE3LCAyMDI0IGF0IDA3OjUxOjU4UE0gKzAx
MDAsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+ID4gPiA+ID4gPiA+IEZyb206IE9uZHJlaiBKaXJt
YW4gPG1lZ2lAeGZmLmN6Pgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEluIEJTUCBkcml2
ZXIsIGl0IGlzIGFsbG93ZWQsIGFuZCBpdCB3b3JrcyBpbiBwcmFjdGljZS4gVGVzdGVkIG9uCj4g
PiA+ID4gPiA+ID4gUGluZXBob25lIFByby9SSzMzOTkgd2l0aCBJTVgyNTggYXQgZnVsbCByZXMu
Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFBhdWwsIFVtYW5nLCBkbyBJIHJlY2FsbCBjb3JyZWN0
bHkgdGhhdCB5b3UgaGF2ZSBhIHNpbWlsYXIgY2hhbmdlID8KPiA+ID4gPiA+ID4gQ291bGQgeW91
IHJldmlldyBhbmQgdGVzdCB0aGlzIChlc3BlY2lhbGx5IG9uIHRoZSBpLk1YOE1QKSA/Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gSXQncyBhbHNvIGEgbGltaXQgZnJvbSB0aGUgZGF0YXNoZWV0LCBzbyB0
aGUgY2hhbmdlIHNob3VsZCBub3QgYmUgdGhhdAo+ID4gPiA+ID4gY29udHJvdmVyc2lhbDoKPiA+
ID4gPiA+IAo+ID4gPiA+ID4gICAgaHR0cHM6Ly9tZWdvdXMuY29tL2RsL3RtcC9kMmIzMzMwNDNl
Y2ViYWYzLnBuZwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAoc28gdGhhdCBpdCBkb2Vzbid0IHNvdW5k
IGxpa2UgSSBqdXN0IGNvcGllZCB0aGUgQlNQIHZhbHVlcykKPiA+ID4gPiA+IAo+ID4gPiA+ICBG
cm9tIHdoYXQgSSBzZWUgaW4gdGhlIGkuTVg4TSBQbHVzIHJlZmVyZW5jZSBtYW51YWwsIGl0IGhh
cyBhIG1heAo+ID4gPiA+IHJlc29sdXRpb24gb2YgNDA5NngzMDcyLCBzbyBpdCBtaWdodCBiZSBu
ZWNlc3NhcnkgdG8gbW92ZSB0aGlzIG9mZgo+ID4gPiAKPiA+ID4gVGhpcyBpcyB3aGF0IEkgKGFu
ZCBJIGFzc3VtZSBQYXVsIHRvbykgaGF2ZSBiZWVuIHdvcmtpbmcgd2l0aCBvbiBpLk1YOE0KPiA+
ID4gUGx1cy4gU28gaXQncyB0aGUga25vd24gYW5kIHRlc3RlZCB2YWx1ZSBvZiBtYXggSVNQIGlu
cHV0IGZyb20gb3V0IHNpZGUuCj4gPiA+Cj4gPiA+ID4gZnJvbSBhICNkZWZpbmUgaW50byBhIHN0
cnVjdHVyZSB0aGF0IHZhcmllcyBieSBwcm9kdWN0IGZhbWlseS4KPiA+IAo+ID4gWWVzLCB0aGlz
IGlzIHdoYXQgbmVlZHMgdG8gYmUgZG9uZS4gSGVyZSdzIHdoYXQgSSBoYXZlIGluIG15IG5vdGVz
Ogo+ID4gCj4gPiAtIFRoZSBSSzMzOTkgVFJNIHNheXMgNDQxNngzMzEyIG1heCBpbnB1dCBhbmQg
b3V0cHV0IG9uIG1haW4gcGF0aCwgd2l0aAo+ID4gICAxOTIweDEwODAgbWF4IG91dHB1dCBvbiBz
ZWxmIHBhdGguCj4gPiAtIFRoZSBQWDMwIGRhdGFzaGVldCBbMV0gc2F5cyAzMjY0eDI0NDggbWF4
IGlucHV0IGFuZCBvdXRwdXQgb24gbWFpbgo+ID4gICBwYXRoLCB3aXRoIDE5MjB4MTA4MCBtYXgg
b3V0cHV0IG9uIHNlbGYgcGF0aC4KPiA+IC0gVGhlIFJLMzI4OCBkb2N1bWVudGF0aW9uIFsyXSAo
dW5kZXIgIkNhbWVyYSBJbnRlcmZhY2UgYW5kIEltYWdlCj4gPiAgIFByb2Nlc3NvciIpIHNheXMg
NDQxNngzMzEyIG1heCBpbnB1dCBhbmQgb3V0cHV0IG9uIG1haW4gcGF0aCwgd2l0aAo+ID4gICAx
OTIweDEwODAgbWF4IG91dHB1dCBvbiBzZWxmIHBhdGguCj4gPiAtIFRoZSBpLk1YOE1QIHJlZmVy
ZW5jZSBtYW51YWwgKHRoZSBvcGVuIG9uZSkgWzNdIChpbiB0YWJsZSAxMy0xKSBzYXlzCj4gPiAg
IDQwOTZ4MzA3MiBtYXggcmVzb2x1dGlvbiBpbiBzaW5nbGUgSVNQIG1vZGUKPiA+IAo+ID4gVGhl
IGkuTVg4TSBQbHVzIHNlZW1zIHRvIGluZGVlZCBiZSBsaW1pdGVkIHRvIDQwOTZ4MzA3MiwgYnV0
IHRoZSBUUEcgaXMKPiA+IGNhcGFibGUgb2YgZ2VuZXJhdGluZyA0NDE2eDMzMTIsIGFuZCB0aGUg
SVNQIHdvcmtzIGZpbmUgaW4gYnlwYXNzIChhbmQKPiA+IHRoZXJlZm9yZSByYXcpIG1vZGUsIHNv
IHRlY2huaWNhbGx5IGl0IGhhcyBkaWZmZXJlbnQgbWF4aW11bSBzaXplcwo+ID4gZGVwZW5kaW5n
IG9uIHRoZSBmb3JtYXQgd2hpY2ggbWFrZXMgdGhpcyBtb3JlIGV4Y2l0aW5nLgo+ID4gCj4gPiBJ
biBhbnkgY2FzZSwgdGhlIFBYMzAgKGFzc3VtaW5nIHRoZSBkYXRhc2hlZXQgaXMgY29ycmVjdCkg
b25seSBzdXBwb3J0cwo+ID4gdXAgdG8gMzI2NHgyNDQ4LCBzbyB0aGUgZXhpc3RpbmcgI2RlZmlu
ZSBpcyBpbmNvcnJlY3QgYW55d2F5Lgo+ID4gCj4gPiBJIGRvbid0IGhhdmUgYSBQWDMwIG5vciBh
biBSSzMyODggc28gSSBjYW4ndCB0ZXN0IHRob3NlLCBhbmQgSSBoYXZlbid0Cj4gPiBzZXQgdXAg
bXkgT1Y2NEE0MCB5ZXQgd2hpY2ggKEkndmUgaGVhcmQpIGNhbiBiZSB1c2VkIHRvIHRlc3QgZXZl
biBiaWdnZXIKPiA+IHJlc29sdXRpb25zLgo+IAo+IFRoYW5rcyBmb3IgdGhlIHN1bW1hcnkgUGF1
bC4KPiAKPiBPbmTFmWVqLCB3b3VsZCB5b3UgYmUgaW50ZXJlc3RlZCBpbiBpbXBsZW1lbnRpbmcg
dGhpcyA/CgpTb21ldGhpbmcgbGlrZSB0aGlzPwoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGtt
bC8yMDI0MDIyMDIzNTcyMC4zMDEwNjA4LTEtbWVnaUB4ZmYuY3ovVC8jdQoKT25seSB0aGUgZmly
c3QgdHdvIFNvQ3MgYXJlIHN1cHBvcnRlZCBieSBya2lzcDEgZHJpdmVyIHVwc3RyZWFtLCB5ZXQu
IFNvIEkKb25seSBoYXZlIHRvIGRlYWwgd2l0aCBpbnB1dCBhbmQgbWFpbnBhdGggbWF4aW11bSBB
VE0uIFNvIHRoZSBwYXRjaCBpcyByYXRoZXIKc2ltcGxlLgoKa2luZCByZWdhcmRzLAoJby4KCj4g
PiBbMV0gaHR0cHM6Ly9vcGVuc291cmNlLnJvY2stY2hpcHMuY29tL2ltYWdlcy84Lzg3L1JvY2tj
aGlwX1BYMzBfRGF0YXNoZWV0X1YxLjQtMjAxOTEyMjcucGRmCj4gPiBbMl0gaHR0cHM6Ly9vcGVu
c291cmNlLnJvY2stY2hpcHMuY29tL2ltYWdlcy80LzQ5L1JvY2tjaGlwX1JLMzI4OF9EYXRhc2hl
ZXRfVjIuNy0yMDE5MTIyNy5wZGYKPiA+IFszXSAocmVxdWlyZXMgbG9naW4pIGh0dHBzOi8vd3d3
Lm54cC5jb20vcHJvZHVjdHMvcHJvY2Vzc29ycy1hbmQtbWljcm9jb250cm9sbGVycy9hcm0tcHJv
Y2Vzc29ycy9pLW14LWFwcGxpY2F0aW9ucy1wcm9jZXNzb3JzL2ktbXgtOC1hcHBsaWNhdGlvbnMt
cHJvY2Vzc29ycy9pLW14LThtLXBsdXMtYXJtLWNvcnRleC1hNTMtbWFjaGluZS1sZWFybmluZy12
aXNpb24tbXVsdGltZWRpYS1hbmQtaW5kdXN0cmlhbC1pb3Q6SU1YOE1QTFVTCj4gPiAKPiA+ID4g
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+ID4g
PiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gPiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmtpc3AxL3JraXNwMS1jb21tb24uaCB8IDQgKystLQo+ID4gPiA+ID4gPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oCj4gPiA+ID4gPiA+ID4gaW5kZXggNGI2YjI4YzA1Yjg5
Li43NDA5OGRkYmVlYjMgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oCj4gPiA+ID4gPiA+ID4gKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5o
Cj4gPiA+ID4gPiA+ID4gQEAgLTMzLDggKzMzLDggQEAgc3RydWN0IGRlbnRyeTsKPiA+ID4gPiA+
ID4gPiAgICNkZWZpbmUgUktJU1AxX0lTUF9TRF9TSU5LICAgICAgICAgICAgICAgICBCSVQoMSkK
PiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAgIC8qIG1pbiBhbmQgbWF4IHZhbHVlcyBmb3Ig
dGhlIHdpZHRocyBhbmQgaGVpZ2h0cyBvZiB0aGUgZW50aXRpZXMgKi8KPiA+ID4gPiA+ID4gPiAt
I2RlZmluZSBSS0lTUDFfSVNQX01BWF9XSURUSCAgICAgICAgICAgICAgICAgICAgICAgNDAzMgo+
ID4gPiA+ID4gPiA+IC0jZGVmaW5lIFJLSVNQMV9JU1BfTUFYX0hFSUdIVCAgICAgICAgICAgICAg
ICAgICAgICAzMDI0Cj4gPiA+ID4gPiA+ID4gKyNkZWZpbmUgUktJU1AxX0lTUF9NQVhfV0lEVEgg
ICAgICAgICAgICAgICAgICAgICAgIDQ0MTYKPiA+ID4gPiA+ID4gPiArI2RlZmluZSBSS0lTUDFf
SVNQX01BWF9IRUlHSFQgICAgICAgICAgICAgICAgICAgICAgMzMxMgo+ID4gPiA+ID4gPiA+ICAg
I2RlZmluZSBSS0lTUDFfSVNQX01JTl9XSURUSCAgICAgICAgICAgICAgICAgICAgICAgMzIKPiA+
ID4gPiA+ID4gPiAgICNkZWZpbmUgUktJU1AxX0lTUF9NSU5fSEVJR0hUICAgICAgICAgICAgICAg
ICAgICAgIDMyCj4gPiA+ID4gPiA+ID4gCj4gCj4gLS0gCj4gUmVnYXJkcywKPiAKPiBMYXVyZW50
IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
