Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBA88C10F16
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 10:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kCIbqvp/frETCMcv1MVl2kod+ey0GXCH9p2p64W1Qs=; b=o29W22L6eYfDAu
	pUTPSXekFUAjjFcZChoAMG7Cu/HG1ny5p8EDJPKN8rsJx6VTKsUM6If64gtDEGrE8laOb5iUhcty2
	/MbNfwOfFVlaWRm7Y0rkPW0kJDMQVE6L+elH6cybi0ZYeWtqc8LImm7LBf8GevHB3Em3HMTLVOztN
	g18ejR2v+futyuMN9EnQZzjDihJCPmO/JcX9XY58+zaErDq9996umbZp68lfHYOtA76ON6EGuUIMV
	/9BWS5jWxsWYjQCb6Pkac2vybs9Bts+Y5AR9b4A6qtjB6WHH3tWntWcwgPDM2bwG7U1PksUYcY/n5
	w4rJrtsuN7/5g1ELjI7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3vbc-00000006xyX-1NbT;
	Mon, 06 May 2024 10:30:00 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3vbY-00000006xxh-0Lcu;
	Mon, 06 May 2024 10:29:57 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-51ffff16400so2250180e87.2;
        Mon, 06 May 2024 03:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714991393; x=1715596193; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BNMaBJWGHZyABbZOaeEJdaPLgk7Dz9409DKeZNEhRws=;
        b=ECB5JMwnjWc5EZa+RfAtfDVIWXiKktVyabbhfgq7K+MuXEPi4OATdEPAi6Jw5YhmFt
         u92XTZ9F+Z0etC+4IWzm9A3LqECBTFOpE6Wej/mZ6QdFf8/LUnM7hZLbwYYSrSNiFLvi
         0eqbaHFvACxj8TggdC00/pB/rO6pRRSi+1dEZdGMdiBAAuP/YlbyeFTA1ff+59r/qQpq
         kRi1mF7+slIyd5CE0qLgKayED9NxbRUfrYd9gmTIRGwru9vlVfOLWCHg5guDQ6eUhH2t
         ruwOBCvSADwL3/NqV9jMhuaZwdS9z+COrhbDsbmNGR80hgRhNQ5/rtxTH5NthD4GckaY
         L7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714991393; x=1715596193;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BNMaBJWGHZyABbZOaeEJdaPLgk7Dz9409DKeZNEhRws=;
        b=LoaLDi7qnCoTqiafFlk1UPpmYJnDUEWhFK+os1t6cPgcY28ujmXoXyZC3K7snP+bvb
         L7k6FclXNKt7kRRHB+92R21BZPtHBz1tq1p/OrNPpYjtDgGkYgEhPBgR01Db3YNR/rx0
         lTMe3L8rQfcEK5Or1/6FppUAJZGvWR693g/kYopovoN/PeqvEQ37LbcGCDFLVm9qO4ix
         bqXyAs5zI3P6EKGXo8xyO/aKqV05IIIvdOl9PYe0h2vIIqSw5g57kwskE7QwdxSIv19G
         1s4ssJaXeecrWBh8CpINKKXZQBm8gRxrJAf/Wk7YCVQ4oW5RlyXS27JWI9TyETRBhaRR
         tqFg==
X-Forwarded-Encrypted: i=1; AJvYcCUWw123CnPsj81D734NEgvBf3rfipce8nI1YkOM2UG/2LRDz9Qo6G3pVa0yI/uJNzdgFr9PrJdD9ReCeFa0K2kPCJVeLlM70MXUms5yB99tQuPZK8aG3O3QTu32taoJumwwszCD//31zHN8KzJcE4lNqZd25+EBfzs=
X-Gm-Message-State: AOJu0Yynj3xsSjOwwrkAQs71+9vq8rWC5WHz/kAe5Z5BTynWUKq3ggaZ
	RNCtbxRpQ0aw+prumyJ8YD+3vgAXIHuAykKOZymMZvt+mMnqo72iERQhCQATej8y0DgrL3tujn0
	vwED30LjMohxuxwOwnQGKiW0a59E=
X-Google-Smtp-Source: AGHT+IG+kj32TsL8muODw5VYvjt7aRQOGre2x2qhtWjM/D/2fzkEhZvrp99rRg39tty5jMlGjdEnSiLMOm9Us3O0nvU=
X-Received: by 2002:a19:381a:0:b0:51b:528e:ce7d with SMTP id
 f26-20020a19381a000000b0051b528ece7dmr7786951lfa.34.1714991393205; Mon, 06
 May 2024 03:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-1-271023ddfd40@gmail.com> <5332d58d48607a5559a84a2f85ce3e1b@manjaro.org>
