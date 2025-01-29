Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A32B0C02190
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jan 2025 16:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJvkm+58ix7Ga4Xliukg9UV7GYT09yM9Hb+AanZ8fcs=; b=UMEylvJnN1EsDK
	LuUuvjmdekOLh9fKUTGG0vRnkcVzBUgnMERIVm0jyaVEuLx55vwy/7LZJ06s3a2QkDBHkI/1KglDv
	vLfyWzsUDe3RfRjVijWpCb0VVy6O4uT4QLWMEv9uJStWLj9CWm2woUsxTLZitXTYBHk7CMmIorhD8
	XaQjbinf5xKraa/TVuF8oK8DubgLPJtBWwHg2raATrmMuLeM5/yuCgiFHkn1tXvoMi2TTVIAqqOQL
	3wYcjEwOC3/YvdUozcPslO71ZOTRVsmIedMIgU9f8hd578PlpcIVKEVLN3mRbPYtfFdwKqwEdlyJX
	GJLpEYxlY8D66UnUnp8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdApP-00000007NQt-3xnP;
	Wed, 29 Jan 2025 16:22:11 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdAng-00000007N7M-1pxp
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jan 2025 16:20:26 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-7b98a2e3b3eso378305485a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jan 2025 08:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738167623; x=1738772423; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AASPGoZdR79efbOZhdjcAbczy5T4cO1CnTVAPCvMgDc=;
        b=K9W4szLP7e5IAyuNth4K09u5BG/xCpFbmLiSW/C8sR6pM4AHRhVdilxpRPpv60vJPa
         TFqSKgRcJDcdWG1R74xwn1PCXbpS5oXG8ayBhf7DYq6ZvXS+kiiyu5JPbuObn7WGJEvl
         jaqMyOAOcI/LzhSkTYh0WqgFRhiKHsfYJwk68ZBPQwDb/4RTQRGEWej5rqrEttuIPfIx
         DHlo3dIBrLyphhaguvdQ7n6mgFVH4ERqrrVdpN/vxFahuDGwNt8gW/88AOXgCXZMfbTQ
         DLmoXGKzHUo+kCCWhFGnkuivdnom95nhCXF7zoSJ7vJgPahZphAa8gFiM+PBWmzqtUI0
         hhIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738167623; x=1738772423;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AASPGoZdR79efbOZhdjcAbczy5T4cO1CnTVAPCvMgDc=;
        b=bS4JshU0eXD+DvHEIr0Pm8JYQZCn2faISyviSZA1zF7Wilk6dOJYs/d6s1hMd2NmXr
         /PmpjOvx4e/AJ7mSesgcCwqvEc4GVoA09U4/esW0NTxHJEXs4hLjfH7OAEIdSEZ+pXss
         K89YlfFTxeI23DOkJUo480/w2c9EaIvLzF2Ewipsv9tjmsrlF6+xKaiE1NV7xIEoX2v/
         D4Y9TAbLFlah6YM0Kx3XQYaw8uwueIB5j2wVXwW0bM4Guj7RxgzsyTi4bZfWP+paFq2o
         s0FkpT+Pc57dQ/d9PhW0fUM3opV1qLpYfVj+yPDuRyUwHbvTWUVK9eTWGxqC42tr1+UA
         0VZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRll5lvacVvKa7hYOujgUmt0mxFo+JsZl0veBSZ+OAhMqul9NlAfYjNvMyOfFx+KbQAeNa22OJKYx8Dbs+RA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxpbU2nX62aEcaUG+OlEmB2W5yfvPescQdxrHsmD6BfZxgU++Qu
	PROVKih2IVBei+g2RMFDX96cBVaKBda95F8iC3C+LjDxdC5yEIUpnpAgYqYrB2M=
X-Gm-Gg: ASbGncvXXuam6E4JVyitpAuBEiEu1uzODK/92bRXqiYq+A3T9QkEh0QUrV+d5e0rOXx
	T0TfDsgcSPtUzbLgNrwAfoTPp6UJNfpiEZv59BwHb0yIqxMwqyvzL7CxrblJMa+tKIPJ3pMJa7d
	b5ONxx/weVoZBrzl9nic3iV4vn9OAtdVpBP/iLIZD8EcIF7s1nhIIJxkfRG673aL0ohiSQQyWlP
	saD9OQq1nLNMsogrAn6t/29S88kZnYk7NTSTF5znYJjMUxiVyCLAB1godNEEJAyn3+gHXwAT2Fd
	qhdteKtxFCxEfOjT
X-Google-Smtp-Source: AGHT+IGppDxv2MaMp8XMUqVjUk8aPzK+5B86GRXvdwYxAlIS5cCU4yod4npv5CwwFk+ECmoEn75I5Q==
X-Received: by 2002:a05:620a:280e:b0:7b6:cedf:1b4e with SMTP id af79cd13be357-7bffcd900aemr507124485a.41.1738167622668;
        Wed, 29 Jan 2025 08:20:22 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7be9ae7dd05sm637120385a.13.2025.01.29.08.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 08:20:22 -0800 (PST)
