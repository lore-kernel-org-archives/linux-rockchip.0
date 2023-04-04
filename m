Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8E32C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 09:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AieVgLsJ8MPq3KLczFy8yxyhBlHdDcdtBYkkE2kyPQA=; b=iak/y1iV7xHY1Q
	lhFXLVB9UCfdepiym2z6HYYgkeilJJQVhJdUSCC0m2V4D3zwGO5MeckrRV6VUL8YnfG5Z/j6CYG10
	AYy412n9asyHTVrQJGXs1R8fbDK+N8Sb9BDJWM3HEhEv6ysybNKBJF1elg/uchY2ojneo4W3nsoDv
	AeLz6QGDl8HsA0C82N25Fa5zdQgR7HA/Cm/dQcwzXjyl968QxwOhVNLmCROFPm7v9iKi8F9Fc09Pi
	f2wD7S538ujWJff1iY6udQCnsvIbFlxEtvn6whuCA6/nBIXJVZeQ5cvCtMPvNEZ8HOQ4SCWW7YVi5
	9ZlzA81VeH78B3hoK1sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcWm-000cdd-19;
	Tue, 04 Apr 2023 09:00:37 +0000
Received: from [2607:f8b0:4864:20::233] (helo=mail-oi1-x233.google.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcW2-000cSC-1D;
	Tue, 04 Apr 2023 09:00:01 +0000
Received: by mail-oi1-x233.google.com with SMTP id bl22so9727895oib.11;
        Tue, 04 Apr 2023 01:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680598762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uATusROMiuJEMVEQ1ZavvbntnDc27gCopVhFKiZv8PA=;
        b=d6cOCq6SJvuPy5An97qr8E5+agZTMzJaBYMmZnzBey7kV4wbcXtQS+wigoqEHWjB8r
         kp8d5llqth+GskpFOZiSuGcPBJZG43AXBB6lv6cV+FJvdn6LZFbqZJ2c+onHhw4+cN2c
         X28qq7rxKvCZOcGXBx4q/RtNan3oqQ8F5ltbkcnkoFQtWZM8NbmcKvyKmYyq96ru81R6
         xTGUn7tpq1SIxGDWTQUM4Zz4jKa8ce2xNDAW6YO5USUcA/0soyTTa3uU9+GZWiCAjcGj
         c4Ux0seqxsivqrvmTHomIiUtqKW2cFt2PZS8+ZK7Anj71gcVpnyBcn1BxEjrp3Zj5vb7
         cZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680598762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uATusROMiuJEMVEQ1ZavvbntnDc27gCopVhFKiZv8PA=;
        b=Gx38NQhnP+7xFTiOsTtehZILfg3kSJQmHXLNh+SyKmRdOK0Vadyr/qTMLYtIgJthUv
         V+JOmVTHAFj7Exb87g8V+H+QziNMMyAPf1M5nJh9QtAhtLJxGywm9QJaw3WLPk9DxkGu
         FgHZ2/oXbjhngMPOspJLcjSx+HbQ+8dK5DaM1IzDFHuNYJ9+aruDe41bSDr+0ZdoS7Oh
         JVhHa1r5AN+3ja4uKAh4wQlj/UyXZavyIt1KjLXKYnBIVJHQF/DDf9KCSjs3gO31a0tr
         SY6LAjUIioLO9J4Nzyt753EJYsYBGFvugop3HdBULELDijDK6ZNLpoaMUfi/pIR03oRd
         NBVg==
X-Gm-Message-State: AAQBX9c6kF+g7aP3PeHISyNImR/wint0iXCiNOV9u++FaRlujEFRAR7B
	yIl4a1SPUqUG9Fv7httLmBQegrjdTrSG3N+F/QI=
X-Google-Smtp-Source: AKy350Y36FztdkSbBQMnp3bYmBLAyiVO43BqI0gGJmFyd0eK3cWh8e2yJYsmlnZ0YMR+c5JtNUiPqj/OWkXMeb0+SmM=
X-Received: by 2002:a05:6808:6294:b0:389:72d5:f15f with SMTP id
 du20-20020a056808629400b0038972d5f15fmr777180oib.10.1680598761439; Tue, 04
 Apr 2023 01:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
 <20230404082426.3880812-7-rick.wertenbroek@gmail.com> <d9afc07f-0346-1fe7-907c-261e4c6f92cd@linaro.org>
In-Reply-To: <d9afc07f-0346-1fe7-907c-261e4c6f92cd@linaro.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Tue, 4 Apr 2023 10:58:45 +0200
Message-ID: <CAAEEuhrnp1QyP498V1wzyLv6KvfRCpNidF9NJpzg+kofWqrJtA@mail.gmail.com>
Subject: Re: [PATCH v3 06/11] dt-bindings: PCI: Update the RK3399 example to a
 valid one
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: alberto.dassatti@heig-vd.ch, damien.lemoal@opensource.wdc.com, 
	xxm@rock-chips.com, Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Johan Jonker <jbx6244@gmail.com>, Brian Norris <briannorris@chromium.org>, 
	Caleb Connolly <kc@postmarketos.org>, Corentin Labbe <clabbe@baylibre.com>, 
	Judy Hsiao <judyhsiao@chromium.org>, Lin Huang <hl@rock-chips.com>, 
	Arnaud Ferraris <arnaud.ferraris@collabora.com>, Hugh Cole-Baker <sigmaris@gmail.com>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_015949_328572_7C012F45 
X-CRM114-Status: GOOD (  27.89  )
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

T24gVHVlLCBBcHIgNCwgMjAyMyBhdCAxMDo0NeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiAwNC8wNC8yMDIzIDEw
OjI0LCBSaWNrIFdlcnRlbmJyb2VrIHdyb3RlOgo+ID4gVXBkYXRlIHRoZSBleGFtcGxlIGluIHRo
ZSBkb2N1bWVudGF0aW9uIGEgdmFsaWQgZXhhbXBsZS4KPiA+IFRoZSBkZWZhdWx0IG1heC1vdXRi
b3VuZC1yZWdpb25zIGlzIDMyIGJ1dCB0aGUgZXhhbXBsZSBzaG93ZWQgMTYuCj4KPiBUaGlzIGlz
IG5vdCByZWFzb24gdG8gYmUgaW52YWxpZC4gSXQgaXMgcGVyZmVjdGx5IGZpbmUgdG8gY2hhbmdl
IGRlZmF1bHQKPiB2YWx1ZXMgdG8gZGVzaXJlZCBvbmVzLiBXaGF0IGlzIG5vdCBhY3R1YWxseSBv
YnZpb3VzIGlzIHRvIGNoYW5nZSBzb21lCj4gdmFsdWUgdG8gYSBkZWZhdWx0IG9uZSwgaW5zdGVh
ZCBvZiByZW1vdmluZyBpdC4uLgoKSGVsbG8sIHRoZSBleGFtcGxlIHZhbHVlIDwweDAgMHg4MDAw
MDAwMCAweDAgMHgyMDAwMD47IGlzIHBsYWluIHdyb25nCmFuZCB3aWxsIGNyYXNoIHRoZSBrZXJu
ZWwuIFRoaXMgaXMgYSB2YWx1ZSB0aGF0IHBvaW50IHRvIGFuIGFkZHJlc3MgdGhhdCBmYWxscwpp
biB0aGUgRERSIFJBTSByZWdpb24gYnV0IGRlcGVuZGluZyBvbiB0aGUgYW1vdW50IG9mIFJBTSBv
biB0aGUKYm9hcmQgdGhpcyBhZGRyZXNzIG1heSBub3QgZXZlbiBleGlzdCAoZS5nLiwgYm9hcmQg
d2l0aCAyR0Igb3IgbGVzcykuCgpBbHNvIHRoaXMgYWRkcmVzcyByZXF1aXJlcyBwb2ludGluZyB0
byB3aGVyZSB0aGUgUENJZSBjb250cm9sbGVyIGhhcyB0aGUKd2luZG93cyBmcm9tIEFYSSBQaHlz
aWNhbCBzcGFjZSB0byBQQ0llIHNwYWNlLiBUaGlzIGFkZHJlc3MgaXMKYWxsb2NhdGVkIHdoZW4g
dGhlIFNvQyBhZGRyZXNzIG1hcCBpcyBjcmVhdGVkIHNvIGl0IGNhbiBvbmx5IGJlIHRoYXQKb25l
IHVubGVzcyByb2NrY2hpcCByZWZhYnMgdGhlIFNvQyB3aXRoIGFub3RoZXIgYWRkcmVzcyBtYXAu
CgpUaGUgZXhhbXBsZSBuZXZlciB3b3JrZWQgd2l0aCB0aGUgdmFsdWVzIGdpdmVuIGFzIHJlcG9y
dGVkIGJ5IGUuZy4sCmh0dHBzOi8vc3RhY2tvdmVyZmxvdy5jb20vcXVlc3Rpb25zLzczNTg2NzAz
L2RldmljZS10cmVlLWlzc3Vlcy13aXRoLXJvY2twcm82NC1wY2llLWVuZHBvaW50CmFuZCBoZXJl
IHRoZXkgc2V0IGl0IHRvIDAgKGJhc2Ugb2YgdGhlIEREUiwgd2hpY2ggaXMgYSAidmFsaWQiIGFk
ZHJlc3MKYXMgdG8gaXQgZXhpc3RzIGV2ZW4gb24gYm9hcmRzIHdpdGggbGVzcyB0aGFuIDJHQikg
YnV0IGl0IGlzIHN0aWxsIHdyb25nCnRvIGRvIHNvLgoKPgo+ID4gQWRkcmVzcyBmb3IgbWVtLWJh
c2Ugd2FzIGludmFsaWQuIEFkZGVkIHBpbmN0cmwuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUmlj
ayBXZXJ0ZW5icm9layA8cmljay53ZXJ0ZW5icm9la0BnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAscmszMzk5LXBjaWUtZXAueWFtbCAg
fCA4ICsrKysrLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BjaS9yb2NrY2hpcCxyazMzOTktcGNpZS1lcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcCxyazMzOTktcGNpZS1lcC55YW1sCj4gPiBp
bmRleCA4ODM4NmE2ZDcwMTEuLjBjNjdlOTYwOTZlYiAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAscmszMzk5LXBjaWUtZXAueWFt
bAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hp
cCxyazMzOTktcGNpZS1lcC55YW1sCj4gPiBAQCAtNDcsMTQgKzQ3LDE1IEBAIGV4YW1wbGVzOgo+
ID4KPiA+ICAgICAgICAgIHBjaWUtZXBAZjgwMDAwMDAgewo+ID4gICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAicm9ja2NoaXAscmszMzk5LXBjaWUtZXAiOwo+ID4gLSAgICAgICAgICAgIHJlZyA9
IDwweDAgMHhmZDAwMDAwMCAweDAgMHgxMDAwMDAwPiwgPDB4MCAweDgwMDAwMDAwIDB4MCAweDIw
MDAwPjsKPiA+IC0gICAgICAgICAgICByZWctbmFtZXMgPSAiYXBiLWJhc2UiLCAibWVtLWJhc2Ui
Owo+Cj4gUmVnIChhbmQgcmVnLW5hbWVzKSBpcyB1c3VhbGx5IHNlY29uZCBwcm9wZXJ0eSwgd2h5
IG1vdmluZyBpdD8gV2hhdCBpcwo+IGluY29ycmVjdCBpbiB0aGUgcGxhY2VtZW50PwoKU29ycnks
IEkgd2FzIG5vdCBhd2FyZSB0aGVyZSB3YXMgYSBzdGFuZGFyZCBvcmRlcmluZywgdGhlIHJlYXNv
biBJIG1vdmVkCnNvIHRoYXQgaXQgZm9sbG93cyB0aGUgb3JkZXJpbmcgSSBoYWQgaW4gdGhlIGVu
dHJ5IEkgYWRkZWQgdG8gdGhlIC5kdHNpIGZpbGUKKHdoaWNoIHRoZXJlZm9yZSBhbHNvIGlzIGlu
IHRoZSBub24gc3RhbmRhcmQgb3JkZXIpLgpDb3VsZCB5b3UgYmUga2luZCBlbm91Z2ggdG8gc2hh
cmUgd2l0aCBtZSB0aGUgbGluayB0byB0aGUgZG9jdW1lbnRhdGlvbgpmb3IgdGhlIG9yZGVyLCBz
byB0aGF0IEkgY2FuIGJvdGggdXBkYXRlIHRoZSAuZHRzaSBhbmQgdGhpcyBmaWxlLCB0aGlzCndh
eSBpdCB3aWxsCmJlIGluIG9yZGVyIGFuZCBjb2hlcmVudCBmb3IgYm90aC4gVGhhbmsgeW91LgoK
Pgo+ID4gKyAgICAgICAgICAgIHJvY2tjaGlwLG1heC1vdXRib3VuZC1yZWdpb25zID0gPDMyPjsK
PiA+ICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBBQ0xLX1BDSUU+LCA8JmNydSBBQ0xLX1BF
UkZfUENJRT4sCj4gPiAgICAgICAgICAgICAgICA8JmNydSBQQ0xLX1BDSUU+LCA8JmNydSBTQ0xL
X1BDSUVfUE0+Owo+ID4gICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImFjbGsiLCAiYWNsay1w
ZXJmIiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICJoY2xrIiwgInBtIjsKPiA+ICAgICAgICAg
ICAgICBtYXgtZnVuY3Rpb25zID0gL2JpdHMvIDggPDg+Owo+ID4gICAgICAgICAgICAgIG51bS1s
YW5lcyA9IDw0PjsKPiA+ICsgICAgICAgICAgICByZWcgPSA8MHgwIDB4ZmQwMDAwMDAgMHgwIDB4
MTAwMDAwMD4sIDwweDAgMHhmYTAwMDAwMCAweDAgMHgyMDAwMDAwPjsKPiA+ICsgICAgICAgICAg
ICByZWctbmFtZXMgPSAiYXBiLWJhc2UiLCAibWVtLWJhc2UiOwo+ID4gICAgICAgICAgICAgIHJl
c2V0cyA9IDwmY3J1IFNSU1RfUENJRV9DT1JFPiwgPCZjcnUgU1JTVF9QQ0lFX01HTVQ+LAo+ID4g
ICAgICAgICAgICAgICAgPCZjcnUgU1JTVF9QQ0lFX01HTVRfU1RJQ0tZPiwgPCZjcnUgU1JTVF9Q
Q0lFX1BJUEU+ICwKPiA+ICAgICAgICAgICAgICAgIDwmY3J1IFNSU1RfUENJRV9QTT4sIDwmY3J1
IFNSU1RfUF9QQ0lFPiwgPCZjcnUgU1JTVF9BX1BDSUU+Owo+ID4gQEAgLTYyLDcgKzYzLDggQEAg
ZXhhbXBsZXM6Cj4gPiAgICAgICAgICAgICAgICAgICAgICAicG0iLCAicGNsayIsICJhY2xrIjsK
PiA+ICAgICAgICAgICAgICBwaHlzID0gPCZwY2llX3BoeSAwPiwgPCZwY2llX3BoeSAxPiwgPCZw
Y2llX3BoeSAyPiwgPCZwY2llX3BoeSAzPjsKPiA+ICAgICAgICAgICAgICBwaHktbmFtZXMgPSAi
cGNpZS1waHktMCIsICJwY2llLXBoeS0xIiwgInBjaWUtcGh5LTIiLCAicGNpZS1waHktMyI7Cj4g
PiAtICAgICAgICAgICAgcm9ja2NoaXAsbWF4LW91dGJvdW5kLXJlZ2lvbnMgPSA8MTY+Owo+ID4g
KyAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArICAgICAgICAgICAg
cGluY3RybC0wID0gPCZwY2llX2Nsa3JlcW5iX2NwbT47Cj4gPiAgICAgICAgICB9Owo+ID4gICAg
ICB9Owo+ID4gIC4uLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpUaGFuayB5b3Ug
Zm9yIHlvdSBjb21tZW50cywKU2luY2VyZWx5ClJpY2sKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