In-Reply-To: <5332d58d48607a5559a84a2f85ce3e1b@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 6 May 2024 14:29:41 +0400
Message-ID: <CABjd4Yz0NyqgJL8HXH2-KCxP-GbsiZjvdwqcQGh6RJuECH=kvw@mail.gmail.com>
Subject: Re: [PATCH v4 1/6] arm64: dts: rockchip: add thermal zones
 information on RK3588
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, 
	Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_032956_153932_67042341 
X-CRM114-Status: GOOD (  25.55  )
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

SGVsbG8gRHJhZ2FuLAoKT24gTW9uLCBNYXkgNiwgMjAyNCBhdCAxOjUy4oCvUE0gRHJhZ2FuIFNp
bWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+Cj4gSGVsbG8gQWxleGV5LAo+Cj4gVGhh
bmtzIGZvciBzdWJtaXR0aW5nIHRoZSB2NCBvZiB0aGlzIHNlcmllcyEgIFBsZWFzZSwgc2VlIGEg
Y291cGxlCj4gb2YgbXkgY29tbWVudHMgYmVsb3cuCj4KPiBPbiAyMDI0LTA1LTA2IDExOjM2LCBB
bGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IFRoaXMgaW5jbHVkZXMgdGhlIG5lY2Vzc2FyeSBkZXZp
Y2UgdHJlZSBkYXRhIHRvIGFsbG93IHRoZXJtYWwKPiA+IG1vbml0b3Jpbmcgb24gUkszNTg4KHMp
IHVzaW5nIHRoZSBvbi1jaGlwIFRTQURDIGRldmljZSwgYWxvbmcgd2l0aAo+ID4gdHJpcCBwb2lu
dHMgZm9yIGF1dG9tYXRpYyB0aGVybWFsIG1hbmFnZW1lbnQuCj4gPgo+ID4gRWFjaCBvZiB0aGUg
Q1BVIGNsdXN0ZXJzIChvbmUgZm9yIHRoZSBsaXR0bGUgY29yZXMgYW5kIHR3byBmb3IKPiA+IHRo
ZSBiaWcgY29yZXMpIGdldCBhIHBhc3NpdmUgY29vbGluZyB0cmlwIHBvaW50IGF0IDg1Qywgd2hp
Y2gKPiA+IHdpbGwgdHJpZ2dlciBEVkZTIHRocm90dGxpbmcgb2YgdGhlIHJlc3BlY3RpdmUgY2x1
c3RlciB1cG9uCj4gPiByZWFjaGluZyBhIGhpZ2ggdGVtcGVyYXR1cmUgY29uZGl0aW9uLgo+ID4K
PiA+IEFsbCB6b25lcyBhbHNvIGhhdmUgYSBjcml0aWNhbCB0cmlwIHBvaW50IGF0IDExNUMsIHdo
aWNoIHdpbGwKPiA+IHRyaWdnZXIgYSByZXNldC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4
ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaSB8IDE0Nwo+ID4gKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE0NyBpbnNlcnRpb25zKCspCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNp
Cj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gPiBpbmRl
eCA2YWM1YWM4YjQ4YWIuLmVmMDZjMWY3NDJlOCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+ID4gQEAgLTEwLDYgKzEwLDcgQEAKPiA+ICAjaW5j
bHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvcm9ja2NoaXAscmszNTg4LWNydS5oPgo+ID4gICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5Lmg+Cj4gPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2F0
YS9haGNpLmg+Cj4gPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3RoZXJtYWwvdGhlcm1hbC5oPgo+
ID4KPiA+ICAvIHsKPiA+ICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4IjsKPiA+
IEBAIC0yMzY4LDYgKzIzNjksMTUyIEBAIHB3bTE1OiBwd21AZmViZjAwMzAgewo+ID4gICAgICAg
ICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gICAgICAgfTsKPiA+Cj4gPiArICAgICB0
aGVybWFsX3pvbmVzOiB0aGVybWFsLXpvbmVzIHsKPiA+ICsgICAgICAgICAgICAgLyogc2Vuc29y
IG5lYXIgdGhlIGNlbnRlciBvZiB0aGUgU29DICovCj4gPiArICAgICAgICAgICAgIHBhY2thZ2Vf
dGhlcm1hbDogcGFja2FnZS10aGVybWFsIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBwb2xs
aW5nLWRlbGF5LXBhc3NpdmUgPSA8MD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcG9sbGlu
Zy1kZWxheSA9IDwwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICB0aGVybWFsLXNlbnNvcnMg
PSA8JnRzYWRjIDA+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHRyaXBzIHsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhY2thZ2VfY3JpdDogcGFja2FnZS1jcml0
IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUg
PSA8MTE1MDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaHlz
dGVyZXNpcyA9IDwwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dHlwZSA9ICJjcml0aWNhbCI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgICAgICAgIH07Cj4gPiArCj4g
PiArICAgICAgICAgICAgIC8qIHNlbnNvciBiZXR3ZWVuIEE3NiBjb3JlcyAwIGFuZCAxICovCj4g
PiArICAgICAgICAgICAgIGJpZ2NvcmUwX3RoZXJtYWw6IGJpZ2NvcmUwLXRoZXJtYWwgewo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDA+Owo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkgPSA8MD47Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyAxPjsKPiA+ICsKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICB0cmlwcyB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBiaWdjb3JlMF9hbGVydDogYmlnY29yZTAtYWxlcnQgewo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB0ZW1wZXJhdHVyZSA9IDw4NTAwMD47Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHR5cGUgPSAicGFzc2l2ZSI7Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+Cj4gRG9lc24ndCByZW1vdmluZyB0aGUg
c2Vjb25kIHBhc3NpdmUgdHJpcCwgd2hpY2ggd2FzIHByZXNlbnQgaW4gdGhlIHYzLAo+IHJlc3Vs
dCBpbiBjb25mdXNpbmcgdGhlIElQQSBnb3Zlcm5vcj8KCk5vdCByZWFsbHkgLSBpdCB3aWxsIGp1
c3QgdHJlYXQgdGhlIG1pc3NpbmcgdHJpcCBhcyAwQyBmb3IgaXRzIGluaXRpYWwKUElEIGNhbGN1
bGF0aW9ucyBbMV0sIGFuZCB3aWxsIGNvbnRpbnVhbGx5IHJ1biB0aGUgZ292ZXJub3IgYXMgb3Bw
b3NlZAp0byBwdXR0aW5nIGl0IHRvIHJlc3Qgd2hlbiB0aGUgdGVtcGVyYXR1cmUgaXMgYmVsb3cg
dGhlICJzd2l0Y2ggb24iCnZhbHVlIFsyXS4KCkdldHRpbmcgdGhlIHBvd2VyIGFsbG9jYXRpb24g
Z292ZXJub3IgdG8gd29yayBvcHRpbWFsbHkgKGkuZS4gdG8KcHJvdmlkZSB0YW5naWJsZSBiZW5l
Zml0cyBvdmVyLCBzYXksIHN0ZXB3aXNlKSBpcyBtdWNoIG1vcmUgaW52b2x2ZWQKdGhhbiBkZWZp
bmluZyBhbiBhcmJpdHJhcnkgc3dpdGNoLW9uIHRyaXAgcG9pbnQsIGFzIGl0IHJlcXVpcmVzIGFu
CmFjY3VyYXRlIGVzdGltYXRlIG9mIHN1c3RhaW5hYmxlIHBvd2VyIHBlciB0aGVybWFsIHpvbmUg
KHdoaWNoIHdlCmRvbid0IGhhdmUgZm9yIFJLMzU4OCBpbiBnZW5lcmFsLCBhbmQgZnVydGhlcm1v
cmUgaXQgbXVzdCBkZXBlbmQgYSBsb3QKb24gYSBwYXJ0aWN1bGFyIGNvb2xpbmcgc2V0dXApLCBh
bmQgaWRlYWxseSBzb21lIHVzZXJzcGFjZQpwb3dlci90aGVybWFsIG1vZGVsIGNhcGFibGUgb2Yg
dHVuaW5nIHRoZSBQSUQgY29lZmZpY2llbnRzIGFuZAp1cGRhdGluZyB0aGVtIHZpYSBzeXNmcyBi
YXNlZCBvbiBob3cgYSBwYXJ0aWN1bGFyIHN5c3RlbSBhY2N1bXVsYXRlcwphbmQgZGlzc2lwYXRl
cyBoZWF0IHVuZGVyIGRpZmZlcmVudCBsb2FkLgoKU28gYWZ0ZXIgdGhpbmtpbmcgb3ZlciBpdCBm
b3IgYSB3aGlsZSBJIGRlY2lkZWQgdGhhdCB0aG9zZSBleHRyYQpwYXNzaXZlIHRyaXBzIHdlcmUg
cmF0aGVyIHNlbGYtZGVjZWl2aW5nLCBhcyB0aGV5IGFyZSBvbmx5IHVzZWZ1bCBpbgp0aGUgY29u
dGV4dCBvZiBhIHBvd2VyIGFsbG9jYXRpb24gZ292ZXJub3IgYnV0IHdlIGRvIG5vdCBoYXZlIGFu
eSBvZgp0aGUgb3RoZXIgcGllY2VzIGluIHBsYWNlIGZvciB0aGUgcG93ZXIgYWxsb2NhdGlvbiBn
b3Zlcm5vciB0byB3b3JrLgpCZXR0ZXIgbm90IHRvIGNsdXR0ZXIgdGhlIGRldmljZSB0cmVlIElN
Ty4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvdGhlcm1h
bC9nb3ZfcG93ZXJfYWxsb2NhdG9yLmMjbjE1NgpbMl0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvdGhl
cm1hbC9nb3ZfcG93ZXJfYWxsb2NhdG9yLmMjbjQ4NwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