Message-ID: <bd5abd7f1e29853729c1c9b57b62e2e4a9524e6d.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, Detlev Casanova
	 <detlev.casanova@collabora.com>
Date: Wed, 29 Jan 2025 11:20:21 -0500
In-Reply-To: <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
	 <20240615015734.1612108-2-detlev.casanova@collabora.com>
	 <3333233.eAoTOS8U2s@bagend> <5969581.LvFx2qVVIh@arisu>
	 <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_082024_728216_B0226AA1 
X-CRM114-Status: GOOD (  18.06  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUGlvdHIsCgpMZSBtZXJjcmVkaSAyOSBqYW52aWVyIDIwMjUgw6AgMTU6NDggKzAxMDAsIFBp
b3RyIE9uaXN6Y3p1ayBhIMOpY3JpdMKgOgo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6
ZXogRGV0bGV2IENhc2Fub3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4gdyBkbml1
IDE1IGN6ZSAyMDI0LCBvIGdvZHouIDIxOjQ0Ogo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+IAo+ID4g
WWVzLCB0aGUgdmRwdTM0eCBkZWNvZGVyIG9uIHJrMzU2eCBzb2NzIHNob3VsZCBiZSBzdXBwb3J0
ZWQgYnkgdGhpcyBkcml2ZXIgYnV0IAo+ID4gSSBkb24ndCBoYXZlIGJvYXJkcyB0byB0ZXN0IHRo
YXQgdW5mb3J0dW5hdGVseS4KPiA+IAo+IAo+IERldGxldiwKPiAKPiBKdXN0IEZZSToKPiAKPiBJ
IGRvbmUgc29tZSB0ZXN0cyBvZiBya3ZkZWMyIG9uIDYuMTIuMTEgb24gMzU4OCwgMzU2OCBhbmQg
MzU2Ngo+IAo+IEZvciBlbmFibGluZyBya3ZkZWMyIG9uIDM1NnggaToKPiAtYWRkIDM1NnggY29t
cGF0aWJsZSBpbiBya3ZkZWMyLmMKPiAtYWRkIGR0c2kgbm9kZXMgbGlrZSB0aGlzOiBodHRwczov
L2dpdGh1Yi5jb20vd2FycG1lL21pbmlteXRoMi9ibG9iL21hc3Rlci9zY3JpcHQva2VybmVsL2xp
bnV4LTYuMTIvZmlsZXMvMTA3OC1hcm02NC1kdHNpLXJvY2tjaGlwLXJrMzU2eC1hZGQtcmt2ZGVj
Mi12aWRlby1kZWNvZGVyLW5vZGVzLnBhdGNoCj4gCj4gV2l0aCB0aGlzIGkgY2FuIHNheToKPiAt
b24gcmszNTg4IGkgaGF2ZSBzb21lIGhldmMgNGsgZGVjb2RpbmcgcGVyZmVjdGx5IGJ1dCBzb21l
IG90aGVycyBhcmUgZmFpbGluZwo+IC1vbiByazM1NjYvMzU2OCBvbmx5IHN1YnNldCBvZiAzNTg4
4oCZcyBzYW1wbGVzIGlzIGRlY29kZWQgd2VsbC4gKGJ1dCBpcyB3b3JrcyB0aGVuIHdvcmtzIHBl
cmZlY3RseSBmaW5lKQo+IC13aGVuIG5vdCBmYWlsaW5nIG9uIDM1ODggc2FtcGxlIGZhaWxzIG9u
IDM1NnggLSBpcyBzZWUgZXJyb3JzIGxpa2U6Cj4gCj4gWyAgIDk1LjY2NjY2OV0gaW92YTogMHgw
MDAwMDAwMGYyZTgwMDAwIGFscmVhZHkgbWFwcGVkIHRvIDB4MDAwMDAwMDAzNzM3ODAwMCBjYW5u
b3QgcmVtYXAgdG8gcGh5czogMHgwMDAwMDAwMDJmOGMwMDAwIHByb3Q6IDB4Mwo+IFsgICA5NS43
NDUwODJdIGlvdmE6IDB4MDAwMDAwMDBmMmY0NjAwMCBhbHJlYWR5IG1hcHBlZCB0byAweDAwMDAw
MDAwMzcyYjYwMDAgY2Fubm90IHJlbWFwIHRvIHBoeXM6IDB4MDAwMDAwMDAzYTQwMzAwMCBwcm90
OiAweDMKPiBbICAgOTUuODIyMDEyXSBpb3ZhOiAweDAwMDAwMDAwZjJlZTYwMDAgYWxyZWFkeSBt
YXBwZWQgdG8gMHgwMDAwMDAwMDM3MTI2MDAwIGNhbm5vdCByZW1hcCB0byBwaHlzOiAweDAwMDAw
MDAwM2E4MDMwMDAgcHJvdDogMHgzCj4gWyAgIDk1Ljg5NjgwMl0gaW92YTogMHgwMDAwMDAwMGYy
ZWM2MDAwIGFscmVhZHkgbWFwcGVkIHRvIDB4MDAwMDAwMDAyOWZlNjAwMCBjYW5ub3QgcmVtYXAg
dG8gcGh5czogMHgwMDAwMDAwMDNhNDAzMDAwIHByb3Q6IDB4Mwo+ICB0dXJuaW5nLW9mZiBpb21t
dSBtYWtlcyBhYm92ZSBlcnJvcnMgZGlzYXBwZWFyIC0gYnV0IHNhbXBsZSBzdGlsbCBmYWlscy4K
PiAKPiBJZiBhbnlib2R5IGhpbnRzIG1lIGZvciB3YXkvdG9vbCB0byBhbmFseXNlIG9mIHBsYXlp
bmcvZmFpbGluZyBzYW1wbGVzIHRvIGNhdGNoOiB3aGF0IGVuY29kaW5nIHNwZWNpZmljcyBtYWtl
cyBnaXZlbiBzYW1wbGUgZmFpbGluZyB0byBkZWNvZGUgIG9uIHJrdmRlYzIgLSBpJ2xsIGJlIG1v
cmUgdGhhdCBoYXBweSB0byBwcm92aWRlIGRldGFpbHPigKYgICAgIAo+IChkb2luZyBzaW1wbGUg
bWVkaWFpbmZvIDxmaWxlPiBzaG93cyBubyBkaWZmZXJlbmNlcyBmb3IgbWXigKYpCgpOb3Qgc3Vy
ZSB3aGVyZSBpdCBpcyBzYXZlZCwgYnV0IHdlIGhhdmUgYSBtYWlubGluZSBrZXJuZWwgd2l0aCB0
aGUgTVBQIHNlcnZpY2VzCmRyaXZlciB1cC1sZXZlbGxlZCAoeW91IGNhbiBwcm9iYWJseSBkbyB0
aGF0IHlvdXJzZWxmLCBpdHMgbm90IHRoYXQgaGFyZCkuIFlvdQpoYXZlIHRvIGhhdmUgdGhlIE1Q
UCBsaWJyYXJ5IGFuZCBwcm9iYWJseSB0aGUgZ3N0cmVhbWVyIHBsdWdpbnMgZnJvbSByb2NrY2hp
cAppbnN0YWxsZWQuCgpUaGUgZ2VuZXJhbCBhcHByb2FjaCBpcyB0byBkdW1wIHRoZSByZWdpc3Rl
ciBwcmlvciB0byBldmVyeSBjb2RlYyB0cmlnZ2VyLCBhbmQKY29tcGFyZS4gQXBwYXJ0IGZyb20g
bWVtb3J5IGFkZHJlc3NlcywgcHJldHR5IG11Y2ggYWxsIHJlZ2lzdGVyIHNob3VsZCBiZQppZGVu
dGljYWwgZm9yIGRlY29kZXJzLiBJZiB5b3UgaGFwcGVuIHRvIGhhdmUgYSBzdHJlYW0gdGhhdCBm
YWlscyBvbiBNUFAsIHNpbXBseQpyZXBvcnQgdGhhdCB0byB0aGVtLCB0aGV5IGFyZSBnZW5lcmFs
bHkgZmFzdCBvbiBmaXhpbmcgdGhlaXIgb3duIHN0dWZmLiBBbmQgd2UKY2FuIHRoZW4gdXNlZCB0
aGF0IGtub3dsZWRnZSB0byBmaXggb3VyIGltcGxlbWVudGF0aW9uLgoKQXMgZm9yIG1vc3QgY29k
ZWMsIHdoZW4gd29ya2luZyB3aXRoIGxhcmdlciBncm91cCBvZiBkZXZlbG9wcGVycywgaXRzIGJl
dHRlciB0bwpzdGFydCB3aXRoIGdldHRpbmcgdGhlIElUVSBjb25mb3JtYW5jZSB0ZXN0cyBwYXNz
aW5nLiBPbmNlIHdlIHJlYWNoIGFuIGV4Y2VsbGFudApzY29yZSB0aGVuIHdlIGNhbiBzdGFydCBs
b29raW5nIGF0IHNwZWNpZmljIHN0cmVhbXMuIFRoZSBiZW5lZml0IGlzIHRoYXQgSVRVCmNvbmZv
cm1hbmNlIGNhbiBiZSBydW4gd2l0aCBmbHVzdGVyIHdoaWNoIHJlbW92ZXMgYSBsb3Qgb2YgcG9z
c2libGUgaHVtYW4KZXJyb3JzLgoKTmljb2xhcwoKcC5zLiBKb25hcyBLYXJsbWFuIGhhcyBiZWVu
IHdvcmtpbmcgb24gSU9NTVUgZml4ZXMgYW5kIHJlc2V0cyB0aGF0IGhlbHBzIHJlY292ZXIKZnJv
bSBmYXVsdHMgdGhhdCBhcmUgc3RpY2t5IGluIHRoZSBkZWRpY2F0ZWQgSU9NTVVzIGRlc3BpdGUg
dGhlIEhXIHNlbGYgcmVzZXQKbWVjaGFuaXNtLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
