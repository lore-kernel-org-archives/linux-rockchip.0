Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50A0DC48BF6
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 21:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/SSkzWzVi8WeuUXXfSMUKqUVbRtZeNh067IOReB448=; b=LknlSQp30pErEK
	Ov49I96kRkS3l2gyOmK4BO516U+YGjRAMBJ38kjgHMMjkbOJtdT7x+6pm2RjAugmCwRAkBae50KiS
	MS3uLpbzDv0QP4Fu6pucfQRL9gNzVamS0ANCCGc5rRxvK2R8Cfwhbz83+5QDNnezKiM35k4e9oC00
	8eT9wF1oeRjL9MilAqPTr2x7ONAuvzlrbZoI9VVIEQH4h3gOn8SJCcTBgnBA5Bi7CGZguculYdh35
	ySoccYRDUS71tsoZ9YdCf1x+JHDkIo8GWc9SUkNT9Nr9IRcDgiTiLwql8guFZmEc47NgZLpS5euVe
	l+fHDmR8wwXKCoPAGnGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rboIV-00000008R0Z-1eQx;
	Sun, 18 Feb 2024 21:02:03 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rboIR-00000008R00-2Bsb;
	Sun, 18 Feb 2024 21:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708290112; bh=39o8JnW8nz8KkMiUIzgrvI2AwghlyIJYXxtWjH0s304=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=Ed+rRW5Z7tE2mZTY1jKHk27CkPudDtGQ1cbiuMoBxacypMSu9w8G34XjGJOQFHrIL
	 k/mT6zz8U+8rbLJalPRs7hwgdGqw5pUPvCzO0vm0A9giknFGRsxVtsEgkkCW5WPkuX
	 h+isHpPP7Abm4idu09TyETKNShxT8nbo97FBJtes=
Date: Sun, 18 Feb 2024 22:01:52 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-kernel@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, Paul Elder <paul.elder@ideasonboard.com>, 
	Umang Jain <umang.jain@ideasonboard.com>
Subject: Re: [PATCH] media: rkisp1: Allow higher input resolution
Message-ID: <pftafukuzq7qzbhlvwtmeg3mburnttylgy4246timlghtrdgx4@r6munvmj6oqt>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-kernel@vger.kernel.org, 
	Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, "open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, Paul Elder <paul.elder@ideasonboard.com>, 
	Umang Jain <umang.jain@ideasonboard.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240217185202.1754750-1-megi@xff.cz>
 <20240218205908.GA12766@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240218205908.GA12766@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_130200_035954_83F6AB33 
X-CRM114-Status: GOOD (  22.07  )
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

T24gU3VuLCBGZWIgMTgsIDIwMjQgYXQgMTA6NTk6MDhQTSArMDIwMCwgTGF1cmVudCBQaW5jaGFy
dCB3cm90ZToKPiBIaSBPbmRyZWosCj4gCj4gKENDJ2luZyBQYXVsIGFuZCBVbWFuZykKPiAKPiBU
aGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiAKPiBPbiBTYXQsIEZlYiAxNywgMjAyNCBhdCAwNzo1
MTo1OFBNICswMTAwLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiA+IEZyb206IE9uZHJlaiBKaXJt
YW4gPG1lZ2lAeGZmLmN6Pgo+ID4gCj4gPiBJbiBCU1AgZHJpdmVyLCBpdCBpcyBhbGxvd2VkLCBh
bmQgaXQgd29ya3MgaW4gcHJhY3RpY2UuIFRlc3RlZCBvbgo+ID4gUGluZXBob25lIFByby9SSzMz
OTkgd2l0aCBJTVgyNTggYXQgZnVsbCByZXMuCj4gCj4gUGF1bCwgVW1hbmcsIGRvIEkgcmVjYWxs
IGNvcnJlY3RseSB0aGF0IHlvdSBoYXZlIGEgc2ltaWxhciBjaGFuZ2UgPwo+IENvdWxkIHlvdSBy
ZXZpZXcgYW5kIHRlc3QgdGhpcyAoZXNwZWNpYWxseSBvbiB0aGUgaS5NWDhNUCkgPwoKSXQncyBh
bHNvIGEgbGltaXQgZnJvbSB0aGUgZGF0YXNoZWV0LCBzbyB0aGUgY2hhbmdlIHNob3VsZCBub3Qg
YmUgdGhhdApjb250cm92ZXJzaWFsOgoKICBodHRwczovL21lZ291cy5jb20vZGwvdG1wL2QyYjMz
MzA0M2VjZWJhZjMucG5nCgooc28gdGhhdCBpdCBkb2Vzbid0IHNvdW5kIGxpa2UgSSBqdXN0IGNv
cGllZCB0aGUgQlNQIHZhbHVlcykKCnJlZ2FyZHMsCglvLgoKPiA+IFNpZ25lZC1vZmYtYnk6IE9u
ZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4gLS0tCj4gPiAgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oIHwgNCArKy0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jb21t
b24uaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jb21t
b24uaAo+ID4gaW5kZXggNGI2YjI4YzA1Yjg5Li43NDA5OGRkYmVlYjMgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmgK
PiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1j
b21tb24uaAo+ID4gQEAgLTMzLDggKzMzLDggQEAgc3RydWN0IGRlbnRyeTsKPiA+ICAjZGVmaW5l
IFJLSVNQMV9JU1BfU0RfU0lOSwkJCUJJVCgxKQo+ID4gIAo+ID4gIC8qIG1pbiBhbmQgbWF4IHZh
bHVlcyBmb3IgdGhlIHdpZHRocyBhbmQgaGVpZ2h0cyBvZiB0aGUgZW50aXRpZXMgKi8KPiA+IC0j
ZGVmaW5lIFJLSVNQMV9JU1BfTUFYX1dJRFRICQkJNDAzMgo+ID4gLSNkZWZpbmUgUktJU1AxX0lT
UF9NQVhfSEVJR0hUCQkJMzAyNAo+ID4gKyNkZWZpbmUgUktJU1AxX0lTUF9NQVhfV0lEVEgJCQk0
NDE2Cj4gPiArI2RlZmluZSBSS0lTUDFfSVNQX01BWF9IRUlHSFQJCQkzMzEyCj4gPiAgI2RlZmlu
ZSBSS0lTUDFfSVNQX01JTl9XSURUSAkJCTMyCj4gPiAgI2RlZmluZSBSS0lTUDFfSVNQX01JTl9I
RUlHSFQJCQkzMgo+ID4gIAo+IAo+IC0tIAo+IFJlZ2FyZHMsCj4gCj4gTGF1cmVudCBQaW5jaGFy
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
