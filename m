Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEBE1C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jun 2022 15:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nF00X9yrAhCNjrVxWl8FhzwFzwsZqYqSxeMSqxVG0ZY=; b=QK7vbYUUV3PLOL
	c0QEZ0vKsqkGol6UEcrv+Bf2sWbbKZPTTjLwqzzDVGB/0zmQOk77dU06XODEZY3T7Lm0rWA5IpXo9
	M3iBuScZfpKj0kIgIlrcYXJzYNszfhwi/Wky4mr2YiCzQZDXRpIGnO9CGQFw+OnVG5/mCCkCdMnlQ
	jMbEWSPj8rpxBMTwlZqMlj/HSVuJJFbHWw+4DoeG5KqXUcRM8DGlPcaU2h0Z1VPLLXyRWMD5Gq/Mg
	J8927ecRZ1Rk4ixFOyFN+PcCXXwFRWcGV4sgHTbVrVrJi936ut5+tUOayqQkPc77abBIlEyPUtHwV
	f0OOQoEeCcYE6HYS/HVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzJjQ-002dt3-EO; Thu, 09 Jun 2022 15:05:56 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzJjN-002drd-EJ
	for linux-rockchip@lists.infradead.org; Thu, 09 Jun 2022 15:05:55 +0000
Received: by mail-ej1-x62f.google.com with SMTP id g25so1574777ejh.9
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jun 2022 08:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lPZqyysbfO+3buaJKul7mEmadI+ROjg8n1gq6FC8MZk=;
        b=GUuTlPoRfZMUwhoNlPqshTBdDwigWGKdXr6k1ybuLUMRk2PTHVOD3lsSAoLIulEL6C
         oe92M3x9VO4xZ2QTeXagALdpleC5i3UaH0EGMg+hUItb/yl5a/qhN0SZ78mE4C5N2//2
         r97Sa/VVq2NbaU9VlkkW2e+vHsw97ZoXL0UovybFrboNLb9FSj5sD96Kp4dj+9eF1vJD
         wnrEe/U2wRXuJ0XISAg0QTdXxbGl4SRWXhEn5qu/D4FDBJ7RQDvT4PCju9fo0a0NOyLk
         YKz0nPjUA32KKVwKU4lAYVyVzSCLj/X3PrmqGOVVwHVN3j7gAGhbod8t86XY6CKh8Ob3
         D8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lPZqyysbfO+3buaJKul7mEmadI+ROjg8n1gq6FC8MZk=;
        b=jcP6T9SBrLRc7EkN+SMJdR8B/x6xj4J+NyffUqfWtl9N86zPqnKCXoCZWtX681/m48
         3UxGsftJigw50+hya3653aqNbwDVLorD9sSgQD5FHsiTOo6ut0PYvlI5XBW1TwdfIzcL
         OmJUP/00WnGBp2BKnWAyjEMIEZg3KSrXJRKBGna1AHQyXDmCCY6LltUGr+5MoBu51gHi
         UDRB6oAhsnTpfMs1D6DAQ+if2/dHfK+hGvX3zPLTeZZYMoHgstZra5lhLJikQBRArsA3
         WEAw3X26jV6e15ps/f6R48EjaoRfIBMrcAFlUqQ/2CRA6a7u+N8AVCRrjEDkifZPMLGm
         wlUg==
X-Gm-Message-State: AOAM531i8FUCn95EUGR5OwjWIZGEi6FL1diZBB5CUcM/MX2NC6gj0kOk
	L69bG3rZvHqrrY9/JduTQZAAEg==
X-Google-Smtp-Source: ABdhPJwkyyWsIEB6RI1cOVWGgt6CQYMSQhhBa+63/Q1yQVUN9GDh93/YoJ+vTNkZewfJ+r2RpRKqAA==
X-Received: by 2002:a17:906:d550:b0:704:7ba6:9854 with SMTP id cr16-20020a170906d55000b007047ba69854mr35879652ejc.579.1654787151224;
        Thu, 09 Jun 2022 08:05:51 -0700 (PDT)
Received: from [192.168.0.198] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l1-20020a1709060e0100b006fec4ee28d0sm9305486eji.189.2022.06.09.08.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 08:05:50 -0700 (PDT)
Message-ID: <e6406956-07b7-d217-f8f4-ef6168647cc2@linaro.org>
Date: Thu, 9 Jun 2022 17:05:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 32/48] arm64: dts: rockchip: align gpio-key node names
 with dtschema
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
 <CAO_MupKxvaXRQvMyEUZMThBZ9033OeJec+BtBndjs5oZ3etTEQ@mail.gmail.com>
 <e0f7146d-3ccc-a194-bb1e-c3475ca8c29e@linaro.org> <2126178.C4sosBPzcN@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2126178.C4sosBPzcN@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_080553_530634_C5FB8288 
