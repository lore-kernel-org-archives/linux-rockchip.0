Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA362C282D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 12:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEdrEacv1/m+Yh4O1u7lAXE9XCYgG5q4Wcq8vEPcHfY=; b=3JG+bFGlHWMRzy
	uDainQsfNiT74Ccyn1O0pUResxt5El0XgJuR5Dluc5Ii+D+k9MvzEPZABK8VQD+FkK8JvT1SzDfk3
	IOHJ9hLgAJcfil8CvCPXAtf2B4KGcqFLPTuLzVSpjPylrMh/jUsK+6AKKrF08GWaWXLJ5ByLEst90
	5GColvQ1/nr2X02AZ9Mc5Gi3pHBBhAkENBIk42wwXVkcLUTBZvVKodlgx6Z49a0nTijrIUsMZqbFO
	t/JIgZ92HUBvNuF3i1Plqf1f7XeanPKzmI+yNe4rtAIeRi8QZaonyJwOiAeLyAIhfs7wWtX92M900
	TMW5g8TGxnRUpV1jUOaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzFe-0000000ArN1-2phn;
	Fri, 28 Feb 2025 12:13:58 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnymD-0000000An4D-41Jl;
	Fri, 28 Feb 2025 11:43:35 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-30a303a656aso21272011fa.0;
        Fri, 28 Feb 2025 03:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740743012; x=1741347812; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yky+MpWpSqBmuiHoH6G890ahUf3ki5Lz5PCO4fqT27Q=;
        b=P8xhbO17VuzYJeZV1m/NeWQKEW/HPr1IJCug8XZWvEtmwK3Miw1gNB3GZxSPn2xXVs
         jg6288ts8/vsED8i1nhijQO1w6SEcH8uoeF22brfzu9Xg3rZcmugkrYGt2MoOJCvT74N
         DfPFaHDw7juYz3JqwGJycH/7tKQEHFp+peQhoysAePvZj2fkSlZZ9Upk3uYecHwV/Yc7
         2uGy6qDnNp7nnFpZ2yZvT8pK3XuG7KW6C+8hue5DMzX34Zx8+sctykZIidfNb4W8wx4b
         v+hvIZN+i3a1DAAsoTfZgGmkHrXs95mA3eUUU0hZg+1xospQARw+dQ28Ni3Vuqr+9Kqu
         h5fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740743012; x=1741347812;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yky+MpWpSqBmuiHoH6G890ahUf3ki5Lz5PCO4fqT27Q=;
        b=Hr1sl35v7wLCVSlEuyw+3vHbB1BD1sSriAwv24YaZgHDcHwbmUBA/qkyHWeD1WWfVO
         SAOz4w+xLw1sT1mh0Alqkg8Kn/HTy+Slad0y1q80mWhP47Xrc83EP6ZCM85SRfK4eF61
         YtWIpAVjLJEmikrZmExavZV7dk4uTrV34fk//yXqDKQQgfDhGYiyqpP2WT5iEIZXbFX/
         btpVk9ufdtUbeowI5IuhIMX+AwVmZhy1hnCHCSMsA8yvxi21X2ageDX7WV+Mqi4mhRUq
         koyMTaYLFjU5u7UhV2x1qbAqG5Ns+aCdtJcgrXsBkG3x4/eN/uLgLKCUnxTihUiIcP/Y
         n8MA==
X-Forwarded-Encrypted: i=1; AJvYcCUYFOZenowo1l7pSTgEYVzWAB2UWfD6YNylH+hCBcZkTm80aCgwV03II023U/J7jPDyDKmm28TKH1O00wXSrXw=@lists.infradead.org, AJvYcCVFqyEpO1ZMCAqmWr5kpVJT4m0AC8/cDC+7vnFHKzEyT8h3DGK4RB5g8kozwAJLohexJES6X8DWeXO0kmSDxW24@lists.infradead.org
X-Gm-Message-State: AOJu0YxbLSaFCAvpa4og1+J5wK7KuzSkNWJGETbIBHClG9Lpg6lrELbS
	i9H/oZtzo/77JMyYzROtSBWkfOHESvkcBxnzkgYo79EyWJ4OtKY5
