Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53151C28B2F
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Mar 2025 04:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=85ZI5CKgrTuhSY0+NPWdxtg+G0Ke9NCisR55PTBrsQs=; b=njHBLESfLRuUtcCRxrCeMUIiqQ
	Wd4wurbUVjGTia/UxnbuV5sX943A48NnV7MuZft71s24z5wxvoYaCTcdLYKWRcrlyJ3VbVrHP+oAo
	norXniektyChejA3cpf/+uC3bgFdaM/fr2FiZfmNlBUiN/qsiXlV4TcDjSTQ0YvM25eW1MwTZwMdr
	XplEVxqsx+hY7iPZvMfVitRgSr0uY5BOEQMvhOvZZXd5ce8+4vA5bRR1nBwa6PsGpMkdTuhv6ID/g
	OzOK3VGLfTAoXXsvHC6/6DDwcpQgYJF2dm8bvJjOfdBuR42NsE1xNgx6Gjv82BWV11wfPqC2AWQEm
	dcW7FozA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqlvY-0000000GB46-28kO;
	Sat, 08 Mar 2025 04:36:44 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqltu-0000000GB0x-2xTq;
	Sat, 08 Mar 2025 04:35:04 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-43bcad638efso14841775e9.2;
        Fri, 07 Mar 2025 20:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741408500; x=1742013300; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S92lWIfKVIn+dIfxP3BSAW+MFQMr9+wTt9Aqjone+IQ=;
        b=Uh5AtOcf8mmaUKt5FT2OlaMnsXAN2PAHxtXCx2rcvGdw8zoqGHNq3meXxFqZUnZ2z+
         z1MhNzEx2z55dSpiM703lzuUWqv4YE3a+wO1mAKQlHaGdX4hh8pURdKWch1qsOpzX3u1
         tM8QJH6iGpRoSOYTgJpU5JQO2ZdY2BcQnYuJ8/KRQvKR+4sB7B+nt0R8oByl4ImAt56m
         tToPvT1DJWUxJ30jUk9bhFF3YkebS+dvvaARM4ticJWM0xiX+PlPcwCndE7v4BEbtB3D
         q80tC/Yvy/d6+KCXorVEjMyfxa9Wp0SWv3nnXWwKbi7q7o9ASwZKRWsjn0keSVMZ7kc2
         ufbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741408500; x=1742013300;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S92lWIfKVIn+dIfxP3BSAW+MFQMr9+wTt9Aqjone+IQ=;
        b=lZKcRe0+0MSRYRaxmEb0xu1Td+KdibbJWPfNUtiJ9M44xf3sHJQV87nMfvlDifJDoX
         a0cfqD+oXO90ITTNo4e8PyqP7ixPd44pxFNkuCYhZyQH5Hl5pL3wfOiCSr7x3j104IQX
         mmKAt2GDmzLO2eKPxaoxt80A/4qJNHncyAyW4jFSDBwCJSDX0fxDqQ12JlZxuuxL3kiT
         t++GINxeN+012t2jMsfLsobvb+ot+FHQKQMWVaWZx6Ms+JgZAAMqf+ljv5qXOY9fwRvv
         K8/FyOEqaJK9jjs98heX5ULT23MhIHi5r2tXPqYlwDiiyFrQkp92tENqUoOjsdIgF1OL
         97xQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHzWE7CfajJRNJVXBuAWLZPJQQWyH7EAbPdiQoTsV6pz9Z7xEQhO8ChAHUOadILG3xTgHYdxhekeYnlmxTkREp@lists.infradead.org, AJvYcCXkvVFfYAKPbZU9Tjv6v1Hkpc579SHThXZVibf0xBF1rGM/7q+Esm/6koEfCUkVu+MtdR3LHJSU8kxg0T1l2gg=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywv3yc4uu0EQmJ4Tw21UPRBjGBIvcNOxiXOnjiYMioCWRClAfr1
	w7i3dD+eAKVVQ4xbw+bvo0O4kj/JuInlgY2TyUJCKMznbfYbS/jZO5zZzv2xLcDgKlb0plZwLOc
	t/TkoADTj95n8qr/75je82Iw8OOw=
