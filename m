Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43F0AD29FB8
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 08:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/LoT1BEFYAadH2MszXbSvhXUtC/1NLntqIqX4L8r2Q=; b=fDD8RRQxHnQaU1
	Zwh7wml3oJCHGwK+kVAE2FxTSiz/wnCZMBN8X1iJvdC4bfm/8uKPC8cggYoYGq+/qT5waljYIpSgr
	AfyK72sY9k4k5B1s9zvWdcbYivsv3KzA1d0rmJA0USb4xLWVzqDXbgtVW00PPBCWLbHmTULpmtL1k
	ZhrHyPZabK5/oADRafjQKOC3F7Tptocp/Tpz+01etDmTYDsbluEeMdHJqF93U2IQzd5jpD2mceUQ6
	WWiobB4M7ap8yFjK2KMgtyPkRq/A/fQyw4xVC9zaQy5vEnbyO94NRvPASpRn81LckI2Hym0sVQh1p
	aCcI1FV9hX9noRplhWXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8az5-00000002Cuj-0oAp;
	Wed, 06 Nov 2024 08:01:47 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8atA-00000002Boj-3NdZ;
	Wed, 06 Nov 2024 07:55:42 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-7b150dc7bc0so445844185a.1;
        Tue, 05 Nov 2024 23:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730879739; x=1731484539; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJ3Y8x4A9Kv0VojRXE40fqCjR+Xz0wiILYeF1Q+j1Bk=;
        b=gJcIA/IqqgxOxtOch/Be3rmnNhar9T9/wSriEVSFrk9ipxSp/CR5g5o9OVPMM4UR2p
         EgX78zs98zVskZYNEuzfCG6HTA+Q8GKyO/IdVY3c99N3a8uOgsbeeMLuOa4/TfBmb9xP
         9znd7RoJTtvZsl1s7Ijk/L6tTXSttcDF4sRAYCVnUCTpFlV4vfr23+kodkIw1s83I0jH
         7D1RK8IlRTxxMoAUiDYhAdhOqAbaLMqrOdVA3Z7mPpwUHlvm9yMGvwZcCIQrmu1oJX9K
         Afq3UP3g2HpUnWTieLdSuA7cJ37kzc/wIeagYCLxboMhDTGRUmbWybUhFk+O3DaIUQ4o
         8VXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730879739; x=1731484539;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TJ3Y8x4A9Kv0VojRXE40fqCjR+Xz0wiILYeF1Q+j1Bk=;
        b=HVCYKjzU7BBJTFN0R9uZ8wyO6TBWlCYWmmM6IEGoNJGQwUdUuG7thaE90nvZH/OGJL
         fXrBqTuySzDoThdYJDBXP859iLFq02KEgJMT3s8Q1+D2dzCvUh8WQf2uCirNXk8VaBHc
         vtIVzfCOX7zLvyI9qt0g4iVHtX9FuyfKEhCnT8sxfQpbUztNHY7you3ixLiF77/yGZBW
         z30q/0FmNIUEIwitk879E3E4oEpzVufw4fIpR9X+8vIZOtLE2KOrXY8RBf5clocDfapO
         pqmOtdvjd1y5t8Rgdbj3TOgqEGE5hGNfyx8WPEG+z03wCNeF4DH0/9N+UFyT/l8+SuEY
         fMng==
X-Forwarded-Encrypted: i=1; AJvYcCUmkRzpNdGeIYnYb6ITM2yfQ0cllq9eaLyi6JOOko/fChNPxBXujk29bk2xoyBXgotzXMxTsGpTZG8zjlcq7a8E@lists.infradead.org
X-Gm-Message-State: AOJu0YyjHB3MGIJp6CQnNwkXcPr/Rr1nkTnSj1BnAGgx/SxRdvsY2MvR
	2nP7BFkckI7BenIaG+Oi3Xs72cCljWcyQm6ijxz+9vmpXN94TYcGx4FsrTfZ+bfELg/nPfXrw9M
	wDdWIVe8NJiK8zzWpkcxWGyayn74=
