Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6043C282C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 10:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MmxYZgGj3McAlBGWUNfkxXbo3Hf2G/Bmozx7NWDA2I=; b=hQL6GBNT7QaKQ0
	1S83ISoBp3nSG/2AADpRwzUJBFP5LbjnyNXjMMOi7XtWeZuovN7Tf/nmPb3qAzp95NqDToBv/vldR
	OEcNP0F29DuHjfSa4tut+3Xzz+kbtQTAobZ0uKZCsUYrZWIjqQPqZRjVWEKf6WO7AP8kmjMttigDU
	LXLEomKrZpfN0U6CleJgQRaysft4OzEHrBIfcj1NMBCvFV3o29sYk3z38tQOJesNLHONwLz5FLEd4
	k4TIpZg0sDgimJg+4cPpvlHkrySlq7/V5TkSrQsG+SSSk8/xPNGJ5Y5lqOSSOUDCkALbpQH1h18qr
	A6hmny3ZF5uBuNE/1gyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnxHA-0000000AVoa-0Z1e;
	Fri, 28 Feb 2025 10:07:24 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnxBH-0000000AUDz-0PYr
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 10:01:20 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-abee50621ecso262807666b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 02:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740736876; x=1741341676; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2rXI3ClDmBMPb/nTHq47U3JbT34v5Vk5CODpFCMD7go=;
        b=n0yT1pWaNEBmZCRmgm8K6udIWfzfuy2vh+a7741NtrINu8CocRfh5BiVI2Cj28yoO/
         EhXYw3EUekm4DLjipWvcxg7A7ZtVT3vtwdGeXMeUtXY+t9Rt/8RCNmUH6XUmT/OARqwb
         vXkyoqdtv44OCLaAuIUYwalQeX3ASb089UkqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740736876; x=1741341676;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2rXI3ClDmBMPb/nTHq47U3JbT34v5Vk5CODpFCMD7go=;
        b=ucQk3VQ6cGcZBwYgU17QIS2A+xnZS+enWPHdbl3QbsDjUe6ojunFgw/lR17jeNPINR
         rTfOYfvnfS8BGS8iNkm4P44souox9ImftCRd+k66aQlqejGkJwYt1i0aR+oUvwuHR1Df
         c9ZWC1wquslNlxaAuZlpNhDpgUmp61Zngg0D52t0mL+hPycR5EQP3CPbaiz2+iIax78o
         Wkcjk33YyRZrH8l9seD0+HWW0uGCbEbOoqX5+9QyQqnFwcgYKweDraQVZG5llU+iCHxE
         pjEQd4e0cRCO3WarYTdj6Ue8XaL23pnnU2A5zzAkFe2w5VCPX3waRuzxEAh/NBgmEJsp
         LBsA==
X-Forwarded-Encrypted: i=1; AJvYcCWZAdtlJJn7tBWgyEwuwpSLr6egSZTJMah+hRqbzp+vBVRpgPdh+rnQRqK1ogdpLqpJFxdl87VW+SqQPl7bjg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzkaf7ae3EEaArwWB/hLR5XD72PN2ZIqNS5qDe80iaJ2AYgVS0K
	zhEHGAc/6IclZfhEGJAyRwX2GVar831wGP9JfNR66miNv8tLOX+Wk/y6i+lB3/AoFYhZzGgJD9g
	=
X-Gm-Gg: ASbGnctNdMyuOCUoji/w/Y0XIqCej/fSq9UAYmhMUjPGmMo1KzZgIQ+t+MMpBSkpNiW
	TIJqFSMDv8zgJalyzKTIyRIQKOb593EqFaBFi5hEP0dMTqoxzzktS84YBPp2BrK5gkYT7+hBZ8S
	S4ITSNQ9OOXL4X2olKa0lE4dzV7ZLDoIayiaEvv5O3wq87kdCiDAg3s3zvMxI7J0SmnD3zQwTO5
	zchZloz8VBgWReoc42nOXytEmE0YIghWFS32qotURRhdTJi5DdV9ixDQlGHfXdD8iWCJTVZBZYg
	ZnaGcuhX6P5xLIIkIUoEryOtH7Y0w/iwHqadNEEoVWVfFWr7tDsvLpjuQChrVA==