X-Gm-Gg: ASbGnctCTM63+Wmu5GQNMKRcrushn0i2YLdx6p8X/5srJ8AXXg0YanUtU0qse0GEmkT
	tnjdDLcqB+Rt9MWNOs+LSXcRyOOapgF1mJFtpV+yrBuxvo5Zzr5mUM/PE6kQv1m7MLITfJyLx3k
	aHrw3Mf5j3oBp8Vf6WKNLiko6QfVfThv9CYAIJ+bbfI7U+6VJjubELEle3mg==
X-Google-Smtp-Source: AGHT+IHAfzw5XZrxzz41zgMCfkMjKfpkf7QBQ6PlsSgwZXw3Uw/YaCNH673ZsxlButmZYr+AA4ocdp1HOEtWSPIb7r8=
X-Received: by 2002:a05:600c:3502:b0:43b:cd15:2eb0 with SMTP id
 5b1f17b1804b1-43ce17f6952mr18183765e9.25.1741408499618; Fri, 07 Mar 2025
 20:34:59 -0800 (PST)
MIME-Version: 1.0
References: <20250227235623.1624-1-honyuenkwun@gmail.com> <20250227235623.1624-4-honyuenkwun@gmail.com>
 <5qi24bxuamu3agtldyxhrnlefao6zy2mw2qmx62ycsdg3v6sbz@2jeawstukcyd>
In-Reply-To: <5qi24bxuamu3agtldyxhrnlefao6zy2mw2qmx62ycsdg3v6sbz@2jeawstukcyd>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 7 Mar 2025 22:34:48 -0600
X-Gm-Features: AQ5f1JoI5m6n5697WKDKj8u5pVOu_T48foDQrrZDPAuJnh6Ijn2qNDM1LR15lvU
Message-ID: <CALWfF7LcUUFUnESrGTE10VS7S1+G=sXWkD7iZjbufpgGWQnFbg@mail.gmail.com>
Subject: Re: [PATCH UNTESTED 3/4] arm64: dts: rockchip: Enable HDMI1 on Orange
 Pi 5 Plus
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Cenk Uluisik <cenk.uluisik@googlemail.com>, Chen-Yu Tsai <wens@csie.org>, 
	Florian Klink <flokli@flokli.de>, Muhammed Efe Cetin <efectn@protonmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_203502_749153_6FC3AFE0 
X-CRM114-Status: GOOD (  29.02  )
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

