Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F74FC48BF6
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 20:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clfSt0Q3M2xJFUA6Ca+af96NrrbV0seKVq40qLXb6aI=; b=REdLdcnP1e3too
	EjlCSndhU4WL5lG/7aD46pyGINdbNK0zQsGiJeMAoTKipbaypx1tkUmHsuNnElXVISrSfZSDJPDDN
	5jFa6gxZnLy0w3zGeFE5TxtZeIBkqTGr7OotvC4pYpvWRv+Wx7Ffo8jslJJlqQdFNqrZ35wsE41Wy
	Mv0L4yA5yy/Unw2hMh7XpnQnMPUxmpDpRbnv+0z+49aLthnHNBS4rgLu5J2gQvg/IzimgzimaCvcQ
	NlHaaDNanRhA+L0OtGeDm9QQtWyu7DLodhWx1H5n+naq8UnSVb2FLgdLdKnWGAap2Rb3PknazLDht
	4NtbDClZZo4ikSv7nzyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rboFi-00000008Qer-3N1H;
	Sun, 18 Feb 2024 20:59:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rboFe-00000008QdO-20Fi;
	Sun, 18 Feb 2024 20:59:07 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CF5BD480;
	Sun, 18 Feb 2024 21:58:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708289939;
	bh=khfnj274W3hIO2mm4nJSPvvGpMlSXQTa0mKP8vdFy2A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BSuHceceam2Vbvp9RA20ARGPGohQIdFGAlbTwzftZgQ4rIl5rhKwnTO/WhUVtPv52
	 DHpZIW7qPTEYHPkKNwBFReef7MunnXznqTC+2Wuy002AOwRWuzN/J8JnvqVstgzjY7
	 m74hrhd/pVXQECWZJ26fbguybcfTZ/AEQT+4cj0U=
Date: Sun, 18 Feb 2024 22:59:08 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: linux-kernel@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Umang Jain <umang.jain@ideasonboard.com>
Subject: Re: [PATCH] media: rkisp1: Allow higher input resolution
Message-ID: <20240218205908.GA12766@pendragon.ideasonboard.com>
References: <20240217185202.1754750-1-megi@xff.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240217185202.1754750-1-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_125906_676996_AFCE1D87 
X-CRM114-Status: GOOD (  15.71  )
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

SGkgT25kcmVqLAoKKENDJ2luZyBQYXVsIGFuZCBVbWFuZykKClRoYW5rIHlvdSBmb3IgdGhlIHBh
dGNoLgoKT24gU2F0LCBGZWIgMTcsIDIwMjQgYXQgMDc6NTE6NThQTSArMDEwMCwgT25kxZllaiBK
aXJtYW4gd3JvdGU6Cj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gCj4gSW4g
QlNQIGRyaXZlciwgaXQgaXMgYWxsb3dlZCwgYW5kIGl0IHdvcmtzIGluIHByYWN0aWNlLiBUZXN0
ZWQgb24KPiBQaW5lcGhvbmUgUHJvL1JLMzM5OSB3aXRoIElNWDI1OCBhdCBmdWxsIHJlcy4KClBh
dWwsIFVtYW5nLCBkbyBJIHJlY2FsbCBjb3JyZWN0bHkgdGhhdCB5b3UgaGF2ZSBhIHNpbWlsYXIg
Y2hhbmdlID8KQ291bGQgeW91IHJldmlldyBhbmQgdGVzdCB0aGlzIChlc3BlY2lhbGx5IG9uIHRo
ZSBpLk1YOE1QKSA/Cgo+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6
Pgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEt
Y29tbW9uLmggfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oCj4gaW5kZXggNGI2YjI4YzA1Yjg5Li43NDA5OGRk
YmVlYjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lz
cDEvcmtpc3AxLWNvbW1vbi5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oCj4gQEAgLTMzLDggKzMzLDggQEAgc3RydWN0IGRlbnRy
eTsKPiAgI2RlZmluZSBSS0lTUDFfSVNQX1NEX1NJTksJCQlCSVQoMSkKPiAgCj4gIC8qIG1pbiBh
bmQgbWF4IHZhbHVlcyBmb3IgdGhlIHdpZHRocyBhbmQgaGVpZ2h0cyBvZiB0aGUgZW50aXRpZXMg
Ki8KPiAtI2RlZmluZSBSS0lTUDFfSVNQX01BWF9XSURUSAkJCTQwMzIKPiAtI2RlZmluZSBSS0lT
UDFfSVNQX01BWF9IRUlHSFQJCQkzMDI0Cj4gKyNkZWZpbmUgUktJU1AxX0lTUF9NQVhfV0lEVEgJ
CQk0NDE2Cj4gKyNkZWZpbmUgUktJU1AxX0lTUF9NQVhfSEVJR0hUCQkJMzMxMgo+ICAjZGVmaW5l
IFJLSVNQMV9JU1BfTUlOX1dJRFRICQkJMzIKPiAgI2RlZmluZSBSS0lTUDFfSVNQX01JTl9IRUlH
SFQJCQkzMgo+ICAKCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
