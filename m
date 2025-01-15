Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C005C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 13:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwsGo2rRjcyvMGUYyHw9zNsAIVUPe0cHffDbjPa6sR8=; b=zbWEifsirVEfgU
	opmorxZ14uTR70T76SMvoqsGMm5Sxwx+JEEFRnQdtXcLSoqJiDbrs+7LGzLQuSv/GyqPJU5nGun8Z
	7TlaMtabmOiR0hX7P8PCgnrWneb1en0FF71W+SKuwc4ylrl3lQnQs1N6grD6HBCg7W+8zfpI2sJhO
	IFL/CWCUXUY/UA7RYCCYBxHLnjDOPgjm1UXQt6WRLDKe0nCEIM69/5Dr4hJkRVHM0qPxHwkmRw4va
	OHob15kC6tYHJ5ekrpzlDiA+po/BOY3L8LNUAzqPktp+wSqteNTFUPAHetXzayaXI9bEXyCHo+Ac8
	BNVvCMJvRs5AmrEpBEdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY3Ua-0000000Byuz-1CDv;
	Wed, 15 Jan 2025 13:31:32 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY3TK-0000000ByfX-0Epl;
	Wed, 15 Jan 2025 13:30:15 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-540215984f0so7395740e87.1;
        Wed, 15 Jan 2025 05:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736947812; x=1737552612; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Se+wWjKIJoaEi2lwJRboAVHWUDI/GKAKI+okl83Jtg=;
        b=RlDFJFhdG38TpO1kGDQy08BwU7D4tZeK9EYm8xnOvqnPm1CfOQG8p3NQzvrtb9M1MW
         895HhCq+N4eXyPRADhoFdT+XsiO6h5nnZxo8SCylP+aT2rpLLt0M51FPTzyQsaAw5jLG
         uIeetGwbMstl102lmCRlzao7rY5Qu6u1SQJorUkfQ0dUyvbxfeYFthPeD1nx+p23aOu7
         iZB+gwshcu6olURr1ETjZ8DTBtN6KEPNGucRepoDSD3QDVKyqLyxujr4DGKts+o1Lv+x
         pZ8utBkj23rHnzu9CJh9RWahw8VJdn/A5TAV0wiyDGCRcYyPNx5pUV2bk/wjymrHV6V7
         OGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736947812; x=1737552612;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7Se+wWjKIJoaEi2lwJRboAVHWUDI/GKAKI+okl83Jtg=;
        b=FBO8HExrI0PS+gZMCn0aNjxvnluESJBzv/H4a1GUVABdIfg2m/iK1unig4xAnC7iTD
         xdQPXZx0wD4IjmjwlRIRLrTfAnQvtQM9Fq36JjjjCtu4BhBCzwppXidp7vnMytW79LrD
         Fq37c+rCy+PzdwBm7eK3q1ZmBy4mPzhah5c2M2C/whFwI4LC7MHHsE6x0Deu00XkVXqY
         elXFexWcnzXe2JEO7mJS8XoBIViARti7tBjgENCwk7cLMTRWdHCFW1PylGKqhDXNnmpU
         NsHytxk7WZgNZqmL3JVmCN3ZxcQV+cK4GpoCiVU/dw3wH34UxAFL6JQq1oujD17SVP9B
         sWYA==
X-Forwarded-Encrypted: i=1; AJvYcCUmiFUrOH7wWvwWsy7fVN2wPihZas2fol/9IBZKaLeCfTKKexUpOCa/f49BLBZmigkZRuQgxehznmmMU5Krcg0=@lists.infradead.org, AJvYcCWUr8RGIk7MD5kuH6tKwOAxJXYjcS7qgSkBChERXRrmghI51vZKD5LjbHf8Y2I5oydS53VKM68vH7AhDauVtok2@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+iZqNXErI7iH+H17FMdQfVmbBhEOV4pVumDwj2su2p5xcN1rW
	rFCM2cYT9za8IKVEmAcf9p3sGw7ovmp4wKUgW4kGgFWRGkYdQiLQ
