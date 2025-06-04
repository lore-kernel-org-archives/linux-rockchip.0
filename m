Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE8AC5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 19:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9EceCFuofZBI1fLUWuNfMXuKLT73xKzufldj5tZNfo=; b=BOwPB+K2F+MOeE
	LBX/N33lFbbwgq1WimTW/h1jLv8kWlduCtnCiVTc6jh8Q3/BFjuY3XNmJ4tXVrmxuXJOrs6JbTwRk
	pQAUmIO7abtDhCpiaMWLPteNqpwdYEXT/xpx7dEJijK0hHWYoTnHYN4qjYiqes8zOKzUMTAIBj+12
	yr7hZ++vbOk4/yvcoK4Pbu7HjRbZKbTNrIGy9oFlv6vtuMFMsuEJa1lYVgF1NOR4OE0kqCRvuKgWH
	MQVKMcfACqq6QE7lT2Vc0nelqwqvI20xyv2YZdQc+iuKScf04kKSbhYUSMA9B6ibJ3mZxXOeZX3my
	sJmvl+E4h4BJVIM5twmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMuDz-0000000E8Os-2mfd;
	Wed, 04 Jun 2025 19:56:35 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMuBt-0000000E8DH-1ATU;
	Wed, 04 Jun 2025 19:54:26 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-4a3db0666f2so3311781cf.1;
        Wed, 04 Jun 2025 12:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749066864; x=1749671664; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kqa5razpkQwxe4vQQTx47r6fs83MP5HEXihvc/yiIDU=;
        b=aX0mbWXGBxC98MYD5xZx2xxVfxr9nTRD3K8M49oLZGUt7VkVUrmBO1Bel4Ou0BpLQk
         S2URf2sUx5DV1zVrr1+g6zEPr4ce8yJCcN1+Kj2rpVAOdRyGKsFwo5bJVvjyeOEvB9W1
         3/K6IHBDTTMlIbLcHbKUx4Tr2mergvxUPGmv4KVr+kQgDRGv8w+x2B9slTrnEt0M67ef
         qx5D/K0bwpF070/IFrP9YlVcVjddK/BoBSzjyPR6ko8Vk+Clj3e6bg/zXLUxxJrDVPgg
         8TLREGnsxyrXz9UcdTGHEN1gQfkFXTvYQyq0TRoZ6BaxANnIud8cYzVW8C2CsgR23pUc
         rOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749066864; x=1749671664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kqa5razpkQwxe4vQQTx47r6fs83MP5HEXihvc/yiIDU=;
        b=rNt9+oZ3wyQE29QCqLolDZsZyoVj1vvUvlsQB7jvxOjo5cLb6uHHOsVLTabFd94SjS
         tzSmEORYxs5nLEbYJ9OMTYJ3gSTvJwvxt82Eyi8iq0EmE5vt3oCEs4KSrGu4fjIkZIDH
         jiYLcUaXNdbqacWgeuZmS6M5H9cSe7Vqdna4wz7zIauIfaLvWO9isp0/tHLQzLnZ7D7j
         HpATHciCJ9mtzU2+VHtUagF8SIZrHG8fABArbdsWt9xXAfuEdq/bvzoMXx9ZaDxr9nXp
         1ugqRmEun2cs02URWbXz9MAKQi6XeNS+JjQaWvhEOnGOWUnkwIVVZwVmcENCuxKD7cx+
         6s8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbjnvm7QDoV4gWXVNLL0UnnVCz46o/TIoX0CN0rGE1et98Sj1c2fAi2mZT6GaSNp5bcebBbW9Gwkku/x/P5BY=@lists.infradead.org, AJvYcCXzy3rPlzuAqn8qxvVPlumSl0T4ug+DIIDri0OPBTEqOf0cGuWm3pSNdk/YmUsz/adcjgtuLmcyFzETLIYgkRfC@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2LHKoGN45jrk8AolEghxjW7SU2tSfLNm9c4FEo701hyY1vMgi
	SaxWgHoID4dwHwbkiiYVHYtnX/XNnEMjDow48BK7XIo33YaFdvbTrTFKmiY95ZK4DeRmm0+6rcG
	s9/is0mTm+QUHTKd3hxDqstaU31eL9EA=
