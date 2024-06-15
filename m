Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44429C27C7B
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 08:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6oD8Pg6cXzLvfrayBx38sS6TKXvwr4ZTOQyT9na2sA=; b=ikxhXGfvMQBtH6
	UVG2p04KzaHDwzEgwXju6Hp9MpPEIrtqB8ygofeU8aqiw74Bj+EWP+0DG10vJX0t8g8SZxl+0gUvm
	QwOUSb6vIDdzkBcolLXYs4D1yoyvOBXMYz6ff32V2wMpLCSfxf3GXEWlOcFv3319DnT5SYbIzwtLH
	ghhmzkCUSlQ2dwjhD1E/UuvmS/cvJGZxZ6US/uNSv7LBqchzEop3e0FcHxV1RkpVwCw7o64iLBJGe
	u3EZ50lIqI3x5CCDEk0g3qxzv9QIWgMTfduQqMPsySFt/dV556tNFNX5eKop/ZrWhX5pu3DDIHKkW
	tAdSX3bAHwzdQ+yNScwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIOuH-000000052Ci-11qq;
	Sat, 15 Jun 2024 08:37:05 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIOuC-000000052BH-1hnw;
	Sat, 15 Jun 2024 08:37:02 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1f6c7cdec83so25462465ad.0;
        Sat, 15 Jun 2024 01:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718440617; x=1719045417; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H6cauRvhda+JnAgNItfcWCYZCuvzzw7uDiKK0pce0LM=;
        b=jYABde7XJxcg0JGidSFLrfSX5qm4xpc7x7CnrSbqKeJqQWQVLovk3rPQeIN65tTE03
         GtFkCjtxAQMsZl8R3KijlWleULK2qAPS4640V71dHGeLADg5ukWa1Mi0CorBUQQKo0Ur
         YIT6bh6flY8nIU2cbPaG1QY8f1Nuh2Bs0UpfnqBbM3TUzRnZ8lOTMHa3mPPgvnTKxDCw
         UQU8umu7tkI+RYsZqgBMMWh2aVeC/U+JYmPkOoqQlVGr6OEYtrNXW1GkwEvKlpJUd0et
         hxjWk0BQPvo02DwDR5EC2aWbeCzjr8wq3dorKH81vPYpFJdHmmWGtNZ25QwHFMzTlh/P
         0dqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718440617; x=1719045417;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H6cauRvhda+JnAgNItfcWCYZCuvzzw7uDiKK0pce0LM=;
        b=kFZkUyIfuoofMogSFMTSc2ELVOPEDigvSo8uw/cupfHj/MU2iZt0gJxcv0YZpuNI6F
         PTndNN76pnX9u+BuqeDnZHCYp+5aAdqRouoePQ4ajk6+1Pl1ywJ5knpwxcqEaD1oCYMU
         fIWLH4IlOOqJc9tQSeDO+mG7RzLztqofW+c5tSyw7u0X1QWu1ncOtuW7rMBxn+hz0CW+
         9xGHYVv7RTFGwr/wwcNQnRFV4KTswKtRP/DkJ/HYTI03c/XWiJI/X9I4oOIq1a4FR+S2
         klILDIOm2+MtlPij7pxhC5AJ8VocQM0XW+Z/Z/GylqmjJupZcCc/x5t8YdAZ2wXTiy2c
         tm8A==
X-Forwarded-Encrypted: i=1; AJvYcCVAKOD7JkjPhfkp/TSaeXTT1aoIem2HQ6Wrm/CDegBp9yfTe9ekpo61R/yQnulbSUMmf1SU5xobrI0BIPy1qh8umXOB3GcroX50boad+PjEEbm+sb+7JnND5iHuq5tFIQ/Heyc4U8NmEwNbuoJ5wL6n42Wa/Ii45YfebxIIhNLRd4fJGIDtm6CqceFmwcASMwX7FQHcXYKO
X-Gm-Message-State: AOJu0Yw92sxrDim0wRmqJ/6C8mOV7gVK65Ptx6vY33RUGx3w3fn26V1q
	E2HIDU7mCH8/6yUL001aALUMvy43rK13WhIMJKR41Xk6SlCSY/1VGVCICcKss2LV0dgX+/j7fo1
	JBhz6wNz8O5Iqpj+magh/6N3uzgb2eQ==
X-Google-Smtp-Source: AGHT+IHMed/d8CkZg0P/+1OQf0QLEAhLJg4VsE9JGr9ZPMppdYoTbTVwETOWfMQGxLVysh3eo25tlOzsxlMzl4CRAl4=
X-Received: by 2002:a17:902:a5c8:b0:1f8:5185:1cd4 with SMTP id
 d9443c01a7336-1f8627e4305mr49312995ad.33.1718440616531; Sat, 15 Jun 2024
 01:36:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240613085812.4020-2-shresthprasad7@gmail.com>
 <cc66cca1-33db-4f30-afcf-d256a959896b@yandex.com> <9ce15b81-a8bd-4833-b15e-3e6f240dcf03@kernel.org>
 <495e50aa-6819-457d-8503-00440abc97e3@yandex.com> <58e85008-a268-4555-bafb-f948ade16a63@kernel.org>
 <20240613195629.GA2359753-robh@kernel.org>