X-Gm-Gg: ASbGncvBmpgHCyj3kKq0bZg8R393E1RD0eISuv5G1zFx2Em3mrAKZLpc8W7eEdbRT5j
	EDzvZFnHV4oQV6IlTXyWyNqUzaG1MJ2Lyt9SmazGu2wTw5AQ8Pr7yiG+wP+HizITfAl37umAUnA
	Sg0S0uq729s7C1r74dZkqq0pwWSAXcDb2muIpNY1k+7xa2YTa4VPUf+A9OOWXN+ljB2Xr3VaI/9
	ycqwpqbs/b9IC10Hw1aLiWwVhc71PKP4P+6Iydv5VNWXtmRH7oR0D6QYgosLZHSAfpJHy4hp8e+
	4HdO9EwpAYsoXo8ZxvHnvJzt3s+wfvcNuepNDWx/hVCH
X-Google-Smtp-Source: AGHT+IE9z+a9dcE8SStrZJMI4+H/Sxq/mNyV61u5lE4XZzuS1iMzAADr7X2mm8/UuZWGBbfmqP84Bg==
X-Received: by 2002:a05:6512:3da9:b0:53f:f074:801c with SMTP id 2adb3069b0e04-54284815c7dmr10284744e87.41.1736947811750;
        Wed, 15 Jan 2025 05:30:11 -0800 (PST)
Received: from razdolb (static.248.157.217.95.clients.your-server.de. [95.217.157.248])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49df1sm1994330e87.57.2025.01.15.05.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 05:30:11 -0800 (PST)
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
 <20250103152326.GP554@pendragon.ideasonboard.com>
 <87bjw9s4s3.fsf@gmail.com>
 <CAAFQd5ACseSBg4WZnUnbtwh+i63xcKMBFKnfc4_Aqfmnz0s=7A@mail.gmail.com>
User-agent: mu4e 1.10.9; emacs 29.4.50
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Tomasz Figa <tfiga@chromium.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld
 <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
Date: Wed, 15 Jan 2025 16:24:36 +0300
In-reply-to: <CAAFQd5ACseSBg4WZnUnbtwh+i63xcKMBFKnfc4_Aqfmnz0s=7A@mail.gmail.com>
Message-ID: <877c6wryqn.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_053014_094143_409C2F41 
X-CRM114-Status: GOOD (  25.34  )
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

