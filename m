Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D4EEFA3755
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 14:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkXB1YMSkW6xDh5KZBP1dBqd3wJY+WBwFd2ty2hiwLI=; b=REM6IovPHn/7jG
	2uKLptZ250Jr0zkah7lwSOR58L69REe4c/qSi6Ivap+5eIJJs01MsJuTUpBTDxV2xfjtfgh+iRyhE
	Ejl5wDIe1cE1C/jizGPUF9nPyAv8Eb+Zv8NuCjMNQvk3pso5UhvukQUeifH2dqgYe63JJM3ZlLkZh
	r7/JfEyvv51ujW24LMBpblpWv9RJeJQvtSG7jm0d66W0yNWgUhDLP7Z7oYfoidmzPPQ/3jTXF+JOx
	v/UJPaiubk9flWZm8l6DMLTl415NBuaLZFjhXp/OvYr4vklQMqkSQoL7ZNvkO0byVr7ZfBGCYLFI/
	miBb325PBO2kSGfO8tzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp7ft-0000000GG4Q-2WGa;
	Fri, 13 Sep 2024 14:53:29 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp7ev-0000000GFrF-1SfE
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 14:52:30 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e1a80979028so2241832276.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 07:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1726239148; x=1726843948; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Wh24t8XN3yHHOFZUwuYZW8sGA7Ptb+KwZsMuJbONzt0=;
        b=NspgzWCgBgmtPvXXod8aX/UEOmmiEzSZ7kNqYfdyoiFccH/FzgAbSdQxSwe1OIiaz6
         hWZmi4G6DaYLqfvAyPwE/znn+nX7g/qmykMO5/P+dW9w8WOjuM+vDyrHIGmPIIJr3aOQ
         04m0N52PtGYS8joLrPeUp/USKSyxpSzdWp2jz9CA+kXD+EFc29GFAqZCSBlQYWpsBwFO
         1HySTcTIMjzU9Rr5zlNyXEfR7mKIRkH4U3y7uDQa/v6/xnw9WkdLXjYamla4qjzMfUHB
         IikT1t28S9mN95UkRltud2O2BShHQimvTn8RrHAJ1A5d7iFYkGab1ohdHmjx7mrIWoug
         o8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726239148; x=1726843948;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wh24t8XN3yHHOFZUwuYZW8sGA7Ptb+KwZsMuJbONzt0=;
        b=Eftmfi6WDApSdvyiWczdm6Xt2OMomALa/wKsXVwxK9RQCqkORE6m9NZwzlSQyMLFcl
         1vGLDqCd/zCmA1+IbDOsBmXtIfTCclJeZ9S0GQKRbjIu0wryyDag0ePtEyf0X6UWhkk3
         1BH8UkrgNKd1IF82780MXm4IYnWpJo2l72uXbZUpBIb4ipYGAAmhn9SYLSBOSLXIT+ot
         DHk28dF+ej7a8vVYhvvM1RkqP1vZMuiZrpR3PoW0t22D9j835eIfmP686IXrPXrJ4ksH
         O9m6MHwlU8m0zGOT90ZGwqo1wDtblMaDGInBeinPEkpKTD+2urAD8xdVNuTSf3UWG3LN
         lAQw==
X-Forwarded-Encrypted: i=1; AJvYcCUZU7T+OKeQJamtx5N6ftbXmFdhfCP3aMtenvMvHY3VcqCmMQFtozrKCCKQtFX01Jm0Aq2uAmY3JjJhigGoCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyy1Z86ywqX9eJCK3X3jNoxOQrg+xNzYU2jblvxJKgIsIkzqnlX
	+xHF+5llxtrg4uLEg5IshhFDGES/uLh6GmKXIRdcnGs6+iEXWug2+KZTWHcNqWw=
X-Google-Smtp-Source: AGHT+IGU94xKbiJ/NsGLlEWL1lJMESc5VD1fjhN/wg4OV5LxPQTPbPKdIdLKD8QBrO2C5Quex3OuFw==
X-Received: by 2002:a05:6902:2682:b0:e11:7b5b:18b0 with SMTP id 3f1490d57ef6-e1d9dc5fee7mr6441950276.47.1726239147763;
        Fri, 13 Sep 2024 07:52:27 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:17:9cac::580])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c53474d632sm67209446d6.89.2024.09.13.07.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 07:52:27 -0700 (PDT)
Message-ID: <2042cabf9d8d2ca7faea485d2b5d21aa438a63d3.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: av1: Fix reference video buffer
 pointer assignment
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	heiko@sntech.de, hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Fri, 13 Sep 2024 10:52:26 -0400
In-Reply-To: <6c6e00fd-334c-41ae-963c-eeffb368b727@collabora.com>
References: <01020191dc45365b-26b103cd-153a-4b74-a663-ed7beecc1713-000000@eu-west-1.amazonses.com>
	 <10f107089cf679bcabd03e49fc469bb89518deeb.camel@ndufresne.ca>
	 <6c6e00fd-334c-41ae-963c-eeffb368b727@collabora.com>
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_075229_493247_5EEA9831 
X-CRM114-Status: GOOD (  16.51  )
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

