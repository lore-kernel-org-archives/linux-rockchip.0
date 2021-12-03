Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5B3BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Dec 2021 03:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k088qBf2eA2bA2LTYl4K/xI9axCqWmfdoLBjL3n4z+M=; b=Wa3Rdz/f+VcmMu
	RtbgOzyiaIA8cweA+zBJYc/nQ9G4M3MGM85BOndkbVV2a1JQlo5OCRbjYqIm2zljYOBN9ENfNM0Zs
	w1QJmHTmQp667OTXkqbJexKE0DykssYP+5JWLzrdI742wFwaXS+ofKXYUWyJIrVuWbk4fDuomQil2
	YEsweraBwpSNksCt+je9elHj+8GqQCbwkyypKOloUQcWrODW63JbOlw0vl08NJVjsaA2j5UuUM3NC
	zmmijFG8HLhydgjV9Fand3ukZej2612xTR10EjPNDSlWq2NDN0gkg5wOoibd5dVhzQ3Q7YILmkiCQ
	jWjy5xFq3RhckQRUpL1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mszhl-00EE3O-9t; Fri, 03 Dec 2021 03:57:49 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mszhX-00EE0e-DW
 for linux-rockchip@lists.infradead.org; Fri, 03 Dec 2021 03:57:37 +0000
Received: by mail-qk1-x736.google.com with SMTP id d2so2144872qki.12
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Dec 2021 19:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=b1g6znamP/o+sXqh0MmEbs0eNjMFa6xH7xXeAUhEo3E=;
 b=MdinDDH4OFVcc5jcWF/c10RduGORbHRokRkClxhNTV2BBCOMdtiovEB/GuNCnjFN5Z
 I/qQWcft9TT/Aa730JCaAkrExTPFykLEIz/CJeV3OUPX+K3Dg+2IGiDj6ceEoatg/8UL
 PZvbzXFFAzqzcUbMm5qTz/YFExiGsMhwlK+SZgraDw90c8T9Ex+GbAHr1696ft7HTsdS
 uF/uPJvIefaYcIcxxhOqqtTj31Lnx4smqmhDNbfI4jJ6SS7C8X38rr/39n8YX2Z4Gfg1
 tSrF3ts6yil9+qySTA/ar+SY4l781/EmoGYJczUeUyVB2Ry8L3dJ0V2w6Ugu/83oZrtO
 pM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=b1g6znamP/o+sXqh0MmEbs0eNjMFa6xH7xXeAUhEo3E=;
 b=0vomzHt58C5M3ZYz7AoG/2DzbY9WqBylkKWTUIhdCxII366pMD6XbT6nfy47rUqNxA
 KFuHnACIgsNnGulY4qwSMtQnBxCKuanL5RZZm5tXdTeEAnVnzyc8WI5r97T2PgqGiude
 7ZpTzcjLb4n8cia0Y0fdNpWJ4XoqfgO9LiNVhMVTQ4SROCEfGAsqv2perckSHQHqcp0i
 vUDzMiXEsmf5hZd1R5kYjq0NEHOID7Uydf4XqxhyvqFPJabb+awOQy8Ae/pPAilnMgFT
 naUaJC5/Jqzx2r/3WDAg6S0EsaATYWMHJqL35BbkhHrCgHvEYCX6MBtNZv2xGEmwzR7I
 9PEQ==
X-Gm-Message-State: AOAM5303ePrNnMcALm5IY44mYFdb/Arrgv8V7/uJpRRCLFT/0Te5zZHm
 P5X4jXmiGTIbnvjaiP0Swp9nfA==
X-Google-Smtp-Source: ABdhPJzutcbpudZeo05rbBZZri45oX+slCqUqFIbN1dJ2eUHHNM6A31VnwVHxXSkG/j9FF7+yyb6UQ==
X-Received: by 2002:a05:620a:2a05:: with SMTP id
 o5mr15885891qkp.527.1638503853879; 
 Thu, 02 Dec 2021 19:57:33 -0800 (PST)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id e17sm1473192qtw.18.2021.12.02.19.57.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 19:57:32 -0800 (PST)
