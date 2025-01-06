Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66B3CE77188
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 19:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMGpgRspoW9Y8mBTcEe0+dh8/S85A/o26MML84daC+Q=; b=OTu9MP+Q87Ih7P
	YW4DQ0rgMDyIrbANgzbuL8Uya8CvLiZrg40o0BU+nafCuGSH84x4ru+ScECkDR5Jp2CfgcheebgLZ
	YZmGqFMEWxT3FJiL5G9/miZk1jXqO68V4MHcQxJeDOFZBy/W6edhjSFMa2ERCV+OJPOMvJdPN1l1/
	g6FzwnlbRnVf9Smql8TqQU+ubtGPD5V+1NZF+xjxOMp7+3WIv6F3JsvOXBwRXEhERTjSig4KhKrah
	pNruS7NqqLsgHqGeWrSjm3kPa/73Av+IPRmaandxd0kJjlrVxx0lvVLSMPRgcsUFN6sPtZc+PHNTG
	+AmiXbv8x0svLmFk1XUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUt98-00000002Vg6-2Ii2;
	Mon, 06 Jan 2025 19:52:18 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUt7w-00000002VSW-3ubI;
	Mon, 06 Jan 2025 19:51:06 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7b9bc648736so1207199485a.1;
        Mon, 06 Jan 2025 11:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736193063; x=1736797863; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVD38ry6XjUWoVgJ+oJLF45j3WXHuey6ua4rBWQhTj0=;
        b=OGVR14CIYRk1AgdtfEHcjtG8APi+bLHFlABA9/R2m+bEh7Rx9IQdaATkG6jrZgAqGS
         Ntf16Anqyl4gNIoDIikb8Q49gU37RSLG6kQmEJzx9IWrwaTxWcKuHeV32YuUq0NndlPq
         3cviwdj/wtblCpfRiYgym9/YnHjaK0KTLhUze/5N3Ko+4mqk9yLSFfuxJZP1An0CmuQx
         sNxPLjlbrMXEtSKgPEKm6it58p6FqdDi7uXgE1ludjMk6Hp27BK0s7saXjoNtt0PZ08c
         FEhgmMSZs0fNO/h8KIvAsBk15kzpKjYsXep0kxu4Od9ICSLB46VbtFjQ2yrC04e7aApZ
         qbxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736193063; x=1736797863;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AVD38ry6XjUWoVgJ+oJLF45j3WXHuey6ua4rBWQhTj0=;
        b=ZTpmz6ikNR0BjeU+KBWcfYwsDO/8lWNCKKdL5aSO9k7BaKTAaeVqoYEu47n4dzOFFr
         45wpf4D6+zuJlcpOZD3K0D+T0tqBj91XyYKmU6iqHL83Drue55hRSHsOhEp5yhzZNOEi
         F1Fv/ao5mNpoMav0zP07TGim5lHSJSgcf2jcgeUWasWJ15mIGlZshLpptMz93aXYEfIE
         dVMTgDQkOTap2rSk+lk0k0xdUXEf2+e7lgwDAmoNf0vDzZguaAOXH5qXlzmSE+XDD+Ty
         i0Z9x+2gRqNIR8YwoMVuwgkap62hEEDmAXQnlaYaC7ALQvZ6CUJqDWTvNypxU8hLdBfs
         2QHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlxyuLM2SShUKvjP+UjBQlG2Z7tGJtAYTI8erwSlg+uPQYDlPNvir51hltUB2Z35QeU0VZRWEcLXCzTu8CbHBN@lists.infradead.org, AJvYcCXYIgpY0jtT7n3AVeQiinAT3SDWcQixVSEps2KdzcN8qdgeo+qvnoZKN/3YjVUKio7bxCB8CYOafRYfHFtlNxk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzkki1pCLBPNPdCXsV0QdrxGYMqLKlEwGsVDICoML25nxK9CRmt
	S0kMFJ2Sj1w4huRg/+qQHh++X9IePxtH7CDJmLtorplyECc0YIuNQvC+ae01M0tafSSrdb19cy/
	nKkgTdQzEoSQccRStoMZSU3Tkqvc=
X-Gm-Gg: ASbGncu2V7MCbJqyG9mZuAM7Lu/7BT8UZoV/Q9y51Mx84L0s5qvUBjpZSVCktyBjvAd
	RAqQ0pxL1e3615CGVvmKLDjOJurVIM0gdL7h0gEbEaDEXwPgN0A==
X-Google-Smtp-Source: AGHT+IFFhXRZczwYX7+y4k2AHyUXGH6DMbUubnu6jmb6A/f/+7SoRgMGuMBQkStFKpYVSokMXldT0Z3yBk0oZOPbm+w=
X-Received: by 2002:a05:620a:1790:b0:7b6:cb4c:10e8 with SMTP id
 af79cd13be357-7b9ba716c09mr9322005585a.11.1736193063281; Mon, 06 Jan 2025
 11:51:03 -0800 (PST)