X-Google-Smtp-Source: AGHT+IFhJbaqJv3pBEr11USTxaLxjnqc8AtjiRuH9iIT4+AXTrfXWWty6WhGqpPLOlJvr+SCaUZfi6Qr61u5KxyZgZQ=
X-Received: by 2002:a05:620a:294d:b0:7af:c3e6:651 with SMTP id
 af79cd13be357-7b2fb9d0c40mr2615260085a.44.1730879738759; Tue, 05 Nov 2024
 23:55:38 -0800 (PST)
MIME-Version: 1.0
References: <806d5e2a07ae0c81d9907bbe8bec4e3e1138b392.1730838347.git.dsimic@manjaro.org>
In-Reply-To: <806d5e2a07ae0c81d9907bbe8bec4e3e1138b392.1730838347.git.dsimic@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 6 Nov 2024 11:55:28 +0400
Message-ID: <CABjd4Yyt6WiY5E5DbyjnboFvsTpp33dydkGMF7AwMB9m7bfX6A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add OPP voltage ranges to RK3399
 OP1 SoC dtsi
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Quentin Schulz <quentin.schulz@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_235540_964891_85DE6360 
X-CRM114-Status: GOOD (  16.66  )
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

SGkgRHJhZ2FuLAoKT24gV2VkLCBOb3YgNiwgMjAyNCBhdCAxMTo1MOKAr0FNIERyYWdhbiBTaW1p
YyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPgo+IEFkZCBzdXBwb3J0IGZvciB2b2x0YWdl
IHJhbmdlcyB0byB0aGUgQ1BVLCBHUFUgYW5kIERNQyBPUFBzIGRlZmluZWQgaW4gdGhlCj4gU29D
IGR0c2kgZm9yIFJvY2tjaGlwIE9QMSwgYXMgYSB2YXJpYW50IG9mIHRoZSBSb2NrY2hpcCBSSzMz
OTkuICBUaGlzIG1heSBiZQo+IHVzZWZ1bCBpZiB0aGVyZSBhcmUgYW55IE9QMS1iYXNlZCBib2Fy
ZHMgd2hvc2UgYXNzb2NpYXRlZCB2b2x0YWdlIHJlZ3VsYXRvcnMKPiBhcmUgdW5hYmxlIHRvIGRl
bGl2ZXIgdGhlIGV4YWN0IHZvbHRhZ2VzOyBvdGhlcndpc2UsIGl0IGNhdXNlcyBubyBmdW5jdGlv
bmFsCj4gY2hhbmdlcyB0byB0aGUgcmVzdWx0aW5nIE9QUCB2b2x0YWdlcyBhdCBydW50aW1lLgo+
Cj4gVGhlc2UgY2hhbmdlcyBjYW5ub3QgY2F1c2Ugc3RhYmlsaXR5IGlzc3VlcyBvciBhbnkga2lu
ZCBvZiBkYW1hZ2UsIGJlY2F1c2UKPiBpdCdzIHBlcmZlY3RseSBzYWZlIHRvIHVzZSB0aGUgaGln
aGVzdCB2b2x0YWdlIGZyb20gYW4gT1BQIGdyb3VwIGZvciBlYWNoIE9QUAo+IGluIHRoZSBzYW1l
IGdyb3VwLiAgVGhlIG9ubHkgcG9zc2libGUgbmVnYXRpdmUgZWZmZWN0IG9mIHVzaW5nIGhpZ2hl
ciB2b2x0YWdlcwo+IGlzIHdhc3RlZCBlbmVyZ3kgaW4gZm9ybSBvZiBzb21lIGFkZGl0aW9uYWxs
eSBnZW5lcmF0ZWQgaGVhdC4KPgo+IFJlcG9ydGVkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRp
bi5zY2h1bHpAY2hlcnJ5LmRlPgo+IFNpZ25lZC1vZmYtYnk6IERyYWdhbiBTaW1pYyA8ZHNpbWlj
QG1hbmphcm8ub3JnPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1vcDEuZHRzaSB8IDUyICsrKysrKysrKystLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
NiBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1vcDEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LW9wMS5kdHNpCj4gaW5kZXggYjI0YmZmNTExNTEzLi5hYTc5MjE5
NDcxZDMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
b3AxLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1vcDEu
ZHRzaQo+IEBAIC0xMiwxMjUgKzEyLDEyNSBAQCBjbHVzdGVyMF9vcHA6IG9wcC10YWJsZS0wIHsK
Pgo+ICAgICAgICAgICAgICAgICBvcHAwMCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3Bw
LWh6ID0gL2JpdHMvIDY0IDw0MDgwMDAwMDA+Owo+IC0gICAgICAgICAgICAgICAgICAgICAgIG9w
cC1taWNyb3ZvbHQgPSA8ODAwMDAwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWlj
cm92b2x0ID0gPDgwMDAwMCA4MDAwMDAgMTE1MDAwMD47Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgY2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47Cj4gICAgICAgICAgICAgICAgIH07Cj4gICAg
ICAgICAgICAgICAgIG9wcDAxIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAv
Yml0cy8gNjQgPDYwMDAwMDAwMD47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jv
dm9sdCA9IDw4MjUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQg
PSA8ODI1MDAwIDgyNTAwMCAxMTUwMDAwPjsKPiAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAg
ICAgICAgICAgb3BwMDIgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRz
LyA2NCA8ODE2MDAwMDAwPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0
ID0gPDg1MDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw4
NTAwMDAgODUwMDAwIDExNTAwMDA+Owo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgICAg
ICAgICBvcHAwMyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0
IDwxMDA4MDAwMDAwPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0g
PDkwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw5MDAw
MDAgOTAwMDAwIDExNTAwMDA+Owo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgICAgICAg
ICBvcHAwNCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDwx
MjAwMDAwMDAwPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDk3
NTAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw5NzUwMDAg
OTc1MDAwIDExNTAwMDA+Owo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgICAgICAgICBv
cHAwNSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDwxNDE2
MDAwMDAwPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDExMDAw
MDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQgPSA8MTEwMDAwMCAx
MTAwMDAwIDExNTAwMDA+Owo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgICAgICAgICBv
cHAwNiB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDwxNTEy
MDAwMDAwPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDExNTAw
MDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQgPSA8MTE1MDAwMCAx
MTUwMDAwIDExNTAwMDA+Owo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgfTsKPgo+ICAg
ICAgICAgY2x1c3RlcjFfb3BwOiBvcHAtdGFibGUtMSB7Cj4gICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4gICAgICAgICAgICAgICAgIG9wcC1zaGFy
ZWQ7Cj4KPiAgICAgICAgICAgICAgICAgb3BwMDAgewo+ICAgICAgICAgICAgICAgICAgICAgICAg
IG9wcC1oeiA9IC9iaXRzLyA2NCA8NDA4MDAwMDAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBvcHAtbWljcm92b2x0ID0gPDgwMDAwMD47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgY2xv
Y2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2st
bGF0ZW5jeS1ucyA9IDw0MDAwMCA0MDAwMCAxMjUwMDAwPjsKCkRpZCB5b3UgbWVhbiB0byB1cGRh
dGUgb3BwLW1pY3Jvdm9sdCBpbnN0ZWFkPwoKU3BlYWtpbmcgb2Ygd2hpY2gsIHRoaXMgc2luZ2xl
IG9wcCBoYXZpbmcgY2xvY2stbGF0ZW5jeS1ucyB3aGlsZSBub25lCm9mIHRoZSBvdGhlcnMgZG8g
KGV4Y2VwdCB0aGUgZmlyc3Qgb25lIGluIGNsdXN0ZXIwKSBsb29rcyB3ZWlyZC4KCkJlc3QgcmVn
YXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
