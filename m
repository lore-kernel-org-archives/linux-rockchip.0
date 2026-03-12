Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76E8CFED2D1
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 07:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HnuATK+6rhdi0DrnIzbUR0VctQva/Yke/EGbbHRl24=; b=ECnHyyeCPfqoK1
	MjiKUu351U6kkq6FTSkyBDzJu3Nw6+Asf1f2q56YoYIbBThth2P2N+cjzUHSNOqwoaYD+7rWLuvAa
	Id96qxqXikOJp8t6zSHyOsdfnWTHZXVCZ+NhPckvwks4jdv4y3m5FwqGugeSQOkm0j+4CadWL5y32
	tbuyFLnHsXN0xTw8lmoApLizD74jPDlfQBFoUJbS2gDm1doE1RndDcuIINuNShKd5HfcSuNl0fPxL
	MStICwOD14yDhmT7h3iAmAWHuP25egeTom3XXDTjP9eew16JSBpxCUe4gG8uLuSJdxpjJfMPoYEDd
	VAN6BcEh/Q3qshKBaBkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0aBI-0000000DWB6-3HhX;
	Thu, 12 Mar 2026 07:10:05 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0aBD-0000000DW9e-442z
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 07:10:03 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b9431300833so88352266b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2026 00:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773299398; cv=none;
        d=google.com; s=arc-20240605;
        b=hSjdRFjrT7c9iU1UQIVIvn8Gs9RwA+cQzRiiI1JlNcxT+5CFOYUBxAWDixBTFd8WY+
         Sb6RkEJ/16sRfUKn4KEXcJiDWSiLT4qCDpKTKASc5b2g4qUb4uKltBXCG70lyBFgXthy
         kwzeafdVyzYba5PFSn3EBCuEg2Ap7wZg2MgE1eayNPe9uLvINThvl8f1S+YaxLdUPyI0
         PpkMCal1UTa+htCubzsOE+6VOA6wCZnFP7fIB7ySKi6CXcka6lLPkW8CtBRf+65x20Eq
         B1fJRPEIn1ilZnMXI5ARDZTJHlqYG8d0WFvst1+jphoW1QivIgstjmRzXn8TdLNgrkuD
         oOJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rIO8XUP7143gVJLUd0FUXnb9BilWdnCaidVriG8lVsM=;
        fh=oDQEQSrFbh4QplfOyU2hiVEnexpgHj7UOuszgG+4FmQ=;
        b=F70aX3v9s6+yA/faHFz8x5d+wq69/HNCNGSqqqiWP0ZXCYFLT4s0jmZ6rcMO6iXvvT
         Ujtd2gCG19wKCG0sqREtCWJvIRseV4FOYd1D1lCrW0nTd/CLIq43hY4gY7FaDv2FN6Ti
         o05gZ9vY/lp4GYADfXfR11FCgXUph8NZa6jKWXC5/Hx6j2zAK074MUMqKbYZZYCn/7Y7
         6djbFZfYuPv6Vxc15BtV5MMjc/QhdWPkmOi01ADygJFhVoWvpN2xS4lP4UVqd6GjElYr
         r0mskpZZs0Ubyj5K8y/+Mkmux6mWfZUomko6+8gZx/N0X25V/aVcN3KCIBYnjUCckFDe
         bD9Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773299398; x=1773904198; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rIO8XUP7143gVJLUd0FUXnb9BilWdnCaidVriG8lVsM=;
        b=QkC70zmKDQdPL/DISvSC5hdmupHM9eKvcW1I5sjZE8TyYN1AOfSNGtghoqvY42yGuj
         HewaIlKe1EqUplDYqU9HCrRcDG9azlwuPmYvZe3IIcpfUAcUfn2RT/y6IeLk2LFYO05M
         +Kc6ovNGNKrmzaPR3BzIsJl+t+dSH9u800s61VT7qDX47gNUitPhS7FJ/i0bCNNAUuu7
         sZ4uYIskplSdvNEw1RfQJvc9u23gN/bnt9GYgxpkXhi8GCQhJU0gv7ewZ5D2uFqB1+PR
         zaH6T0TUzeY81ng4rNuKAupPBk4Omc4KfcZlEO56aYooApBD+cIZmGUYY388/QAs4Xpg
         X+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773299398; x=1773904198;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rIO8XUP7143gVJLUd0FUXnb9BilWdnCaidVriG8lVsM=;
        b=fOwKFUbliIarTi7cu82EMkfsqvZVG7tnKgL6Uo/81t8f/z3fd1avUDjjjemwFjHf6B
         cpbmSlBN+EtZv0Yf2yP4xlUilyrZv8XvpDNg+ihFy4ACoHl7GQv63+JwOKCDFjw30W/r
         0ZH4j4B8iMtP5/26DLn3jRkFOOwRMdz4bnRyA5jmU6+c2co1wykyAIfhaICzdBWl4YKW
         igYFyWy7vFHdBhzGYU8VAPL0nm6n3xzo3RXK6ifwzPuDSExR9JeS1qgQNBkq9f8FQLaD
         hssFi9ZX0Mgq4AF+pQmIHobiS21TUmaH5esym5bKeR4ZSUDdBkoJHps7ogMKrk/Mih+B
         N8lg==