X-CRM114-Status: GOOD (  18.52  )
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

T24gMDkvMDYvMjAyMiAxNjo1NiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgOS4gSnVuaSAyMDIyLCAxNjoxNToyNSBDRVNUIHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3Nr
aToKPj4gT24gMDkvMDYvMjAyMiAxNTo1NywgTWF5YSBNYXR1c3pjenlrIHdyb3RlOgo+Pj4gY3p3
LiwgOSBjemUgMjAyMiBvIDEzOjU2IEtyenlzenRvZiBLb3psb3dza2kKPj4+IDxrcnp5c3p0b2Yu
a296bG93c2tpQGxpbmFyby5vcmc+IG5hcGlzYcWCKGEpOgo+Pj4+Cj4+Pj4gVGhlIG5vZGUgbmFt
ZXMgc2hvdWxkIGJlIGdlbmVyaWMgYW5kIERUIHNjaGVtYSBleHBlY3RzIGNlcnRhaW4gcGF0dGVy
bgo+Pj4+IChlLmcuIHdpdGgga2V5L2J1dHRvbi9zd2l0Y2gpLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9m
Zi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3Jn
Pgo+Pj4+IC0tLQo+Pj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMwOC1ldmIu
ZHRzICAgfCAgMiArLQo+Pj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI2LW9kcm9pZC1n
bzIuZHRzICAgfCAzMiArKysrKysrKystLS0tLS0tLS0tCj4+Pj4gIC4uLi9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzMjgtbmFub3BpLXIycy5kdHMgICB8ICAyICstCj4+Pj4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzY4LWV2Yi5kdHNpICB8ICAyICstCj4+Pj4gIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazMzNjgtZ2Vla2JveC5kdHMgICAgICB8ICAyICstCj4+Pj4gIC4uLi9kdHMv
cm9ja2NoaXAvcmszMzY4LW9yaW9uLXI2OC1tZXRhLmR0cyAgICB8ICAyICstCj4+Pj4gIC4uLi9i
b290L2R0cy9yb2NrY2hpcC9yazMzNjgtcHg1LWV2Yi5kdHMgICAgICB8ICAyICstCj4+Pj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LXI4OC5kdHMgICB8ICAyICstCj4+Pj4g
IC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMgICAgICB8ICAyICstCj4+
Pj4gIC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29rLmR0c2kgICB8ICAyICst
Cj4+Pj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LWtldmluLmR0cyAgICB8ICAy
ICstCj4+Pj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LXNjYXJsZXQuZHRzaSB8
ICAyICstCj4+Pj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta2hhZGFzLWVkZ2UuZHRz
aSB8ICAyICstCj4+Pj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpLXI0cy5k
dHMgICB8ICA0ICstLQo+Pj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQu
ZHRzaSAgICAgfCAgMiArLQo+Pj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW9yYW5n
ZXBpLmR0cyAgICAgfCAgMiArLQo+Pj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBp
bmVib29rLXByby5kdHMgfCAgNCArLS0KPj4+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1yb2MtcGMuZHRzaSAgICAgIHwgIDIgKy0KPj4+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrcHJvNjQuZHRzaSAgIHwgIDIgKy0KPj4+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1zYXBwaGlyZS5kdHNpICAgIHwgIDIgKy0KPj4+PiAgLi4uL2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2Ni1waW5lbm90ZS5kdHNpICAgIHwgIDIgKy0KPj4+PiAgMjEgZmlsZXMgY2hhbmdl
ZCwgMzggaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMDgtZXZiLmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzA4LWV2Yi5kdHMKPj4+PiBpbmRleCA5YjRmODU1ZWE1
ZDQuLjRiNTQxM2IxMmJmYSAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzMwOC1ldmIuZHRzCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzMDgtZXZiLmR0cwo+Pj4+IEBAIC03NSw3ICs3NSw3IEBAIGdwaW8ta2V5cyB7Cj4+
Pj4gICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gICAgICAg
ICAgICAgICAgIHBpbmN0cmwtMCA9IDwmcHdyX2tleT47Cj4+Pj4KPj4+PiAtICAgICAgICAgICAg
ICAgcG93ZXIgewo+Pj4+ICsgICAgICAgICAgICAgICBwb3dlci1rZXkgewo+IAo+IGhtbSwgaXQg
bG9va3MgbGlrZSBhbGwgdGhlIG90aGVycyBiZWxvdyBhcmUgbmFtZWQga2V5LXBvd2VyLCB3aGls
ZQo+IG9ubHkgdGhpcyB1c2VzIHBvd2VyLWtleSA/Cj4gCgpCZWNhdXNlIGEgYml0IGVhcmxpZXIg
aW4gRFRTLCB0aGVyZSBhcmUgdHdvIGFkYy1rZXlzIG5vZGVzIHdpdGggImtleSIKc3VmZml4LCBz
byBJIGtlcHQgdGhhdCBhcHByb2FjaCB0byBiZSBjb25zaXN0ZW50IHdpdGhpbiBvbmUgRFRTLiBJ
ZiB5b3UKcHJlZmVyLCBJIGNhbiBjaGFuZ2UgaXQgdG8ga2V5LXBvd2VyLgoKPiAKPj4+PiAgICAg
ICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzAgUktfUEE2IEdQSU9fQUNUSVZFX0xP
Vz47Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxLRVlfUE9XRVI+
Owo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gIkdQSU8gS2V5IFBvd2VyIjsK
Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjYtb2Ry
b2lkLWdvMi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1vZHJvaWQt
Z28yLmR0cwo+Pj4+IGluZGV4IGVhMDY5NWI1MWVjZC4uNzIzMjhkZDk5M2VlIDEwMDY0NAo+Pj4+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI2LW9kcm9pZC1nbzIuZHRz
Cj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjYtb2Ryb2lkLWdv
Mi5kdHMKPj4+PiBAQCAtNzEsODIgKzcxLDgyIEBAIGdwaW8ta2V5cyB7Cj4+Pj4gICAgICAgICAg
ICAgICAgICAqIHwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS18Cj4+Pj4gICAgICAgICAgICAgICAgICAqLwo+Pj4+Cj4+Pj4gLSAgICAgICAgICAgICAgIHN3
MSB7Cj4+Pj4gKyAgICAgICAgICAgICAgIHN3aXRjaC0xIHsKPj4+IFdvdWxkbid0IGl0IG1ha2Ug
bW9yZSBzZW5zZSB0byByZW5hbWUgdGhpcyBhbmQgYWxsIG90aGVyCj4+PiByZW5hbWVkIG5vZGVz
IGluIHRoaXMgZHRzIGludG8gImJ1dHRvbi1kcGFkLXVwIiBvciAiYnV0dG9uLTEiLAo+Pj4gYXMg
b24gdGhlIHBoeXNpY2FsIGRldmljZSB0aG9zZSBhcmUgYnV0dG9ucyBhbmQgdGhlIG5hbWluZwo+
Pj4gc2NoZW1lIG9mICJzdyIgKyBudW1iZXIgc2VlbXMgdG8gYmUgYSBjYXJyeW92ZXIgZnJvbQo+
Pj4gZG93bnN0cmVhbSBzb3VyY2VzLgo+IAo+IFRoZSBuYW1pbmcgYWN0dWFsbHkgY2FycmllcyBv
dmVyIGZyb20gdGhlIGRldmljZSBpdHNlbGYuCj4gSW4gdGhlIHNjaGVtYXRpY3MgdGhlIHJlbGV2
YW50IGtleXMgYXJlIGFsc28gbmFtZWQgc3cxLCBzdzIsIGV0Yy4KPiAKPiBBbmQgSSBkbyBiZWxp
ZXZlIGl0IGlzIHdheSBuaWNlciB3aGVuIGRldmljZXRyZWUgbmFtZXMgY29ycmVzcG9uZCB0byB0
aGUKPiB0aGluZ3MgeW91IGZpbmQgaW4gZGV2aWNlIHNjaGVtYXRpY3MgYW5kIG5vdCBiZSBuYW1l
ZCAiYXJiaXRhcmlseSIgdG8KPiBvbmx5IGNvbmZvcm0gdG8gc29tZSBzY2hlbWEgOy0pCgpUaGVu
IHlvdSBhcmUgZW50aXJlbHkgZGVwZW5kaW5nIG9uIGhhcmR3YXJlIGVuZ2luZWVycyB3aGljaCBt
aWdodCBzdGFydApjYWxsaW5nIHRoZWlyIGJ1dHRvbnMgImN1dGUtcG9ueS14eHgiIDopCgo+IAo+
IFNvIHBlcnNvbmFsbHkgSSdkIGFjdHVhbGx5IHByZWZlciBnb2luZyB3aXRoIHN3aXRjaC1zdzEg
KG9yIGJ1dHRvbi1zdzEgaWYKPiB5b3UgcHJlZmVyKSBhcyBiZWluZyBhYmxlIHRvIGp1c3QgdXNl
IHRoZSBzZWFyY2ggZnVuY3Rpb24gaW4gc2NoZW1hdGljIHBkZnMKPiBpcyBhIGhlbHBmdWwgdG9v
bC4KCkJvdGggYXJlIGZpbmUgd2l0aCBtZSwgbGV0J3MganVzdCBwaWNrIG9uZSAtIHN3aXRjaC1z
dzEgb3IgYnV0dG9uLXN3MS4KU2luY2UgdGhlc2UgYXJlIHBoeXNpY2FsbHkgYnV0dG9ucywgSSBw
cm9wb3NlIHRoZSBsYXR0ZXIuCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