X-Gm-Gg: ASbGnct10p50plxYIIlYW7KvRgkziqQ4d+mpYBRzFL+tTpgl6RD/ikAHotG6t/2bJfb
	CIjw3Jer2pjC2wMk1Bd1LjNPnDtNxNahEuLVCYKNH3Li08ugjx89JeAcU7OmBO/hHInZ0sgCvlB
	ELyyitC6Y0A26XTkFTopuL8A/k/ybPS9c/PpVqSivq7NPrUToUX2PhABEH0msi45xSFA==
X-Google-Smtp-Source: AGHT+IHAyy7cOKoQrKo/qrn3FqhxEupKgT1BOK1u+EwZ6v7KzrpFo7ToVVNkwt6ARpY9qanwEAnINSvWr4g7fwW6JX0=
X-Received: by 2002:a05:622a:1927:b0:4a1:511a:b99f with SMTP id
 d75a77b69052e-4a5a573b2c3mr68994861cf.3.1749066864086; Wed, 04 Jun 2025
 12:54:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <6656934.DvuYhMxLoT@workhorse> <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
 <23482965.EfDdHjke4D@workhorse>
In-Reply-To: <23482965.EfDdHjke4D@workhorse>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 4 Jun 2025 23:54:14 +0400
X-Gm-Features: AX0GCFuLXULnMLr8rryeq8foOrYa4cmHNsLuY_-MFNEhem-Gq9QzyGKN9mE70Mw
Message-ID: <CABjd4YxBHn4f4QRVxk1uLGgt7-n=VQqF0_ZSJsKSxZuVtrLiaw@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_125425_318471_09FFC7F5 
X-CRM114-Status: GOOD (  27.97  )
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