T24gRnJpLCBGZWIgMjgsIDIwMjUgYXQgNToxNeKAr0FNIE9uZMWZZWogSmlybWFuIDxtZWdpQHhm
Zi5jej4gd3JvdGU6Cj4KPiBIZWxsbyBKaW1teSwKPgo+IE9uIFRodSwgRmViIDI3LCAyMDI1IGF0
IDA1OjU2OjIyUE0gLTA2MDAsIEppbW15IEhvbiB3cm90ZToKPiA+IEVuYWJsZSB0aGUgc2Vjb25k
IEhETUkgb3V0cHV0IHBvcnQgb24gdGhlIE9yYW5nZSBQaSA1IFBsdXMKPgo+IFJLMzU4OCBoYXJk
d2FyZSBkZXNpZ24gZ3VpZGUgc3RhdGVzIHRoYXQ6Cj4KPiAgIC0gV2hlbiB3b3JraW5nIGluIEhE
TUkyLjEgbW9kZSwgSERNSTBfVFhfT05fSCBpcyBjb25maWd1cmVkIGFzIGxvdyBsZXZlbCwKPiAg
ICAgUTE3MDAsIFExNzAxLCBRMTcwMiwgYW5kIFExNzAzIGFyZSBub3QgdHVybmVkIG9uLgo+Cj4g
ICAtIFdoZW4gd29ya2luZyBpbiBIRE1JMi4wIGFuZCBiZWxvdyBtb2RlcywgSERNSTBfVFhfT05f
SCBpcyBjb25maWd1cmVkIGFzIGhpZ2gKPiAgICAgbGV2ZWwsIFE1MDA3LCBRNTAwNCwgUTUwMDUs
IGFuZCBRNTAwNiBhcmUgdHVybmVkIG9uLCBhbmQgdGhlIDQ5OW9obSByZXNpc3Rvcgo+ICAgICB0
byBncm91bmQgYW5kIHRoZSA1MG9obSBwdWxsLXVwIHJlc2lzdG9yIGF0IHRoZSBTaW5rIGVuZCBm
b3JtIGEgREMgYmlhcyBvZgo+ICAgICBhYm91dCAzVi4KPgo+ICAgSWYgeW91IG9ubHkgbmVlZCB0
byBzdXBwb3J0IEhETUkyLjAgYW5kIGJlbG93IG1vZGVzLCBRNTAwNywgUTUwMDQsIFE1MDA1LCBh
bmQKPiAgIFE1MDA2IGNhbm5vdCBiZSBvbWl0dGVkLiBJdCBpcyBuZWNlc3NhcnkgdG8gZW5zdXJl
IHRoYXQgdGhlIHR1YmUgaXMgbm90IHR1cm5lZAo+ICAgb24gd2hlbiB0aGUgbWFjaGluZSBpcyBu
b3QgdHVybmVkIG9uLCBiZWNhdXNlIHRoZSBIRE1JIENUUyBUZXN0IElEIDctMyBUTURTCj4gICBW
b2ZmIHRlc3QgaXRlbSByZXF1aXJlcyB0aGF0IHRoZSBWb2ZmIHZvbHRhZ2UgbXVzdCBiZSB3aXRo
aW4gQVZjYystMTBtViB3aGVuCj4gICB0aGUgRFVUIGlzIG5vdCBwb3dlcmVkIG9uLCBvdGhlcndp
c2UgdGhpcyB0ZXN0IGl0ZW0gY2Fubm90IHBhc3MuIDI6IFRoZSBDb3NzCj4gICBvZiB0aGUgY29u
dHJvbCBNT1MgdHViZSBjYW5ub3QgYmUgdG9vIGxhcmdlLCBvdGhlcndpc2UgaXQgd2lsbCBhZmZl
Y3QgdGhlCj4gICBzaWduYWwgcXVhbGl0eS4gSXQgaXMgcmVjb21tZW5kZWQgdG8gZm9sbG93IHRo
ZSByZWZlcmVuY2UgZmlndXJlIG1vZGVsIG9yIHRoZQo+ICAgY29ycmVzcG9uZGluZyBDb3NzIHZh
bHVlLgo+Cj4gQW5kIE9yYW5nZSBQaSA1IHNjaGVtYXRpYyAod2hpY2ggaGFzIGFsbW9zdCB0aGUg
c2FtZSBjaXJjdWl0IGFzIFBsdXMgdmFyaWFudCkKPiBzdGF0ZXMgdGhpcyBleHBsaWNpdGVseSB0
b286Cj4KPiAgIGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAvNWRjOThlOTFkZmVlM2I1YS5wbmcK
Pgo+IFRoZSBzYW1lIGFwcGxpZXMgdG8gSERNSTEuCj4KPiBNYXliZSBpdCB3b3VsZCBiZSBiZXR0
ZXIgdG8gcHVsbCB1cCBIRE1JMV9UWF9PTl9IIG1vcmUgZXhwbGljaXRlbHkgZm9yIG5vdyB2aWE6
Cj4KPiAmaGRtaTEgewo+ICsgcGluY3RybC0wID0gPCZoZG1pbTJfdHgxX2NlYyAmaGRtaW0wX3R4
MV9ocGQKPiArICAgICAgICAgICAgICAmaGRtaW0xX3R4MV9zY2wgJmhkbWltMV90eDFfc2RhCj4g
KyAgICAgICAgICAgICAgJmhkbWkxX3R4X29uX2g+Owo+IH07Cj4KPiAmcGluY3RybCB7Cj4gLi4u
Cj4gKyBoZG1pIHsKPiArICAgICAgICAgaGRtaTFfdHhfb25faDogaGRtaTEtdHgtb24taCB7Cj4g
KyAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDw0IFJLX1BCMiBSS19GVU5DX0dQSU8g
JnBjZmdfcHVsbF91cD47Cj4gKyAgICAgICAgIH07Cj4gKyB9Owo+IC4uLgo+IH07Cj4KPiBBRkFJ
SyBGUkwgaXMgbm90IHN1cHBvcnRlZCwgeWV0LCBzbyB0aGlzIG1heSBiZSBhIGJldHRlciBkZWZh
dWx0IGZvciBIRE1JMV9UWF9PTl9ILgpJIGFtIGdvaW5nIHRvIGRlZmVyIGFkZGluZyBhIHRlbXBv
cmFyeSB3b3JrYXJvdW5kIGFuZCBrZWVwIGhkbWkxCmJlaGF2aW9yIHRoZSBzYW1lIGFzIGhkbWkw
LiBbMV0gSSBkb24ndCB3YW50IHRvIGludHJvZHVjZSBzb21ldGhpbmcKdGhhdCB3aWxsIGhpbmRl
ciB0aGUgdXBjb21pbmcgRlJMIGRldmVsb3BtZW50IHdoZW4gaXQgdHJpZXMgdG8gc3VwcG9ydAph
biBvbGQgRFRCLiBJJ20gaG9waW5nIENyaXN0aWFuIGNvdWxkIHN0YXJ0IGFkZGluZyB0aGUgSERN
STBfVFhfT05fSAp0byB0aGUgZHQtYmluZGluZ3MsIGV2ZW4gYmVmb3JlIHRoZSBmdWxsIEZSTCBz
dXBwb3J0IGlzIGFkZGVkLCBzbyBhdApsZWFzdCBhbGwgdGhlIERUUyBjb3VsZCBoYXZlICJlbmFi
bGUtZ3Bpb3MiIHByb3BlcnR5IGRlZmluZWQgWzJdLCBhbmQKdGhlbiB0aGUgRFRTcyBiZSByZWFk
eSB0byBnbyB3aGVuIEZSTCBzdXBwb3J0IGlzIHJlYWR5LiBUaGF0IHdheSB0aGUKSERNSTBfVFhf
T05fSCB3aWxsIGJlIHB1bGxlZCBjb3JyZWN0bHkgZGVwZW5kaW5nIHdoYXQgbW9kZSBpcyBiZWlu
Zwp1c2VkLgoKWzFdIGh0dHBzOi8vd2ViLmdpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzP2g9djYuMTQtcmMxI24xMTMKWzJdIGh0dHBz
Oi8vZ2l0aHViLmNvbS9yYWR4YS9rZXJuZWwvYmxvYi9saW51eC02LjEtc3Rhbi1ya3I0LjEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMjTDU2NAoKPgo+IElu
IGFueSBjYXNlLAo+Cj4gUmV2aWV3ZWQtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+
Cj4KPiBBbmQgSSd2ZSBhbHNvIHRlc3RlZCBhbmQgdXNlZCBpZGVudGljYWwgcGF0Y2ggZm9yIGEg
ZmV3IHdlZWtzIGFscmVhZHkgb24gbXkKPiBPcmFuZ2UgUGkgNSsuIDopCj4KPiBLaW5kIHJlZ2Fy
ZHMsCj4gICAgICAgICBvLgo+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKaW1teSBIb24gPGhvbnl1ZW5r
d3VuQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5n
ZXBpLTUtcGx1cy5kdHMgICB8IDM4ICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMzggaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cwo+ID4gaW5kZXggMGY4
NzRiODdiNDdlLi41Mzc5N2Y2MzNkM2EgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzCj4gPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzCj4gPiBAQCAt
MjYsNiArMjYsMTcgQEAgaGRtaTBfY29uX2luOiBlbmRwb2ludCB7Cj4gPiAgICAgICAgICAgICAg
IH07Cj4gPiAgICAgICB9Owo+ID4KPiA+ICsgICAgIGhkbWkxLWNvbiB7Cj4gPiArICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAiaGRtaS1jb25uZWN0b3IiOwo+ID4gKyAgICAgICAgICAgICB0eXBl
ID0gImEiOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBwb3J0IHsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBoZG1pMV9jb25faW46IGVuZHBvaW50IHsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmaGRtaTFfb3V0X2Nvbj47Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsgICAgIH07Cj4gPiAr
Cj4gPiAgICAgICBpci1yZWNlaXZlciB7Cj4gPiAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
Z3Bpby1pci1yZWNlaXZlciI7Cj4gPiAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvNCBSS19Q
QjMgR1BJT19BQ1RJVkVfTE9XPjsKPiA+IEBAIC0xMjUsMTAgKzEzNiwzMCBAQCBoZG1pMF9vdXRf
Y29uOiBlbmRwb2ludCB7Cj4gPiAgICAgICB9Owo+ID4gIH07Cj4gPgo+ID4gKyZoZG1pMSB7Cj4g
PiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+ICsmaGRtaTFfaW4gewo+
ID4gKyAgICAgaGRtaTFfaW5fdnAxOiBlbmRwb2ludCB7Cj4gPiArICAgICAgICAgICAgIHJlbW90
ZS1lbmRwb2ludCA9IDwmdnAxX291dF9oZG1pMT47Cj4gPiArICAgICB9Owo+ID4gK307Cj4gPiAr
Cj4gPiArJmhkbWkxX291dCB7Cj4gPiArICAgICBoZG1pMV9vdXRfY29uOiBlbmRwb2ludCB7Cj4g
PiArICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmaGRtaTFfY29uX2luPjsKPiA+ICsg
ICAgIH07Cj4gPiArfTsKPiA+ICsKPiA+ICAmaGRwdHhwaHkwIHsKPiA+ICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPiA+ICB9Owo+ID4KPiA+ICsmaGRwdHhwaHkxIHsKPiA+ICsgICAgIHN0YXR1cyA9
ICJva2F5IjsKPiA+ICt9Owo+ID4gKwo+ID4gICZoeW04NTYzIHsKPiA+ICAgICAgIGludGVycnVw
dC1wYXJlbnQgPSA8JmdwaW8wPjsKPiA+ICAgICAgIGludGVycnVwdHMgPSA8UktfUEIwIElSUV9U
WVBFX0xFVkVMX0xPVz47Cj4gPiBAQCAtMzQyLDMgKzM3MywxMCBAQCB2cDBfb3V0X2hkbWkwOiBl
bmRwb2ludEBST0NLQ0hJUF9WT1AyX0VQX0hETUkwIHsKPiA+ICAgICAgICAgICAgICAgcmVtb3Rl
LWVuZHBvaW50ID0gPCZoZG1pMF9pbl92cDA+Owo+ID4gICAgICAgfTsKPiA+ICB9Owo+ID4gKwo+
ID4gKyZ2cDEgewo+ID4gKyAgICAgdnAxX291dF9oZG1pMTogZW5kcG9pbnRAUk9DS0NISVBfVk9Q
Ml9FUF9IRE1JMSB7Cj4gPiArICAgICAgICAgICAgIHJlZyA9IDxST0NLQ0hJUF9WT1AyX0VQX0hE
TUkxPjsKPiA+ICsgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZoZG1pMV9pbl92cDE+
Owo+ID4gKyAgICAgfTsKPiA+ICt9Owo+ID4gLS0KPiA+IDIuNDguMQo+ID4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
