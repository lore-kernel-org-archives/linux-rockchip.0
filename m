Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85CF2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 11:22:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4113F60F44
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 11:22:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4113F60F44
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PLOHPeYPSEhbC3rtOUwE7LIqH1eSO1g/94iO/KO+wM8=; b=UXqpNtNDoz5DA8RJkdwCiYKF9f
	cBOoNavyvXWeLTt2NUSiVyLYxSR/UUB3v8rdh4VnyA1GTLKkABNlFJysPOsWUjk4uee02KJbbmQhx
	TTrD8fa/XrxMp9M1X5PtbOVdcHwrwp5k6V5Uwf/t6Ue3f/D2be+18o310vn8dVBXKNJI5FXCi0OBK
	gM4rwhdYq8NPTyfI631hkr3se8VD7Bkss3daST1+7SzyoqdoAgaZUPZnoRYszs7Gjh723oHOfVxQ0
	AUxXq8IpbdKP8f/Yi/cPZ/GRPQEOJvMtZJkkuhW2Kzsp/TBfGE3mAIrT4fDVPoTrMyK28tYQu2Xn+
	ppNoV9YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbLIM-006gzj-W8; Fri, 15 Oct 2021 11:22:39 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbKWp-006VHe-7A; Fri, 15 Oct 2021 10:33:33 +0000
Received: by mail-wr1-x42b.google.com with SMTP id e3so25475382wrc.11;
 Fri, 15 Oct 2021 03:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Q/m7Gr8n0zuK0aOcQb53oByaeENAR90+6+QHf9J6DSM=;
 b=TXDzd3zQdeIQoWQ77fpiYlS7z59J6VV05QiogjrBw4247LxWZ57PND9ZXiFOwGvfBO
 PGJI3poPd1nsaOTF4JNueLozKXv+2d50bPhbp5CQ5UooKWHZ4cD3XULb5FV6IBPuL2nG
 +jYNtyG8Ku7/r4X3S4sKNju4mL2XmskqCDfoXJlTsQv3idNT2/UFbLDQ09S9tKl8AqHs
 34HzNX/NxwxTn/6WnWKFEMZL4/KQ4RtFxnRH16HiJxeE9/sMndOLPHkNPZUmbIFexxBD
 BCeRspUPZpEuQGgNec4HtpNcbTzPlzlHsWf/NDZkYJcFKkODhtYXRynRfnAB+zCNwykk
 LwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Q/m7Gr8n0zuK0aOcQb53oByaeENAR90+6+QHf9J6DSM=;
 b=Fam9N30fnMtPcpoE0CnLJPRxvxANXsQq48CqFOJqOvaKQJGcgVO15v7SokGpwzmYYs
 87YteMzDdvs60K1nA4Oceew9COUcnZfmHO3aCEFoa3TAm/L3rjln5D/0HUfAEg8ToDWl
 7YdBI5In1Z0LkfJJgspJa6cqD/ZLgxK8VWpSSVjvHOJUpFKDutOC6h4Seo/DbOjVJcLN
 fKU7COGykuBAf8ksFnlPZ8KAza68eV3B6avjSKEBsD8BjXMzjYMQ+jgu3DqUCBDmoGYo
 TSV62sWXNz6nK5xzr31EKs7lPLPQgH2AKP2TETKdvpV0Je08SZ/rRLs/FA9UYDvGHTvB
 MBeQ==
X-Gm-Message-State: AOAM5325TRpGTw0nLVrPN88tGZY/rT65uk70SuEnKJ4DOem/JE9WXIz6
 3oFuwQX2Sj6uqfVTXkS2MEBpSD5LRG+1
X-Google-Smtp-Source: ABdhPJzvQyuR8eS8meMNbWy6UhnS7ytKLdQcqebigSr/Ico0kVVTZpgTOZXQpY1KjPPNdBXCyqTkMw==
X-Received: by 2002:a05:6000:1567:: with SMTP id
 7mr13495413wrz.408.1634294008512; 
 Fri, 15 Oct 2021 03:33:28 -0700 (PDT)
