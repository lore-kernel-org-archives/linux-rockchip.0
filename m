Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 847D9C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 02:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fwy+U+njpuNdIfHJ2f0UJWofWpVHBodgDPF/e9Xw3HU=; b=3euLAdH/aP0sUQ6+Aj2Gs88IqX
	b4UCwfJD53mczSUmMIeofMW9Fdl+PIw7VSqq1FaWx/nBjWzouOl7wsPgYeN3ldOuJEnTCGmObyNyI
	KBY4/iEwk/TzTj7WG/9jZyLHc9rjMLzYUNbREgrqmzu9eQ9Yksq60MNRiROnrXhXaKXFTmwlhZkYO
	rda/OGzInkZN5dVuOQKPu5virr/lZ45dkTFrn4UkSI+XENf6rvMMITeYeyKuJzciGNEJY9+OTpzRY
	FrZWS/mfbiXzr4SLZ3KmrXrEDQZGWHEVNeONf3Rc4NBl/rWx+9vbjSisLDOMHvsQdXvGjm7g5SQDv
	KJvYvWeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbt5p-00000008pVN-43OW;
	Mon, 19 Feb 2024 02:09:17 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbt5m-00000008pUM-3I7q;
	Mon, 19 Feb 2024 02:09:16 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5ce2aada130so3466006a12.1;
        Sun, 18 Feb 2024 18:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708308553; x=1708913353; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DIWM3tJrA0wlobXoamzegxBja/IHtDSwJBifnTDGEqo=;
        b=iiNHE0H/KWUGpJExFJInShw09fczyfo5mxdcOT77QNPoEkXQ8hjaMyTHR0jwCBvPQG
         4vOeTPNbQn5MaJwzCS3NQs6Gp36FOg/yXjPJmsr7+p+kC646+tHrQahkOyCksUX7ZnX8
         PY48Ljv2h8sU42xtuDXzLX7+VhzqCKKOxEO4xOjxvqE85X0wd8xchiXF4bPKqnH3FycS
         BfGSdWjiqlVutqL+7FEQGSSALbKV+pJMpEHHY1gPfZRM2thM3Do/wPhIhZ+26A4kd38i
         bUFL1LkDh0dTFBWKXSGq6APuoqupP+yTxpptZGbEWo6f4G+tXtg7aQUF6kuSFQVffXoC
         7fRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708308553; x=1708913353;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DIWM3tJrA0wlobXoamzegxBja/IHtDSwJBifnTDGEqo=;
        b=cQpucRPAWHZ1vklYJvGlsRsWo58mbizMuCKLmpPXOcYPj90wK8P/sTEmuvvHqepJ35
         P/RPu1G+fqpTe1j9XO2vuq1I6e6DGTq9JIHnt+6rIiCGeFtF3jwO4xh7gmH/uyjd9aKx
         M+uFhah1Gb1nmfTrZN06p7hM0VDdnwp9+jZHsHsJ5QhFWaWZbWxJctqpo1LyDxqV7IoH
         9eHxGhvT5ut0rF4N1Yqfz/hCr0FtJliwvWtA2eyJFCSFRRzamhnazC3VTUoqpOUgzjLl
         9zg11xVZVcAJdjUqFRVszXRDOYNKOrpJZAVCo5V7Re39H3SqWqXjeHkmO65nmjZ1m0Ie
         JZ2A==
X-Forwarded-Encrypted: i=1; AJvYcCUaHPqVUwGY6L2q/SEuVgh9+UxhCWCso/ZMVgIBVzxqyGU/cGNQ2zOvLCaC1spHoGkroW0fOaUO/Zf9qXF1xWSDz84sRZZXR7URaZSrsN8ZbPHaQRXtl11VSshZfJB2QqoKpNmUrAljSR+yEeoClTKopzHnZW1iIUI=
X-Gm-Message-State: AOJu0YxJnSJdLAuwJ/E9xiM3FKA1ne538zEuHgpYDPiL/FYfr+Y1aoZe
	RFLL22PhvwuctL/xvTlK0W3GhLwOLiOVx93KIKAdLgW52bsD9jq8Ke1oQiRuRS/EZ7VVxFskwjg
	yC1/ExkjdBqEQQcEFQOERRjz+A90=
X-Google-Smtp-Source: AGHT+IF2RMqM34fBFV5KxmziGBjHWSjfCqPFe/feKRYt3Cj0E4XU20PqYJXg760XTmA/7Ftm2iaw1V181fxcmgHDFEM=
X-Received: by 2002:a05:6a20:9f91:b0:19e:b614:48ad with SMTP id
 mm17-20020a056a209f9100b0019eb61448admr10957320pzb.5.1708308552507; Sun, 18
 Feb 2024 18:09:12 -0800 (PST)
MIME-Version: 1.0
References: <20240217185202.1754750-1-megi@xff.cz> <20240218205908.GA12766@pendragon.ideasonboard.com>
 <pftafukuzq7qzbhlvwtmeg3mburnttylgy4246timlghtrdgx4@r6munvmj6oqt>
In-Reply-To: <pftafukuzq7qzbhlvwtmeg3mburnttylgy4246timlghtrdgx4@r6munvmj6oqt>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 18 Feb 2024 20:09:01 -0600
Message-ID: <CAHCN7x+zi3WxnY-mxZFKePs1cS=-DprEmh_CnypJ4XK7xBzjMQ@mail.gmail.com>
Subject: Re: [PATCH] media: rkisp1: Allow higher input resolution
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-kernel@vger.kernel.org, 
	Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	Paul Elder <paul.elder@ideasonboard.com>, Umang Jain <umang.jain@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_180914_867812_134AFFBA 