Message-ID: <b30924749421fe30df8a559e9a9ecd21b8d257e6.camel@ndufresne.ca>
Subject: Re: [RFC V3 0/2] arm64: imx8mm: Enable Hantro VPUs
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, tharvey@gateworks.com, 
 aford@beaconembedded.com, hverkuil-cisco@xs4all.nl, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,  Mauro Carvalho Chehab
 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev
Date: Thu, 02 Dec 2021 22:57:30 -0500
In-Reply-To: <20211202041627.291625-1-aford173@gmail.com>
References: <20211202041627.291625-1-aford173@gmail.com>
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_195735_558304_AA657692 
X-CRM114-Status: GOOD (  20.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

TGUgbWVyY3JlZGkgMDEgZMOpY2VtYnJlIDIwMjEgw6AgMjI6MTYgLTA2MDAsIEFkYW0gRm9yZCBh
IMOpY3JpdMKgOgo+IFRoZSBpLk1YOE0gaGFzIHR3byBIYW50cm8gdmlkZW8gZGVjb2RlcnMsIGNh
bGxlZCBHMSBhbmQgRzIgd2hpY2ggYXBwZWFyCj4gdG8gYmUgcmVsYXRlZCB0byB0aGUgdmlkZW8g
ZGVjb2RlcnMgdXNlZCBvbiB0aGUgaS5NWDhNUSwgYnV0IGJlY2F1c2Ugb2YKPiBob3cgdGhlIE1p
bmkgaGFuZGxlcyB0aGUgcG93ZXIgZG9tYWlucywgdGhlIFZQVSBkcml2ZXIgZG9lcyBub3QgbmVl
ZCB0bwo+IGhhbmRsZSBhbGwgdGhlIGZ1bmN0aW9ucywgc28gYSBuZXcgY29tcGF0aWJsZSBmbGFn
IGlzIHJlcXVpcmVkLgo+IAo+IFYzIGlzIHJlYmFzZWQgZnJvbSBnaXQ6Ly9saW51eHR2Lm9yZy9o
dmVya3VpbC9tZWRpYV90cmVlLmdpdCBmb3ItdjUuMTdjCj4gVGhpcyBicmFuY2ggaGFzIHN1cHBv
cnQgZm9yIFZQOS4KPiAKPiBJIHNldCBjbWE9NTEyTSwgYnV0IHRoaXMgbWF5IG5vdCBiZSBlbm91
Z2ggbWVtb3J5IGFzIHNvbWUgdGVzdHMgYXBwZWFyZCB0byBydW4gb3V0IG9mIG1lbW9yeQoKQ29u
c2lkZXIgcGFzc2luZyAtajEgdG8gZmx1c3RlciBhbmQgdXNpbmcgcGF0aWVuY2UsIHRoaXMgd2ls
bCBzcGFyZSBzb21lIG1lbW9yeS4KWW91IGNhbiBhbHNvIGluY3JlYXNlIHRoZSB0aW1lb3V0IChs
aWtlIC10IDYwKSwgdGhhdCBvZnRlbiBoZWxwcyB3aGVuIENNQSBpcwppbnZvbHZlZCAoZHVlIHRv
IHNvZnR3YXJlIGNvbnZlcnNpb24gaGFwcGVuaW5nKS4gVGhhbmtzIGZvciB0aGUgc2VyaW91cyB0
ZXN0aW5nLAp0aGlzIGlzIHJlYWxseSBhcHByZWNpYXRlZCB0aGF0IHlvdXIgc3VibWlzc2lvbiBy
ZWFsbHkgcmVmbGVjdHMgdGhlIHN0YXRlLgoKPiAKPiBWMyBvZiB0aGlzIHNlcmllcyBoYXMgc2V2
ZXJhbCBjaGFuZ2VzOgo+IAo+IFVwZGF0ZSBpbXg4bV92cHVfaHcgdG8gYWRkIG1pc3NpbmcgJ3Jl
ZycgcmVmZXJlbmNlIG5hbWVzIGZvciBHMiBhbmQgaW5jbHVkZSByZWZlcmVuY2VzIHRvIFZQOQo+
IFVwZGF0ZSBkZXZpY2UgdHJlZSB0byByZW1vdmUgSU1YOE1RX1ZQVV9SRVNFVCwgcmVtb3ZlIHNv
bWUgZHVwbGljYXRlIHZwdSBjbG9jayBwYXJlbnRpbmcKPiBGaXggbWlzc2luZyByZWctbmFtZXMg
ZnJvbSB2cHVfZzIgbm9kZS4KPiBBcHBseSBwYXRjaCBbMV0gdG8gbWFuYWdlIHRoZSBwb3dlciBk
b21haW5zIHBvd2VyaW5nIGRvd24uCj4gWzFdIC0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtYXJtLWtlcm5lbC8yMDIxMTAxNjIxMDU0Ny4xNzE3MTctMS1tYXJleEBkZW54LmRlL3QvCj4g
Cj4gV2l0aCB0aGUgYWJvdmUsIHRoZSBmb2xsb3dpbmcgRmx1c3RlciBzY29yZXMgYXJlIHByb2R1
Y2VkOgo+IAo+IEcxOgo+IC4vZmx1c3Rlci5weSBydW4gLWRHU3RyZWFtZXItSC4yNjQtVjRMMlNM
LUdzdDEuMAo+IFJhbiA5MC8xMzUgdGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAgICAgICAgICAgaW4g
NzQuNDA2IHNlY3MKClRoaXMgbWF0Y2hlcyBteSByZXN1bHRzIG9uIGlteDhtcS4KCj4gCj4gLi9m
bHVzdGVyLnB5IHJ1biAtZCBHU3RyZWFtZXItVlA4LVY0TDJTTC1Hc3QxLjAKPiBSYW4gNTUvNjEg
dGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAgICAgICAgICAgaW4gOC4wODAgc2VjcwoKSWRlbS4KCj4g
Cj4gRzI6Cj4gLi9mbHVzdGVyLnB5IHJ1biAtZCBHU3RyZWFtZXItVlA5LVY0TDJTTC1Hc3QxLjAK
PiBSYW4gMTI3LzMwMyB0ZXN0cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiAyMDMuODcz
IHNlY3MKCkJlbmphbWluIHJlcG9ydHMgMTI5LCBpdCBjb3VsZCBiZSBmbHV4LiBUaGlzIGlzIHN0
aWxsIGEgYml0IGVhcmx5LCBoZW5jZSB0aGUgbG93CnNjb3JlLiBCdXQgbW9zdCBzdHJlYW1zIGRv
IHBsYXliYWNrIG5vcm1hbGx5LgoKPiAKPiBGbHVzdGVyIGFuZCBHLVN0cmVhbWVyIHdlcmUgYm90
aCBidWlsdCBmcm9tIHRoZWlyIHJlc3BlY3RpdmUgZ2l0IHJlcG9zIHVzaW5nIHRoZWlyIHJlc3Bl
Y3RpdmUgbWFzdGVyL21haW4gYnJhbmNoZXMuCgpUaGF0IGdhdmUgbWUgYW4gaWRlYSwgSSdsbCB0
cnkgYW5kIHByaW50IHRoZSBHU3RyZWFtZXIgdmVyc2lvbi9jb21taXQgaW5zaWRlCmZsdXN0ZXIg
YWxvbmcgd2l0aCBmbHVzdGVyIG93biBjb21taXQgKGlkZWFsbHkgaW4gdGhlIHNob3J0IHN1bW1h
cnkpLgoKPiAKPiAKPiBBZGFtIEZvcmQgKDIpOgo+ICAgbWVkaWE6IGhhbnRybzogQWRkIHN1cHBv
cnQgZm9yIGkuTVg4TSBNaW5pCj4gICBhcm02NDogZHRzOiBpbXg4bW06IEVuYWJsZSBWUFUtRzEg
YW5kIFZQVS1HMgo+IAo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0uZHRz
aSAgIHwgNDEgKysrKysrKysrKysrKwo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19kcnYuYyAgIHwgIDIgKwo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b19ody5oICAgIHwgIDIgKwo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3Zw
dV9ody5jIHwgNjUgKysrKysrKysrKysrKysrKysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTEw
IGluc2VydGlvbnMoKykKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
