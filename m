Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B08AC433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 19:58:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BEE4E61983
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 19:58:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BEE4E61983
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4G4s6Ui88mzCeQZ+vqNIWtYB83XTXdawh2dwEy3CljE=; b=ZUQjyNgvMObeKgmayswCKYXhj
	SYPCbDtAXoNVnWNTNyG/HA2Q2qrbP/9x9qioNOoe0IYHj27yJZaZ255rTfjOk/muCxuZ1kLCGu3tj
	vaQ5F9ivgPkdByUunAtLVzetVBmEQm0oHk7+zA7pOSa7gQW0ex2wHH4xOAHgWEE5o703Jn2jvuhv4
	Rfr2cv31/QadpTCNCRuQh6DjhiEDXFo0Odq3dvoWsbLoDHZ3WXO+Yt9KTCJ7+taMeXxfRHRVAF232
	/QOOs+fSHPcCoM4xlvhakKCz9N2DGuLufbGhOf1eNqXsQUfUHLnXc9sysg8BlXg8u9pQKUT6t42po
	2BuTHp4Uw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP9eN-0009aV-Ka; Wed, 24 Mar 2021 19:58:43 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP9eJ-0009Zh-Jb
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 19:58:41 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 30so12921228qva.9
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Mar 2021 12:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=WohtsYNWEdFTIn8E+Et3spzWAWV2YpfFIl4Sn9otDIc=;
 b=O1asTqeApZJOrRJ3N58wnaLH6u5ZyLuKnbnLod3nO2S3ZYzpQ4ItwhhbC8VDfU579j
 C7+c9zj17/nKO2QP6w7qw7CBLdYA9y0tZgQ7NgNbDDYlA0rqHCAJtc64XilqbeqEcnsz
 v1JrWWjIVee8T2eXC9VcV8Exj+wrChvmAcoGllkoWyPCyv1yYNdP4uwqZw2Ol30naFld
 AVKxcCqAoc3UMMWvADruEuNZ2e+WrZ518AaoqiGrASGXAiumlkw62S0nSp7OcSoiYbDJ
 3VXfUK/S04M0h/M9wcBIpPZegSUeqDqt8wWnRbaJMg1kSMZQcNYckREMWgV++dmTZZWR
 ugOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=WohtsYNWEdFTIn8E+Et3spzWAWV2YpfFIl4Sn9otDIc=;
 b=Z7siXW7gqPxL6OqFDreOIEN9PC0Hp6P2Ak0wp0LhD9XxrLRDGsApXIosacga+BCAW5
 JIS++eYN0Z6xzsqDWVHJEp3qqbZHO/QcIh25Sb+/icTfu7CFohAO7Kxapnepjv4jXt4+
 5IueM70xDXWWoOQHYIlapfOv4KjIs38vmgD7cqpw45a20QbgL8q4NpedF33exfz0O0Ja
 Iiyu/SoYOb6tCge3xp17vgnLKbNPDFE6xTwCtEZyego8KPUJNg+AvrG8PS0C10NnIN68
 frHqQ34Su+OoH7Ix4CkuwECy5aZQN9nTod67FI0GZRmMRRICKELKCRLOVy99lS3H9Icn
 fllQ==
X-Gm-Message-State: AOAM531R6ihAuhWzEGhf1rye97K68FdWyfh+vwe0kSSiNzi5clCIKcNC
 VKhQc/o9VgCcF0s4X2TXF24d5g==
X-Google-Smtp-Source: ABdhPJwVOGZjBIbcrcxsjTB8BxQREUcVPDREe/rzhL7mQYvJXvkATuDxxPdELSWp+C0ZUKN8e2iOXw==
X-Received: by 2002:a0c:bf47:: with SMTP id b7mr4326951qvj.38.1616615914732;
 Wed, 24 Mar 2021 12:58:34 -0700 (PDT)
