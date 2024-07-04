Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3E96C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 13:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9a3KYiC/TTxlirwxsGj1bbcZ1GzhFRej/vBOH/CtwPk=; b=Gj2Covjnk8Vu2B
	ihN16j2yOHmulma/vwdgKnJzKaB8qC7tqX6Eie1u5WE5pmhAGjOLTZ9iiQMvLJ/kTqZ2laFp3sE1j
	PFv0wlDQEMiCKDS89FZqUxKE7SYi+902HzicZyvJqACmUbcJPKsbE267e0TH0SoxRG0ZwSK1rPLc+
	O8tFYNeuKPq2l1gxELSWFx99Y1L5dxtv27aa7TBgpwv+pNEaccxWA9vdu46WwEZGsEdmEn3EZzpc9
	Y6sq2KSqcCx2pzvIm72dI0S4EsOc6NrOSm9MTRSna80rokzWfo87kHkM/L6OAkKW5VdAZM7G0sT+L
	VxJSwaLITY9rogxJtfoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPM8u-0000000DDIr-2ZM1;
	Thu, 04 Jul 2024 13:04:57 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPM8s-0000000DDHV-0Eyn;
	Thu, 04 Jul 2024 13:04:55 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-58b447c511eso836389a12.2;
        Thu, 04 Jul 2024 06:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720098292; x=1720703092; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2uPuMCUt+0PiW5wgXWRLYWMzfYRTfHb3fi4+BnRHVqA=;
        b=NOueKwvFoEdyf0YH4zFjX8v4SQpK0hmxpELeG7T/pxLGKwRed4RkBv4OWmU4RPtv6Z
         SaFjBsogCaro58chsgcD5mI3V8bDAk4LjdM2/7NBDrlLSWq95/l9fwHOkHmqhF/u+OHg
         OrfeUSSKZgnANjH85DpKYS276noiF84BrqH4JMgCWJx8JmqNb8935gUCPk+peoA8CSfl
         +BGm6n1fq4x8Zp+fUXqKMUAGNUJomkrwdcHsjA5cfDryNiLy9EoT7ME9ljnpXR7ge8VN
         mzljeA3I+qDDxBzS68AO/M/vtTREJ9XB/PIY+OLoYB1/eEfBpcH8G/TA18c2oRwbxDuz
         pTlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720098292; x=1720703092;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2uPuMCUt+0PiW5wgXWRLYWMzfYRTfHb3fi4+BnRHVqA=;
        b=P29tawtfelpSGUHS/13dNNm+R1CsTPPPp+0yuB2vXPiqsacboixj84uS5zo2nHL+kX
         /8QqtSYXUVBrzNO4q3DZwLgZiO5RfCl5lmkHjhWryFx3GMJQ/B434JZ0YNgopYvNZwrR
         FUePJDcujMAaZHji2bdbonzNOJcPv/P+TTeaa7etRhr2wiwqjIYHB2UWPgoS8WgCBNmw
         E2Au7CRnwQsM9WbZt7uo+gTrbQ+Tu6lxLbSUin01VHqqKlKLxzuKwowWlnnaVMCvok8Q
         2JNalq/ooFPvWbuc2fk0COkkGtKuAxowsqsCGcmkxIxB5QPS2pRudaRgP8x2l8q2haOJ
         7daQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxBFTamTRogvc9gcYeKDP+sgGPa36+XX9HfMTYwn/1lRK/xF7p19+7TgdacByPls9Yftlkj5TjLAULGuu47dLYrlonf+ymqGSxfBu/YLJZao9Px/7C+ppGZ9/kzl85UaasKmtmoFk9ISL0nMGPDCif9f+Tfp7UYXk=
X-Gm-Message-State: AOJu0YxRdvFVQqLDr4681e2cwq/s3XPLCwAsCxYXY35XphBXmwdgQ7+O
	PC/bNl7vsDHSQsLmYO6Paiv9yXwklNnPPL3LBcfvabLvVIrGAo0=
