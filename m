Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0C5BC47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdl4vbEBwDTPZhVBUsrS7kjqgmK+khVyMqKJsenGAJ4=; b=PLyEyhmpoqngld
	gkWvrzLFMXRlDUtFc4Y6SDLnSH5ocWdSjNew5enO7gOrh+9yAc3g9lg7T/Mf8AYQXq7FH18NNqWaM
	OmoTAGS17EQ+6ch9sNe0hcyufr9Qu3obxC9UwHywua9xfUPESuN2IsX4OuoQQXqZL333FE52sGuUA
	qxme/7MPPqjdobXCK/bSF+XJqQYZG5HDyp/zbUxUvF25EKJI8o0LuE3roQ29ZGxyoDB6KaEa8pA/w
	RikCQUQvAUmI6g3sn6zl+cfWacXRaMB3qXQvO54h3ANKsjjelYMkk0OVKifKTdEbtUVYHL17CNNQF
	LWtVAb+HVoTgowSmW5qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSAKK-00FH9u-0o;
	Tue, 23 Jan 2024 06:32:04 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSAKG-00FH7h-2N;
	Tue, 23 Jan 2024 06:32:02 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a30b3a9e9c6so41096366b.2;
        Mon, 22 Jan 2024 22:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705991512; x=1706596312; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LiegNsczaU/U+xs19FgETokvnebxdn1/j3gX8xGr8wk=;
        b=aI7xTQj+S95rr6ZiEHXlAYEbPebTb0b1rqrgVod0C+p3YUn84gpkfxw/bZohlyi8oj
         4nJ9WtZBJJo6MvAQlWikZ8bxyHtGhZ1dMBOUp7upn7ZFd/J7ZWZu8mRrE/BIz+tn3eqk
         7H6TO6WfB5wYzv7oCW1p0dpe7W7RzyNSIKjFV2/aW9hk5scoC9VKTAPpw+vCoMGDXRlZ
         vhJy0OoyNXjV6zzbiajNickrU+lBC3bcIHAwEwzc2NwuCfJmn0ta3yZYyiDH0J/MHyAC
         hxRdYlYm3kEy4kAUprPQdIy6KdVZiAdK+8vklOKe+ZBAEJuNMUjfk4FOisU//NdlXPDW
         RPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705991512; x=1706596312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LiegNsczaU/U+xs19FgETokvnebxdn1/j3gX8xGr8wk=;
        b=B+rg9bff2cMk2SNGeof8GmDb9oyaZI6DoEVG63ncxB/G0Dd5lnSiw0tBicEYLrdZNr
         j+fr1Oog2EB/LvU57huz4hpjwYTOcRLsScY/gHPLxnAbN8wRa8BKgSRzCgZGsU6LkvfE
         RVxG5/q+sq04W8WUOMEk+UJxOABvgfE2u1nk0G39baUXIJNJclZuuqiTJJ+/EcKqe/o/
         y2kYQPA9cIyzRTINeXUNQwnDn58dcZf0QcYu3aQb38VWdaimng1gSMN5SXgxYQRGxoux
         NHSlSGCPEwNTMfActm87GEmEutrOEMN4VOtMX5gkGw/uVa4RbqqkxbltVj9IcR5k4AIU
         ztQw==
X-Gm-Message-State: AOJu0YwCp4toxoAYpCJV534OOpPs1cDLbykUo0vLbiIOkYy88vvDA0BE
	MIeZwlPhwFs2PlwTi4ZXMkmgSydGIHJwQG0zWVlbShN/ImNs7cf3EmEA/SIcLusSqF0ZfYONs76
	tHtyp4TOEOa2ryKs3fry1SaFra7I=
X-Google-Smtp-Source: AGHT+IH0aD3xHVclLbZ/H4ZUYjO3fWFMmmqZWeW5/xbnkp7PG+R1tbM/DjYGvO0K0W0BfhaQhU6Sv6vDvQBK9LN5oQc=
X-Received: by 2002:a17:907:a782:b0:a26:ee0d:1c02 with SMTP id
 vx2-20020a170907a78200b00a26ee0d1c02mr2034600ejc.39.1705991512469; Mon, 22
 Jan 2024 22:31:52 -0800 (PST)
MIME-Version: 1.0
References: <20240122203502.3311520-1-linkmauve@linkmauve.fr>
 <20240122203502.3311520-2-linkmauve@linkmauve.fr> <c2963862-9d22-438a-8357-eccf14fead7d@linaro.org>
 <Za7npejeTD4i9y2h@desktop>
In-Reply-To: <Za7npejeTD4i9y2h@desktop>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 23 Jan 2024 10:31:41 +0400
Message-ID: <CABjd4YwM8wPGth=n97JRbaNCuPNRjs6uNUFVdRgu3_OAYQdxWg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add the rk3588 thermal zones
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	=?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>, 
	Christopher Obbard <chris.obbard@collabora.com>, Shreeya Patel <shreeya.patel@collabora.com>, 
	John Clark <inindev@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_223200_771795_3D659E7F 
X-CRM114-Status: GOOD (  20.96  )
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