X-Google-Smtp-Source: AGHT+IEsuZfsJ8HEmI7A7y9j/f2IlbjyXYbc8hUygQrMRtI1eMUhDuGcaAC4E6DOd5ZgExzyPY3g0Q==
X-Received: by 2002:a17:906:b897:b0:abf:2a6e:1386 with SMTP id a640c23a62f3a-abf2a6e13dcmr181224166b.37.1740736876559;
        Fri, 28 Feb 2025 02:01:16 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0b86e84csm267049266b.0.2025.02.28.02.01.15
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 02:01:16 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5ded4a3bf0bso9288a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 02:01:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXgNUpKg8Az+m+yDfdHOyTAI5/QLm8vZmh4OAlJd9fXOTWg6fOjnzZDhSEztF5G2yuLzZ11ZduDjlDSqQZetw==@lists.infradead.org
X-Received: by 2002:a50:ee06:0:b0:5e5:7c1:43bd with SMTP id
 4fb4d7f45d1cf-5e507c1454bmr6895a12.1.1740736875259; Fri, 28 Feb 2025 02:01:15
 -0800 (PST)
MIME-Version: 1.0
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
 <20250103152326.GP554@pendragon.ideasonboard.com> <87bjw9s4s3.fsf@gmail.com> <dtfv2slbtj3ar2wvlcnd74p3xtlvggebkk3fj5ocm3eil7kyqw@al3brwf4y5dw>
In-Reply-To: <dtfv2slbtj3ar2wvlcnd74p3xtlvggebkk3fj5ocm3eil7kyqw@al3brwf4y5dw>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 28 Feb 2025 19:00:57 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DS2x3sX59EdkTEMuO=eXc=Q0jD44EUwMisP6ocWz11qg@mail.gmail.com>
X-Gm-Features: AQ5f1JocdLsXSFHYJ8IXhWDm1nRVG8G1TcpnZe42kpdJDZJxd7C4Oq_p5gzB7_w
Message-ID: <CAAFQd5DS2x3sX59EdkTEMuO=eXc=Q0jD44EUwMisP6ocWz11qg@mail.gmail.com>
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_020119_181167_BF435E74 
X-CRM114-Status: GOOD (  35.16  )
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