X-CRM114-Status: GOOD (  28.00  )
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

T24gU3VuLCBGZWIgMTgsIDIwMjQgYXQgMzowMuKAr1BNIE9uZMWZZWogSmlybWFuIDxtZWdpQHhm
Zi5jej4gd3JvdGU6Cj4KPiBPbiBTdW4sIEZlYiAxOCwgMjAyNCBhdCAxMDo1OTowOFBNICswMjAw
LCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gSGkgT25kcmVqLAo+ID4KPiA+IChDQydpbmcg
UGF1bCBhbmQgVW1hbmcpCj4gPgo+ID4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4gPgo+ID4g
T24gU2F0LCBGZWIgMTcsIDIwMjQgYXQgMDc6NTE6NThQTSArMDEwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gPiA+IEZyb206IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4gPgo+ID4g
PiBJbiBCU1AgZHJpdmVyLCBpdCBpcyBhbGxvd2VkLCBhbmQgaXQgd29ya3MgaW4gcHJhY3RpY2Uu
IFRlc3RlZCBvbgo+ID4gPiBQaW5lcGhvbmUgUHJvL1JLMzM5OSB3aXRoIElNWDI1OCBhdCBmdWxs
IHJlcy4KPiA+Cj4gPiBQYXVsLCBVbWFuZywgZG8gSSByZWNhbGwgY29ycmVjdGx5IHRoYXQgeW91
IGhhdmUgYSBzaW1pbGFyIGNoYW5nZSA/Cj4gPiBDb3VsZCB5b3UgcmV2aWV3IGFuZCB0ZXN0IHRo
aXMgKGVzcGVjaWFsbHkgb24gdGhlIGkuTVg4TVApID8KPgo+IEl0J3MgYWxzbyBhIGxpbWl0IGZy
b20gdGhlIGRhdGFzaGVldCwgc28gdGhlIGNoYW5nZSBzaG91bGQgbm90IGJlIHRoYXQKPiBjb250
cm92ZXJzaWFsOgo+Cj4gICBodHRwczovL21lZ291cy5jb20vZGwvdG1wL2QyYjMzMzA0M2VjZWJh
ZjMucG5nCj4KPiAoc28gdGhhdCBpdCBkb2Vzbid0IHNvdW5kIGxpa2UgSSBqdXN0IGNvcGllZCB0
aGUgQlNQIHZhbHVlcykKPgoKRnJvbSB3aGF0IEkgc2VlIGluIHRoZSBpLk1YOE0gUGx1cyByZWZl
cmVuY2UgbWFudWFsLCBpdCBoYXMgYSBtYXgKcmVzb2x1dGlvbiBvZiA0MDk2eDMwNzIsIHNvIGl0
IG1pZ2h0IGJlIG5lY2Vzc2FyeSB0byBtb3ZlIHRoaXMgb2ZmCmZyb20gYSAjZGVmaW5lIGludG8g
YSBzdHJ1Y3R1cmUgdGhhdCB2YXJpZXMgYnkgcHJvZHVjdCBmYW1pbHkuCgphZGFtCj4gcmVnYXJk
cywKPiAgICAgICAgIG8uCj4KPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVn
aUB4ZmYuY3o+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oIHwgNCArKy0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oCj4g
PiA+IGluZGV4IDRiNmIyOGMwNWI4OS4uNzQwOThkZGJlZWIzIDEwMDY0NAo+ID4gPiAtLS0gYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmgKPiA+
ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNv
bW1vbi5oCj4gPiA+IEBAIC0zMyw4ICszMyw4IEBAIHN0cnVjdCBkZW50cnk7Cj4gPiA+ICAjZGVm
aW5lIFJLSVNQMV9JU1BfU0RfU0lOSyAgICAgICAgICAgICAgICAgQklUKDEpCj4gPiA+Cj4gPiA+
ICAvKiBtaW4gYW5kIG1heCB2YWx1ZXMgZm9yIHRoZSB3aWR0aHMgYW5kIGhlaWdodHMgb2YgdGhl
IGVudGl0aWVzICovCj4gPiA+IC0jZGVmaW5lIFJLSVNQMV9JU1BfTUFYX1dJRFRIICAgICAgICAg
ICAgICAgICAgICAgICA0MDMyCj4gPiA+IC0jZGVmaW5lIFJLSVNQMV9JU1BfTUFYX0hFSUdIVCAg
ICAgICAgICAgICAgICAgICAgICAzMDI0Cj4gPiA+ICsjZGVmaW5lIFJLSVNQMV9JU1BfTUFYX1dJ
RFRIICAgICAgICAgICAgICAgICAgICAgICA0NDE2Cj4gPiA+ICsjZGVmaW5lIFJLSVNQMV9JU1Bf
TUFYX0hFSUdIVCAgICAgICAgICAgICAgICAgICAgICAzMzEyCj4gPiA+ICAjZGVmaW5lIFJLSVNQ
MV9JU1BfTUlOX1dJRFRIICAgICAgICAgICAgICAgICAgICAgICAzMgo+ID4gPiAgI2RlZmluZSBS
S0lTUDFfSVNQX01JTl9IRUlHSFQgICAgICAgICAgICAgICAgICAgICAgMzIKPiA+ID4KPiA+Cj4g
PiAtLQo+ID4gUmVnYXJkcywKPiA+Cj4gPiBMYXVyZW50IFBpbmNoYXJ0Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