MIME-Version: 1.0
References: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com> <173619154694.838812.1604486663887944578.robh@kernel.org>
In-Reply-To: <173619154694.838812.1604486663887944578.robh@kernel.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 6 Jan 2025 23:50:51 +0400
Message-ID: <CABjd4YxP4jXZbRV0X-E8JntV+hzSo-4Jiq3yaequWuiWkqoUJg@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add H96 Max V58 (RK3588 based
 TV box)
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_115104_970388_A54B8C3D 
X-CRM114-Status: GOOD (  29.19  )
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

T24gTW9uLCBKYW4gNiwgMjAyNSBhdCAxMToyOOKAr1BNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBNb24sIDA2IEphbiAyMDI1IDAxOjA3OjE2ICsw
NDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IEg5NiBNYXggVjU4IGlzIGEgY29tcGFjdCBU
ViBib3ggYmFzZWQgb24gUm9ja2NoaXAgUkszNTg4IFNvQyBbMV0KPiA+IHRoYXQgc2hpcHMgd2l0
aCBBbmRyb2lkIGJ5IGRlZmF1bHQuIEFkZCBzdXBwb3J0IGZvciBpdC4KPiA+Cj4gPiBOb3RlIHRo
YXQgdGhlcmUgaXMgbm8gcHVibGljbHkgYXZhaWxhYmxlIGhhcmR3YXJlIGRvY3VtZW50YXRpb24s
Cj4gPiBub3IgdmVuZG9yIHNvdXJjZXMgdG8gYmUgdXNlZCBhcyBhIHJlZmVyZW5jZSwgc28gdGhp
cyBpbXBsZW1lbnRhdGlvbgo+ID4gaXMgYmVzdCBlZmZvcnQgYmFzZWQgb24gcG9raW5nIGFyb3Vu
ZCBteSBib2FyZCBhbmQgc3RhcmluZyBhdCB0aGUKPiA+IGRlY29tcGlsZWQgc3RvY2sgRFRCLiBJ
dCB3b3JrcyBmb3IgbWUsIGJ1dCBpbXByb3ZlbWVudCBzdWdnZXN0aW9ucwo+ID4gYXJlIHZlcnkg
bXVjaCB3ZWxjb21lLgo+ID4KPiA+IEhETUkgb3V0cHV0IGlzIG5vdCB0ZXN0ZWQsIGJ1dCBleHBl
Y3RlZCB0byB3b3JrLgo+ID4KPiA+IFNQRElGIG91dHB1dCBpcyBub3QgZW5hYmxlZCAoYmFzZSBS
SzM1ODggLmR0c2kgbmVlZHMgYW1lbmRtZW50KQo+ID4KPiA+IEF1eGlsaWFyeSBMRUQgZGlzcGxh
eSBpcyBub3QgZW5hYmxlZCAobm8gbWFpbmxpbmUgZHJpdmVyIGF2YWlsYWJsZSkuCj4gPiBUaGUg
Y29udHJvbGxlciB1c2VkIGlzIEZENjU1MSBjb25uZWN0ZWQgdG8gR1BJTzMgUktfUEM3IChjbGsp
IGFuZAo+ID4gR1BJTzMgUktfUEQwIChkYXRhKSwgd2hpY2ggaGFwcGVuIHRvIGJlIHRoZSByaWdo
dCBwaW5zIGZvcgo+ID4gaTJjNW0wX3hmZXIgcGluY3RybCBjb25maWcsIGFuZCB0aHVzIG1pZ2h0
IHBvdGVudGlhbGx5IGJlIHVzZWQgd2l0aAo+ID4gdGhlIGhhcmR3YXJlIEkyQzUgY29udHJvbGxl
ciAodG8gYmUgdmVyaWZpZWQpLiBPdXQgb2YgdHJlZSB1c2Vyc3BhY2UKPiA+IGRyaXZlciBpcyBh
dmFpbGFibGUgYXQgWzJdLgo+ID4KPiA+IFsxXSBodHRwczovL3d3dy5oOTZ0dmJveC5jb20vcHJv
ZHVjdC9oOTZtYXgtdjU4Lwo+ID4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9hcnRodXItbGliZXJt
YW4vbGludXhfb3BlbnZmZC9ibG9iL21hc3Rlci9kcml2ZXIvY29udHJvbGxlcnMvZmQ2NTAuYwo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4K
PiA+IC0tLQo+ID4gQWxleGV5IENoYXJrb3YgKDIpOgo+ID4gICAgICAgZHQtYmluZGluZ3M6IGFy
bTogcm9ja2NoaXA6IEFkZCBIOTYgTWF4IFY1OCBUViBib3gKPiA+ICAgICAgIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBBZGQgSDk2IE1heCBWNTggVFYgQm94IGJhc2VkIG9uIFJLMzU4OCBTb0MKPiA+
Cj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgICAgICAg
fCAgIDUgKwo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAg
ICAgICAgIHwgICAxICsKPiA+ICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWg5
Ni1tYXgtdjU4LmR0cyB8IDc4NSArKysrKysrKysrKysrKysrKysrKysKPiA+ICAzIGZpbGVzIGNo
YW5nZWQsIDc5MSBpbnNlcnRpb25zKCspCj4gPiAtLS0KPiA+IGJhc2UtY29tbWl0OiBhZjM0OWNh
NGQzZjg2NTlkODRhYmM2NjcxMjVjODI2ZmRhMTU1MTA5Cj4gPiBjaGFuZ2UtaWQ6IDIwMjQwNjE4
LXJrMzU4OC1oOTYtbWF4LXY1OC1jMmMxYmY4ZTY5OTYKPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsCj4g
PiAtLQo+ID4gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+ID4KPiA+Cj4gPgo+
Cj4KPiBNeSBib3QgZm91bmQgbmV3IERUQiB3YXJuaW5ncyBvbiB0aGUgLmR0cyBmaWxlcyBhZGRl
ZCBvciBjaGFuZ2VkIGluIHRoaXMKPiBzZXJpZXMuCj4KPiBTb21lIHdhcm5pbmdzIG1heSBiZSBm
cm9tIGFuIGV4aXN0aW5nIFNvQyAuZHRzaS4gT3IgcGVyaGFwcyB0aGUgd2FybmluZ3MKPiBhcmUg
Zml4ZWQgYnkgYW5vdGhlciBzZXJpZXMuIFVsdGltYXRlbHksIGl0IGlzIHVwIHRvIHRoZSBwbGF0
Zm9ybQo+IG1haW50YWluZXIgd2hldGhlciB0aGVzZSB3YXJuaW5ncyBhcmUgYWNjZXB0YWJsZSBv
ciBub3QuIE5vIG5lZWQgdG8gcmVwbHkKPiB1bmxlc3MgdGhlIHBsYXRmb3JtIG1haW50YWluZXIg
aGFzIGNvbW1lbnRzLgo+Cj4gSWYgeW91IGFscmVhZHkgcmFuIERUIGNoZWNrcyBhbmQgZGlkbid0
IHNlZSB0aGVzZSBlcnJvcihzKSwgdGhlbgo+IG1ha2Ugc3VyZSBkdC1zY2hlbWEgaXMgdXAgdG8g
ZGF0ZToKPgo+ICAgcGlwMyBpbnN0YWxsIGR0c2NoZW1hIC0tdXBncmFkZQo+Cj4KPiBOZXcgd2Fy
bmluZ3MgcnVubmluZyAnbWFrZSBDSEVDS19EVEJTPXkgcm9ja2NoaXAvcmszNTg4LWg5Ni1tYXgt
djU4LmR0YicgZm9yIDIwMjUwMTA2LXJrMzU4OC1oOTYtbWF4LXY1OC12MS0wLWQyNTI1NWY4NTFm
Y0BnbWFpbC5jb206Cj4KPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1oOTYt
bWF4LXY1OC5kdGI6IHN5c2NvbkBmZDVkMDAwMDogdXNiMnBoeUAwOm90Zy1wb3J0OiAndmJ1cy1z
dXBwbHknIGRvZXMgbm90IG1hdGNoIGFueSBvZiB0aGUgcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0r
Jwo+ICAgICAgICAgZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1h
cy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwjCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtaDk2LW1heC12NTguZHRiOiB1c2IycGh5QDA6IG90Zy1wb3J0OiAndmJ1cy1zdXBwbHkn
IGRvZXMgbm90IG1hdGNoIGFueSBvZiB0aGUgcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwo+ICAg
ICAgICAgZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkv
cm9ja2NoaXAsaW5uby11c2IycGh5LnlhbWwjCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtaDk2LW1heC12NTguZHRiOiByZWd1bGF0b3ItM3YzLXBjaWU6IGdwaW9zOiBbWzI2
NywgMSwgMF0sIFsxODcsIDIwLCAwXV0gaXMgdG9vIGxvbmcKPiAgICAgICAgIGZyb20gc2NoZW1h
ICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcmVndWxhdG9yL2ZpeGVkLXJlZ3Vs
YXRvci55YW1sIwo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWg5Ni1tYXgt
djU4LmR0YjogcmVndWxhdG9yLTN2My1wY2llOiBVbmV2YWx1YXRlZCBwcm9wZXJ0aWVzIGFyZSBu
b3QgYWxsb3dlZCAoJ2dwaW9zJyB3YXMgdW5leHBlY3RlZCkKPiAgICAgICAgIGZyb20gc2NoZW1h
ICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcmVndWxhdG9yL2ZpeGVkLXJlZ3Vs
YXRvci55YW1sIwoKSW5kZWVkLiBXaWxsIGZpeCBpdCBpbiB2Miwgc29ycnkgZm9yIHRoZSBub2lz
ZS4KCkJlc3QsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
