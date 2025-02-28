Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 710CBC19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 10:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5V6DXhu35Z8/iL9hiE+VqE0iZN7g3QOYOl8E3tAQo3w=; b=1oJ/eM5FvF8GBj
	oAzj5xEDPsnwnUQ65UjRgTH+9JKwkjNyQHonwV3+IO4FcOVa2Uc8h4IQA7Kr61cBzfG0bjXsC3uLj
	lG9LweBc+ELEBp6sPfYUMzByqJcL7OKVTOnINDnFmJrpS0C4JVdIzddjYLU/f+BiMAX6a8mp0nOBd
	GUfuozTtEmRra/Xhouz0Nr1MvMEuImXpY04aJm22kZxi1FlZ/7+TzQjskkBI+3ruiu7Wo7FdGOs/a
	KLX2SPnkgchMOQuwz5VUwfhtTESZ6D992po4Gs2l4DQhajoozEJcDnqcswCW59vNimINLFim1r7Rd
	2ZTkoB6FBxWov+K+4+ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnxos-0000000AdVT-12Vn;
	Fri, 28 Feb 2025 10:42:14 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnxZ6-0000000AaTE-0FWT
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 10:25:57 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5e095d47a25so3200710a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 02:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740738353; x=1741343153; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nb9NUQhb3bplKyawSYK7wGLTz8Fx3itEvvEthZZH/DE=;
        b=nsYWJxrFLyachQl7M4YuCwxYXFJqG+9pKsbIBr2pjTOEOPz76ZXY+mgZWSbQ9X9iKt
         IUjJOxMESookyL8k+Yjpf5bIPdN4RSDzgXLrJW6egON5GYuDJy/ghVIN0nuHH42Q/5i+
         yMudUmwOwGJiCpYcOKSHgrBCpBc7udPqNMGo0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740738353; x=1741343153;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nb9NUQhb3bplKyawSYK7wGLTz8Fx3itEvvEthZZH/DE=;
        b=GRzIYb0POLgmzbOlxvT0EpeUdWCrG2W92e0jteERC8JuZB++cCeHaW4QkUVk3FsD84
         i8OKtNNITR33Iudrn7bC6D7o9nj4ahO4m9NEIbEWZIL8a7877Ved1ZC/z+GffSWe7lbr
         FUblMcBqdXGfQTuKg8fZrbzFzWdzZLJzSy1yuuVMQIHOcTebnzyxMSGMjCMuPjIy6/5t
         04wt5w0aZaZGuCnm7+HiaC66/dZiKj7mga7rzJdSeDKayNXWr3DSml3C6tnsI895gKHP
         ieXE/1vxWih7Egj71s1ln2JZlqmFqwJXkhJnhrAbiK8i0744YYdlaq380MY5c0WAFHnr
         kR1Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2MJG2NHVQ6Vh2jlJS6KBhieTB63nKGexMYBS9c7wGjrdis2k5hF1VYHJj1YsCPELP9w5AR1xVkPIkMBTmlQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0QM3Wg6QwjSasdswWfMsGg0euKBV1CechJGwarA6G/rq71o29
	Inhlh2RrGffEq146malJlc8Jyk4PQcA/sz1E4sqmOWIW500Mw1dMGWSaxvmPiimOy9VyyKRHHCi
	QLQ==
X-Gm-Gg: ASbGncsEDbFMrDLfankoNRGRqyPQRiEp/LXmaFTTSC/r39FPwR+e9p6FMUHpnoo2xIU
	q2OFJSWZumbqqPP/DANZp6XPKl5LOD/AVwMRPkLjskK/xeswsc1yFOhHwbLZh6GGsk1oTw3Xt0E
	lRm2WT3/MFkjaoai30jkv2IMfu4ORpT/D9SY7eqIJ7exyk600PbJ4JwN1dg9myEayNYAVTJDHCI
	lrIxOThjooh6cq5TjeIPsaJ9MWjgp3996ainC5/YTK1CRekhL9aUrlgjsUzqEMtkS4PFp1b8E7e
	fF5Y/4150yAUeCVFBEP3+qdoivB89byNvMIVSqiFL4lEqx/hU0YX/HKhsoExCw==
