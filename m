Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A634C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 09:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zNvRnl+GqXO5NrNfnLfZXZ+N9JyxZv2Obp+WFuPpmM=; b=oivoGEjRl0i9Qp
	es5FfaMNcuUTZJMOiujG4BDnnbERnKAW6kmDvqgi0HQLxaZEs49g1+gbIFxMAtKkjx2sQBsHilnIk
	OvlhPGIsm+0xWZGuqSbrEsoEcKe2Gi1R0lNLkCr4jeUdBDH7GDRe8FstjjIOKdukz7caePTIhsJXf
	g7fIi10sV45RKxJh6iI/4pfH0QpofjmsuO6r4cWCfsWqse4oMLk2fIemn7kz9TtfBmWOP6MmLCd9m
	Pgq9N+ji4UOSCetcU79/rh6RgR4PsvFQcrbEPycctGHn0shhx1hhstXFnNr7kUmsIQAhxM6D5GMOi
	ukapBs0AqozeEN8VOuXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIcb-0000000GuqR-3nzV;
	Thu, 16 Jul 2026 09:43:13 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIcZ-0000000Guoz-141s
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 09:43:13 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2cab973140bso77494595ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 02:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784194990; x=1784799790; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=H3kc+neWyehlIpkf7WYpZ3XjGhqaMPOicmWK3YOMAk0=;
        b=mYos07SOXlkof6cxHm1FHg1rAN95zzmLU0VpRhS7gTQeC7p9IaZKV6gnFHu9nh8CNR
         nj3Qc18TKfSLJYYyyd+cdLkuSUwHRxVXcKBL4FPjZnep3K+hmj1tfdwEjamHsJlhP0yW
         wDkk9iMjRm0UTwMbCBMwlYUG8HZ3XJ1s6HQ976P4jM35mroBwumVy3gNjoxYmgKIwQkE
         xhgGU7gFAZV8YXQCA3xHEEy4/ae3Fq/+8UbjKQoUkkagcBdOY9tHTk8Gp6EpmP0Qu8Mn
         RPeue/lrlK1D88GhQ/MJqNGKniwAv108lt44OdxQSULftatfDN9uPnRQjW/jTIhyWdLt
         yUiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784194990; x=1784799790;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=H3kc+neWyehlIpkf7WYpZ3XjGhqaMPOicmWK3YOMAk0=;
        b=BoH4Cfl64h4rb7zPB412evtvHDNwgqUJ4kLuK2PnSF8AbTmVkj8u5b+uOn0tLmRBj+
         xNaLpzqiFMajCsFrtDsF/9tpxcmKNeus74tUD/H2DTq0YWsZWZx6R0GMlbHN7B8oQxDE
         RDpJ19tdvCX4wfWj5sz/cQ/CMtlll/MVAX9cNs0sGY98hd0h84lCeu8gQoo97KrnBSJu
         rhzWzIeaqRxXQzUCw9L9MN7jP5t8LwCugGQOrPCzxPqoRbe1Bc3uOgIli7RI5HEOQV2k
         hNAqfiJn6CRj8pZUs0CQuQOMSn6umeAqa/xwmTszv2xhrHkArEP/SPyCqXKUPHllHdSe
         +VmA==
X-Forwarded-Encrypted: i=1; AHgh+RqJPrU7gzlHFVHCsGywYSgKfG261RfeBA470/B46W8R8wys3QYG54d732Xn8Onk2wJObrtLScCPi/zypeQVWA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGSHgmHmy7RFWoaPFbCwjxv2mMgpikFv/k0QOryd6JIG8jKIe3
	OS3p3ikXCaCtx6JgHIDswHfO8CrCDN3wXNEv1VyO2M/m8edwWXdJsoKtAnN5Q/Yf