SGkgSmFjb3BvLAoKT24gRnJpLCBGZWIgMjgsIDIwMjUgYXQgMjoxMeKAr0FNIEphY29wbyBNb25k
aQo8amFjb3BvLm1vbmRpQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gSGkgTWlraGFpbAo+
Cj4gT24gVHVlLCBKYW4gMTQsIDIwMjUgYXQgMDc6MDA6MzlQTSArMDMwMCwgTWlraGFpbCBSdWRl
bmtvIHdyb3RlOgo+ID4KPiA+IEhpIExhdXJlbnQsCj4gPgo+ID4gT24gMjAyNS0wMS0wMyBhdCAx
NzoyMyArMDIsIExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJk
LmNvbT4gd3JvdGU6Cj4gPgo+ID4gPiBPbiBUaHUsIEphbiAwMiwgMjAyNSBhdCAwNjozNTowMFBN
ICswMzAwLCBNaWtoYWlsIFJ1ZGVua28gd3JvdGU6Cj4gPiA+PiBDdXJyZW50bHksIHRoZSBya2lz
cDEgZHJpdmVyIGFsd2F5cyB1c2VzIGNvaGVyZW50IERNQSBhbGxvY2F0aW9ucyBmb3IKPiA+ID4+
IHZpZGVvIGNhcHR1cmUgYnVmZmVycy4gSG93ZXZlciwgb24gc29tZSBwbGF0Zm9ybXMsIHVzaW5n
IG5vbi1jb2hlcmVudAo+ID4gPj4gYnVmZmVycyBjYW4gaW1wcm92ZSBwZXJmb3JtYW5jZSwgZXNw
ZWNpYWxseSB3aGVuIENQVSBwcm9jZXNzaW5nIG9mCj4gPiA+PiBNTUFQJ2VkIHZpZGVvIGJ1ZmZl
cnMgaXMgcmVxdWlyZWQuCj4gPiA+Pgo+ID4gPj4gRm9yIGV4YW1wbGUsIG9uIHRoZSBSb2NrY2hp
cCBSSzMzOTkgcnVubmluZyBhdCBtYXhpbXVtIENQVSBmcmVxdWVuY3ksCj4gPiA+PiB0aGUgdGlt
ZSB0byBtZW1jcHkgYSBmcmFtZSBmcm9tIGEgMTI4MHg3MjAgWFJHQjMyIE1NQVAnZWQgYnVmZmVy
IHRvIGEKPiA+ID4+IG1hbGxvYydlZCB1c2Vyc3BhY2UgYnVmZmVyIGRlY3JlYXNlcyBmcm9tIDcu
NyBtcyB0byAxLjEgbXMgd2hlbiB1c2luZwo+ID4gPj4gbm9uLWNvaGVyZW50IERNQSBhbGxvY2F0
aW9uLiBDUFUgdXNhZ2UgYWxzbyBkZWNyZWFzZXMgYWNjb3JkaW5nbHkuCj4gPiA+Cj4gPiA+IFdo
YXQncyB0aGUgdGltZSB0YWtlbiBieSB0aGUgY2FjaGUgbWFuYWdlbWVudCBvcGVyYXRpb25zID8K
PiA+Cj4gPiBTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHksIHlvdXIgcXVlc3Rpb24gdHVybmVkIG91
dCBhIGxpdHRsZSBtb3JlCj4gPiBpbnRlcmVzdGluZyB0aGFuIEkgZXhwZWN0ZWQgaW5pdGlhbGx5
LiA6KQo+ID4KPiA+IFdoZW4gY2FwdHVyaW5nIHVzaW5nIFlhdnRhIHdpdGggTU1BUCBidWZmZXJz
IHVuZGVyIHRoZSBjb25kaXRpb25zIG1lbnRpb25lZAo+ID4gaW4gdGhlIGNvbW1pdCBtZXNzYWdl
LCBmdHJhY2UgZ2l2ZXMgNDM3LjYgKy0gMS4xIHVzIGZvcgo+ID4gZG1hX3N5bmNfc2d0YWJsZV9m
b3JfY3B1IGFuZCA0MDkgKy0gMTQgdXMgZm9yCj4gPiBkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZp
Y2UuIFRodXMsIGl0IGxvb2tzIGxpa2UgdXNpbmcgbm9uLWNvaGVyZW50Cj4gPiBidWZmZXJzIGlu
IHRoaXMgY2FzZSBpcyBtb3JlIENQVS1lZmZpY2llbnQgZXZlbiB3aGVuIGNvbnNpZGVyaW5nIGNh
Y2hlCj4gPiBtYW5hZ2VtZW50IG92ZXJoZWFkLgo+ID4KPiA+IFdoZW4gdHJ5aW5nIHRvIGRvIHRo
ZSBzYW1lIG1lYXN1cmVtZW50cyB3aXRoIGxpYmNhbWVyYSwgSSBmYWlsZWQuIEluIGEKPiA+IHR5
cGljYWwgbGliY2FtZXJhIHVzZSBjYXNlIHdoZW4gTU1BUCBidWZmZXJzIGFyZSBhbGxvY2F0ZWQg
ZnJvbSBhCj4gPiBkZXZpY2UsIGV4cG9ydGVkIGFzIGRtYWJ1ZnMgYW5kIHRoZW4gdXNlZCBmb3Ig
Y2FwdHVyZSBvbiB0aGUgc2FtZSBkZXZpY2UKPiA+IHdpdGggRE1BQlVGIG1lbW9yeSB0eXBlLCBj
YWNoZSBtYW5hZ2VtZW50IGluIGtlcm5lbCBpcyBza2lwcGVkIFsxXQo+ID4gWzJdLiBBbHNvLCB2
YjJfZGNfZG1hYnVmX29wc197YmVnaW4sZW5kfV9jcHVfYWNjZXNzIGFyZSBuby1vcHMgWzNdLCBz
bwo+ID4gRE1BX0JVRl9JT0NUTF9TWU5DIGZyb20gdXNlcnNwYWNlIGRvZXMgbm90IHdvcmsgZWl0
aGVyLgo+ID4KPiA+IFNvIGl0IGxvb2tzIGxpa2UgdG8gbWFrZSB0aGlzIGNoYW5nZSByZWFsbHkg
dXNlZnVsLCB0aGUgYWJvdmUgaXNzdWUgb2YKPiA+IGNhY2hlIG1hbmFnZW1lbnQgZm9yIGxpYmNh
bWVyYS9ETUFCVUYvdmlkZW9idWYyLWRtYS1jb250aWcgaGFzIHRvIGJlCj4gPiBzb2x2ZWQuIEkn
bSBub3QgYW4gZXhwZXJ0IGluIHRoaXMgYXJlYSwgc28gYW55IGFkdmljZSBpcyBraW5kbHkgd2Vs
Y29tZS4gOikKPgo+IEl0IHdvdWxkIGJlIHNoYW1lIGlmIHdlIGxldCB0aGlzIGRpc2N1c3Npb24g
ZHJvcCBkZWFkLi4gY2FjaGUKPiBtYW5hZ2VtZW50IHBvbGljaWVzIGFyZSByZWxldmFudCBmb3Ig
cGVyZm9ybWFuY2VzLCBzcGVjaWZpY2FsbHkgZm9yCj4gY3B1IGFjY2VzcywgYW5kIHlvdXIgYWJv
dmUgNy43bXMgdnMgMS4xIG1zIHRlc3QgY2xlYXJseSBzaG93cyB0aGF0Lgo+Cj4gPgo+ID4gWzFd
IGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdpdC90cmVlL2RyaXZlcnMvbWVkaWEvY29t
bW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jP2lkPTk0Nzk0YjVjZTRkOTBhYjEzNGIwYjEw
MWEwMmZkZGY2ZTc0YzQzN2QjbjQxMQo+Cj4gSSB3b3VsZCBsaWtlIHRvIGtub3cgZnJvbSBIYW5z
IGlmIHRoZSBkZWNpc2lvbiB0byBkaXNhbGxvdyBjYWNoZS1oaW50cwo+IGZvciBkbWFidWYgaW1w
b3J0ZXJzIGlzIGEgZGVzaWduIGNob2ljZSBvciBpcyBkZWVwbHkgcm9vdGVkIGluIG90aGVyCj4g
cmVhc29ucyBJIG1pZ2h0IGJlIG1pc3NpbmcuCgpXaGVuIERNQS1idWYgaXMgdXNlZCwgdGhlIHJl
c3BvbnNpYmlsaXR5IGZvciBjYWNoZSBtYW5hZ2VtZW50IGlzCnNvbGVseSBvbiB0aGUgQ1BVIHVz
ZXJzJyBzaWRlLCBzbyBjYWNoZS1oaW50cyBkb24ndCByZWFsbHkgYXBwbHkuIEl0J3MKdGhlIGV4
cG9ydGVyICg9YWxsb2NhdG9yKSB3aG8gZGV0ZXJtaW5lcyB0aGUgbWFwcGluZyBwb2xpY3kgb2Yg
dGhlCmJ1ZmZlciBhbmQgcHJvdmlkZXMgbmVjZXNzYXJ5IERNQV9CVUZfU1lOQyBvcGVyYXRpb25z
IChjYW4gYmUgbm8tb3AgaWYKdGhlIGJ1ZmZlciBpcyBjb2hlcmVudCkuCgpCZXN0IHJlZ2FyZHMs
ClRvbWFzegoKPgo+IEknbSBhc2tpbmcgYmVjYXVzZSB0aGUgaWRlYSBpcyBmb3IgbGliY2FtZXJh
IHRvIGFjdCBzb2xlbHkgYXMgZG1hLWJ1Zgo+IGltcG9ydGVyLCB0aGUgY3VycmVudCBhbGxvYy1l
eHBvcnQtdGhlbi1pbXBvcnQgdHJpY2sgaXMgYW4gaGVscGVyIGZvcgo+IGFwcGxpY2F0aW9ucyB0
byB3b3JrIGFyb3VuZCB0aGUgYWJzZW5jZSBvZiBhIHN5c3RlbSBhbGxvY2F0b3IuCj4KPiBJZiB0
aGUgcmVxdWlyZW1lbnQgdG8gZGlzYWJsZSBjYWNoZS1oaW50cyBmb3IgaW1wb3J0ZXJzIGNhbm5v
dCBiZQo+IGxpZnRlZCwgZm9yIGxpYmNhbWVyYSBpdCBtZWFucyB3ZSB3b3VsZCBub3QgYmUgYWJs
ZSB0byB1c2UgaXQuCj4KPgo+ID4gWzJdIGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdp
dC90cmVlL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jP2lk
PTk0Nzk0YjVjZTRkOTBhYjEzNGIwYjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjgyOQo+ID4gWzNdIGh0
dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdpdC90cmVlL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jP2lkPTk0Nzk0YjVjZTRkOTBhYjEzNGIw
YjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjQyNgo+ID4KPiA+IC0tCj4gPiBCZXN0IHJlZ2FyZHMsCj4g
PiBNaWtoYWlsIFJ1ZGVua28KPiA+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