X-Gm-Gg: ASbGncthapWX2RZvXyOVHjHXsl6AaB7AoSK8lfZPUWUvo8zZ34PT6HrdKZxrHDSyWDG
	UP0iRmdAyBihGZMssh+4x6gO/9sOcyjt2DHaHRIH73NZ/DxlCwJ6QanOlCz7Sru2PFe+2JsuJx7
	AkwjLjNy+SEyUJO0muE/MX57jqWgO22h8hT1LhyvFJyGSdeq39o81MeisJ22EaScUlaAqmSY08K
	StKl8Y1oIr3602rEEkiRpNS5Vm5DBolXeqlcIrGBP9+FWwQyhaIy99vRunNbmCg/M03JcbGzDOp
	DroZ5QNtr9KVpQrxuA35cKdG/iYd92uO7LTevu1zLZyhoQSCv5dxyx2tdeEkA0FRoLNkNe1/Aau
	nWzDhlXaSQdfqww==
X-Google-Smtp-Source: AGHT+IHOs9vqantuNod90ERM5xB3i1bFO2RtYdojT8XjyxXMwXaQtOUpbPRNc5KFH73oqV4zi5nIyA==
X-Received: by 2002:ac2:4e14:0:b0:545:93b:30bf with SMTP id 2adb3069b0e04-5494c37d894mr1314384e87.41.1740743011725;
        Fri, 28 Feb 2025 03:43:31 -0800 (PST)
Received: from razdolb (static.248.157.217.95.clients.your-server.de. [95.217.157.248])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549441740ffsm466848e87.50.2025.02.28.03.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 03:43:31 -0800 (PST)
References: <20250128-b4-rkisp-noncoherent-v3-0-baf39c997d2a@gmail.com>
 <20250128-b4-rkisp-noncoherent-v3-1-baf39c997d2a@gmail.com>
 <25beec7ea929b624d845f5ba4abce6267974ed82.camel@ndufresne.ca>
 <CAAFQd5A4YOaSCn=xe7OM-hPKcUhqkD5hTiMUo5F9pwhKNFJ2Lg@mail.gmail.com>
User-agent: mu4e 1.10.9; emacs 29.4.50
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Tomasz Figa <tfiga@chromium.org>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, Dafna Hirschfeld
 <dafna@fastmail.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Hans Verkuil <hverkuil@xs4all.nl>, Sergey
 Senozhatsky <senozhatsky@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v3 1/2] media: videobuf2: Fix dmabuf cache sync/flush in
 dma-contig
Date: Fri, 28 Feb 2025 14:41:34 +0300
In-reply-to: <CAAFQd5A4YOaSCn=xe7OM-hPKcUhqkD5hTiMUo5F9pwhKNFJ2Lg@mail.gmail.com>
Message-ID: <87h64eb8gw.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_034334_002894_D64B1EEE 
X-CRM114-Status: GOOD (  30.57  )
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