X-Gm-Gg: AfdE7ckv53tiyA78UBCRW8xpZp9pHpvvdKS7PvR3v686mfn6h4OkfhF5rxIYggjrlvH
	dJan8dTqlUQcM+l4vMCQsPiS2fcy4wb8CO2XWZVwohj7Nu+8OmpfJWWmpPJvt8047aMb/snC85a
	yea4LwuDovyaIZa6WuKuCckb0OcV0G+uO9gC70IFiUXoCs6Oe2KecLURvtAFMh5acqof0kIVy5S
	KD2limPTczUGZrZ+rHihrQA2DDMGaZtOLhUgqvkQK0+LDHUBC3H/TyCs/OnLgMb5xhdcntq0c6g
	Bd/wznwD2xr5UqLgI1k2rz8Bt4eycoMq+pOrgLrDyuTcPqJP0E6jsF+tVnHnxd2QXImQVhvUz5S
	o+up8pNdpKVR8kaiHGRgF+eO/Op97136rI8WNvp6wI+9tWrE3sSSoM2ZjUc/JEttcMptR41Uepa
	Yk7rg17lKA9BODxP6qmVp9YNc1kvfWnkE=
X-Received: by 2002:a17:903:1b48:b0:2cc:777f:d67d with SMTP id d9443c01a7336-2cf03cef842mr61110295ad.30.1784194989404;
        Thu, 16 Jul 2026 02:43:09 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cf1055b1fcsm17449255ad.54.2026.07.16.02.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 02:43:08 -0700 (PDT)
Date: Thu, 16 Jul 2026 15:13:03 +0530
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: rockchip-efuse: add
 rockchip,efuse-write-enable property
Message-ID: <6gn64vxmeksjtrp7q7y5jwniszeqrmdurbp4l466tli63aixnz@i6nlxwdjhewh>
References: <20260715110107.409204-1-hrushirajg23@gmail.com>
 <20260715110107.409204-2-hrushirajg23@gmail.com>
 <2363663.KTMopqUuYO@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2363663.KTMopqUuYO@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_024311_302389_942B9619 
X-CRM114-Status: GOOD (  26.39  )
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