Received: from [192.168.200.23] (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.gmail.com with ESMTPSA id o6sm6016884wri.49.2021.10.15.03.33.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Oct 2021 03:33:28 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] media: HEVC: RPS clean up
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
 <21222555.EfDdHjke4D@kista>
 <3c5851ac-3b8a-decc-93c1-01a65b1f8611@collabora.com>
 <1705005.VLH7GnMWUR@kista>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <4f8f6da3-70b1-5dd8-27b7-c9f9fd37920b@gmail.com>
Date: Fri, 15 Oct 2021 12:33:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1705005.VLH7GnMWUR@kista>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_033331_330700_E9075D0B 
X-CRM114-Status: GOOD (  28.39  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQmVuamFtaW4sIEplcm5lagpBbSAxMi4xMC4yMSB1bSAxODowOCBzY2hyaWViIEplcm5laiDF
oGtyYWJlYzoKPiBDQzogQWxleCBCZWUKPiAKPiBBbGV4LCBwbGVhc2UgdGFrZSBhIGxvb2sgdG8g
dGhlc2UgcGF0Y2hlcyB0b28uClRoZXNlIHBhdGNoZXMgZG9uJ3QgcmVtb3ZlIGFueXRoaW5nIHRo
YXQgd291bGQgYmUgbmVlZCBmb3Igcmt2ZGVjIGhldmMgLSAKYnV0IGluZGVlZCAtIHdlIG5lZWQg
c29tZSBtb3JlOgpodHRwczovL2dpdGh1Yi5jb20vTGlicmVFTEVDL0xpYnJlRUxFQy50di9ibG9i
L21hc3Rlci9wcm9qZWN0cy9Sb2NrY2hpcC9wYXRjaGVzL2xpbnV4L2RlZmF1bHQvbGludXgtMjAw
MS12NGwtd2lwLXJrdmRlYy1oZXZjLnBhdGNoI0wyNDItTDMwNQoKdjRsMl9jdHJsX2hldmNfc3Bz
OgpfX3U4CXZpZGVvX3BhcmFtZXRlcl9zZXRfaWQKX191OAlzZXFfcGFyYW1ldGVyX3NldF9pZAoK
djRsMl9jdHJsX2hldmNfcHBzOgpfX3U4CXBpY19wYXJhbWV0ZXJfc2V0X2lkCl9fdTE2CXNob3J0
X3Rlcm1fcmVmX3BpY19zZXRfc2l6ZQpfX3UxNglsb25nX3Rlcm1fcmVmX3BpY19zZXRfc2l6ZQoK
QXMgZmFyIGFzIEkgY2FuIHNlZSwgdGhleSBhcmUgYWxsIHBhcnQgb2YgdGhlIHNwZWMgYW5kIHNo
b3VsZCBiZSAKdGhlcmVmb3JlIGdvb2QgdG8gZ28gaW4gdGhlIHVhcGkuCgpBcyB5b3UgbWlnaHQg
bm93LCBldmVuIHJrdmRlYyBpcyBhIGZyYW1lLWJhc2VkIGRlY29kZXIsIGl0IGRvZXNuJ3QgZnVs
bHkgCnBhcnNlIHNsaWNlIGhlYWRlcnMgaW4gSFcgZm9yIEhFVkMgYW5kIHdlIG5lZWQgdG8gc2V0
IHJlZmVyZW5jZXMgaW4gU1cgCndoaWNoIHJlcXVpcmVzIGxvb3Bpbmcgb3ZlciB0aGUgc2xpY2Vz
LiBEb3duc3RyZWFtIHdlIGhhdmUgYSBoYWNrIHRvIApnaXZlIG51bV9zbGljZXMgaW4gdjRsMl9j
dHJsX2hldmNfc3BzIGZvciBkb2luZyB0aGF0LgpUaGF0IGNvdWxkIGZ1bGx5IGdvIGF3YXksIGlm
IFY0TDJfQ0lEX01QRUdfVklERU9fSEVWQ19TTElDRV9QQVJBTVMgY291bGQgCmdldCBkeW5hbWlj
IGFycmF5IGNvbnRyb2wgc3VwcG9ydCBhbmQgd291bGQgbWFrZSB1cHN0cmVhbWluZyB0aGlzIGEg
bG90IAplYXNpZXIgLSBhcyBmYXIgYXMgSSdtIGNvbmNlcmVkIHRoaXMgd291bGQgYmUgcmVxdWly
ZWQgZm9yIFJQaSBIRVZDIApkZWNvZGVyIGFzIHdlbGwuCkFzIGEgbGFzdCByZXNvcnQgd2UgY291
bGQgYWxzbyBpbXBsZW1lbnQgYSBIVyBzcGVjaWZjIGNvbnRyb2wgw6AgbGEKVjRMMl9DSURfSEFO
VFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAgLSBidXQgSSdkIGxpa2UgdG8gYXZvaWQgdGhhdCwg
Cmtub3dpbmcgaXQgd291bGQgY2VydGFpbmx5IGJlIGJldHRlciBmcm9tIHBlcmZvcm1hbmNlIHBv
di4KCkFsZXguCj4gCj4gRG5lIHRvcmVrLCAxMi4gb2t0b2JlciAyMDIxIG9iIDE3OjU3OjUwIENF
U1QgamUgQmVuamFtaW4gR2FpZ25hcmQgbmFwaXNhbChhKToKPj4KPj4gTGUgMTIvMTAvMjAyMSDD
oCAxNzozNCwgSmVybmVqIMWga3JhYmVjIGEgw6ljcml0IDoKPj4+IEhpIEJlbmphbWluIQo+Pj4K
Pj4+IERuZSB0b3JlaywgMTIuIG9rdG9iZXIgMjAyMSBvYiAxNjozNTo0OCBDRVNUIGplIEJlbmph
bWluIEdhaWduYXJkCj4gbmFwaXNhbChhKToKPj4+PiBUaGlzIHNlcmllcyBhaW1zIHRvIGNsZWFu
IHVwIFJlZmVyZW5jZSBQaWN0dXJlIFNldCB1c2FnZSBhbmQgZmxhZ3MuCj4+Pj4KPj4+PiBMb25n
IHRlcm0gZmxhZyB3YXMgbmFtZWQgd2l0aCBSUFMgcHJlZml4IHdoaWxlIGl0IGlzIG5vdCB1c2Vk
IGZvciBSUFMKPj4+PiBidXQgZm9yIG1hcmsgbG9uZyB0ZXJtIHJlZmVyZW5jZXMgaW4gREJQLiBS
ZW1hbmUgaXQgYW5kIHJlbW92ZSB0aGUgdHdvCj4+Pj4gb3RoZXIgdXNlbGVzcyBSUFMgZmxhZ3Mu
Cj4+Pj4KPj4+PiBDbGFyaWZ5IGRvY3VtZW50YXRpb24gYWJvdXQgUlBTIGxpc3RzIGNvbnRlbnQg
YW5kIG1ha2Ugc3VyZSB0aGF0IEhhbnRybwo+Pj4+IGRyaXZlciB1c2UgdGhlbSBjb3JyZWN0bHkg
KGkuZSB3aXRob3V0IGxvb2sgdXAgaW4gREJQKS4KPj4+Pgo+Pj4+IFRoZXNlIHBhdGNoZXMgYXJl
IHRoZSBsYXN0IGluIG15IGJhY2tsb2cgaW1wYWN0aW5nIEhFVkMgdUFQSS4KPj4+PiAgIEZyb20g
bXkgcG9pbnQgb2Ygdmlldywgb25jZSB0aGV5IGdldCBtZXJnZWQsIHlvdSBjb3VsZCBzdGFydCB0
YWxraW5nCj4+Pj4gYWJvdXQgaG93IG1vdmUgSEVWQyB1QVBJIHRvIHN0YWJsZS4KPj4+IFdpdGgg
eW91ciBjaGFuZ2VzLCBIRVZDIHVBUEkgY29udHJvbHMgc3RpbGwgd29uJ3QgYmUgY29tcGxldGUu
IENlZHJ1cwo+IG5lZWRzCj4+PiBlbnRyeSBwb2ludCBjb250cm9sLCB3aGljaCBpbiB0dXJuIG5l
ZWRzIGR5bmFtaWMgYXJyYXkgc3VwcG9ydC4gSSdtIGEgYml0Cj4gbGF6eQo+Pj4gaW1wbGVtZW50
aW5nIHRoYXQgY29udHJvbCwgYnV0IEkgZ3Vlc3MgSSBjYW4gdGFrZSBhIGxvb2sgaW4gYSBtb250
aCBvciBzby4KPj4+IHJrdmRlYyBhbHNvIG5lZWRzIG1vcmUgZmllbGRzIGZvciBIRVZDLiBXaXRo
IHBhdGNoZXMgY29sbGVjdGVkIGhlcmU6Cj4+PiBodHRwczovL2dpdGh1Yi5jb20vTGlicmVFTEVD
L0xpYnJlRUxFQy50di9ibG9iL21hc3Rlci9wcm9qZWN0cy9Sb2NrY2hpcC8KPj4+IHBhdGNoZXMv
bGludXgvZGVmYXVsdC9saW51eC0yMDAxLXY0bC13aXAtcmt2ZGVjLWhldmMucGF0Y2gKPj4+IGZs
dXN0ZXIgSEVWQyB0ZXN0IHNjb3JlIGlzIHJlcG9ydGVkbHkgMTIxLzEzNSAoOC1iaXQgdGVzdHMg
b25seSkuCj4+Cj4+IEhpIEplcm5laiwKPj4KPj4gVGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrLCBn
ZXR0aW5nIGEgbGlzdCBvZiBtaXNzaW5nIGl0ZW1zIGluIEhFVkMgdUFQSQo+PiB3aWxsIGRlZmlu
aXRpdmVseSBoZWxwIHRvIGZpbGwgdGhlIGhvcGUuCj4+IFRoZSBwYXRjaCB5b3UgbWVudGlvbiBm
b3Igcmt2ZGVjIGFyZSBhbHJlYWR5IG1lcmdlZCBpbiBtYWlubGluZSBrZXJuZWwgKGF0Cj4+IGxl
YXN0IGZvciB1QVBJIHBhcnQpLgo+IAo+IEFyZSB0aGV5PyBXaGF0IGFib3V0Ogo+IHZpZGVvX3Bh
cmFtZXRlcl9zZXRfaWQKPiBzZXFfcGFyYW1ldGVyX3NldF9pZAo+IHBpY19wYXJhbWV0ZXJfc2V0
X2lkCj4gc2hvcnRfdGVybV9yZWZfcGljX3NldF9zaXplCj4gbG9uZ190ZXJtX3JlZl9waWNfc2V0
X3NpemUKPiAKPiBBdCBsZWFzdCBJIGRvbid0IHNlZSB0aGVtIGluIGxpbnV4LW5leHQuIE1heWJl
IHRoYXQgaW5mb3JtYXRpb24gY2FuIGJlCj4gb2J0YWluZWQgaW4gc29tZSBvdGhlciB3YXk/Cj4g
Cj4+IENlZHJ1cyBuZWVkcyBhcmUgYWJvdXQgbnVtX2VudHJ5X3BvaW50X29mZnNldHMsIG9mZnNl
dF9sZW5fbWludXMxIGFuZAo+IGVudHJ5X3BvaW50X29mZnNldF9taW51czFbIGkgXQo+PiBpbiBI
RVZDIHNwZWNpZmljYXRpb25zID8KPiAKPiBZZXMsIENlZHJ1cyBuZWVkcyB0byBrbm93IHdob2xl
IGxpc3Qgb2YgZW50cnkgcG9pbnRzLiBJIGRvbid0IHRoaW5rIHdlIG5lZWQgdG8KPiB3b3JyeSBh
Ym91dCBvZmZzZXRfbGVuX21pbnVzMSwgbGlzdCBjb3VsZCBiZSBwcmUtcHJvY2Vzc2VkIC0ganVz
dCBudW1iZXIgb2YKPiBlbnRyeSBwb2ludHMgYW5kIHRoZWlyIHZhbHVlcy4KPiAKPiBCZXN0IHJl
Z2FyZHMsCj4gSmVybmVqCj4gCj4+Cj4+IFJlZ2FyZHMsCj4+IEJlbmphbWluCj4+Cj4+Pgo+Pj4g
SSB3b3VsZCBjZXJ0YWlubHkgd2FpdCB3aXRoIG1vdmluZyBIRVZDIHVBUEkgdG8gc3RhYmxlLgo+
Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IEplcm5lago+Pj4KPj4+PiB2ZXJzaW9uIDI6Cj4+Pj4g
LSBjaGFuZ2UgRFBCIGZpZWxkIG5hbWUgZnJvbSBycHMgdG8gZmxhZ3MKPj4+Pgo+Pj4+IFBsZWFz
ZSBub3RlIHRoYXQgdGhlIG9ubHkgcHVycG9zZSBvZiBjb21taXRzIDMgYW5kIDQgaXMgdG8gYWxs
b3cgdG8gdGVzdAo+Pj4+IEcyIGhhcmR3YXJlIGJsb2NrIGZvciBJTVg4TVEgdW50aWwgYSBwcm9w
ZXIgc29sdXRpb24gaXN1aW5nIHBvd2VyIGRvbWFpbgo+Pj4+IGNhbiBiZSBmb3VuZC4gRG8gbm90
IG1lcmdlIHRoZW0uCj4+Pj4KPj4+PiBHU3RyZWFtZXIgSEVWQyBwbHVnaW4gbWVyZ2UgcmVxdWVz
dCBjYW4gYmUgZm91bmQgaGVyZToKPj4+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
Z3N0cmVhbWVyL2dzdHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzEwNzkKPj4+Pgo+Pj4+IFdpdGgg
dGhvc2UgcGllY2Ugb2YgY29kZSBmbHVzdGVyIHNjb3JlIGlzIDc3LzE0Ny4KPj4+Pgo+Pj4+IEJl
bmphbWluCj4+Pj4KPj4+PiBCZW5qYW1pbiBHYWlnbmFyZCAoNCk6Cj4+Pj4gICAgIG1lZGlhOiBo
ZXZjOiBSZW1vdmUgUlBTIG5hbWVkIGZsYWdzCj4+Pj4gICAgIG1lZGlhOiBoZXZjOiBFbWJlZGRl
ZCBpbmRleGVzIGluIFJQUwo+Pj4+ICAgICBtZWRpYTogaGFudHJvOiBVc2Ugc3lzY29uIGluc3Rl
YWQgb2YgJ2N0cmwnIHJlZ2lzdGVyCj4+Pj4gICAgIGFybTY0OiBkdHM6IGlteDhtcTogQWRkIG5v
ZGUgdG8gRzIgaGFyZHdhcmUKPj4+Pgo+Pj4+ICAgIC4uLi9tZWRpYS92NGwvZXh0LWN0cmxzLWNv
ZGVjLnJzdCAgICAgICAgICAgICB8IDE0ICsrKy0tLQo+Pj4+ICAgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpICAgICB8IDQzICsrKysrKysrKysrKystLS0tCj4+Pj4g
ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaCAgICAgICAgIHwgIDUgKy0K
Pj4+PiAgICAuLi4vc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMgfCAy
NyArKystLS0tLS0tLQo+Pj4+ICAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1f
dnB1X2h3LmMgICB8IDQ4ICsrKysrKysrKysrKy0tLS0tLS0KPj4+PiAgICAuLi4vc3RhZ2luZy9t
ZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYyAgfCAgMiArLQo+Pj4+ICAgIGluY2x1ZGUv
bWVkaWEvaGV2Yy1jdHJscy5oICAgICAgICAgICAgICAgICAgICB8ICA2ICstLQo+Pj4+ICAgIDcg
ZmlsZXMgY2hhbmdlZCwgODQgaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCj4+Pj4KPj4+
PiAtLSAKPj4+PiAyLjMwLjIKPj4+Pgo+Pj4+Cj4+Pgo+Pgo+IAo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