In-Reply-To: <20240613195629.GA2359753-robh@kernel.org>
From: Shresth Prasad <shresthprasad7@gmail.com>
Date: Sat, 15 Jun 2024 14:06:45 +0530
Message-ID: <CAE8VWiJr6tTNVmRfxHwYueC6xcNs1sLjw0gASamTaooAmcBnPA@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Johan Jonker <jbx6244@yandex.com>, vkoul@kernel.org, 
	kishon@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	sebastian.reichel@collabora.com, s.hauer@pengutronix.de, 
	cristian.ciocaltea@collabora.com, andy.yan@rock-chips.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, 
	javier.carrasco.cruz@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_013700_474058_01A85266 
X-CRM114-Status: GOOD (  31.93  )
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

T24gRnJpLCBKdW4gMTQsIDIwMjQgYXQgMToyNuKAr0FNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMDI6NTI6NDZQTSArMDIw
MCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+IE9uIDEzLzA2LzIwMjQgMTI6MzMsIEpv
aGFuIEpvbmtlciB3cm90ZToKPiA+ID4KPiA+ID4KPiA+ID4gT24gNi8xMy8yNCAxMjoxMiwgS3J6
eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+ID4+IE9uIDEzLzA2LzIwMjQgMTE6NDQsIEpvaGFu
IEpvbmtlciB3cm90ZToKPiA+ID4+Pj4gLS0tCj4gPiA+Pj4KPiA+ID4+PiBBZGQgYWNrIHJlcXVl
c3QgZnJvbSBwaHkgbWFpbnRhaW5lciBoZXJlLgo+ID4gPj4KPiA+ID4KPiA+ID4+IFdoeT8gV2hh
dCBkbyB5b3UgbWVhbiBmb3IgdGhhdD8gV2h5IHBoeSBtYWludGFpbmVyIG5lZWRzIHRvIGFjayBw
YXRjaGVzCj4gPiA+PiBoZSBpcyBnb2luZyB0byB0YWtlPwo+ID4gPgo+ID4gPiBTZWUgbXkgdGV4
dCBiZWxvdzoKPiA+ID4gRnJvbSBteSBwYXN0IGNvbnZlcnRpbmcgcGh5IGRvY3VtZW50cyBleHBl
cmllbmNlIGFza2luZyB3YXMgbmVlZGVkIHRvIHNtb290aHMgdGhpbmdzIHVwIC4uLgo+ID4gPiBM
ZXQgbWUga25vdyBpZiB0aGluZ3MgaGF2ZSBpbXByb3ZlZC4KPiA+ID4KPiA+ID4gZ3JmLnlhbWwg
Y2FuIGJlIGJ1c3kgYXQgdGltZXMuIExldCBIZWlrbyB0YWtlIGNhcmUgb2YgdGhlIG1lcmdlIG9y
ZGVyLgo+ID4gPiBBc2sgZm9yIGFuIGFjayBmcm9tIHRoZSBwaHkgbWFpbnRhaW5lcnMgaW4geW91
ciBjb21taXQgbWVzc2FnZSBiZWxvdyBhICItLS0iCj4gPiA+Cj4gPiA+Pgo+ID4gPj4+Cj4gPiA+
Pj4+IENoYW5nZXMgaW4gdjM6Cj4gPiA+Pj4+ICAgICAtIGZpeCBgcmVnYCBpbiBleGFtcGxlIGJl
aW5nIHRvbyBsb25nCj4gPiA+Pj4+Cj4gPiA+Pj4+IFRlc3RlZCBhZ2FpbnN0IGByb2NrY2hpcC9y
azMzOTktZmlyZWZseS5kdGJgLCBgcm9ja2NoaXAvcmszMzk5LW9yYW5nZXBpLmR0YmAKPiA+ID4+
Pj4gYW5kIGByb2NrY2hpcC9yazMzOTktcGluZWJvb2stcHJvLmR0YmAuCj4gPiA+Pj4+Cj4gPiA+
Pj4+ICAuLi4vYmluZGluZ3MvcGh5L3JvY2tjaGlwLGVtbWMtcGh5LnlhbWwgICAgICAgfCA3OSAr
KysrKysrKysrKysrKysrKysrCj4gPiA+Pj4+ICAuLi4vYmluZGluZ3MvcGh5L3JvY2tjaGlwLWVt
bWMtcGh5LnR4dCAgICAgICAgfCA0MyAtLS0tLS0tLS0tCj4gPiA+Pj4+ICAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwgfCAgMiArLQo+ID4gPj4+PiAgMyBmaWxl
cyBjaGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkKPiA+ID4+Pj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Jv
Y2tjaGlwLGVtbWMtcGh5LnlhbWwKPiA+ID4+Pj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWVtbWMtcGh5LnR4dAo+ID4g
Pj4+Pgo+ID4gPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9yb2NrY2hpcCxlbW1jLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxlbW1jLXBoeS55YW1sCj4gPiA+Pj4+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gPiA+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uODVkNzRiMzQzOTkxCj4gPiA+
Pj4+IC0tLSAvZGV2L251bGwKPiA+ID4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxlbW1jLXBoeS55YW1sCj4gPiA+Pj4+IEBAIC0wLDAgKzEs
NzkgQEAKPiA+ID4+Pgo+ID4gPj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAgT1IgQlNELTItQ2xhdXNlKQo+ID4gPj4+Cj4gPiA+Pj4gWW91IGFyZSBjb252ZXJ0aW5nIGFu
IGV4aXN0aW5nIGRvY3VtZW50LCBzbyBHUEwgMiBvbmx5Lgo+ID4gPj4KPiA+ID4KPiA+ID4+IFdo
aWNoIGNvcHlyaWdodGFibGUgcGFydCB3YXMgY29waWVkPyBUaGlzIGNvbW1lbnQgaXMgbm90IGNv
cnJlY3QgaW4KPiA+ID4+IGdlbmVyYWwsIGJlY2F1c2UgY29udmVyc2lvbnMgYXJlIGR1YWwtbGlj
ZW5zZWQgKHRoZXJlIGFyZSBleGNlcHRpb25zLAo+ID4gPj4gYnV0IHRoYXQncyB0aGUgZ2VuZXJp
YyBydWxlKS4KPiA+ID4KPiA+ID4gV2FzIHRvbGQgdG8gZG8gc28gaW4gdGhlIHBhc3QgYnkgdGhl
IG1haW50YWluZXJzKFJvYj8/KSBmb3IgdGV4dAo+ID4gPiBkb2N1bWVudHMgY29udmVyc2lvbnMu
KENhbid0IGZpbmQgZXhhY3RseSB3ZXJlIGluIGxvcmUsIG11c3QgYmUgaW4gb25lIG15IGZpcnN0
IGNvbnZlcnNpb24gcGF0Y2hlcykKPiA+ID4gSWYgc29tZW9uZSB3YXMgc3VibWl0dGluZyBhcyBH
UEwyIGxvbmcgdGltZSBhZ28gdGhlbiB0aGUgZGVyaXZlZC9jb252ZXJ0ZWQgd29yayBzdGlsbCBo
b2xkIHRoZSBzYW1lIGxpY2Vuc2UuCj4gPiA+IExldCBtZSBrbm93IGlmIHRoZSBjb25zZW5zdXMg
aGFzIGNoYW5nZWQuCj4gPgo+ID4gQ29uc2Vuc3VzIGRpZCBub3QgY2hhbmdlIGJ1dCBJIGFtIG5v
IHN1cmUgaWYgeW91IGdvdCBpdCByaWdodC4gSXQgd2FzCj4gPiBhYm91dCBjb3BpZWQgY29weXJp
Z2h0YWJsZSB0ZXh0LiBXaGljaCBwYXJ0IHdhcyBjb3BpZWQgaGVyZT8KPgo+IEl0IGlzIGRlcml2
ZWQgZnJvbSB0aGUgdGV4dCBiaW5kaW5nLCBzbyBzdHJpY3RseSBzcGVha2luZyB0aGF0J3MgZGVy
aXZlZAo+IHdvcmsuIEFyZSBkZXNjcmlwdGlvbnMgKGJlY2F1c2UgdGhhdCdzIHJlYWxseSBhbGwg
d2UgdGFrZSkgZW5vdWdoIHRvIGJlCj4gY29weXJpZ2h0YWJsZT8gVGhhdCdzIGFub3RoZXIgcXVl
c3Rpb24uLi4KPgo+IEkgZG9uJ3Qga25vdyBzbyBJIGVyciBvbiB0aGUgc2lkZSBvZiBrZWVwIEdQ
TC0yLjAtb25seSAqb25seSouCj4KPiBXaWxsIGFueW9uZSBldmVyIGNhcmU/IE5vdCBsaWtlbHku
Cj4KPiBSb2IKCkp1c3QgdG8gYmUgc2FmZSBJJ2xsIGNoYW5nZSB0aGUgbGljZW5zZSB0byBHUEwt
Mi4wLW9ubHkgdGhlbi4KVGhhbmsgeW91IGV2ZXJ5b25lIGZvciB0aGUgZmVlZGJhY2ssIEknbGwg
Zml4IGV2ZXJ5dGhpbmcgYW5kIHJlc2VuZCB0aGUgcGF0Y2guCgpSZWdhcmRzLApTaHJlc3RoCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
