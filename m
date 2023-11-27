Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CBB2C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 23:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLUw0Qx+Iy0jMhaZkNf2RI250OhWjMC8S6qQKurSp8U=; b=rFdYxPY632+SDJ
	z8OdBenpUEziQChe/jKz35gaYMOciujcXwfqJ/pMu5gC2tpSU03N794bdx0KEQJ25pxfLbwbFRhKN
	E8wvxo7P0d/K8dcjGrFRbWL6ZN2BiLGd0/NzLnP4snb1OOsPjfDtt63LYophXu3BnWyEoEJs8Bo/V
	iX/DQXA+IfRYlLCHQcA47irwUpxTkNDdtlNUe7uhSwL3E+FvKTZSSdG6in8JpNi96OPXnFfy7llbm
	mzkt5p4I4daOajs+cg7834+/thlp+NP2r5Cj2KutSq+Mh2RthZQjchMVANLCBEGCUS2TnoeAgPAZ/
	LXZOq2GUcy4hKJjkMFFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7klU-003e3K-2C;
	Mon, 27 Nov 2023 23:11:44 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7klR-003e2s-11;
	Mon, 27 Nov 2023 23:11:43 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507ad511315so6773614e87.0;
        Mon, 27 Nov 2023 15:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701126699; x=1701731499; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2O0dW0IvtYbmUd5WDQQ70C6UcMUSfLVExIq62xHR7FI=;
        b=UsZNunffg0FpOtl0eOh7NkbfEi2yqjtG08Oz+CNd0oEYRM/qZLHKo/5GXLlgP/y7xw
         M/oj9MyRFYCU0xqzIrhSeMSVQbhN206SfiQVI74m60FujHdD19JSvCVcw6TumRbCYU9f
         wiUX5owOOAIIq5qyqfwCawdYd/hK+8Ah/09/aiCJ2lc3FuL2hPHWkw99alAcky+IFI96
         KLCvrJviSVljFy/7tx5oh32CIw79eN+OHsdnS4V+KF9AuBUi7f9Sa/mJn1tMUpFSDPNx
         jsZtdRiMUsRE07Jy12v0jdp/Hve0MROLwtcz4iSh8t0+Z8ZIK5dhPJwE7imjKzaaJ+QQ
         Vx1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701126699; x=1701731499;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2O0dW0IvtYbmUd5WDQQ70C6UcMUSfLVExIq62xHR7FI=;
        b=TVBE3EGpHfTZB6C9J9dd7DaHydhveXrzSzkaEkMe8EaMTHPqVdQ20+Z2UNMQRnbQsr
         r4G0PV7wgm5QGIBliQQqbJfz0JwZ7MCQ40coQFZucNGJjRNUbKCzkTAxdJN6rjNE+7dD
         SqouCupb6Kj3PoP4+XlwJgJoSzXTGy6XzjQzcOZRqFzHk7EQcAOYrSUA3kGUna48KW5h
         VXrcEcioqsACnDQiH4u8paGqw9qUawX2oWCDq16AwkUf7ewqvvTaga/rxq7HnCzb5uFu
         MsaM/Kn5NU29DGFLYEfIGuMM6MkJHF2f0uVuIbJOLAONv/MhhJNjKOAM6/H4TVIbwuPY
         RJpQ==
X-Gm-Message-State: AOJu0YyImAJe8kDi+XEtNPePJJ1l3/UOqBDsjTvjwHMKFvHvpkAbfqFB
	wGg2DXOpJRgxu8EixH1IyA==
X-Google-Smtp-Source: AGHT+IH0VtotD7KRttNBrPXNxLc34h6r/wFXkaJR2CsrXtT6475wgB21bBKPZFdDmP+gYvU/GxoTug==
X-Received: by 2002:a05:6512:3b0b:b0:509:1301:8470 with SMTP id f11-20020a0565123b0b00b0050913018470mr11987019lfv.45.1701126698825;
        Mon, 27 Nov 2023 15:11:38 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:9a73:f6ee:21ce:aa15? ([2a02:810b:f40:4300:9a73:f6ee:21ce:aa15])
        by smtp.gmail.com with ESMTPSA id b14-20020aa7dc0e000000b00548a258227asm5738443edu.30.2023.11.27.15.11.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 15:11:38 -0800 (PST)