X-Forwarded-Encrypted: i=1; AJvYcCVSHpFoq5u0scP+it3yIWPqFnB5z7bIHEVqFwViIF6t9dOHPAZEmCAptEY+YvhwFufVA3Sa/CzoJKvCY+TgKw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwLhNglyRJJp1U8nsTxy1xMf4tIFJngNGzzuivI3LoLiYwqKPNd
	WAcZ8lzrwL0E79GhLOjQMLe9sW9fkSV1pSHf2SclaNI59aSUPtHFDtb9obNr4XtYpCi945nvApq
	i2W7Ws1cju1dvSu7DL63bv4snXuBGvA/u7w5Cf9O8iA==
X-Gm-Gg: ATEYQzxkreNoC/cUUNstcEBxl364OGBy2PNfYI0QHTRDnZ6qAc6peMYDyxAMdSDKK5e
	KB/U+YvPVVBVUjlcA+zXbn8QP79wi4huUo8Ha/9lRpAbx5HbvLX1xYmMiBJGTpowm2isHe+dUSN
	vKYvLvmP6+bPpDJMpIGH8S/Uucc9w5I1LAloH6+RdjN2ZZjd2x2A08x8jhHLebyPLxZSZtxa59j
	mKCrXAF8tRofBsoeMuAzqnF+HoOvfd8EgxvbOUeN84ffHzlfC0KfN27vnW8vEH275XPSOqWR4IP
	SyIHqcw=
X-Received: by 2002:a17:907:d20:b0:b96:dd1c:9408 with SMTP id
 a640c23a62f3a-b972e5a7e72mr299557966b.54.1773299397660; Thu, 12 Mar 2026
 00:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
 <20260311-husb311-v1-3-f25bcb58cff7@flipper.net> <20260311-married-democrat-f6eb1c651e97@spud>
