Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF51FC54F4C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 13:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dTp6S0ENv5WE7Jh2gmeMLxhek0iwfsk8vwRW5n/AUA=; b=p3tdVhESftkvAv
	kGHt8grOYSNVnOKx+aFmo5Mebwh618oBF7rC1iI+lQ2Rj4TGks1yiiJ/6gb2mYxZO68gFAWCrVQmq
	d+Y4kcjuMcU7l+2EJ5QuKlJOdTU+CJucfSkSXOKlnnvy5/fOYx5/R8jG9i8QNNyP7/liDjf3+UMfN
	3xQV0Qy8p5Y9gc4HcVFBRQVCTJDQ8pPBtuJDJWW5HcGu88Ryo1tevSEja7PB2bRtVUDfUXP0zszr6
	BYDza7y4rqF72LTTt4NEL6r/aE2Gk/JUuXqNESyKTxIh1RsZym3YjLtOY8/BvjiHXbQnFgSO/zg6d
	UwL2rHvThWFW64rculaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woiJZ-00000005PeB-2SAG;
	Tue, 28 Jul 2026 13:57:49 +0000
Received: from mail-yx1-xb12a.google.com ([2607:f8b0:4864:20::b12a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woiJV-00000005PdJ-3IRg
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 13:57:47 +0000
Received: by mail-yx1-xb12a.google.com with SMTP id 956f58d0204a3-66843304cbaso5876229d50.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 06:57:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785247064; cv=none;
        d=google.com; s=arc-20260327;
        b=Ni1UXp7ik9hkH7eDNRc4ineDaBx8i5RCuYCZO7/6oxsk75GcGa7sQiWyYqkaPfZcKq
         mwbRbc4q0ShbHbuJvVLHXn0zCDZwctgYECEGPnUz7w9eLtZhGOlBD98ZIxoglJ9ELf+K
         7bMKcIwWPABlVEk9PCycvD0+t/cnTGRxV0ZgxIRQilL6f/1BUd9tBSYPXjWV9UIGbt8y
         abQ2AnQ3MeYJMq++e7avAeo8+Cetlu5/sIt4JWY4hnZxtxghCldb/w+9ldbtl3EnnGW2
         GLRiE6ps0UOY7UeNvs7UUlC+tOYC/bLNCWZrBUxOY1pdm1TF/xBH3DpgffV1nSxyunU8
         Y9eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9/O6ksK3AB9LZHWSiL+7EQIVBSyOjmgRfjqILkXUwuQ=;
        fh=8EpgDGfYZ0QHdo8SjKXtATsS2Rbuyp2ZE86j0urEXvU=;
        b=F5tcSrcmDJ4ZKkI+9DfLiUHTu/hfJQuEVo1lsSD2Vk3EeKwkfctaByzBo/KWZht6zw
         DvlIBHIT9/OWnNsY145hACzYia+GJZLadV+qnttJfbnbtSsKoPpHIgTH5PqBh3IqZm6C
         yyNa38Jy7A3n4jbVC4J/uPhH6zPriglaXbhCf+t+Pw32U/ny3JxrW/XRTMmCt5BeeQry
         7/zwygem4rNaqX6bnToSGuJyjl9bQFKs/x2fIooDmcZhRaWJcU5gg2050T3hnBAlsDWV
         7EUTibKPPfafhXti8+1IfR39m2CTjguVNFcrq+sgWqlRD8Mewi76LnzQToby72lDs9qZ
         Knsg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785247064; x=1785851864; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9/O6ksK3AB9LZHWSiL+7EQIVBSyOjmgRfjqILkXUwuQ=;
        b=KUZWjV9A0Ez17dy55dXQyxJ9fDxP2YLUOU9Et02iMAYn9DrVoC3TUz4yZRK++wKqYh
         4e6gQvZesOoESNlN48KuTf/pWz1sS/q5G1jTrqJKkMgFOHbLAWFPCrPcbUV8THY6U0VH
         yWuw61n/dop6jadjp3npxetRDLp030LBzdoy+QMQFUQAWzxw7sHhg7NYCl9futKpwV/l
         Ue8XYkNoV4r9FEI62GD+JBVAbYHPFJuLbweMyI2g/wEArswvB/V7eHpy2mjuMtnkAJ53
         X2Z0OyJCLCLlxisv93LLbWu5pglqJpnWDfoOyhAF5Bzt+GCulzQbic3/NoaRFiWT9Gih
         M+Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785247064; x=1785851864;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9/O6ksK3AB9LZHWSiL+7EQIVBSyOjmgRfjqILkXUwuQ=;
        b=HCYqhjhuqmeZxpYPEYS7FVOZ+l8pzikK1dx6+46A1RSyJbvp3owo0XPDXctMFNo9tH
         FBpp5q4B1Cf97qdbArW5rqzsXiIIMe7vSq/8ZOaKeFroIaHbaKhCVcD3lpBMGt0Ig7HE
         Oka7jgZDt7B1Rp0IHajPLY5Qs4rVWrBhEIBoa2Ky5nBWYtRWT45QVTnqNJHZ52M93zLd
         kp578U3x9sgZK1kVYCWsC82GjewVGzl0Fcn/vjLiGRiFesd1tGGTDIhL9gQ8hAamV2sd
         VcPVoepQe2midn06zY6AkRwY/5tBXBMCwts8AiOdkjVsDUC+QqukZ5d4Ip3v25M3nlqi
         J+TQ==
X-Forwarded-Encrypted: i=1; AHgh+RpdYn0pd2ns263tgfuoS7VVah37lIh1jhaaLE042el1uhGaZ/evq5gNOd6hdj/RCINPApdiCnLsfRSjGxtP5g==@lists.infradead.org
X-Gm-Message-State: AOJu0YykEM2wsF1QNsIy4uXGd+0HgDP9jbaLu9jN+s/KsZNOeqzaIihY
	8Q0VwDeBYdT9FQ6bS5r94OFAXdyoH4xo47+WUWn75HzOERo4Q3/wSnyXNAYPko8sflNkrQrMfM7
	YBI3agurbw1578e6924s0mYV5RIJUnQA=
X-Gm-Gg: AR+sD1138RxAuqxlv0ktZ/DxrKHPe1H52knBTs4U76AK/zYsONDSpc9rf/MgPhy93LJ
	Se78+VhVI0RcL9ZBs8Wtvkn9Csm7Apj9qZHmgWn9S2btcWHB+1honN8pWhV6yogBFWd7Iuq7cXQ
	/F604YL0BReVYBb+W0X9whNYRu7wGFCqL6KnpPROJgK5HWyoJjz+5ZSp3DnkTR164ZAzlaedvvq
	450V6gSnXxK+FEhWI1MCUXEpIMBMb46LoaXlzNSerj64v22Wj5JIjJ1yBdBOxm34yWGgIeKh5+9
	0dQ3WvQMKoNerY8Hty0rlpWwKQ2kCSe4040lmiqm4e9k
X-Received: by 2002:a05:690e:482:b0:667:a285:7625 with SMTP id
 956f58d0204a3-6690582d16dmr580446d50.88.1785247064468; Tue, 28 Jul 2026
 06:57:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260727205602.1188008-1-gahing@gahingwoo.com> <CABjd4YwmznLERMx_DgfTeqXmOEZh=pcOjf+NYfkV069mETe-uQ@mail.gmail.com>
In-Reply-To: <CABjd4YwmznLERMx_DgfTeqXmOEZh=pcOjf+NYfkV069mETe-uQ@mail.gmail.com>
From: Gavin Gao <attinagaoxu@gmail.com>
Date: Tue, 28 Jul 2026 21:57:32 +0800
X-Gm-Features: AUfX_mxzpovyIRUTrYGKBrXRurd9JRDsVacqu2CDyv0oSDWGubwak2MApr2KfoU
Message-ID: <CAK2JjQVsJbC5wuLs1wFvose0S9ho6FDNPbhteveWOttE0prjeA@mail.gmail.com>
Subject: Re: [PATCH net-next v2] net: phy: motorcomm: enable the reference
 clock for YT8521 and YT8531
To: Alexey Charkov <alchark@gmail.com>
Cc: Jiaxing Hu <gahing@gahingwoo.com>, Frank.Sae@motor-comm.com, andrew@lunn.ch, 
	hkallweit1@gmail.com, linux@armlinux.org.uk, davem@davemloft.net, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	maxime.chevallier@bootlin.com, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_065745_838430_05E93258 
X-CRM114-Status: GOOD (  32.39  )
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

SGkgQWxleGV5LAoKSSBzbGlnaHRseSBwcmVmZXIga2VlcGluZyB0aGUgaGVscGVyLgoKVGhpcyBs
b29rcyBsaWtlIGEgY29tbW9uIHBhdHRlcm4gZm9yIHRoZSBNb3RvcmNvbW0gZmFtaWx5IHJhdGhl
ciB0aGFuIGEKWVQ4NTIxL1lUODUzMS1zcGVjaWZpYyBkZXRhaWwuIE90aGVyIFBIWXMgaW4gdGhl
IHNhbWUgc2VyaWVzIG1heSBuZWVkIHRoZQpzYW1lIG9wdGlvbmFsIHJlZmVyZW5jZSBjbG9jayBo
YW5kbGluZyBsYXRlciwgYW5kIGEgc21hbGwgaGVscGVyIGtlZXBzCnRoYXQgcGF0aCBlYXN5IHRv
IHJldXNlIHdpdGhvdXQgZHVwbGljYXRpbmcgdGhlIHNhbWUgY29kZS4KCkJlc3QgUmVnYXJkcywK
R2F2aW4gR2FvCgpPbiBUdWUsIEp1bCAyOCwgMjAyNiBhdCAxMjoxNuKAr1BNIEFsZXhleSBDaGFy
a292IDxhbGNoYXJrQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBKYXhpbmcsCj4KPiBPbiBUdWUs
IEp1bCAyOCwgMjAyNiBhdCAxOjA04oCvQU0gSmlheGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dvby5j
b20+IHdyb3RlOgo+ID4KPiA+IFRoZXNlIFBIWXMgbmVlZCBhIDI1IE1IeiByZWZlcmVuY2UuIE9u
IGJvYXJkcyB3aXRob3V0IGEgbG9jYWwgY3J5c3RhbAo+ID4gaXQgaXMgZmVkIGZyb20gdGhlIFNv
QyBhbmQgZGVzY3JpYmVkIGFzIGEgY2xvY2sgb24gdGhlIFBIWSBub2RlLiBHZXQgYW5kCj4gPiBl
bmFibGUgaXQgaW4gcHJvYmUsIHZpYSBhIHNtYWxsIGhlbHBlciBjYWxsZWQgZnJvbSBib3RoIHl0
ODUyMV9wcm9iZSBhbmQKPiA+IHl0ODUzMV9wcm9iZSwgc28gdGhlIFBIWSBpcyBjbG9ja2VkIGJl
Zm9yZSBpdHMgcmVnaXN0ZXJzIGFyZSBhY2Nlc3NlZC4KPiA+IFRoZSBjbG9jayBpcyBvcHRpb25h
bCwgc28gY3J5c3RhbC1jbG9ja2VkIGJvYXJkcyBhcmUgdW5hZmZlY3RlZC4KPiA+Cj4gPiBSZXZp
ZXdlZC1ieTogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPgo+ID4gU2lnbmVkLW9mZi1ieTog
SmlheGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dvby5jb20+Cj4gPiAtLS0KPiA+Cj4gPiBDaGFuZ2Vz
IGluIHYyOgo+ID4gLSBGYWN0b3IgdGhlIGNsb2NrIGVuYWJsZSBpbnRvIHl0cGh5X2dldF9hbmRf
ZW5hYmxlX3JlZmNsaygpIGFuZCBjYWxsIGl0Cj4gPiAgIGZyb20geXQ4NTIxX3Byb2JlIGFzIHdl
bGwsIHNvIHRoZSBZVDg1MjEgaXMgY292ZXJlZCB0b28sIG5vdCBvbmx5IHRoZQo+ID4gICBZVDg1
MzEuIHYxIG9ubHkgdG91Y2hlZCB5dDg1MzFfcHJvYmUuCj4gPiAtIENhcnJpZWQgQW5kcmV3J3Mg
UmV2aWV3ZWQtYnk7IHRoZSBlbmFibGUgaXRzZWxmIGlzIHVuY2hhbmdlZCwgb25seQo+ID4gICBt
b3ZlZCBpbnRvIHRoZSBoZWxwZXIuCj4gPgo+ID4gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC8yMDI2MDcxOTAzNDU1NS4zNjIzMDAzLTEtZ2FoaW5nQGdhaGluZ3dvby5jb20vCj4gPgo+
ID4gQSBzZWNvbmQgY3J5c3RhbC1sZXNzIFJLMzU3NiBib2FyZCB3aXRoIGEgWVQ4NTIxIG5lZWRz
IHRoZSBzYW1lIGhhbmRsaW5nCj4gPiAoc2VlIHRoZSBSSzM1NzYgR01BQyAyNU0gcmVmb3V0IHRo
cmVhZCBbMV0pLCBzbyB2MiBjb3ZlcnMgYm90aCBQSFlzLiBUaGlzCj4gPiBzdXBlcnNlZGVzIHRo
ZSB3aXRoZHJhd24gZHdtYWMtcmsgTUFDLXNpZGUgc2VyaWVzLiBUaGUgRFRTIHRoYXQgY29uc3Vt
ZXMKPiA+IHRoZSBjbG9jayAocmszNTc2LWFybXNvbS1jbTUpIGdvZXMgdG8gdGhlIHJvY2tjaGlw
IHRyZWUgc2VwYXJhdGVseTsgdGhlCj4gPiBjbG9jayBpcyBvcHRpb25hbCBzbyB0aGlzIHBhdGNo
IHN0YW5kcyBhbG9uZS4gVGhlIFlUODUzMSBwYXRoIGlzIHRlc3RlZAo+ID4gb24gYW4gQXJtU29N
IENNNS1JTyAobGlua3MgYXQgMTAwMCBNYml0L3MpLgo+ID4KPiA+IFsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNjA3MjcwMjEwNDguMzM3NTQ0NC0xLWF0dGluYWdhb3h1QGdtYWls
LmNvbS8KPiA+Cj4gPiAgZHJpdmVycy9uZXQvcGh5L21vdG9yY29tbS5jIHwgMzMgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlv
bnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L21vdG9yY29tbS5jIGIv
ZHJpdmVycy9uZXQvcGh5L21vdG9yY29tbS5jCj4gPiBpbmRleCA3MDg0OTFiYzEuLjMyZWI1Y2U5
MyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L3BoeS9tb3RvcmNvbW0uYwo+ID4gKysrIGIv
ZHJpdmVycy9uZXQvcGh5L21vdG9yY29tbS5jCj4gPiBAQCAtNiw2ICs2LDcgQEAKPiA+ICAgKiBB
dXRob3I6IEZyYW5rIDxGcmFuay5TYWVAbW90b3ItY29tbS5jb20+Cj4gPiAgICovCj4gPgo+ID4g
KyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvZXRoZXJkZXZpY2Uu
aD4KPiA+ICAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L21v
ZHVsZS5oPgo+ID4gQEAgLTEwNDMsNiArMTA0NCwyOSBAQCBzdGF0aWMgaW50IHl0ODUzMV9zZXRf
ZHMoc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRldikKPiA+ICAgICAgICAgcmV0dXJuIDA7Cj4gPiAg
fQo+ID4KPiA+ICsvKioKPiA+ICsgKiB5dHBoeV9nZXRfYW5kX2VuYWJsZV9yZWZjbGsoKSAtIGdl
dCBhbmQgZW5hYmxlIHRoZSBQSFkgcmVmZXJlbmNlIGNsb2NrCj4gPiArICogQHBoeWRldjogYSBw
b2ludGVyIHRvIGEgJnN0cnVjdCBwaHlfZGV2aWNlCj4gPiArICoKPiA+ICsgKiBBIGNyeXN0YWwt
bGVzcyBZVDg1MjEvWVQ4NTMxIHRha2VzIGl0cyAyNSBNSHogcmVmZXJlbmNlIGZyb20gdGhlIFNv
Qy4gV2hlbgo+ID4gKyAqIHRoYXQgcmVmZXJlbmNlIGlzIGRlc2NyaWJlZCBhcyBhIGNsb2NrLCBl
bmFibGUgaXQgZm9yIHRoZSBsaWZlIG9mIHRoZQo+ID4gKyAqIGRldmljZS4gSXQgaXMgb3B0aW9u
YWwsIHNvIGNyeXN0YWwtY2xvY2tlZCBib2FyZHMgYXJlIHVuYWZmZWN0ZWQuCj4gPiArICoKPiA+
ICsgKiByZXR1cm5zIDAgb3IgbmVnYXRpdmUgZXJybm8gY29kZQo+ID4gKyAqLwo+ID4gK3N0YXRp
YyBpbnQgeXRwaHlfZ2V0X2FuZF9lbmFibGVfcmVmY2xrKHN0cnVjdCBwaHlfZGV2aWNlICpwaHlk
ZXYpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGh5ZGV2LT5tZGlv
LmRldjsKPiA+ICsgICAgICAgc3RydWN0IGNsayAqY2xrOwo+ID4gKwo+ID4gKyAgICAgICBjbGsg
PSBkZXZtX2Nsa19nZXRfb3B0aW9uYWxfZW5hYmxlZChkZXYsIE5VTEwpOwo+ID4gKyAgICAgICBp
ZiAoSVNfRVJSKGNsaykpCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJvYmUo
ZGV2LCBQVFJfRVJSKGNsayksCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgImZhaWxlZCB0byBnZXQgYW5kIGVuYWJsZSB0aGUgcmVmZXJlbmNlIGNsb2NrXG4iKTsKPgo+
IEEgaGVscGVyIGZvciBhIHNpbmdsZS1saW5lIGZ1bmN0aW9uIGNhbGwgbG9va3MgbGlrZSBhbiBv
dmVya2lsbCwgYW5kCj4gcmVxdWlyZXMgc2Nyb2xsaW5nIHRvIHVuZGVyc3RhbmQgd2hhdCBpcyBn
b2luZyBvbiB3aGVyZSBhbiBvcGVuLWNvZGVkCj4gdmVyc2lvbiB3b3VsZCBiZSBzZWxmLWV4cGxh
bmF0b3J5IGF0IHRoZSBmaXJzdCBnbGFuY2UuCj4KPiBNYXliZSBmb2xkIGl0IGludG8gdGhlIHR3
byBjYWxsZXIgZnVuY3Rpb25zIGluc3RlYWQ/Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gQWxleGV5Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