T24gV2VkLCBKdW4gNCwgMjAyNSBhdCAxMToyM+KAr1BNIE5pY29sYXMgRnJhdHRhcm9saQo8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gV2VkbmVzZGF5LCA0
IEp1bmUgMjAyNSAyMToxMjozNSBDZW50cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1lIEFsZXhleSBD
aGFya292IHdyb3RlOgo+ID4gT24gV2VkLCBKdW4gNCwgMjAyNSBhdCAxMDozOOKAr1BNIE5pY29s
YXMgRnJhdHRhcm9saQo+ID4gPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPiB3cm90
ZToKPiA+ID4KPiA+ID4gT24gVHVlc2RheSwgMyBKdW5lIDIwMjUgMTk6MDE6MTMgQ2VudHJhbCBF
dXJvcGVhbiBTdW1tZXIgVGltZSBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+ID4gPiBMaXN0IGJv
dGggQ1BVIHN1cHBseSByZWd1bGF0b3JzIHdoaWNoIGRyaXZlIHRoZSBsaXR0bGUgYW5kIGJpZyBD
UFUKPiA+ID4gPiBjbHVzdGVycywgcmVzcGVjdGl2ZWx5LCBzbyB0aGF0IGNwdWZyZXEgY2FuIHBp
Y2sgdGhlbSB1cC4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292
IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgLi4uL2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU3Ni1hcm1zb20tc2lnZTUuZHRzICAgICAgfCAyOCArKysrKysrKysrKysrKysr
KysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4gPiA+ID4K
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYt
YXJtc29tLXNpZ2U1LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWFy
bXNvbS1zaWdlNS5kdHMKPiA+ID4gPiBpbmRleCBiMDllNzg5Yzc1YzQ3ZmVjN2NmN2U5ODEwYWIw
ZGNjYTMyZDk0MDRhLi5kOWMxMjliZTU1YTBkOTk3ZTA0ZTZkNjc3Y2RjOThmYjUwMzUzNDE4IDEw
MDY0NAo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWFy
bXNvbS1zaWdlNS5kdHMKPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU3Ni1hcm1zb20tc2lnZTUuZHRzCj4gPiA+ID4gQEAgLTIwNyw2ICsyMDcsMjIgQEAgdmNj
XzN2M191ZnNfczA6IHJlZ3VsYXRvci12Y2MtdWZzLXMwIHsKPiA+ID4gPiAgICAgICB9Owo+ID4g
PiA+ICB9Owo+ID4gPiA+Cj4gPiA+ID4gKyZjcHVfYjAgewo+ID4gPiA+ICsgICAgIGNwdS1zdXBw
bHkgPSA8JnZkZF9jcHVfYmlnX3MwPjsKPiA+ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+ID4gKyZj
cHVfYjEgewo+ID4gPiA+ICsgICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfYmlnX3MwPjsKPiA+
ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+ID4gKyZjcHVfYjIgewo+ID4gPiA+ICsgICAgIGNwdS1z
dXBwbHkgPSA8JnZkZF9jcHVfYmlnX3MwPjsKPiA+ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+ID4g
KyZjcHVfYjMgewo+ID4gPiA+ICsgICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfYmlnX3MwPjsK
PiA+ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+ID4gICZjb21icGh5MF9wcyB7Cj4gPiA+ID4gICAg
ICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiA+ICB9Owo+ID4gPiA+IEBAIC0yMTUsNiArMjMxLDE4
IEBAICZjcHVfbDAgewo+ID4gPiA+ICAgICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfbGl0X3Mw
PjsKPiA+ID4gPiAgfTsKPiA+ID4gPgo+ID4gPiA+ICsmY3B1X2wxIHsKPiA+ID4gPiArICAgICBj
cHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2xpdF9zMD47Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4g
PiA+ICsmY3B1X2wyIHsKPiA+ID4gPiArICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2xpdF9z
MD47Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+ICsmY3B1X2wzIHsKPiA+ID4gPiArICAg
ICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2xpdF9zMD47Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+
ID4gPiA+ICAmZ21hYzAgewo+ID4gPiA+ICAgICAgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiA+
ID4gPiAgICAgICBjbG9ja19pbl9vdXQgPSAib3V0cHV0IjsKPiA+ID4gPgo+ID4gPiA+Cj4gPiA+
Cj4gPiA+IFJldmlld2VkLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9s
aUBjb2xsYWJvcmEuY29tPgo+ID4gPiBUZXN0ZWQtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+Cj4gPiA+Cj4gPiA+ID4gc28gdGhhdCBjcHVm
cmVxIGNhbiBwaWNrIHRoZW0gdXAuCj4gPiA+Cj4gPiA+IEZ3aXcsIGV2ZW4gd2l0aG91dCB0aGlz
IHBhdGNoIHRoZXkncmUgcGlja2VkIHVwIGJ5IGNwdWZyZXEtZHQgZm9yIG1lOgo+ID4gPgo+ID4g
PiAgICAgdXNlckB0cml4aWU6fiQgc3VkbyBjcHVwb3dlciBmcmVxdWVuY3ktaW5mbwo+ID4gPiAg
ICAgICBhbmFseXppbmcgQ1BVIDU6Cj4gPiA+ICAgICAgIGRyaXZlcjogY3B1ZnJlcS1kdAo+ID4g
PiAgICAgICBDUFVzIHdoaWNoIHJ1biBhdCB0aGUgc2FtZSBoYXJkd2FyZSBmcmVxdWVuY3k6IDQg
NSA2IDcKPiA+ID4gICAgICAgQ1BVcyB3aGljaCBuZWVkIHRvIGhhdmUgdGhlaXIgZnJlcXVlbmN5
IGNvb3JkaW5hdGVkIGJ5IHNvZnR3YXJlOiA0IDUgNiA3Cj4gPiA+ICAgICAgIG1heGltdW0gdHJh
bnNpdGlvbiBsYXRlbmN5OiA0MC4wIHVzCj4gPiA+ICAgICAgIGhhcmR3YXJlIGxpbWl0czogNDA4
IE1IeiAtIDIuMzAgR0h6Cj4gPiA+ICAgICAgIGF2YWlsYWJsZSBmcmVxdWVuY3kgc3RlcHM6ICA0
MDggTUh6LCA2MDAgTUh6LCA4MTYgTUh6LCAxLjAxIEdIeiwgMS4yMCBHSHosIDEuNDIgR0h6LCAx
LjYxIEdIeiwgMS44MCBHSHosIDIuMDIgR0h6LCAyLjIxIEdIeiwgMi4zMCBHSHoKPiA+ID4gICAg
ICAgYXZhaWxhYmxlIGNwdWZyZXEgZ292ZXJub3JzOiBvbmRlbWFuZCB1c2Vyc3BhY2UgcGVyZm9y
bWFuY2Ugc2NoZWR1dGlsCj4gPiA+ICAgICAgIGN1cnJlbnQgcG9saWN5OiBmcmVxdWVuY3kgc2hv
dWxkIGJlIHdpdGhpbiA0MDggTUh6IGFuZCAyLjMwIEdIei4KPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgIFRoZSBnb3Zlcm5vciAic2NoZWR1dGlsIiBtYXkgZGVjaWRlIHdoaWNoIHNwZWVkIHRv
IHVzZQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgd2l0aGluIHRoaXMgcmFuZ2UuCj4gPiA+
ICAgICAgIGN1cnJlbnQgQ1BVIGZyZXF1ZW5jeTogMS42MSBHSHogKGFzc2VydGVkIGJ5IGNhbGwg
dG8gaGFyZHdhcmUpCj4gPiA+ICAgICB1c2VyQHRyaXhpZTp+JCB1bmFtZSAtYQo+ID4gPiAgICAg
TGludXggdHJpeGllIDYuMTUuMC0xMTE3My1nNTQ2YjFjOWU5M2MyICMyIFNNUCBQUkVFTVBUIFdl
ZCBKdW4gIDQgMjA6MzI6NTIgQ0VTVCAyMDI1IGFhcmNoNjQgR05VL0xpbnV4Cj4gPgo+ID4gRnJl
cXVlbmNpZXMgYXJlIGZpbmUsIGJ1dCBJIGRvbid0IHRoaW5rIHRoZSBtb3JlIHBvd2VyIGh1bmdy
eSBiaWcgQ1BVCj4gPiBjbHVzdGVyIGdldHMgYW55IHZvbHRhZ2Ugc2NhbGluZyB3aXRob3V0IGl0
LiBPbmNlIEkgdHJ5IHRvIGxvYWQgdGhlCj4gPiBzeXN0ZW0gZW5vdWdoIHRoYXQgdGhlIGdvdmVy
bm9yIGRlY2lkZXMgdG8gYnVtcCB0aGUgYmlnIGNsdXN0ZXIKPiA+IGZyZXF1ZW5jeSB1cCwgdGhl
IHJlZ3VsYXRvciBzdGF5cyBhdCA4NTAwMDAgbWljcm92b2x0cywgY2F1c2luZyByYW5kb20KPiA+
IHJlYm9vdHMgd2hlbiB0aGUgd2hvbGUgY2x1c3RlciBzdGFydHMgc3RhcnZpbmcuIFdpdGggdGhl
IHBhdGNoLAo+ID4gdm9sdGFnZSBvc2NpbGxhdGVzIGJldHdlZW4gNzAwMDAwLTczNzAwMCBtaWNy
b3ZvbHRzIGluIGlkbGUgYW5kIGp1bXBzCj4gPiB1cCB0byA5NTAwMDAgdW5kZXIgbG9hZCwgYW5k
IHRoZSBzeXN0ZW0gc2VlbXMgc3RhYmxlLgo+Cj4gT2theSwgdGhhdCBzb3VuZHMgcHJldHR5IHNl
cmlvdXMgYW5kIGluIHRoaXMgY2FzZSB5b3Ugc2hvdWxkIGFkZCB0aGUKPiBmb2xsb3dpbmcgdGFn
IGF0IHRoZSBlbmQgb2YgdGhlIGNvbW1pdCBtZXNzYWdlLCB1c3VhbGx5IGFzIHRoZSBmaXJzdAo+
IHRoaW5nIGFmdGVyIHRoZSBsaW5lIGJyZWFrOgo+Cj4gICBGaXhlczogNDBmNzQyYjA3YWIyICgi
YXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCByazM1NzYtYXJtc29tLXNpZ2U1IGJvYXJkIikKPgo+
IFRoYXQgd2F5LCBvdXIgc3RhYmxlIGtlcm5lbCByb2JvdCBvdmVybG9yZHMgd2lsbCBwaWNrIGl0
IHVwIGFuZAo+IGJhY2twb3J0IGl0IHRvIHRoZSBrZXJuZWxzIHRoYXQgYWxyZWFkeSBjb250YWlu
IHRoZSBtZW50aW9uZWQgY29tbWl0LgoKV2lsbCBkbywgdGhhbmtzIQoKQmVzdCByZWdhcmRzLApB
bGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