Message-ID: <5e89eb12-3462-422e-aca3-7cc18743310c@gmail.com>
Date: Tue, 28 Nov 2023 00:11:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Lunn <tim@feathertop.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
 <7b8a830d-42d0-4220-b9fe-3f5fff43e74d@linaro.org> <50694679.MN2xkq1pzW@diego>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <50694679.MN2xkq1pzW@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_151141_636374_014C430E 
X-CRM114-Status: GOOD (  25.13  )
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

SGkgSGVpa28sCkFtIDI3LjExLjIzIHVtIDEwOjQ1IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4g
QW0gTW9udGFnLCAyNy4gTm92ZW1iZXIgMjAyMywgMTA6Mjc6NDEgQ0VUIHNjaHJpZWIgS3J6eXN6
dG9mIEtvemxvd3NraToKPj4gT24gMjcvMTEvMjAyMyAxMDoyMywgVGltIEx1bm4gd3JvdGU6Cj4+
PiBIaQo+Pj4KPj4+IE9uIDExLzI3LzIzIDE3OjUyLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3Rl
Ogo+Pj4+IE9uIDI3LzExLzIwMjMgMDA6MDYsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4+PiBI
aSBLcnp5c3p0b2YsCj4+Pj4+Cj4+Pj4+IEFtIE1pdHR3b2NoLCAyMi4gTm92ZW1iZXIgMjAyMywg
MTM6Mjk6NDcgQ0VUIHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPj4+Pj4+IE9uIDIyLzEx
LzIwMjMgMTM6MjIsIFRpbSBMdW5uIHdyb3RlOgo+Pj4+Pj4+IEFkZCBpMmMyIG5vZGUgYW5kIGky
YzJfeGZlciBwaW5jdHJsIGZvciBSb2NrY2hpcCBSVjExMjYKPj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25l
ZC1vZmYtYnk6IFRpbSBMdW5uIDx0aW1AZmVhdGhlcnRvcC5vcmc+Cj4+Pj4+Pj4gLS0tCj4+Pj4+
Pj4KPj4+Pj4+PiAobm8gY2hhbmdlcyBzaW5jZSB2MSkKPj4+Pj4+Pgo+Pj4+Pj4+ICAgIGFyY2gv
YXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi1waW5jdHJsLmR0c2kgfCAxMCArKysrKysrKysr
Cj4+Pj4+Pj4gICAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LmR0c2kgICAgICAg
ICB8IDE1ICsrKysrKysrKysrKysrKwo+Pj4+Pj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5z
ZXJ0aW9ucygrKQo+Pj4+Pj4+Cj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3JvY2tjaGlwL3J2MTEyNi1waW5jdHJsLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hp
cC9ydjExMjYtcGluY3RybC5kdHNpCj4+Pj4+Pj4gaW5kZXggNGY4NWI3YjNmYzRjLi4xNjdhNDhh
ZmEzYTQgMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYx
MTI2LXBpbmN0cmwuZHRzaQo+Pj4+Pj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlw
L3J2MTEyNi1waW5jdHJsLmR0c2kKPj4+Pj4+PiBAQCAtODcsNiArODcsMTYgQEAgaTJjMF94ZmVy
OiBpMmMwLXhmZXIgewo+Pj4+Pj4+ICAgIAkJCQk8MCBSS19QQjUgMSAmcGNmZ19wdWxsX25vbmVf
ZHJ2X2xldmVsXzBfc210PjsKPj4+Pj4+PiAgICAJCX07Cj4+Pj4+Pj4gICAgCX07Cj4+Pj4+Pj4g
KwlpMmMyIHsKPj4+Pj4+PiArCQkvb21pdC1pZi1uby1yZWYvCj4+Pj4+Pj4gKwkJaTJjMl94ZmVy
OiBpMmMyLXhmZXIgewo+Pj4+Pj4+ICsJCQlyb2NrY2hpcCxwaW5zID0KPj4+Pj4+PiArCQkJCS8q
IGkyYzJfc2NsICovCj4+Pj4+Pj4gKwkJCQk8MCBSS19QQzIgMSAmcGNmZ19wdWxsX25vbmVfZHJ2
X2xldmVsXzBfc210PiwKPj4+Pj4+PiArCQkJCS8qIGkyYzJfc2RhICovCj4+Pj4+Pj4gKwkJCQk8
MCBSS19QQzMgMSAmcGNmZ19wdWxsX25vbmVfZHJ2X2xldmVsXzBfc210PjsKPj4+Pj4+PiArCQl9
Owo+Pj4+Pj4+ICsJfTsKPj4+Pj4+PiAgICAJcHdtMiB7Cj4+Pj4+Pj4gICAgCQkvb21pdC1pZi1u
by1yZWYvCj4+Pj4+Pj4gICAgCQlwd20ybTBfcGluczogcHdtMm0wLXBpbnMgewo+Pj4+Pj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaSBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5kdHNpCj4+Pj4+Pj4gaW5kZXggNmM1YzkyOGYw
NmM3Li5jZjFkZjc1ZGY0MTggMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTI2LmR0c2kKPj4+Pj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2Nr
Y2hpcC9ydjExMjYuZHRzaQo+Pj4+Pj4+IEBAIC0yMSw2ICsyMSw3IEBAIC8gewo+Pj4+Pj4+ICAg
IAo+Pj4+Pj4+ICAgIAlhbGlhc2VzIHsKPj4+Pj4+PiAgICAJCWkyYzAgPSAmaTJjMDsKPj4+Pj4+
PiArCQlpMmMyID0gJmkyYzI7Cj4+Pj4+PiBObywgdGhpcyBzaG91bGQgYmUgcGVyLWJvYXJkIHRv
IG1hdGNoIGJvYXJkIGxhYmVsaW5nL3NjaGVtYXRpY3MuCj4+Pj4+IEF0IGxlYXN0IGZvciBpMmMs
IHVhcnRzIGFuZCBpLmUuIHNwaSAuLi4gUm9ja2NoaXAgbWFudWFscywgcGluIG5hbWluZ3MKPj4+
Pj4gYW5kIGFsc28gYWxsIGJvYXJkIHNjaGVtYXRpY3MgSSd2ZSBzZWVuIHNvIGZhciBhcmUgdmVy
eSBjb25zaXN0ZW50IGZvcgo+Pj4+PiB0aGVzZSAuLi4gaTJjMiBmb3IgZXhhbXBsZSBpcyBsYWJs
ZWQgaTJjMiBib3RoIGluIHRoZSBwaW5zIGluIHRoZSBzb2NzCj4+Pj4+IGFuZCBhbHNvIGluIHRo
ZSBib2FyZC1zY2hlbWF0aWNzIHVzaW5nIHRoZW0uCj4+Pj4+Cj4+Pj4+IFNvIHdoaWxlIEkgY2Fu
IGFncmVlIHRoYXQgdGhpbmdzIGxpa2UgbW1jLWFsaWFzZXMgbWlnaHQgYmUgYm9hcmQtc3BlY2lm
aWMsCj4+Pj4+IEkgZG8gdGhpbmsgYWxpYXNlcyBmb3IgdGhlIGNvcmUgYnVzc2VzIHNob3VsZCBi
ZSBhYmxlIHRvIGxpdmUgaW4gdGhlIHNvYyBkdHNpCj4+Pj4+IGFzIGZvciBhbGwgUm9ja2NoaXAg
U29DcyBzbyBmYXI/Cj4+Pj4gSWYgeW91IGRvIG5vdCBsaXN0IGhlcmUgYWxsIGFsaWFzZXMsIGl0
IGlzIGFscmVhZHkgYm9hcmQtc3BlY2lmaWMsIGlzbid0IGl0Pwo+Pj4+Cj4+Pj4gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvQ0FLOFAzYTI1aVlrc3ViQ25RYjEtZTV5aj1j
ckVzSzM3UkI5SG40WkdaTXdjVlZyRzdnQG1haWwuZ21haWwuY29tLwo+Pj4gSSBoYWQgb25seSBh
ZGRlZCBhbGlhc2VzIGZvciBub2RlcyB0aGF0IGFyZSBpbXBsZW1lbnRlZC4gUlYxMTI2IGhhcyA2
Cj4+PiBpMmMgYnVzc2VzIGJ1dCBzbyBmYXIgbm90IGFsbCB0aGVzZSBleGlzdCBpbiB0aGUgc29j
LmR0c2kuCj4+Pgo+Pgo+PiBPSywgdGhhdCB3b3VsZCBleHBsYWluIHdoeSB5b3UgaGF2ZSBvbmx5
IHR3by4gQW55d2F5LCBpdCBpcyBqdXN0IGdlbmVyaWMKPj4gZ3VpZGVsaW5lLCBzbyB1cCB0byBI
ZWlrbyB3aGF0IHRvIGRvIHdpdGggaXQuCj4gCj4gUGVvcGxlIHNlZSAidWFydDItdHgiIG9uIHRo
ZWlyIHBpbi1oZWFkZXIgZGVzY3JpcHRpb24gYW5kIHRoZW4gb2YgY291cnNlCj4gd2FudCB0byB1
c2UgdHR5UzIgLi4uIHNhbWUgd2l0aCByZWFkaW5nIGkyYzItc2RhIG9uIHRoZSBwaW4taGVhZGVy
IGFuZCB0aGVuCj4gcnVubmluZyBpMmNkZXRlY3Qgb24gc2FpZCBpMmMyIGRldiBub2RlLgo+IApJ
ZiB0aGF0J3MgInRoZSIgcnVsZSwgd2h5IHdhcyByazMxMjguZHRzaSBtZXJnZWQgYWZ0ZXIgc2lt
aWxhciAKY29tcGxhaW50cyBjYW1lIHVwIFswXSB3aXRob3V0IGhhdmluZyBhbGlhc2VzIGZvciB0
aGUgY29yZSBidXNlcyAKZGVmaW5lZD8gSXQncyBwcmV0dHkgc3RyYW5nZSB0byBoYXZlIHRvIGRl
ZmluZSB0aGVtIG9uIGJvYXJkLWxldmVsIHRoZXJlIAphcyB3ZWxsLgpJJ20gaGFwcHkgdG8gc3Vi
bWl0IGEgcGF0Y2ggd2hpY2ggY2hhbmdlcyB0aGF0LgoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMjA3NjAxOC5FZkRkSGprZTREQGRpZWdvLwoKUmVnYXJkcywKQWxleAo+IEFuZCBl
dmVuIGlmIGkyYzEgaXMgbm90IHBvcHVsYXRlZCAod291bGQgZXZlbiBiZSB2ZXJ5IHJhcmUpLCB0
aGVuIHBlb3BsZQo+IHdvdWxkIHN0aWxsIGV4cGVjdCBpMmMyIHRvIGJlIG5hbWVkIHRoYXQgd2F5
Lgo+IAo+IEFzIHRoaXMgaXMgdGhlIHNhbWUgZm9yIF9ldmVyeV8gYm9hcmQsIGl0IGRvZXNuJ3Qg
cmVhbGx5IG1ha2Ugc2Vuc2UgdG8KPiBkdXBsaWNhdGUgaXQgZXZlcnkgdGltZS4gV2hpY2ggSSBn
dWVzcyBpcyBzaW1pbGFyIHRvIHdoYXQgSSB3cm90ZSBpbiByZXBseQo+IHRvIHRoZSBtYWlsIHlv
dSBsaW5rZWQgYWJvdmUgOi0pIC4KPiAKPiAKPiBJdCdzIGRpZmZlcmVudCBmb3IgbW1jLCB3aGVy
ZSB0aGlzIG5hbWluZyBzY2hlbWUgaXNuJ3Qgbm9ybWFsbHkgdXNlZCwKPiBzbyB3ZSAobW9zdGx5
PykgbWlncmF0ZWQgdG8gdGhlbSBiZWluZyBpbiB0aGUgYm9hcmQtc3BlY2lmaWMgYWxpYXMgc2Vj
dGlvbi4KPiAKPiBUaGFua3MKPiBIZWlrbwo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