SGkgVG9tYXN6LAoKT24gMjAyNS0wMS0xNSBhdCAxNzozMSArMDksIFRvbWFzeiBGaWdhIDx0Zmln
YUBjaHJvbWl1bS5vcmc+IHdyb3RlOgoKPiBIaSBNaWtoYWlsIGFuZCBMYXVyZW50LAo+Cj4gT24g
V2VkLCBKYW4gMTUsIDIwMjUgYXQgMjowN+KAr0FNIE1pa2hhaWwgUnVkZW5rbyA8bWlrZS5ydWRl
bmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+Cj4+IEhpIExhdXJlbnQsCj4+Cj4+IE9uIDIwMjUt
MDEtMDMgYXQgMTc6MjMgKzAyLCBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlk
ZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Pgo+PiA+IE9uIFRodSwgSmFuIDAyLCAyMDI1IGF0IDA2
OjM1OjAwUE0gKzAzMDAsIE1pa2hhaWwgUnVkZW5rbyB3cm90ZToKPj4gPj4gQ3VycmVudGx5LCB0
aGUgcmtpc3AxIGRyaXZlciBhbHdheXMgdXNlcyBjb2hlcmVudCBETUEgYWxsb2NhdGlvbnMgZm9y
Cj4+ID4+IHZpZGVvIGNhcHR1cmUgYnVmZmVycy4gSG93ZXZlciwgb24gc29tZSBwbGF0Zm9ybXMs
IHVzaW5nIG5vbi1jb2hlcmVudAo+PiA+PiBidWZmZXJzIGNhbiBpbXByb3ZlIHBlcmZvcm1hbmNl
LCBlc3BlY2lhbGx5IHdoZW4gQ1BVIHByb2Nlc3Npbmcgb2YKPj4gPj4gTU1BUCdlZCB2aWRlbyBi
dWZmZXJzIGlzIHJlcXVpcmVkLgo+PiA+Pgo+PiA+PiBGb3IgZXhhbXBsZSwgb24gdGhlIFJvY2tj
aGlwIFJLMzM5OSBydW5uaW5nIGF0IG1heGltdW0gQ1BVIGZyZXF1ZW5jeSwKPj4gPj4gdGhlIHRp
bWUgdG8gbWVtY3B5IGEgZnJhbWUgZnJvbSBhIDEyODB4NzIwIFhSR0IzMiBNTUFQJ2VkIGJ1ZmZl
ciB0byBhCj4+ID4+IG1hbGxvYydlZCB1c2Vyc3BhY2UgYnVmZmVyIGRlY3JlYXNlcyBmcm9tIDcu
NyBtcyB0byAxLjEgbXMgd2hlbiB1c2luZwo+PiA+PiBub24tY29oZXJlbnQgRE1BIGFsbG9jYXRp
b24uIENQVSB1c2FnZSBhbHNvIGRlY3JlYXNlcyBhY2NvcmRpbmdseS4KPj4gPgo+PiA+IFdoYXQn
cyB0aGUgdGltZSB0YWtlbiBieSB0aGUgY2FjaGUgbWFuYWdlbWVudCBvcGVyYXRpb25zID8KPj4K
Pj4gU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LCB5b3VyIHF1ZXN0aW9uIHR1cm5lZCBvdXQgYSBs
aXR0bGUgbW9yZQo+PiBpbnRlcmVzdGluZyB0aGFuIEkgZXhwZWN0ZWQgaW5pdGlhbGx5LiA6KQo+
Pgo+PiBXaGVuIGNhcHR1cmluZyB1c2luZyBZYXZ0YSB3aXRoIE1NQVAgYnVmZmVycyB1bmRlciB0
aGUgY29uZGl0aW9ucyBtZW50aW9uZWQKPj4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLCBmdHJhY2Ug
Z2l2ZXMgNDM3LjYgKy0gMS4xIHVzIGZvcgo+PiBkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUgYW5k
IDQwOSArLSAxNCB1cyBmb3IKPj4gZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlLiBUaHVzLCBp
dCBsb29rcyBsaWtlIHVzaW5nIG5vbi1jb2hlcmVudAo+PiBidWZmZXJzIGluIHRoaXMgY2FzZSBp
cyBtb3JlIENQVS1lZmZpY2llbnQgZXZlbiB3aGVuIGNvbnNpZGVyaW5nIGNhY2hlCj4+IG1hbmFn
ZW1lbnQgb3ZlcmhlYWQuCj4+Cj4+IFdoZW4gdHJ5aW5nIHRvIGRvIHRoZSBzYW1lIG1lYXN1cmVt
ZW50cyB3aXRoIGxpYmNhbWVyYSwgSSBmYWlsZWQuIEluIGEKPj4gdHlwaWNhbCBsaWJjYW1lcmEg
dXNlIGNhc2Ugd2hlbiBNTUFQIGJ1ZmZlcnMgYXJlIGFsbG9jYXRlZCBmcm9tIGEKPj4gZGV2aWNl
LCBleHBvcnRlZCBhcyBkbWFidWZzIGFuZCB0aGVuIHVzZWQgZm9yIGNhcHR1cmUgb24gdGhlIHNh
bWUgZGV2aWNlCj4+IHdpdGggRE1BQlVGIG1lbW9yeSB0eXBlLCBjYWNoZSBtYW5hZ2VtZW50IGlu
IGtlcm5lbCBpcyBza2lwcGVkIFsxXQo+PiBbMl0uIEFsc28sIHZiMl9kY19kbWFidWZfb3BzX3ti
ZWdpbixlbmR9X2NwdV9hY2Nlc3MgYXJlIG5vLW9wcyBbM10sIHNvCj4+IERNQV9CVUZfSU9DVExf
U1lOQyBmcm9tIHVzZXJzcGFjZSBkb2VzIG5vdCB3b3JrIGVpdGhlci4KPgo+IE9vcHMsIHNvIEkg
YmVsaWV2ZSB0aGlzIGlzIGEgYnVnLiBXaGVuIGFuIE1NQVAgYnVmZmVyIGlzIGFsbG9jYXRlZCBp
bgo+IHRoZSBub24tY29oZXJlbnQgbW9kZSwgdGhvc2Ugb3BzIHNob3VsZCBwZXJmb3JtIHByb3Bl
ciBjYWNoZQo+IG1haW50ZW5hbmNlLgoKVGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dCEKCj4g
TGV0IG1lIHNlbmQgYSBwYXRjaCB0byBmaXggdGhpcyBpbiBhIGNvdXBsZSBvZiBkYXlzIHVubGVz
cyBzb21lb25lCj4gZG9lcyBpdCBlYXJsaWVyLgoKTm93IHRoYXQgd2Uga25vdyB0aGF0IHRoaXMg
aXMgYSBidWcsIG5vdCBhbiBBUEkgbWlzdXNlIGZyb20gbXkgc2lkZSwgSQpjYW4gZml4IHRoaXMg
bXlzZWxmIGFuZCBzZW5kIGEgdjIuIFdvdWxkIHRoaXMgYmUgb2theSBmb3IgeW91PwoKPiBCZXN0
IHJlZ2FyZHMsCj4gVG9tYXN6Cj4KPj4KPj4gU28gaXQgbG9va3MgbGlrZSB0byBtYWtlIHRoaXMg
Y2hhbmdlIHJlYWxseSB1c2VmdWwsIHRoZSBhYm92ZSBpc3N1ZSBvZgo+PiBjYWNoZSBtYW5hZ2Vt
ZW50IGZvciBsaWJjYW1lcmEvRE1BQlVGL3ZpZGVvYnVmMi1kbWEtY29udGlnIGhhcyB0byBiZQo+
PiBzb2x2ZWQuIEknbSBub3QgYW4gZXhwZXJ0IGluIHRoaXMgYXJlYSwgc28gYW55IGFkdmljZSBp
cyBraW5kbHkgd2VsY29tZS4gOikKPj4KPj4gWzFdIGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21l
ZGlhLmdpdC90cmVlL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29y
ZS5jP2lkPTk0Nzk0YjVjZTRkOTBhYjEzNGIwYjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjQxMQo+PiBb
Ml0gaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWEuZ2l0L3RyZWUvZHJpdmVycy9tZWRpYS9j
b21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmM/aWQ9OTQ3OTRiNWNlNGQ5MGFiMTM0YjBi
MTAxYTAyZmRkZjZlNzRjNDM3ZCNuODI5Cj4+IFszXSBodHRwczovL2dpdC5saW51eHR2Lm9yZy9t
ZWRpYS5naXQvdHJlZS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRt
YS1jb250aWcuYz9pZD05NDc5NGI1Y2U0ZDkwYWIxMzRiMGIxMDFhMDJmZGRmNmU3NGM0MzdkI240
MjYKPj4KPj4gLS0KPj4gQmVzdCByZWdhcmRzLAo+PiBNaWtoYWlsIFJ1ZGVua28KPj4KCgotLQpC
ZXN0IHJlZ2FyZHMsCk1pa2hhaWwgUnVkZW5rbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