Received: from nicolas-tpx395.lan (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id n6sm2009606qtx.22.2021.03.24.12.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 12:58:34 -0700 (PDT)
Message-ID: <45362b53cb3603597c2e83be68df439164572ad4.camel@ndufresne.ca>
Subject: Re: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Emil Velikov <emil.l.velikov@gmail.com>, Ezequiel Garcia
 <ezequiel@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, Nicolas
 Ferre <nicolas.ferre@microchip.com>
Date: Wed, 24 Mar 2021 15:58:33 -0400
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_195839_810391_CE529058 
X-CRM114-Status: GOOD (  22.26  )
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

TGUgamV1ZGkgMTEgbWFycyAyMDIxIMOgIDE1OjQwICswMDAwLCBFbWlsIFZlbGlrb3YgYSDDqWNy
aXTCoDoKPiBIaSBhbGwKPiAKPiBUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBNaWNy
b2NoaXAgU0FNQTVENCBWUFUsIHdoaWNoIGl0IGJhc2VkCj4gb24gdGhlIEhhbnRybyBHMS4KClBl
cmhhcHMgaW4geW91ciBuZXh0IHZlcnNpb24geW91IGNvdWxkIGZpeCB0aGUgb2JqZWN0IGxpbmUs
IHlvdSB3cm90ZSBNaWNyb3NoaXAKaW5zdGVhZCBvZiBNaWNyb2NoaXAuCgo+IAo+IFRoZSBoYXJk
d2FyZSBjYW4gc3VwcG9ydCB1cC10byAxMjgweDcyMCBmb3IgZWFjaCBvZiB0aGUgTVBFRzIsIFZQ
OCBhbmQKPiBIMjY0IGNvZGVjcy4gVGhlcmUgaXMgb25seSBhIHNpbmdsZSBkZWNvZGVyIGFuZCBu
byBlbmNvZGVycyBvbiB0aGUgU29DLgo+IAo+IFRoZSBIYW50cm8gRzEgcG9zdC1wcm9jZXNzaW5n
IGlzIGFsc28gZW5hYmxlZCBvbiB0aGUgcGxhdGZvcm0uCj4gCj4gVG8gbWluaW1pc2UgZHVwbGlj
YXRpb24sIHRoZSBzZXJpZXMgc3RhcnRzIHdpdGggYSBmZXcgc21hbGwgY2xlYW51cHMuCj4gCj4g
Cj4gQXMgeW91IG1heSBoYXZlIG5vdGljZWQsIHRoaXMgaXMgbXkgZmlyc3QgcGF0Y2hlcyBzZXJp
ZXMgdG8gbGludXgtbWVkaWEsCj4gc28gYW55IHRpcHMgaG93IHRvIG1ha2UgdGhpcyBhcyBzbW9v
dGhlciBwcm9jZXNzIGFyZSBhcHByZWNpYXRlZC4KPiAKPiAKPiBDaGFuZ2VzIGluIHYyOgo+IMKg
LSBBZGQgdGVzdGluZyByZXN1bHRzIGluIHRoZSBjb3ZlciBsZXR0ZXIgKHRoYW5rcyBFemUpCj4g
wqAtIHMvQXRtZWwvTWljcm9jaGlwLyB0aHJvdWdoIHRoZSBzZXJpZXMgKHRoYW5rcyBOaWNvbGFz
KQo+IMKgLSBTcGxpdCBkZWZjb25maWcgY2hhbmdlIGludG8gc2VwYXJhdGUgY29tbWl0ICh0aGFu
a3MgRXplLCBOaWNvbGFzKQo+IMKgLSBBZGRlZCBSZXZpZXdlZC1ieSBhbmQgRml4ZXMgdGFncyAo
dGhhbmtzIFBoaWxpcHApCj4gwqAtIFNwbGl0IERUIGludG8gc2VwYXJhdGUgY29tbWl0LCB3cm90
ZSBiaW5kaW5nIGRvY3VtZW50LCBmaXh1cCBtaW5vciBEVAo+IMKgwqDCoHdhcm5pbmdzICh0aGFu
a3MgRXplKQo+IMKgLSBSZWJhc2VkIG9uIHRvcCBvZiA1LjEyLXJjMiwgYXMgcGVyIExpbnVzJyBl
bWFpbCB0byBhdm9pZCA1LjEyLXJjMQo+IMKgwqDCoGh0dHBzOi8vbHduLm5ldC9BcnRpY2xlcy84
NDgyNjUvCj4gCj4gCj4gCj4gVGVzdGluZwo+IC0tLS0tLS0KPiAKPiDCoC0gdjRsLWNvbXBsaWFu
Y2UKPiAKPiBDb21tYW5kIHVzZWQ6Cj4gwqDCoHY0bDItY29tcGxpYW5jZSAtbTAKPiAKPiBPdXRw
dXQgc3VtbWFyeToKPiAKPiB2NGwyLWNvbXBsaWFuY2UgMS4yMS4wLTQ3NDAsIDMyIGJpdHMsIDMy
LWJpdCB0aW1lX3QKPiB2NGwyLWNvbXBsaWFuY2UgU0hBOiBmMjUzNDk1ZmE2ZGUgMjAyMS0wMy0w
NiAxNTozMjowOQo+IAo+IENvbXBsaWFuY2UgdGVzdCBmb3IgaGFudHJvLXZwdSBkZXZpY2UgL2Rl
di9tZWRpYTA6Cj4gCj4gVG90YWwgZm9yIGhhbnRyby12cHUgZGV2aWNlIC9kZXYvbWVkaWEwOiA4
LCBTdWNjZWVkZWQ6IDgsIEZhaWxlZDogMCwKPiBXYXJuaW5nczogMAo+IAo+IENvbXBsaWFuY2Ug
dGVzdCBmb3IgaGFudHJvLXZwdSBkZXZpY2UgL2Rldi92aWRlbzA6Cj4gCj4gVG90YWwgZm9yIGhh
bnRyby12cHUgZGV2aWNlIC9kZXYvdmlkZW8wOiA0NiwgU3VjY2VlZGVkOiA0NiwgRmFpbGVkOiAw
LAo+IFdhcm5pbmdzOiAwCj4gCj4gCj4gwqAtIFBvc3QtcHJvY2Vzc29yIHRlc3RpbmcKPiAKPiBD
b21tYW5kIHVzZWQ6Cj4gwqDCoGdzdC1sYXVuY2gtMS4wIC12IGZpbGVzcmMgbG9jYXRpb249dGVz
dC5tcDQgICEgZGVjb2RlYmluMyAhCj4gdmlkZW8veC1yYXcsZm9ybWF0PVlVWTIgISAuLi4KPiAK
PiBDb25maXJtZWQgdGhlIFZQVSBpcyB1c2VkIGJ5IG9ic2VydmluZyB0aGUgaW50ZXJydXB0cyB0
cmlnZ2VyaW5nLCBzdHJhY2UKPiBzaG93ZWQgZXh0cmEgdjRsMiBpb2N0bHMgLSBWSURJT0NfU19G
TVQoLi4uIFY0TDJfUElYX0ZNVF9ZVVlWICAuLi4pCj4gCj4gCj4gwqAtIE1QRUcyIHRlc3Rpbmcs
IGN1c3RvbSBmZm1wZWcgZnJvbQo+IMKgwqDCoGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vRkZt
cGVnL2NvbW1pdHMvdjRsMi1yZXF1ZXN0LWh3YWNjZWwtNC4zCj4gCj4gQ29tbWFuZCB1c2VkOgo+
IMKgwqBmZm1wZWcgLWh3YWNjZWwgZHJtIC1pIG1wZWcyLm1wZWcyIC1mIHJhd3ZpZGVvIC1waXhf
Zm10IHl1djQyMHAgb3V0LnJhdwo+IAo+IENvbmZpcm1lZCB0aGUgVlBVIGlzIHVzZWQgYnkgb2Jz
ZXJ2aW5nIHRoZSBpbnRlcnJ1cHRzIHRyaWdnZXJpbmcsIHN0cmFjZQo+IHNob3dlZCB0aGUgdjRs
MiBpb2N0bHMgYmVpbmcgdXNlZCBwbHVzIHBsYXllZCBiYWNrIHRoZSByZXN1bHRpbmcgZmlsZS4K
PiAKPiAKPiDCoC0gVlA4IHRlc3RpbmcsIHVzaW5nIGZsdXN0ZXIKPiAKPiBDb21tYW5kIHVzZWQ6
Cj4gwqDCoGZsdXN0ZXIucHkgcnVuIC10cyBWUDgtVEVTVC1WRUNUT1JTIC1kIEdTdHJlYW1lci1W
UDgtVjRMMlNMLUdzdDEuMAo+IAo+IE91dHB1dCBzdW1tYXJ5Ogo+IAo+IFJ1bm5pbmcgdGVzdCBz
dWl0ZSBWUDgtVEVTVC1WRUNUT1JTIHdpdGggZGVjb2RlciBHU3RyZWFtZXItVlA4LVY0TDJTTC1H
c3QxLjAKPiBSYW4gNjEgdGVzdHMgaW4gMTAzLjI3M3MKPiAKPiBGQUlMRUQgKGZhaWx1cmVzPTks
IGVycm9ycz0yKQo+IAo+IAo+IMKgLSBIMjY0IHRlc3RpbmcsIHVzaW5nIGZsdXN0ZXIKPiAKPiBD
b21tYW5kIHVzZWQ6Cj4gwqDCoGZsdXN0ZXIucHkgcnVuIC10cyBKVlQtQVZDX1YxIC1kIEdTdHJl
YW1lci1ILjI2NC1WNEwyU0wtR3N0MS4wCj4gCj4gT3V0cHV0IHN1bW1hcnk6Cj4gCj4gUnVubmlu
ZyB0ZXN0IHN1aXRlIEpWVC1BVkNfVjEgd2l0aCBkZWNvZGVyIEdTdHJlYW1lci1ILjI2NC1WNEwy
U0wtR3N0MS4wCj4gUmFuIDEzNSB0ZXN0cyBpbiA0MjAuNDQ0cwo+IAo+IEZBSUxFRCAoZmFpbHVy
ZXM9OSwgZXJyb3JzPTU1KQo+IAo+IAo+IExvb2tpbmcgZm9yd2FyZCB0byB5b3VyIGZlZWRiYWNr
LAo+IEVtaWwKPiAKPiAKPiBFbWlsIFZlbGlrb3YgKDEwKToKPiDCoMKgbWVkaWE6IGhhbnRybzog
dXNlIEcxX1JFR19JTlRFUlJVUFQgZGlyZWN0bHkgZm9yIHRoZSBtcGVnMgo+IMKgwqBtZWRpYTog
aGFudHJvOiBpbXg6IHJldXNlIE1CX0RJTSBkZWZpbmUKPiDCoMKgbWVkaWE6IGhhbnRybzogaW14
OiByZW1vdmUgZHVwbGljYXRlIGRlY19iYXNlIGluaXQKPiDCoMKgbWVkaWE6IGhhbnRybzogaW14
OiByZW1vdmUgdW51c2VkIGluY2x1ZGUKPiDCoMKgbWVkaWE6IGhhbnRybzogaW50cm9kdWNlIGhh
bnRyb19nMS5jIGZvciBjb21tb24gQVBJCj4gwqDCoG1lZGlhOiBkdC1iaW5kaW5nczogRG9jdW1l
bnQgU0FNQTVENCBWREVDIGJpbmRpbmdzCj4gwqDCoG1lZGlhOiBoYW50cm86IGFkZCBpbml0aWFs
IFNBTUE1RDQgc3VwcG9ydAo+IMKgwqBBUk06IGR0czogc2FtYTVkNDogZW5hYmxlIEhhbnRybyBH
MSBWREVDCj4gwqDCoEFSTTogY29uZmlnczogYXQ5MTogc2FtYTU6IHVwZGF0ZSB3aXRoIHNhdmVk
ZWZjb25maWcKPiDCoMKgQVJNOiBjb25maWdzOiBhdDkxOiBzYW1hNTogZW5hYmxlIHRoZSBIYW50
cm8gRzEgZW5naW5lCj4gCj4gwqAuLi4vbWVkaWEvbWljcm9jaGlwLHNhbWE1ZDQtdmRlYy55YW1s
ICAgICAgICAgfCAgNTkgKysrKysrKysrCj4gwqBhcmNoL2FybS9ib290L2R0cy9zYW1hNWQ0LmR0
c2kgICAgICAgICAgICAgICAgfCAgIDkgKysKPiDCoGFyY2gvYXJtL2NvbmZpZ3Mvc2FtYTVfZGVm
Y29uZmlnICAgICAgICAgICAgICB8ICA0MCArKystLS0KPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9oYW50cm8vS2NvbmZpZyAgICAgICAgICB8ICAxMCArLQo+IMKgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2hhbnRyby9NYWtlZmlsZSAgICAgICAgIHwgICA0ICsKPiDCoGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jICAgICB8ICAgMyArCj4gwqBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19nMS5jICAgICAgfCAgMzkgKysrKysrCj4gwqAuLi4vbWVkaWEv
aGFudHJvL2hhbnRyb19nMV9tcGVnMl9kZWMuYyAgICAgICAgfCAgIDUgKy0KPiDCoGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2h3LmggICAgICB8ICAgNCArCj4gwqBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jICAgfCAgMjcgKy0tLQo+IMKgZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9yazMyODhfdnB1X2h3LmMgIHwgIDM2ICstLS0tLQo+
IMKgLi4uL3N0YWdpbmcvbWVkaWEvaGFudHJvL3NhbWE1ZDRfdmRlY19ody5jICAgIHwgMTE3ICsr
KysrKysrKysrKysrKysrKwo+IMKgMTIgZmlsZXMgY2hhbmdlZCwgMjc0IGluc2VydGlvbnMoKyks
IDc5IGRlbGV0aW9ucygtKQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9taWNyb2NoaXAsc2FtYTVkNC12ZGVjLnlhbWwKPiDCoGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMS5j
Cj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9zYW1h
NWQ0X3ZkZWNfaHcuYwo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