Ck9uIDIwMjUtMDItMjggYXQgMTk6MjUgKzA5LCBUb21hc3ogRmlnYSA8dGZpZ2FAY2hyb21pdW0u
b3JnPiB3cm90ZToKCj4gT24gRnJpLCBGZWIgMjgsIDIwMjUgYXQgMTI6MzDigK9QTSBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4+Cj4+IExlIG1hcmRpIDI4
IGphbnZpZXIgMjAyNSDDoCAyMzozNSArMDMwMCwgTWlraGFpbCBSdWRlbmtvIGEgw6ljcml0IDoK
Pj4gPiBXaGVuIHN1cHBvcnQgZm9yIFY0TDJfRkxBR19NRU1PUllfTk9OX0NPTlNJU1RFTlQgd2Fz
IHJlbW92ZWQgaW4KPj4gPiBjb21taXQgMTI5MTM0ZTU0MTVkICgibWVkaWE6IG1lZGlhL3Y0bDI6
IHJlbW92ZQo+PiA+IFY0TDJfRkxBR19NRU1PUllfTk9OX0NPTlNJU1RFTlQgZmxhZyIpLAo+PiA+
IHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMgd2Vy
ZSBtYWRlCj4+ID4gbm8tb3BzLiBMYXRlciwgd2hlbiBzdXBwb3J0IGZvciBWNEwyX01FTU9SWV9G
TEFHX05PTl9DT0hFUkVOVCB3YXMKPj4gPiBpbnRyb2R1Y2VkIGluIGNvbW1pdCBjMGFjZjljZmVl
ZTAgKCJtZWRpYTogdmlkZW9idWYyOiBoYW5kbGUKPj4gPiBWNEwyX01FTU9SWV9GTEFHX05PTl9D
T0hFUkVOVCBmbGFnIiksIHRoZSBhYm92ZSBmdW5jdGlvbnMgcmVtYWluZWQKPj4gPiBuby1vcHMs
IG1ha2luZyBjYWNoZSBtYWludGVuYW5jZSBmb3Igbm9uLWNvaGVyZW50IGRtYWJ1ZnMgYWxsb2Nh
dGVkCj4+ID4gYnkKPj4gPiBkbWEtY29udGlnIGltcG9zc2libGUuCj4+ID4KPj4gPiBGaXggdGhp
cyBieSByZWludHJvZHVjaW5nIGRtYV9zeW5jX3NndGFibGVfZm9yX3tjcHUsZGV2aWNlfSBhbmQK
Pj4gPiB7Zmx1c2gsaW52YWxpZGF0ZX1fa2VybmVsX3ZtYXBfcmFuZ2UgY2FsbHMgdG8KPj4gPiB2
YjJfZGNfZG1hYnVmX29wc197YmVnaW4sZW5kfV9jcHVfYWNjZXNzKCkgZnVuY3Rpb25zIGZvciBu
b24tY29oZXJlbnQKPj4gPiBidWZmZXJzLgo+PiA+Cj4+ID4gRml4ZXM6IGMwYWNmOWNmZWVlMCAo
Im1lZGlhOiB2aWRlb2J1ZjI6IGhhbmRsZQo+PiA+IFY0TDJfTUVNT1JZX0ZMQUdfTk9OX0NPSEVS
RU5UIGZsYWciKQo+PiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4+ID4gU2lnbmVkLW9m
Zi1ieTogTWlraGFpbCBSdWRlbmtvIDxtaWtlLnJ1ZGVua29AZ21haWwuY29tPgo+PiA+IC0tLQo+
PiA+ICAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jICB8
IDIyCj4+ID4gKysrKysrKysrKysrKysrKysrKysrKwo+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMjIg
aW5zZXJ0aW9ucygrKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4+ID4gYi9kcml2ZXJzL21lZGlhL2Nv
bW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiA+IGluZGV4Cj4+ID4gYmIw
YjdmYTY3YjUzOWFhNzNhZDVjY2YzYzNiYzMxOGUyNmY4YTRjYi4uMTQ2ZDc5OTdhMGRhNTk4OWZi
MDgxYTZmMjhjCj4+ID4gZTA2NDFmZTcyNmU2MyAxMDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiA+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4+ID4g
QEAgLTQyNyw2ICs0MjcsMTcgQEAgc3RhdGljIGludAo+PiA+ICB2YjJfZGNfZG1hYnVmX29wc19i
ZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkYnVmLAo+PiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uCj4+ID4gZGlyZWN0aW9u
KQo+PiA+ICB7Cj4+ID4gKyAgICAgc3RydWN0IHZiMl9kY19idWYgKmJ1ZiA9IGRidWYtPnByaXY7
Cj4+ID4gKyAgICAgc3RydWN0IHNnX3RhYmxlICpzZ3QgPSBidWYtPmRtYV9zZ3Q7Cj4+ID4gKwo+
PiA+ICsgICAgIGlmICghYnVmLT5ub25fY29oZXJlbnRfbWVtKQo+PiA+ICsgICAgICAgICAgICAg
cmV0dXJuIDA7Cj4+ID4gKwo+PiA+ICsgICAgIGlmIChidWYtPnZhZGRyKQo+PiA+ICsgICAgICAg
ICAgICAgaW52YWxpZGF0ZV9rZXJuZWxfdm1hcF9yYW5nZShidWYtPnZhZGRyLCBidWYtPnNpemUp
Owo+Pgo+PiBBbSBJIGNvcnJlY3QgdGhhdCB0aGlzIGlzIG1vc3RseSB0byBwcmV2ZW50IHRoZSBr
ZXJuZWwgZnJvbSByZWFkaW5nCj4+IGJhY2sgb2xkIGRhdGEgZnJvbSB0aGUgY2FjaGUgYWZ0ZXIg
YW4gYXBwbGljYXRpb24gb3Igb3RoZXIgZHJpdmVyIGRpZAo+PiBDUFUgd3JpdGVzID8gSWYgc28s
IGNhbid0IHdlIHJlc3RyaWN0IHRoYXQgdG8gRE1BX1RPX0RFVklDRSBhbmQKPj4gRE1BX0JJRElS
RUNUSU9OQUwgPwo+Cj4gTm90ZSB0aGF0IHRoaXMgZnVuY3Rpb24gbXVzdCBhbHNvIHN5bmNocm9u
aXplIGJldHdlZW4gdGhlIHVzZXItc3BhY2UKPiBhbmQga2VybmVsIG1hcHBpbmdzLCB3aGVyZSB0
aGUgRE1BIGRpcmVjdGlvbiBkb2Vzbid0IHJlYWxseSBtYXR0ZXIuCj4gQWxzbyBpdCdzIHVubGlr
ZWx5IGZvciBpdCB0byBiZSBjYWxsZWQgd2hlbiBub3QgbmVlZGVkIC0gd2h5IHdvdWxkIG9uZQo+
IGJlZ2luIGEgQ1BVIGFjY2VzcyBiZWZvcmUgdGhlIERNQSwgd2hlbiB0aGUgRE1BIGlzIEZST01f
REVWSUNFPwo+Cj4+Cj4+IEFzIGZvciBwZW5kaW5nIGtlcm5lbCB3cml0ZXMsIHRoZXkgc2hvdWxk
IGhhdmUgYmVlbiBmbHVzaGVkIGJlZm9yZSB0aGUKPj4gYnVmZmVyIGlzIG1hZGUgYXZhaWxhYmxl
IGZvciBkZXF1ZXVlLgo+Cj4gVGhlcmUgaXMgbm8gaW1wbGljaXQgZmx1c2hpbmcgZm9yIGltcG9y
dGVkIERNQS1idWZzLiBBbGwgdGhlIGZsdXNoaW5nCj4gbmVlZHMgdG8gYmUgZXhlY3V0ZWQgZGly
ZWN0bHkgYnkgdGhlIENQVSBhY2Nlc3NvcnMgYnkgc3Vycm91bmRpbmcgdGhlCj4gYWNjZXNzIHdp
dGggYmVnaW4gYW5kIGVuZCBDUFUgYWNjZXNzLCBiZSBpdCBpbiB0aGUga2VybmVsIG9yCj4gdXNl
cnNwYWNlLgo+Cj4+IEFuZCBhbnkgYWNjZXNzIHdoaWxlIGEgYnVmZmVyIGlzCj4+IHF1ZXVlZCBp
cyBjb25jdXJyZW50IGFjY2Vzcywgd2hpY2ggaXMgZXhwZWN0ZWQgdG8gaGF2ZSB1bmRlZmluZWQK
Pj4gYmVoYXZpb3VyLgo+Pgo+Cj4gQ29ycmVjdC4KPgo+PiA+ICsKPj4gPiArICAgICBkbWFfc3lu
Y19zZ3RhYmxlX2Zvcl9jcHUoYnVmLT5kZXYsIHNndCwgYnVmLT5kbWFfZGlyKTsKPj4KPj4gSXNu
J3QgdGhlcmUgYSBsaW5rIHRvIG1ha2UgYmV0d2VlbiBidWYtPmRtYV9kaXIgYW5kIGRpcmVjY3Rp
b24gYmVmb3JlCj4+IGNhbGxpbmcgdGhpcyA/IEFsc28sIHNob3VsZG4ndCB3ZSB1c2UgZGlyZWN0
aW9uIGluc2VhZCBvZiBidWYtPmRtYV9kaXIKPj4gdG8gcG9zc2libHkgbGltaXQgdGhlIHNjb3Bl
ID8KPgo+IE9oLCB5ZXMsIHRoYXQncyBhIGdvb2QgY2F0Y2guCgpJbmRlZWQsIHdpbGwgZml4IHRo
aXMgaW4gdjQuCgo+IEl0IHNob3VsZCBiZSB8ZGlyZWN0aW9ufCBwYXNzZWQgaGVyZSBhbmQKPiBu
b3QgfGJ1Zi0+ZG1hX2RpcnwsIHNpbmNlIHRoZSBmb3JtZXIgZGV0ZXJtaW5lcyB3aGF0IENQVSBh
Y2Nlc3Mgd2lsbAo+IGJlIGRvbmUuCj4KPj4KPj4gPiArCj4+ID4gICAgICAgcmV0dXJuIDA7Cj4+
ID4gIH0KPj4gPgo+PiA+IEBAIC00MzQsNiArNDQ1LDE3IEBAIHN0YXRpYyBpbnQKPj4gPiAgdmIy
X2RjX2RtYWJ1Zl9vcHNfZW5kX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRidWYsCj4+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRp
cmVjdGlvbikKPj4gPiAgewo+PiA+ICsgICAgIHN0cnVjdCB2YjJfZGNfYnVmICpidWYgPSBkYnVm
LT5wcml2Owo+PiA+ICsgICAgIHN0cnVjdCBzZ190YWJsZSAqc2d0ID0gYnVmLT5kbWFfc2d0Owo+
PiA+ICsKPj4gPiArICAgICBpZiAoIWJ1Zi0+bm9uX2NvaGVyZW50X21lbSkKPj4gPiArICAgICAg
ICAgICAgIHJldHVybiAwOwo+PiA+ICsKPj4gPiArICAgICBpZiAoYnVmLT52YWRkcikKPj4gPiAr
ICAgICAgICAgICAgIGZsdXNoX2tlcm5lbF92bWFwX3JhbmdlKGJ1Zi0+dmFkZHIsIGJ1Zi0+c2l6
ZSk7Cj4+ID4gKwo+PiA+ICsgICAgIGRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZShidWYtPmRl
diwgc2d0LCBidWYtPmRtYV9kaXIpOwo+Pgo+PiBTaW1pbGFyIHF1ZXN0aW9ucyBmb3IgdGhlIGVu
ZF9jcHVfYWNjZXNzIGltcGxlbWVudGF0aW9uLgo+Cj4gWWVhaCwgc2FtZSBoZXJlLgoKTm90ZWQs
IHdpbGwgZml4LgoKPj4KPj4gTmljb2xhcwo+Pgo+PiA+ICsKPj4gPiAgICAgICByZXR1cm4gMDsK
Pj4gPiAgfQo+PiA+Cj4+ID4KPj4KCgotLQpCZXN0IHJlZ2FyZHMsCk1pa2hhaWwgUnVkZW5rbwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