X-Google-Smtp-Source: AGHT+IFZIcyALDt43Fk8aUWhime9uuJbu6aaRpQ6g07IxAblZfpNL/zdJWjjDDngZz0vSZjneaXhtQ==
X-Received: by 2002:a17:906:1158:b0:a72:8d4f:6720 with SMTP id a640c23a62f3a-a77ba72b9dfmr113893666b.69.1720098291839;
        Thu, 04 Jul 2024 06:04:51 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:ec22:4ef6:28e0:c5f3? ([2a02:810b:f40:4600:ec22:4ef6:28e0:c5f3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a72aaf1bb6bsm595903366b.30.2024.07.04.06.04.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jul 2024 06:04:51 -0700 (PDT)
Message-ID: <85e2ed16-47aa-498c-90a3-0910e5dd97f4@gmail.com>
Date: Thu, 4 Jul 2024 15:04:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240703210524.776455-1-heiko@sntech.de>
 <4552794.8F6SAcFxjW@diego> <2c46dfb7-5ef3-494f-8cf1-413033e73412@gmail.com>
 <2004736.8hb0ThOEGa@diego>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <2004736.8hb0ThOEGa@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_060454_118126_53090589 
X-CRM114-Status: GOOD (  15.21  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkFtIDA0LjA3LjI0IHVtIDE0OjA1IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4gQW0gRG9ubmVy
c3RhZywgNC4gSnVsaSAyMDI0LCAxMzo0Mzo0NyBDRVNUIHNjaHJpZWIgQWxleCBCZWU6Cj4+IEFt
IDA0LjA3LjI0IHVtIDEyOjA1IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4+PiBIaSBEaWVkZXJp
aywKPj4+Cj4+PiBBbSBEb25uZXJzdGFnLCA0LiBKdWxpIDIwMjQsIDExOjM4OjUxIENFU1Qgc2No
cmllYiBEaWVkZXJpayBkZSBIYWFzOgo+Pj4+IFRoYW5rcyBmb3Igc3VibWl0dGluZyB0aGlzLiBB
IHF1aWNrIHNjYW4gaW5kaWNhdGVzIGl0IHNob3VsZCB3b3JrIHdpdGggYQo+Pj4+IChyZWNlbnQp
IERlYmlhbiBrZXJuZWwgT09UQiA6LSkKPj4+Pgo+Pj4+IE9uIFdlZG5lc2RheSwgMyBKdWx5IDIw
MjQgMjM6MDU6MjQgQ0VTVCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4+Pj4gKyZzZGhjaSB7Cj4+
Pj4+ICsgICAgICAgYnVzLXdpZHRoID0gPDg+Owo+Pj4+PiArICAgICAgIG5vLXNkaW87Cj4+Pj4+
ICsgICAgICAgbm8tc2Q7Cj4+Pj4+ICsgICAgICAgbm9uLXJlbW92YWJsZTsKPj4+Pj4gKyAgICAg
ICBtYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwMD47Cj4+Pj4+ICsgICAgICAgbW1jLWhzNDAwLTFf
OHY7Cj4+Pj4+ICsgICAgICAgbW1jLWhzNDAwLWVuaGFuY2VkLXN0cm9iZTsKPj4+Pj4gKyAgICAg
ICBtbWMtaHMyMDAtMV84djsKPj4+Pj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+Pj4+ICt9
Owo+Pj4+PiArCj4+Pj4+ICsmc2RtbWMgewo+Pj4+PiArICAgICAgIG1heC1mcmVxdWVuY3kgPSA8
MjAwMDAwMDAwPjsKPj4+Pj4gKyAgICAgICBuby1zZGlvOwo+Pj4+PiArICAgICAgIG5vLW1tYzsK
Pj4+Pj4gKyAgICAgICBidXMtd2lkdGggPSA8ND47Cj4+Pj4+ICsgICAgICAgY2FwLW1tYy1oaWdo
c3BlZWQ7Cj4+Pj4+ICsgICAgICAgY2FwLXNkLWhpZ2hzcGVlZDsKPj4+Pj4gKyAgICAgICBkaXNh
YmxlLXdwOwo+Pj4+PiArICAgICAgIHNkLXVocy1zZHIxMDQ7Cj4+Pj4+ICsgICAgICAgdm1tYy1z
dXBwbHkgPSA8JnZjY18zdjNfczM+Owo+Pj4+PiArICAgICAgIHZxbW1jLXN1cHBseSA9IDwmdmNj
aW9fc2RfczA+Owo+Pj4+PiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4+
ICsgICAgICAgcGluY3RybC0wID0gPCZzZG1tY19idXM0ICZzZG1tY19jbGsgJnNkbW1jX2NtZCAm
c2RtbWNfZGV0PjsKPj4+Pj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+Pj4+ICt9Owo+Pj4+
PiArCj4+Pj4+ICsvKiBNLjIgRS1LRVkgKi8KPj4+Pj4gKyZzZGlvIHsKPj4+Pj4gKyAgICAgICBi
cm9rZW4tY2Q7Cj4+Pj4+ICsgICAgICAgYnVzLXdpZHRoID0gPDQ+Owo+Pj4+PiArICAgICAgIGNh
cC1zZGlvLWlycTsKPj4+Pj4gKyAgICAgICBkaXNhYmxlLXdwOwo+Pj4+PiArICAgICAgIGtlZXAt
cG93ZXItaW4tc3VzcGVuZDsKPj4+Pj4gKyAgICAgICBtYXgtZnJlcXVlbmN5ID0gPDE1MDAwMDAw
MD47Cj4+Pj4+ICsgICAgICAgbW1jLXB3cnNlcSA9IDwmc2Rpb19wd3JzZXE+Owo+Pj4+PiArICAg
ICAgIG5vLXNkOwo+Pj4+PiArICAgICAgIG5vLW1tYzsKPj4+Pj4gKyAgICAgICBub24tcmVtb3Zh
YmxlOwo+Pj4+PiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4+ICsgICAg
ICAgcGluY3RybC0wID0gPCZzZGlvbTBfcGlucz47Cj4+Pj4+ICsgICAgICAgc2QtdWhzLXNkcjEw
NDsKPj4+Pj4gKyAgICAgICB2bW1jLXN1cHBseSA9IDwmdmNjM3YzX2VrZXk+Owo+Pj4+PiArICAg
ICAgIHN0YXR1cyA9ICJva2F5IjsKPj4+Pj4gK307Cj4+Pj4+ICsKPj4+Pj4gKyZzZmMgewo+Pj4+
PiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4+ICsgICAgICAgcGluY3Ry
bC0wID0gPCZmc3BpbTJfcGlucz47Cj4+Pj4+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+
IFNob3VsZG4ndCB0aG9zZSBwcm9wZXJ0aWVzIGJlIHNvcnRlZCBhbHBoYWJldGljYWxseT8gT3Ig
YXQgbGVhc3QgY29uc2lzdGVudGx5Pwo+Pj4+IE5vdGUgdGhhdCB0aGUgc2FtZSBpc3N1ZSBpcyBw
cmVzZW50IG9uIG90aGVyIHBsYWNlcyB0b28sIGJ1dCBJIGJlbGlldmUgdGhlCj4+Pj4gYWJvdmUg
cXVvdGVkIHBhcnQgc2hvd3MgdGhlIGlzc3VlIGVub3VnaC4KPj4+IFRoZSBtYWluIHNvcnRpbmcg
aXMKPj4+IC0gY29tcGF0aWJsZQo+Pj4gLSByZWcKPj4+IFsuLi4gYWxwaGFiZXRpY2FsbHkgLi4u
XQo+Pj4gLSBzdGF0dXMKPj4+Cj4+IFllYWggLi4uIHRoYXQncyBhbHdheXMgdGhlIHF1ZXN0aW9u
IHdoZW4gYWRkaW5nIG5ldyBib2FyZCBmaWxlcy4gRG8gaXQgbGlrZQo+PiAiaXQncyBhbHdheXMg
YmVlbiBkb25lIiBvciByZS1zb3J0IHRoZSBwcm9wZXJ0aWVzIGFscGhhbnVtZXJpYyBfZXZlcnl3
aGVyZV8KPj4gd2hpY2ggbG9va3MgcXVpdGUgc3RyYW5nZSBhdCB0aW1lcy4gSWYgSSdtIGdldHRp
bmcgdGhlIG5ld2x5IGFkZGVkIGR0Cj4+IGNvZGluZyBzdHlsZSBjb3JyZWN0bHkgY29tbW9uIChz
dWJzeXN0ZW0/KSBwcm9wZXJ0aWVzIHNob3VsZCBhbHNvIGJlIHBsYWNlZAo+PiBiZWZvcmUgdmVu
ZG9yIChkcml2ZXI/KSBzcGVjaWZpYyBvbmVzLiBZZXQgSSBkaWRuJ3Qgc2VlIGEgYm9hcmQgZmls
ZSB3aGljaAo+PiBwbGFjZXMgJ3JlZ3VsYXRvci1tYXgtbWljcm92b2x0JyBiZWZvcmUgJ3JlZ3Vs
YXRvci1taW4tbWljcm92b2x0Jy4gU28gSQo+PiBndWVzcyBpdCdzIGZpbmUgaWYgaXQncyBkb25l
IGNvbnNpc3RlbnRseSB3aXRoaW4gdGhlIHNhbWUgZmlsZT8KPiBJIGFsd2F5cyBzZWUgaXQgYXMg
YSBiZXN0LWVmZm9ydCB0aGluZy4gSWYgYWxsIHJlZ3VsYXRvci0qIHN0dWZmIGlzIGdyb3VwZWQK
PiB0b2dldGhlciBpdCB3aWxsIGJlIG1vc3RseSBmaW5lLiBJJ20gbm90IGdvaW5nIHRvIGhhZ2ds
ZSBvdmVyIHRoZSBzb3J0aW5nCj4gb2YgdGhlIDEwdGggY2hhcmFjdGVyIG9mIHByb3BlcnR5IG5h
bWVzIDstKSAuCj4KPiAoYW5kIG9mIGNvdXJzZSByZWFkaW5nIG1pbiBiZWZvcmUgbWF4LCBpcyBz
b3J0IG9mIG1vcmUgaW50dWl0aXZlKQo+Cj4gQW5kIG9mIGNvdXJzZSBsZWFmLXRoaW5ncyAoYm9h
cmQgZHRzKSBhcmUgbGVzcyAiaW1wb3J0YW50IiB0aGFuIHRoZSBjb3JlCj4gbm9kZXMgaW4gc29j
IGRldmljZXRyZWVzLgo+CkdyZWF0LCB0aGFua3MgZm9yIHNoYXJpbmcuIFdpbGwgKHRyeSkgdG8g
Zm9sbG93IGluIGZ1dHVyZS4KCkFsZXgKCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