X-Google-Smtp-Source: AGHT+IF6N/0W0tATJX6gtllFYYQXxz34H0cu2a3QxIkmEsvzySmtAVeaqXHi5sOsymcNM2B7hcfNGg==
X-Received: by 2002:a17:907:3f0f:b0:aaf:1183:e9be with SMTP id a640c23a62f3a-abf25f8ff69mr292936966b.2.1740738353067;
        Fri, 28 Feb 2025 02:25:53 -0800 (PST)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com. [209.85.208.42])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c6e96ecsm265610266b.114.2025.02.28.02.25.51
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 02:25:51 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5ded4a3bf0bso9491a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 02:25:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWz/l0HxoPw217wYplL8JuR5ZzeunvyxugWkl6B3jsthW5OAoFQnHXpsnSvqarahqZjSH7WDG9nOB37+Ke48w==@lists.infradead.org
X-Received: by 2002:a50:d7dd:0:b0:5dc:ccb4:cb11 with SMTP id
 4fb4d7f45d1cf-5e4d74dea39mr77472a12.4.1740738351014; Fri, 28 Feb 2025
 02:25:51 -0800 (PST)
MIME-Version: 1.0
References: <20250128-b4-rkisp-noncoherent-v3-0-baf39c997d2a@gmail.com>
 <20250128-b4-rkisp-noncoherent-v3-1-baf39c997d2a@gmail.com> <25beec7ea929b624d845f5ba4abce6267974ed82.camel@ndufresne.ca>
In-Reply-To: <25beec7ea929b624d845f5ba4abce6267974ed82.camel@ndufresne.ca>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 28 Feb 2025 19:25:33 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A4YOaSCn=xe7OM-hPKcUhqkD5hTiMUo5F9pwhKNFJ2Lg@mail.gmail.com>
X-Gm-Features: AQ5f1JoHaD84fv2X5fHk6A_BWpTZQNcf1bz4WEEDQ8FkApfINlkKzBEV-PkKHU4
Message-ID: <CAAFQd5A4YOaSCn=xe7OM-hPKcUhqkD5hTiMUo5F9pwhKNFJ2Lg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] media: videobuf2: Fix dmabuf cache sync/flush in dma-contig
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sergey Senozhatsky <senozhatsky@chromium.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_022556_123825_312B6511 
X-CRM114-Status: GOOD (  29.96  )
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