T24gVHVlLCBKYW4gMjMsIDIwMjQgYXQgMjowOeKAr0FNIEVtbWFudWVsIEdpbCBQZXlyb3QKPGxp
bmttYXV2ZUBsaW5rbWF1dmUuZnI+IHdyb3RlOgo+Cj4gT24gTW9uLCBKYW4gMjIsIDIwMjQgYXQg
MDk6NTI6MTBQTSArMDEwMCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gPgo+ID4gSGkgRW1tYW51
ZWwsCj4KPiBIaSBEYW5pZWwsCj4KPiA+Cj4gPiBwbGVhc2Ugc3luYyB1cCB3aXRoIEFsZXhleSBD
aGFya292IChhZGRlZCBpbiBDYykgd2hvIGlzIGRvaW5nIGEgc2ltaWxhcgo+ID4gY29uZmlndXJh
dGlvbiBbMV0gd2hpY2ggd2FzIHJldmlld2VkLgo+Cj4gT2gsIEkgd2FzbuKAmXQgYXdhcmUgb2Yg
dGhpcyB3b3JrLCBpdCBzZWVtcyB0aGVyZSBpcyBub3RoaW5nIHRoaXMgc2VyaWVzCj4gYWRkIG92
ZXIgQWxleGV54oCZcyBzbyBJIHdpbGwgZHJvcCBpdC4KPgo+IElzIHRoZXJlIGEgZG9jdW1lbnQg
dHJhY2tpbmcgeW91ciB1cHN0cmVhbWluZyB3b3JrPyAgSSB3YXMgcGxhbm5pbmcgb24KPiBzZW5k
aW5nIGEgc2VyaWVzIGVuYWJsaW5nIHRoZSBWRVBVMTIxIGhhcmR3YXJlIGVuY29kZXJzIG5leHQs
IGJ1dCBpZgo+IHlvdeKAmXJlIGFsc28gd29ya2luZyBvbiBpdCBJIGNhbiBkcm9wIGl0IHRvbyAo
YWx0aG91Z2ggSSBkb27igJl0IHNlZSBhbnkKPiBzZXJpZXMgZnJvbSBhIHF1aWNrIHNlYXJjaCku
ICBJ4oCZdmUgbm93IHN1YnNjcmliZWQgdG8gdGhlIGxpbnV4LXJvY2tjaGlwCj4gbWFpbGluZyBs
aXN0IHNvIEkgc2hvdWxkbuKAmXQgbWlzcyBhbnkgbmV3IHNlcmllcy4KCkhpIEVtbWFudWVsIQoK
SSdtIGN1cnJlbnRseSBpbiBhIHJhdGhlciBtb3JlIGFkLWhvYyBjb250cmlidXRpb24gbW9kZSwg
c28gdGhlcmUgaXMKbm8gdHJhY2tpbmcgZG9jdW1lbnQuIEhlcmUgYXJlIHRoZSB0aGluZ3MgSSBo
YXZlIGluIHRoZSBtYWtpbmc6CiAtIFdpcmUgdXAgdGhlIEdQSU8gcGluIHRoYXQgZHJpdmVzIFdM
QU4gZW5hYmxlIHNpZ25hbCBpbiB0aGUgTS4yIGtleQpFIHNsb3QgYXMgYW4gcmZraWxsIGRldmlj
ZSB0byBtYWtlIFdpRmkgbW9kdWxlcyB1c2FibGUgb24gUm9jayA1Qi4KQXBwbGllZCBsb2NhbGx5
LCB0ZXN0ZWQsIHN1Ym1pdHRlZCBbMV0sIG5vdCB5ZXQgcmV2aWV3ZWQgb3IgYXBwbGllZAp1cHN0
cmVhbQogLSBBZGQgdGhlcm1hbCB6b25lcyBtYW5hZ2VkIGJ5IHRoZSBUU0FEQyB0byBSSzM1ODgg
KHRoZSBzZXJpZXMgRGFuaWVsCnJlZmVycmVkIHRvKS4gQXBwbGllZCBsb2NhbGx5LCB0ZXN0ZWQs
IHN1Ym1pdHRlZCBbMl0sIHdvcmtpbmcgb24gdjMgdG8KaW5jb3Jwb3JhdGUgdGhlIGZlZWRiYWNr
CiAtIFdpcmUgdXAgdGhlIFBXTSBmYW4gYXMgYW4gYWN0aXZlIGNvb2xpbmcgZGV2aWNlIG1hbmFn
ZWQgYnkgdGhlCnRoZXJtYWwgY29kZS4gQXBwbGllZCBsb2NhbGx5LCB0ZXN0ZWQsIHdpbGwgc3Vi
bWl0IGFzIHBhcnQgb2YgdjMKdGhlcm1hbCB6b25lcyBjb2RlCiAtIEFkZCBPUFAgZGF0YSBmb3Ig
Q1BVcyBvbiBSSzM1ODggdG8gZW5hYmxlIHJ1bnRpbWUgQ1BVIGZyZXF1ZW5jeQpzY2FsaW5nLiBB
cHBsaWVkIGxvY2FsbHksIHRlc3Rpbmcgbm93LCBub3QgeWV0IHN1Ym1pdHRlZAoKSSBhbHNvIHdh
bnRlZCB0byB3aXJlIHVwIHRoZSBkaXNwbGF5IG91dHB1dHMgZm9yIFJvY2sgNUIsIGdpdmVuIHRo
YXQKVk9QIHN1cHBvcnQgaGFzIGJlZW4gcmVjZW50bHkgZW5hYmxlZCBvbiBSSzM1ODgsIGJ1dCBo
YXZlbid0IHlldApzdGFydGVkIG9uIHRoYXQgb25lLiBJIGhhdmVuJ3QgdG91Y2hlZCB0aGUgaGFy
ZHdhcmUgZW5jb2RlcnMgZWl0aGVyLApzbyBwbGVhc2UgZ28gYWhlYWQgd2l0aCBzZW5kaW5nIHRo
b3NlIDotKQoKQmVzdCByZWdhcmRzLApBbGV4ZXkKClsxXSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC8yMDI0MDEwNjIwMjY1MC4yMjMxMC0xLWFsY2hhcmtAZ21haWwuY29t
LwpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNDAxMDkxOTI2
MDguNTk4MS0xLWFsY2hhcmtAZ21haWwuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
