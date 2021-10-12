Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD1CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 16:09:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D96860C40
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 16:09:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1D96860C40
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6vyeERpXF0i0XPUJNcx1isiaqfZ1OAmxVE49cv0rcA=; b=34/ptoS7YUykTM
	ZX+TfbAXR3bXeFIRcQl6l5a2VLE7qZqq+qn2LbQE3h0PswAUm2gfKLf8AD/kgBKEbUqIaYtreGy3f
	CZc8rPUwvx7bIePuxtjM5peoNQNbFsQS+KLa0eHWQhQSg8oNaeZrg/QlM38ZvFPPD5ecJhe5cOYjg
	eViMGMweeEj7/hBC8KzDgNrnvbu7Hwa1qFyNM9ZGLEw1z/xhjX4eI4hsDRUXaLluuqOLasUN9MDfN
	NIrLkpIMp5ePCfKjXC+rBXLCnZvCv7WsjGS9yYC8CX2IHlH/+F5S2QVjavG8UvQovVpXH0RiUYSHo
	MNeCwuGwSlhuC2GOQwZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maKKk-00DUCW-PN; Tue, 12 Oct 2021 16:08:54 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maKKh-00DUBm-UE; Tue, 12 Oct 2021 16:08:53 +0000
Received: by mail-wr1-x42b.google.com with SMTP id r10so68506588wra.12;
 Tue, 12 Oct 2021 09:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8iTn6JCetRXd4IT612o9kFxWnkw0z7CnatM7cjVZeCw=;
 b=VWmxe1rkc0SyCEnv6WESlmQl4KwCG/9Ve7fPdhu0kMByCPv7NAVfpPamI9IdcNWGMT
 ipqW8UYh6yzkpwjgWmFIya7VXL40v0YXl/CVJTtXq25v5eL8NskoVzx8n3zI1mBrNgkD
 CqXrB4oTKkvdg015w7SMxcYVe+XWQsrsiB4e9BEIiSJRyHVHE50BeTMjE9CoF9MnT5lS
 3npz7WEyxAoh9Zj7CXKMfE7OBfFH+gGK0uzMMfZJ+LmFBZKZ1WMk2jR76EuP/NwtGsAO
 7BCoyBjbvjdP42PjEkXl3GM20zpH/sJ0RaPwh87anEucKurtIuoE2RwquwoYKRVbh8WC
 nKEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8iTn6JCetRXd4IT612o9kFxWnkw0z7CnatM7cjVZeCw=;
 b=61NXFXHhiD5Er8dpxJ4FSq4i5+XGSdbR5H0qy6dGnnR2vJKzr7U/rqm/D0IKuYbutj
 FlAMro8M14FyyU8PwXNamVmLcOXDTkd/puv+Vwp2dlzvjDY0aFVS/wfK3hA0S7AqDapI
 F8eG/VXXd2La2aivDVi23/ROlnRwxoVzYRfE+AOoul5gz8ZrN+PLrwTLBoe9w6JJFByh
 jk8ummqtmLY/b2WiuM7y69HJHqULwXpr00c9k3Ewr4Q69m0Asa3bR5wZLBdBIP4+Kz3B
 KEeJaBVVJNIalPBXWoAr3S8/2yaR3eMZ5wPi2XvN1qS5A6zua+Gt023TCwNP8HNjOF3M
 5MEQ==
X-Gm-Message-State: AOAM531IPy1C4guCNmLaeF4tTcaE7e+RPuBkJb+0X+y4Eaz1UNofFaVf
 sfPOKQbe+R0xXlJSlBf+s4k=
X-Google-Smtp-Source: ABdhPJyCW/aSSXgGlpCvgSSH1yQrJXNiVnC7SeluZxb7rKiMZjvpzOnH5ye7V3mz1ZiHn4cmsLywnw==
X-Received: by 2002:adf:979a:: with SMTP id s26mr33782239wrb.2.1634054930069; 
 Tue, 12 Oct 2021 09:08:50 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net.
 [86.58.29.253])
 by smtp.gmail.com with ESMTPSA id s186sm3172217wme.14.2021.10.12.09.08.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 09:08:49 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: Re: [PATCH v2 0/4] media: HEVC: RPS clean up