T24gV2VkLCBKdWwgMTUsIDIwMjYgYXQgMDE6NDI6NTZQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gTWl0dHdvY2gsIDE1LiBKdWxpIDIwMjYsIDEzOjAxOjA2IE1pdHRlbGV1cm9w
w6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSHJ1c2hpcmFqIEdhbmRoaToKPiA+IEFkZCBhbiBv
cHRpb25hbCBib29sZWFuIHByb3BlcnR5IHRvIGV4cGxpY2l0bHkgb3B0IGluIHRvIHdyaXRlIChP
VFAKPiA+IHByb2dyYW1taW5nKSBzdXBwb3J0LiBlRnVzZSBiaXRzIGFyZSBvbmUtdGltZS1wcm9n
cmFtbWFibGUgYW5kCj4gPiBwZXJtYW5lbnRseSBzZXQgb25jZSB3cml0dGVuOyB3cml0ZSBzdXBw
b3J0IG11c3QgdGhlcmVmb3JlIG5vdCBiZQo+ID4gZW5hYmxlZCBieSBkZWZhdWx0IG9uIGFyYml0
cmFyeSBib2FyZHMuCj4gPiAKPiA+IEJvYXJkcyB0aGF0IGludGVuZCB0byB1c2Ugc29mdHdhcmUt
aW5pdGlhdGVkIGVGdXNlIHByb2dyYW1taW5nIChlLmcuCj4gPiBmYWN0b3J5IGtleSBwcm92aXNp
b25pbmcpIG11c3QgZGVjbGFyZSB0aGlzIHByb3BlcnR5IGFuZCBtdXN0IGVuc3VyZQo+ID4gdGhl
IHJlcXVpcmVkIFZRUFMgcHJvZ3JhbW1pbmcgc3VwcGx5ICgxLjhWIHRvIDEuOThWIHBlciBSSzMz
OTkgVFJNKQo+ID4gaXMgcHJlc2VudCBhbmQgY29ycmVjdGx5IHNlcXVlbmNlZCBkdXJpbmcgd3Jp
dGVzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBIcnVzaGlyYWogR2FuZGhpIDxocnVzaGlyYWpn
MjNAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbnZtZW0v
cm9ja2NoaXAtZWZ1c2UueWFtbCAgICAgfCAxMSArKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbnZtZW0vcm9ja2NoaXAtZWZ1c2UueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9udm1lbS9yb2NrY2hpcC1lZnVzZS55YW1sCj4gPiBp
bmRleCBiODBmZDhkMWFlNWIuLjhhNzE5NTI0NWM4NCAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9udm1lbS9yb2NrY2hpcC1lZnVzZS55YW1sCj4gPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnZtZW0vcm9ja2NoaXAtZWZ1
c2UueWFtbAo+ID4gQEAgLTQ2LDYgKzQ2LDE3IEBAIHByb3BlcnRpZXM6Cj4gPiAgICAgICAgdGhp
cyBwcm9wZXJ0eSBpcyBkZWZpbmVkLgo+ID4gICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1s
Iy9kZWZpbml0aW9ucy91aW50MzIKPiA+ICAKPiA+ICsgIHJvY2tjaGlwLGVmdXNlLXdyaXRlLWVu
YWJsZToKPiA+ICsgICAgdHlwZTogYm9vbGVhbgo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsg
ICAgICBFbmFibGUgd3JpdGUgKHByb2dyYW1taW5nKSBzdXBwb3J0IGZvciB0aGlzIGVGdXNlIGJs
b2NrLiBlRnVzZSBiaXRzCj4gPiArICAgICAgYXJlIG9uZS10aW1lLXByb2dyYW1tYWJsZTsgc2V0
dGluZyBhIGJpdCBpcyBwZXJtYW5lbnQgYW5kIGNhbm5vdCBiZQo+ID4gKyAgICAgIHVuZG9uZS4g
VGhpcyBwcm9wZXJ0eSBtdXN0IG9ubHkgYmUgc2V0IG9uIGJvYXJkcyB3aGVyZSBpcnJldmVyc2li
bGUKPiA+ICsgICAgICBPVFAgcHJvZ3JhbW1pbmcgZnJvbSBzb2Z0d2FyZSBpcyBhbiBpbnRlbmRl
ZCB1c2UgY2FzZSAoZS5nLiBmYWN0b3J5Cj4gPiArICAgICAgcHJvdmlzaW9uaW5nKSwgYW5kIHdo
ZXJlIHRoZSByZXF1aXJlZCBWUVBTIHByb2dyYW1taW5nIHZvbHRhZ2UKPiA+ICsgICAgICAoMS44
ViB0byAxLjk4ViBwZXIgUkszMzk5IFRSTSkgaXMgZ3VhcmFudGVlZCB0byBiZSBwcmVzZW50IGFu
ZAo+ID4gKyAgICAgIGNvcnJlY3RseSBzZXF1ZW5jZWQgYnkgdGhlIGJvYXJkJ3MgcG93ZXIgZGVz
aWduIGR1cmluZyB3cml0ZXMuCj4gCj4gRGV2aWNldHJlZSBpcyBub3QgYSBjb25maWd1cmF0aW9u
IHNwYWNlLCBhbmQgSSB0aGluayB0aGlzIHJlYWxseSBkb2VzIGNvdW50Cj4gYXMgY29uZmlndXJh
dGlvbiAtIGFzIHRoZSBlZnVzZSB3aWxsIGJlIHdyaXRlYWJsZSBvbiBldmVyeSBib2FyZC4KPiAK
PiBZb3UgbWVudGlvbiB0aGUgVlFQUyB2b2x0YWdlLiBJZiBJJ20gcmVhZGluZyBzY2hlbWF0aWNz
IGFuZCBhcHBsaWNhdGlvbgo+IG5vdGVzIGNvcnJlY3RseSwgdGhpcyBpcyBhIHNlcGFyYXRlIGlu
cHV0IHVzZWQgc29sZWx5IGZvciB3cml0aW5nIGVmdXNlcwo+IGFuZCBfbmVlZHNfIHRvIGJlIDBW
IChvZmY/KSBkdXJpbmcgcmVhZHMuCj4gCj4gWW91IG1lbnRpb24gIm5lZWRzIHRvIGJlIHByZXNl
bnQgYW5kIGNvcnJlY3RseSBzZXF1ZW5jZWQiLCB3aG8gaXMgc3VwcG9zZWQKPiB0byB0dXJuIG9u
L29mZiB0aGF0IHJlZ3VsYXRvcj8KPiAKPiBTbyB5b3UgdmVyeSBsaWtlbHkgbmVlZCB0byBkZWZp
bmUgdGhhdCByZWd1bGF0b3IgYW5kIGNhbiBldmVuIHVzZSBpdHMKPiBhYnNlbmNlIGFzIGFuIGlu
ZGljYXRvciB0byBkaXNhYmxlIHdyaXRlcy4KPiAKPiAKPiBIZWlrbwo+IAo+IApZb3UncmUgcmln
aHQsIHRoZSBib29sZWFuIHByb3BlcnR5IHdhcyB0aGUgd3JvbmcgYXBwcm9hY2ggLSBhZ3JlZWQK
dGhhdCBpdCdzIHBvbGljeSwgbm90IGhhcmR3YXJlIGRlc2NyaXB0aW9uLiBJJ2xsIGRyb3AgaXQu
CgpJIHdhcyBwbGFubmluZyB0byBtb2RlbCBWUVBTIGFzIGEgcHJvcGVyIG9wdGlvbmFsIHN1cHBs
eSBpbiB0aGUKYmluZGluZzoKCiAgdnFwcy1zdXBwbHk6CiAgICBkZXNjcmlwdGlvbjoKICAgICAg
U3VwcGx5IGZvciB0aGUgZUZ1c2UgcHJvZ3JhbW1pbmcgdm9sdGFnZSAoVlFQUyksIHJlcXVpcmVk
IG9ubHkKICAgICAgb24gYm9hcmRzIHdoZXJlIHNvZnR3YXJlLWluaXRpYXRlZCBPVFAgcHJvZ3Jh
bW1pbmcgaXMgaW50ZW5kZWQuCiAgICAgIFBlciBSSzMzOTkgVFJNIHNlY3Rpb24gMjEuNi4xLCB0
YWJsZSAyMS0zLCBWUVBTIG11c3QgYmUgMFYKICAgICAgZHVyaW5nIHJlYWRzIGFuZCAxLjhWfjEu
OThWIGR1cmluZyBBX1BHTSBtb2RlIHdyaXRlcy4gSWYgdGhpcwogICAgICBzdXBwbHkgaXMgYWJz
ZW50LCB0aGUgZHJpdmVyIGxlYXZlcyB0aGUgbnZtZW0gZGV2aWNlIHJlYWQtb25seS4KCmFuZCBp
biB0aGUgZHJpdmVyLCBnYXRlIHJlZ193cml0ZSBvbiB3aGV0aGVyCmRldm1fcmVndWxhdG9yX2dl
dF9vcHRpb25hbCgpIGFjdHVhbGx5IGZpbmRzIGl0OgoKICBlZnVzZS0+dnFwcyA9IGRldm1fcmVn
dWxhdG9yX2dldF9vcHRpb25hbChkZXYsICJ2cXBzIik7CiAgaWYgKCFJU19FUlIoZWZ1c2UtPnZx
cHMpKQogICAgICBlY29uZmlnLnJlZ193cml0ZSA9IHNvY19kYXRhLT5yZWdfd3JpdGU7CgpUaGUg
ZHJpdmVyIHdvdWxkIG93biBzZXF1ZW5jaW5nIGVudGlyZWx5IGluc2lkZQpyb2NrY2hpcF9yazMz
OTlfZWZ1c2Vfd3JpdGUoKTogcmVndWxhdG9yX2VuYWJsZSgpIGltbWVkaWF0ZWx5IGJlZm9yZQp0
aGUgQV9QR00gU1RST0JFIGxvb3AsIHJlZ3VsYXRvcl9kaXNhYmxlKCkgcmlnaHQgYWZ0ZXIgLSBt
aXJyb3JpbmcKaG93IGVmdXNlLT5jbGsgaXMgYWxyZWFkeSBoYW5kbGVkIGFyb3VuZCB0aGUgc2Ft
ZSB3aW5kb3cuIHJlZ19yZWFkCm5ldmVyIHRvdWNoZXMgdGhlIHJlZ3VsYXRvciwgc28gVlFQUyBz
dGF5cyBhdCAwViBmb3IgdGhlIGVudGlyZSByZWFkCnBhdGguCgpEb2VzIHRoaXMgYXBwcm9hY2gg
bG9vayByZWFzb25hYmxlIHRvIHlvdSwgb3IgZG8geW91IHNlZSBhIHByb2JsZW0Kd2l0aCBpdD8K
CkhydXNoaXJhagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