TGUgbWVyY3JlZGkgMTEgc2VwdGVtYnJlIDIwMjQgw6AgMTA6MzYgKzAyMDAsIEJlbmphbWluIEdh
aWduYXJkIGEgw6ljcml0wqA6Cj4gTGUgMTAvMDkvMjAyNCDDoCAyMTo0NCwgTmljb2xhcyBEdWZy
ZXNuZSBhIMOpY3JpdMKgOgo+ID4gSGksCj4gPiAKPiA+IExlIG1hcmRpIDEwIHNlcHRlbWJyZSAy
MDI0IMOgIDE0OjEwICswMDAwLCBCZW5qYW1pbiBHYWlnbmFyZCBhIMOpY3JpdMKgOgo+ID4gPiBB
bHdheXMgZ2V0IG5ldyBkZXN0aW5hdGlvbiBidWZmZXIgZm9yIHJlZmVyZW5jZSBmcmFtZSBiZWNh
dXNlIG5vdGhpbmcKPiA+ID4gZ2FyYW50eSB0aGUgb25lIHNldCBwcmV2aW91c2x5IGlzIHN0aWxs
IHZhbGlkIG9yIHVudXNlZC4KPiA+IE1pbmQgZG9jdW1lbnRpbmcgaGVyZSB3aGljaCB0ZXN0cyBn
b3QgZml4ZWQgd2l0aCB0aGlzIGNoYW5nZSA/Cj4gCj4gT25seSBvbmUgZnJvbSBjaHJvbWl1bSB0
ZXN0IHN1aXRlOgo+IGh0dHBzOi8vY2hyb21pdW0uZ29vZ2xlc291cmNlLmNvbS9jaHJvbWl1bS9z
cmMvbWVkaWEvKy9yZWZzL2hlYWRzL21haW4vdGVzdC9kYXRhL3Rlc3QtMjVmcHMuYXYxLml2Zgo+
IAo+IEZsdXN0ZXIgQVYxIHNjb3JlIHJlbWFpbnMgdW5jaGFuZ2VkLgoKV2UgYWxyZWFkeSBpbnRl
Z3JhdGVkIGEgbG90IG9mIGNocm9taXVtIHRlc3RzIGluIEZsdXN0ZXIsIHdvdWxkIG1ha2Ugc2Vu
c2UgdG8KaW5jbHVkZSBzb21lIG1vcmUuIFdhcyB0aGlzIG9uZSBtaXNzZWQgPyBvciBhZGRlZCBs
YXRlciA/Cgo+IAo+ID4gCj4gPiA+IEZpeGVzOiA3MjdhNDAwNjg2YTIgKCJtZWRpYTogdmVyaXNp
bGljb246IEFkZCBSb2NrY2hpcCBBVjEgZGVjb2RlciIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEJl
bmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4gPiAt
LS0KPiA+ID4gICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgx
X2h3X2F2MV9kZWMuYyAgICB8IDMgKy0tCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2
MV9kZWMuYwo+ID4gPiBpbmRleCAzNzJkZmNkMGZjZDkuLjJiOWExMDQ3NDc5YyAxMDA2NDQKPiA+
ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5
ODFfaHdfYXYxX2RlYy5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+ID4gPiBAQCAtMTYxLDggKzE2MSw3
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfZnJhbWVfcmVmKHN0cnVjdCBo
YW50cm9fY3R4ICpjdHgsCj4gPiA+ICAgCQlhdjFfZGVjLT5mcmFtZV9yZWZzW2ldLnRpbWVzdGFt
cCA9IHRpbWVzdGFtcDsKPiA+ID4gICAJCWF2MV9kZWMtPmZyYW1lX3JlZnNbaV0uZnJhbWVfdHlw
ZSA9IGZyYW1lLT5mcmFtZV90eXBlOwo+ID4gPiAgIAkJYXYxX2RlYy0+ZnJhbWVfcmVmc1tpXS5v
cmRlcl9oaW50ID0gZnJhbWUtPm9yZGVyX2hpbnQ7Cj4gPiA+IC0JCWlmICghYXYxX2RlYy0+ZnJh
bWVfcmVmc1tpXS52YjJfcmVmKQo+ID4gPiAtCQkJYXYxX2RlYy0+ZnJhbWVfcmVmc1tpXS52YjJf
cmVmID0gaGFudHJvX2dldF9kc3RfYnVmKGN0eCk7Cj4gPiA+ICsJCWF2MV9kZWMtPmZyYW1lX3Jl
ZnNbaV0udmIyX3JlZiA9IGhhbnRyb19nZXRfZHN0X2J1ZihjdHgpOwo+ID4gR29vZCBjYXRjaCwg
d291bGQgc3RpbGwgYmUgbmljZSB0byBpbXByb3ZlIHRoZSBjb21taXQgbWVzc2FnZS4KPiA+IAo+
ID4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFi
b3JhLmNvbT4KPiA+IAo+ID4gPiAgIAo+ID4gPiAgIAkJZm9yIChqID0gMDsgaiA8IFY0TDJfQVYx
X1RPVEFMX1JFRlNfUEVSX0ZSQU1FOyBqKyspCj4gPiA+ICAgCQkJYXYxX2RlYy0+ZnJhbWVfcmVm
c1tpXS5vcmRlcl9oaW50c1tqXSA9IGZyYW1lLT5vcmRlcl9oaW50c1tqXTsKPiA+IAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