Date: Tue, 12 Oct 2021 18:08:48 +0200
Message-ID: <1705005.VLH7GnMWUR@kista>
In-Reply-To: <3c5851ac-3b8a-decc-93c1-01a65b1f8611@collabora.com>
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
 <21222555.EfDdHjke4D@kista>
 <3c5851ac-3b8a-decc-93c1-01a65b1f8611@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_090852_007810_6933DDA9 
X-CRM114-Status: GOOD (  26.78  )
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

Q0M6IEFsZXggQmVlCgpBbGV4LCBwbGVhc2UgdGFrZSBhIGxvb2sgdG8gdGhlc2UgcGF0Y2hlcyB0
b28uCgpEbmUgdG9yZWssIDEyLiBva3RvYmVyIDIwMjEgb2IgMTc6NTc6NTAgQ0VTVCBqZSBCZW5q
YW1pbiBHYWlnbmFyZCBuYXBpc2FsKGEpOgo+IAo+IExlIDEyLzEwLzIwMjEgw6AgMTc6MzQsIEpl
cm5laiDFoGtyYWJlYyBhIMOpY3JpdCA6Cj4gPiBIaSBCZW5qYW1pbiEKPiA+Cj4gPiBEbmUgdG9y
ZWssIDEyLiBva3RvYmVyIDIwMjEgb2IgMTY6MzU6NDggQ0VTVCBqZSBCZW5qYW1pbiBHYWlnbmFy
ZCAKbmFwaXNhbChhKToKPiA+PiBUaGlzIHNlcmllcyBhaW1zIHRvIGNsZWFuIHVwIFJlZmVyZW5j
ZSBQaWN0dXJlIFNldCB1c2FnZSBhbmQgZmxhZ3MuCj4gPj4KPiA+PiBMb25nIHRlcm0gZmxhZyB3
YXMgbmFtZWQgd2l0aCBSUFMgcHJlZml4IHdoaWxlIGl0IGlzIG5vdCB1c2VkIGZvciBSUFMKPiA+
PiBidXQgZm9yIG1hcmsgbG9uZyB0ZXJtIHJlZmVyZW5jZXMgaW4gREJQLiBSZW1hbmUgaXQgYW5k
IHJlbW92ZSB0aGUgdHdvCj4gPj4gb3RoZXIgdXNlbGVzcyBSUFMgZmxhZ3MuCj4gPj4KPiA+PiBD
bGFyaWZ5IGRvY3VtZW50YXRpb24gYWJvdXQgUlBTIGxpc3RzIGNvbnRlbnQgYW5kIG1ha2Ugc3Vy
ZSB0aGF0IEhhbnRybwo+ID4+IGRyaXZlciB1c2UgdGhlbSBjb3JyZWN0bHkgKGkuZSB3aXRob3V0
IGxvb2sgdXAgaW4gREJQKS4KPiA+Pgo+ID4+IFRoZXNlIHBhdGNoZXMgYXJlIHRoZSBsYXN0IGlu
IG15IGJhY2tsb2cgaW1wYWN0aW5nIEhFVkMgdUFQSS4KPiA+PiAgRnJvbSBteSBwb2ludCBvZiB2
aWV3LCBvbmNlIHRoZXkgZ2V0IG1lcmdlZCwgeW91IGNvdWxkIHN0YXJ0IHRhbGtpbmcKPiA+PiBh
Ym91dCBob3cgbW92ZSBIRVZDIHVBUEkgdG8gc3RhYmxlLgo+ID4gV2l0aCB5b3VyIGNoYW5nZXMs
IEhFVkMgdUFQSSBjb250cm9scyBzdGlsbCB3b24ndCBiZSBjb21wbGV0ZS4gQ2VkcnVzIApuZWVk
cwo+ID4gZW50cnkgcG9pbnQgY29udHJvbCwgd2hpY2ggaW4gdHVybiBuZWVkcyBkeW5hbWljIGFy
cmF5IHN1cHBvcnQuIEknbSBhIGJpdCAKbGF6eQo+ID4gaW1wbGVtZW50aW5nIHRoYXQgY29udHJv
bCwgYnV0IEkgZ3Vlc3MgSSBjYW4gdGFrZSBhIGxvb2sgaW4gYSBtb250aCBvciBzby4KPiA+IHJr
dmRlYyBhbHNvIG5lZWRzIG1vcmUgZmllbGRzIGZvciBIRVZDLiBXaXRoIHBhdGNoZXMgY29sbGVj
dGVkIGhlcmU6Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vTGlicmVFTEVDL0xpYnJlRUxFQy50di9i
bG9iL21hc3Rlci9wcm9qZWN0cy9Sb2NrY2hpcC8KPiA+IHBhdGNoZXMvbGludXgvZGVmYXVsdC9s
aW51eC0yMDAxLXY0bC13aXAtcmt2ZGVjLWhldmMucGF0Y2gKPiA+IGZsdXN0ZXIgSEVWQyB0ZXN0
IHNjb3JlIGlzIHJlcG9ydGVkbHkgMTIxLzEzNSAoOC1iaXQgdGVzdHMgb25seSkuCj4gCj4gSGkg
SmVybmVqLAo+IAo+IFRoYW5rcyBmb3IgeW91ciBmZWVkYmFjaywgZ2V0dGluZyBhIGxpc3Qgb2Yg
bWlzc2luZyBpdGVtcyBpbiBIRVZDIHVBUEkKPiB3aWxsIGRlZmluaXRpdmVseSBoZWxwIHRvIGZp
bGwgdGhlIGhvcGUuCj4gVGhlIHBhdGNoIHlvdSBtZW50aW9uIGZvciBya3ZkZWMgYXJlIGFscmVh
ZHkgbWVyZ2VkIGluIG1haW5saW5lIGtlcm5lbCAoYXQKPiBsZWFzdCBmb3IgdUFQSSBwYXJ0KS4K
CkFyZSB0aGV5PyBXaGF0IGFib3V0Ogp2aWRlb19wYXJhbWV0ZXJfc2V0X2lkCnNlcV9wYXJhbWV0
ZXJfc2V0X2lkCnBpY19wYXJhbWV0ZXJfc2V0X2lkCnNob3J0X3Rlcm1fcmVmX3BpY19zZXRfc2l6
ZQpsb25nX3Rlcm1fcmVmX3BpY19zZXRfc2l6ZQoKQXQgbGVhc3QgSSBkb24ndCBzZWUgdGhlbSBp
biBsaW51eC1uZXh0LiBNYXliZSB0aGF0IGluZm9ybWF0aW9uIGNhbiBiZSAKb2J0YWluZWQgaW4g
c29tZSBvdGhlciB3YXk/Cgo+IENlZHJ1cyBuZWVkcyBhcmUgYWJvdXQgbnVtX2VudHJ5X3BvaW50
X29mZnNldHMsIG9mZnNldF9sZW5fbWludXMxIGFuZCAKZW50cnlfcG9pbnRfb2Zmc2V0X21pbnVz
MVsgaSBdCj4gaW4gSEVWQyBzcGVjaWZpY2F0aW9ucyA/CgpZZXMsIENlZHJ1cyBuZWVkcyB0byBr
bm93IHdob2xlIGxpc3Qgb2YgZW50cnkgcG9pbnRzLiBJIGRvbid0IHRoaW5rIHdlIG5lZWQgdG8g
CndvcnJ5IGFib3V0IG9mZnNldF9sZW5fbWludXMxLCBsaXN0IGNvdWxkIGJlIHByZS1wcm9jZXNz
ZWQgLSBqdXN0IG51bWJlciBvZiAKZW50cnkgcG9pbnRzIGFuZCB0aGVpciB2YWx1ZXMuCgpCZXN0
IHJlZ2FyZHMsCkplcm5lagoKPiAKPiBSZWdhcmRzLAo+IEJlbmphbWluCj4gCj4gPgo+ID4gSSB3
b3VsZCBjZXJ0YWlubHkgd2FpdCB3aXRoIG1vdmluZyBIRVZDIHVBUEkgdG8gc3RhYmxlLgo+ID4K
PiA+IEJlc3QgcmVnYXJkcywKPiA+IEplcm5lago+ID4KPiA+PiB2ZXJzaW9uIDI6Cj4gPj4gLSBj
aGFuZ2UgRFBCIGZpZWxkIG5hbWUgZnJvbSBycHMgdG8gZmxhZ3MKPiA+Pgo+ID4+IFBsZWFzZSBu
b3RlIHRoYXQgdGhlIG9ubHkgcHVycG9zZSBvZiBjb21taXRzIDMgYW5kIDQgaXMgdG8gYWxsb3cg
dG8gdGVzdAo+ID4+IEcyIGhhcmR3YXJlIGJsb2NrIGZvciBJTVg4TVEgdW50aWwgYSBwcm9wZXIg
c29sdXRpb24gaXN1aW5nIHBvd2VyIGRvbWFpbgo+ID4+IGNhbiBiZSBmb3VuZC4gRG8gbm90IG1l
cmdlIHRoZW0uCj4gPj4KPiA+PiBHU3RyZWFtZXIgSEVWQyBwbHVnaW4gbWVyZ2UgcmVxdWVzdCBj
YW4gYmUgZm91bmQgaGVyZToKPiA+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3N0
cmVhbWVyL2dzdHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzEwNzkKPiA+Pgo+ID4+IFdpdGggdGhv
c2UgcGllY2Ugb2YgY29kZSBmbHVzdGVyIHNjb3JlIGlzIDc3LzE0Ny4KPiA+Pgo+ID4+IEJlbmph
bWluCj4gPj4KPiA+PiBCZW5qYW1pbiBHYWlnbmFyZCAoNCk6Cj4gPj4gICAgbWVkaWE6IGhldmM6
IFJlbW92ZSBSUFMgbmFtZWQgZmxhZ3MKPiA+PiAgICBtZWRpYTogaGV2YzogRW1iZWRkZWQgaW5k
ZXhlcyBpbiBSUFMKPiA+PiAgICBtZWRpYTogaGFudHJvOiBVc2Ugc3lzY29uIGluc3RlYWQgb2Yg
J2N0cmwnIHJlZ2lzdGVyCj4gPj4gICAgYXJtNjQ6IGR0czogaW14OG1xOiBBZGQgbm9kZSB0byBH
MiBoYXJkd2FyZQo+ID4+Cj4gPj4gICAuLi4vbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3Qg
ICAgICAgICAgICAgfCAxNCArKystLS0KPiA+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtcS5kdHNpICAgICB8IDQzICsrKysrKysrKysrKystLS0tCj4gPj4gICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oICAgICAgICAgfCAgNSArLQo+ID4+ICAgLi4u
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jIHwgMjcgKysrLS0tLS0t
LS0KPiA+PiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMgICB8
IDQ4ICsrKysrKysrKysrKy0tLS0tLS0KPiA+PiAgIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2Nl
ZHJ1cy9jZWRydXNfaDI2NS5jICB8ICAyICstCj4gPj4gICBpbmNsdWRlL21lZGlhL2hldmMtY3Ry
bHMuaCAgICAgICAgICAgICAgICAgICAgfCAgNiArLS0KPiA+PiAgIDcgZmlsZXMgY2hhbmdlZCwg
ODQgaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiAtLSAKPiA+PiAyLjMw
LjIKPiA+Pgo+ID4+Cj4gPgo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