T24gRnJpLCBGZWIgMjgsIDIwMjUgYXQgMTI6MzDigK9QTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNv
bGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4KPiBMZSBtYXJkaSAyOCBqYW52aWVyIDIwMjUgw6Ag
MjM6MzUgKzAzMDAsIE1pa2hhaWwgUnVkZW5rbyBhIMOpY3JpdCA6Cj4gPiBXaGVuIHN1cHBvcnQg
Zm9yIFY0TDJfRkxBR19NRU1PUllfTk9OX0NPTlNJU1RFTlQgd2FzIHJlbW92ZWQgaW4KPiA+IGNv
bW1pdCAxMjkxMzRlNTQxNWQgKCJtZWRpYTogbWVkaWEvdjRsMjogcmVtb3ZlCj4gPiBWNEwyX0ZM
QUdfTUVNT1JZX05PTl9DT05TSVNURU5UIGZsYWciKSwKPiA+IHZiMl9kY19kbWFidWZfb3BzX3ti
ZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMgd2VyZSBtYWRlCj4gPiBuby1vcHMuIExh
dGVyLCB3aGVuIHN1cHBvcnQgZm9yIFY0TDJfTUVNT1JZX0ZMQUdfTk9OX0NPSEVSRU5UIHdhcwo+
ID4gaW50cm9kdWNlZCBpbiBjb21taXQgYzBhY2Y5Y2ZlZWUwICgibWVkaWE6IHZpZGVvYnVmMjog
aGFuZGxlCj4gPiBWNEwyX01FTU9SWV9GTEFHX05PTl9DT0hFUkVOVCBmbGFnIiksIHRoZSBhYm92
ZSBmdW5jdGlvbnMgcmVtYWluZWQKPiA+IG5vLW9wcywgbWFraW5nIGNhY2hlIG1haW50ZW5hbmNl
IGZvciBub24tY29oZXJlbnQgZG1hYnVmcyBhbGxvY2F0ZWQKPiA+IGJ5Cj4gPiBkbWEtY29udGln
IGltcG9zc2libGUuCj4gPgo+ID4gRml4IHRoaXMgYnkgcmVpbnRyb2R1Y2luZyBkbWFfc3luY19z
Z3RhYmxlX2Zvcl97Y3B1LGRldmljZX0gYW5kCj4gPiB7Zmx1c2gsaW52YWxpZGF0ZX1fa2VybmVs
X3ZtYXBfcmFuZ2UgY2FsbHMgdG8KPiA+IHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixlbmR9X2Nw
dV9hY2Nlc3MoKSBmdW5jdGlvbnMgZm9yIG5vbi1jb2hlcmVudAo+ID4gYnVmZmVycy4KPiA+Cj4g
PiBGaXhlczogYzBhY2Y5Y2ZlZWUwICgibWVkaWE6IHZpZGVvYnVmMjogaGFuZGxlCj4gPiBWNEwy
X01FTU9SWV9GTEFHX05PTl9DT0hFUkVOVCBmbGFnIikKPiA+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWtoYWlsIFJ1ZGVua28gPG1pa2UucnVkZW5rb0Bn
bWFpbC5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1
ZjItZG1hLWNvbnRpZy5jICB8IDIyCj4gPiArKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiA+IGIvZHJp
dmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiA+IGlu
ZGV4Cj4gPiBiYjBiN2ZhNjdiNTM5YWE3M2FkNWNjZjNjM2JjMzE4ZTI2ZjhhNGNiLi4xNDZkNzk5
N2EwZGE1OTg5ZmIwODFhNmYyOGMKPiA+IGUwNjQxZmU3MjZlNjMgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+ID4g
KysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGln
LmMKPiA+IEBAIC00MjcsNiArNDI3LDE3IEBAIHN0YXRpYyBpbnQKPiA+ICB2YjJfZGNfZG1hYnVm
X29wc19iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkYnVmLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24KPiA+IGRpcmVj
dGlvbikKPiA+ICB7Cj4gPiArICAgICBzdHJ1Y3QgdmIyX2RjX2J1ZiAqYnVmID0gZGJ1Zi0+cHJp
djsKPiA+ICsgICAgIHN0cnVjdCBzZ190YWJsZSAqc2d0ID0gYnVmLT5kbWFfc2d0Owo+ID4gKwo+
ID4gKyAgICAgaWYgKCFidWYtPm5vbl9jb2hlcmVudF9tZW0pCj4gPiArICAgICAgICAgICAgIHJl
dHVybiAwOwo+ID4gKwo+ID4gKyAgICAgaWYgKGJ1Zi0+dmFkZHIpCj4gPiArICAgICAgICAgICAg
IGludmFsaWRhdGVfa2VybmVsX3ZtYXBfcmFuZ2UoYnVmLT52YWRkciwgYnVmLT5zaXplKTsKPgo+
IEFtIEkgY29ycmVjdCB0aGF0IHRoaXMgaXMgbW9zdGx5IHRvIHByZXZlbnQgdGhlIGtlcm5lbCBm
cm9tIHJlYWRpbmcKPiBiYWNrIG9sZCBkYXRhIGZyb20gdGhlIGNhY2hlIGFmdGVyIGFuIGFwcGxp
Y2F0aW9uIG9yIG90aGVyIGRyaXZlciBkaWQKPiBDUFUgd3JpdGVzID8gSWYgc28sIGNhbid0IHdl
IHJlc3RyaWN0IHRoYXQgdG8gRE1BX1RPX0RFVklDRSBhbmQKPiBETUFfQklESVJFQ1RJT05BTCA/
CgpOb3RlIHRoYXQgdGhpcyBmdW5jdGlvbiBtdXN0IGFsc28gc3luY2hyb25pemUgYmV0d2VlbiB0
aGUgdXNlci1zcGFjZQphbmQga2VybmVsIG1hcHBpbmdzLCB3aGVyZSB0aGUgRE1BIGRpcmVjdGlv
biBkb2Vzbid0IHJlYWxseSBtYXR0ZXIuCkFsc28gaXQncyB1bmxpa2VseSBmb3IgaXQgdG8gYmUg
Y2FsbGVkIHdoZW4gbm90IG5lZWRlZCAtIHdoeSB3b3VsZCBvbmUKYmVnaW4gYSBDUFUgYWNjZXNz
IGJlZm9yZSB0aGUgRE1BLCB3aGVuIHRoZSBETUEgaXMgRlJPTV9ERVZJQ0U/Cgo+Cj4gQXMgZm9y
IHBlbmRpbmcga2VybmVsIHdyaXRlcywgdGhleSBzaG91bGQgaGF2ZSBiZWVuIGZsdXNoZWQgYmVm
b3JlIHRoZQo+IGJ1ZmZlciBpcyBtYWRlIGF2YWlsYWJsZSBmb3IgZGVxdWV1ZS4KClRoZXJlIGlz
IG5vIGltcGxpY2l0IGZsdXNoaW5nIGZvciBpbXBvcnRlZCBETUEtYnVmcy4gQWxsIHRoZSBmbHVz
aGluZwpuZWVkcyB0byBiZSBleGVjdXRlZCBkaXJlY3RseSBieSB0aGUgQ1BVIGFjY2Vzc29ycyBi
eSBzdXJyb3VuZGluZyB0aGUKYWNjZXNzIHdpdGggYmVnaW4gYW5kIGVuZCBDUFUgYWNjZXNzLCBi
ZSBpdCBpbiB0aGUga2VybmVsIG9yCnVzZXJzcGFjZS4KCj4gQW5kIGFueSBhY2Nlc3Mgd2hpbGUg
YSBidWZmZXIgaXMKPiBxdWV1ZWQgaXMgY29uY3VycmVudCBhY2Nlc3MsIHdoaWNoIGlzIGV4cGVj
dGVkIHRvIGhhdmUgdW5kZWZpbmVkCj4gYmVoYXZpb3VyLgo+CgpDb3JyZWN0LgoKPiA+ICsKPiA+
ICsgICAgIGRtYV9zeW5jX3NndGFibGVfZm9yX2NwdShidWYtPmRldiwgc2d0LCBidWYtPmRtYV9k
aXIpOwo+Cj4gSXNuJ3QgdGhlcmUgYSBsaW5rIHRvIG1ha2UgYmV0d2VlbiBidWYtPmRtYV9kaXIg
YW5kIGRpcmVjY3Rpb24gYmVmb3JlCj4gY2FsbGluZyB0aGlzID8gQWxzbywgc2hvdWxkbid0IHdl
IHVzZSBkaXJlY3Rpb24gaW5zZWFkIG9mIGJ1Zi0+ZG1hX2Rpcgo+IHRvIHBvc3NpYmx5IGxpbWl0
IHRoZSBzY29wZSA/CgpPaCwgeWVzLCB0aGF0J3MgYSBnb29kIGNhdGNoLiBJdCBzaG91bGQgYmUg
fGRpcmVjdGlvbnwgcGFzc2VkIGhlcmUgYW5kCm5vdCB8YnVmLT5kbWFfZGlyfCwgc2luY2UgdGhl
IGZvcm1lciBkZXRlcm1pbmVzIHdoYXQgQ1BVIGFjY2VzcyB3aWxsCmJlIGRvbmUuCgo+Cj4gPiAr
Cj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPgo+ID4gQEAgLTQzNCw2ICs0NDUsMTcgQEAg
c3RhdGljIGludAo+ID4gIHZiMl9kY19kbWFidWZfb3BzX2VuZF9jcHVfYWNjZXNzKHN0cnVjdCBk
bWFfYnVmICpkYnVmLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gZG1h
X2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKPiA+ICB7Cj4gPiArICAgICBzdHJ1Y3QgdmIyX2Rj
X2J1ZiAqYnVmID0gZGJ1Zi0+cHJpdjsKPiA+ICsgICAgIHN0cnVjdCBzZ190YWJsZSAqc2d0ID0g
YnVmLT5kbWFfc2d0Owo+ID4gKwo+ID4gKyAgICAgaWYgKCFidWYtPm5vbl9jb2hlcmVudF9tZW0p
Cj4gPiArICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gKwo+ID4gKyAgICAgaWYgKGJ1Zi0+dmFk
ZHIpCj4gPiArICAgICAgICAgICAgIGZsdXNoX2tlcm5lbF92bWFwX3JhbmdlKGJ1Zi0+dmFkZHIs
IGJ1Zi0+c2l6ZSk7Cj4gPiArCj4gPiArICAgICBkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2Uo
YnVmLT5kZXYsIHNndCwgYnVmLT5kbWFfZGlyKTsKPgo+IFNpbWlsYXIgcXVlc3Rpb25zIGZvciB0
aGUgZW5kX2NwdV9hY2Nlc3MgaW1wbGVtZW50YXRpb24uCgpZZWFoLCBzYW1lIGhlcmUuCgo+Cj4g
Tmljb2xhcwo+Cj4gPiArCj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPgo+ID4KPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