In-Reply-To: <20260311-married-democrat-f6eb1c651e97@spud>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 12 Mar 2026 11:09:43 +0400
X-Gm-Features: AaiRm53JoSVHPKKchRGU0H0o0pu24aIAgKHDs-WeWrrs5xSsEXLakFZd28fKT1k
Message-ID: <CAKTNdwFQnySkhpLDrFh5kwX=_tvci=g0Y6Q5y-15Qsogd=FxOw@mail.gmail.com>
Subject: Re: [PATCH 3/4] usb: typec: tcpci_rt1711h: Add support for Hynetek HUSB311
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Gene Chen <gene_chen@richtek.com>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_001001_195233_B0E4288F 
X-CRM114-Status: GOOD (  24.27  )
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgMTA6MzPigK9QTSBDb25vciBEb29sZXkgPGNvbm9yQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgMDg6MjA6NDZQTSAr
MDQwMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiBIVVNCMzExIGlzIGEgcGluLWNvbXBhdGli
bGUgYW5kIHJlZ2lzdGVyLWNvbXBhdGlibGUgZHJvcC1pbiByZXBsYWNlbWVudAo+ID4gZm9yIFJU
MTcxMUgsIHNvIGFkZCBpdHMgSURzIHRvIHRoZSBleGlzdGluZyBkcml2ZXIuCj4gPgo+ID4gTGlu
azogaHR0cHM6Ly93d3cuaHluZXRlay5jb20vdXBsb2FkZmlsZXMvc2l0ZS8yMTkvbmV3cy8wODYz
YzBjNy1mNTM1LTRmMDktYmFjZC0wNDQwZDJjMjEwODgucGRmCj4gPiBMaW5rOiBodHRwczovL2Rs
Lnhrd3kyMDE4LmNvbS9kb3dubG9hZHMvUkszNTg4Uy8wM19Qcm9kdWN0JTIwTGluZSUyMEJyYW5j
aF9UYWJsZXQvMDJfS2V5JTIwRGV2aWNlJTIwU3BlY2lmaWNhdGlvbnMvSFVTQjMxMSUyMGludHJv
ZHVjdGlvbiUyMDIwMjEwNTI2LnBkZgo+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3Yg
PGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3VzYi90eXBlYy90Y3Bt
L3RjcGNpX3J0MTcxMWguYyB8IDIxICsrKysrKysrKysrKysrKysrKystLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcGNpX3J0MTcxMWguYyBiL2RyaXZlcnMvdXNi
L3R5cGVjL3RjcG0vdGNwY2lfcnQxNzExaC5jCj4gPiBpbmRleCA4OGM1MGI5ODRlOGEuLmFjNTkx
N2MxZTI1MyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvdXNiL3R5cGVjL3RjcG0vdGNwY2lfcnQx
NzExaC5jCj4gPiArKysgYi9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcGNpX3J0MTcxMWguYwo+
ID4gQEAgLTE4LDYgKzE4LDkgQEAKPiA+ICAjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gPiAg
I2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+ID4KPiA+ICsjZGVmaW5lIEhV
U0IzMTFfVklEICAgICAgICAgIDB4MkU5OQo+ID4gKyNkZWZpbmUgSFVTQjMxMV9QSUQgICAgICAg
ICAgMHgwMzExCj4gPiArI2RlZmluZSBIVVNCMzExX0RJRCAgICAgICAgICAweDAwMDAKPiA+ICAj
ZGVmaW5lIFJUMTcxMUhfVklEICAgICAgICAgIDB4MjlDRgo+ID4gICNkZWZpbmUgUlQxNzExSF9Q
SUQgICAgICAgICAgMHgxNzExCj4gPiAgI2RlZmluZSBSVDE3MTFIX0RJRCAgICAgICAgICAweDIx
NzEKPiA+IEBAIC01NSw2ICs1OCw4IEBACj4gPgo+ID4gIHN0cnVjdCBydDE3MTFoX2NoaXBfaW5m
byB7Cj4gPiAgICAgICB1MzIgcnhkel9zZWw7Cj4gPiArICAgICB1MTYgdmlkOwo+ID4gKyAgICAg
dTE2IHBpZDsKPiA+ICAgICAgIHUxNiBkaWQ7Cj4gPiAgICAgICBib29sIGVuYWJsZV9wZDMwX2V4
dGVuZGVkX21lc3NhZ2U7Cj4gPiAgfTsKPiA+IEBAIC0zMDgsMTQgKzMxMywxNCBAQCBzdGF0aWMg
aW50IHJ0MTcxMWhfY2hlY2tfcmV2aXNpb24oc3RydWN0IGkyY19jbGllbnQgKmkyYywgc3RydWN0
IHJ0MTcxMWhfY2hpcCAqYwo+ID4gICAgICAgcmV0ID0gaTJjX3NtYnVzX3JlYWRfd29yZF9kYXRh
KGkyYywgVENQQ19WRU5ET1JfSUQpOwo+ID4gICAgICAgaWYgKHJldCA8IDApCj4gPiAgICAgICAg
ICAgICAgIHJldHVybiByZXQ7Cj4gPiAtICAgICBpZiAocmV0ICE9IFJUMTcxMUhfVklEKSB7Cj4g
PiArICAgICBpZiAocmV0ICE9IGNoaXAtPmluZm8tPnZpZCkgewo+ID4gICAgICAgICAgICAgICBk
ZXZfZXJyKCZpMmMtPmRldiwgInZpZCBpcyBub3QgY29ycmVjdCwgMHglMDR4XG4iLCByZXQpOwo+
Cj4gV2h5IGFyZSB3ZSBjaGVja2luZyB2aWRzIGFuZCBwaWRzIGhlcmU/IFJlamVjdGluZyBhIG5v
bi1tYXRjaCBwcmV2ZW50cwo+IHVzaW5nIGZhbGxiYWNrIGNvbXBhdGlibGVzLCBzbyBJJ2QgbGlr
ZSB0byBrbm93IHdoeSB0aGUgY29kZSBleGlzdHMuCj4KPiBJcyBpdCBqdXN0IGhlcmUgZm9yIHRo
ZSBzYWtlIG9mIGl0LCBvciB0byBwcmV2ZW50IHNvbWUgYWN0dWFsIGlzc3Vlcz8KPiBOb3QgcmVh
bGx5IGZhbWlsaWFyIHdpdGggVVNCIGRldmljZXMgdW5mb3J0dW5hdGVseS4KCkhpIENvbm9yLAoK
SXQgbG9va3MgbGlrZSBhIHJlbGljIG9mIHNvbWUgb3JpZ2luYWwgdmVuZG9yIHByb3ZpZGVkIGRy
aXZlciBjb2RlLgpSb2NrY2hpcCdzIGltcGxlbWVudGF0aW9uIG9mIGEgSFVTQjMxMSBkcml2ZXIg
WzFdIGNvbnRhaW5zIHNpbWlsYXIKY2hlY2tzIGJ1dCBJIGRvbid0IHRoaW5rIGl0IGFkZHMgcHJh
Y3RpY2FsIHZhbHVlIGluIHRoZSB3b3JsZCBvZgpEZXZpY2UgVHJlZSAoYWZ0ZXIgYWxsLCBpdCdz
IGp1c3QgYW4gSTJDIGRldmljZSAtIEkgaGF2ZW4ndCBzZWVuIG1hbnkKSTJDIGRyaXZlcnMgcmVq
ZWN0IGEgRFQgbWF0Y2ggYmFzZWQgb24gaGFyZHdhcmUgSURzIGZvdW5kIGluCnJlZ2lzdGVycyku
IEkgY2hvc2UgdG8gYXZvaWQgcmVtb3ZpbmcgdGhlbSB3aXRoIG15IHBhdGNoIHRob3VnaCwKYmVj
YXVzZSBJIGRvbid0IGhhdmUgYW55IFJpY2h0ZWsgaGFyZHdhcmUgdG8gdGVzdCBzdWNoIGEgY2hh
bmdlLgoKTWF5YmUgdGhlIGVycm9yIGNvdWxkIGJlIGRvd25ncmFkZWQgdG8gYSB3YXJuaW5nIHRo
b3VnaC4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAt
bGludXgva2VybmVsL2Jsb2IvZGV2ZWxvcC02LjYvZHJpdmVycy91c2IvdHlwZWMvdGNwbS90Y3Bj
aV9odXNiMzExLmMjTDIxNy1MMjQ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
