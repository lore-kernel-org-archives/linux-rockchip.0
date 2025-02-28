Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD8F3C19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 11:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFLe1pTwSnabkIMSjjYa5Y9nhhVYtJCUfQ8aZlKLgKc=; b=3IQuiIoq1/8gdE
	6Bs1sE7Zwef9W+TJDsZCeVl39oPWZwmih48W4Wd2UTmcxkFI1QDDPtZ93FZlVeqAvTSI97HMCbCf0
	wmreiYRhI4kMB5b3Av/CFVweciJREUETtsxtkxrCX71GLY24syMlnVtpVUhuSIaY9+57bQIpKefuR
	zJbRY8k15mX6GOnXxE/QrZO6h/4Ix7Il5cseWo0UzK8rgzC8qRCk2d/tEQ2dnwobrVH202qQ1Qnje
	DoyCRMtBwJBwCkj3g3SqEQFasSKnQV8mNe93bRRz5/NAhq8CyiVLHUAmK9SMIsrY0yYeOUfNMQRWE
	ubHmLljP5/u8wUUfR21A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tny8n-0000000Agmo-3CiV;
	Fri, 28 Feb 2025 11:02:49 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnxc8-0000000AbEc-3nDI
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 10:29:06 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-abf06950db5so293983666b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 02:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740738542; x=1741343342; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eKOibatLevSl1XiH80i2AKEABQeU0O7rPQC7Mx++//c=;
        b=T+PfptdlGV+NTKkqqmJaPs9yTjWrBlJYacBK+8QV9+oIrJShNItyoZSBjCpOE+0CUv
         vBsP6+MXQ63ejD37mvITJSid/moUcZHwhpMvrwR6CwDxwEXdT6K5e9NQSsr9Y2CCgruC
         oNI0/ZPiT/pPCT/i0YlwTvzvi1qnecG7NstEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740738542; x=1741343342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eKOibatLevSl1XiH80i2AKEABQeU0O7rPQC7Mx++//c=;
        b=KNgaPzGV+C9fNj+UejuAQJLEUUpsSuB6h1AEkEY8QQMmcidZrHySh62co/sgb1Igl7
         DvU7j6xBOsUz4xIv6Jia5NWRuoJlQpRTumCFDi6TjMqPBNtPj/d5TrTExq/A9buRf4o8
         0LLbROgaozCvg87xk4cis1QVFOqR6gGUaTGXucuFljHka7QMszFmS65T47t/n3DLT/Lq
         Fci+jo+m3TtHWe2vXnCooBqJBxNksaTX0YfSYpFAv2oPdegqvfJlFw5NxLhAKLjAej0V
         HGwD15OVjlY+tDpXuRafoMvten4xPvZ4hoKmIoYiUCHD7tL/4mnicQA/0fbOV/Q+UQNq
         SfuA==
X-Forwarded-Encrypted: i=1; AJvYcCUOc2vZIhKCh59+HVUyQN7tlDf7SBfmHiXuIigCGlHAsTgjKwddebXzzGKJf4GEeJypxXCHB5u4SfsGb6bMDw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3o0T7vxx3Ns5L/PXBbVmMYFL3LZ2nD6fp2A8SqZv7GpVuTMnJ
	IxAbJwlgYbgRriu41zipm3wNANyfur+Z62iOZJLYPUN1XvQQqT5ghKn5DPaLd3D0MiTBChRaXf2
	DlA==
X-Gm-Gg: ASbGnct5hXc0ow10BTLUgy+qDM3k+YbBBFoHUeIrnpbkcmCHZh7HClNNJaXce5G+lpq
	rJFWasDqCSPvpdMtxqGO6Y0Ic5azBvdcc0rEUDBOJBmR0Jv9UU2nU6PHzevP+3DjktHXy8lQIIl
	eh0ioYeCRAw+VPVKGKC0MI6XHAzOAr0+crqyPHzmdd2+UgETb4+5l9KjKXd2Enhs2ve2yGOEsaW
	kjvDOZEVeiJ6ppi3M+j5RoONZae/QGA/NhL1ZwznSlyfDYLYR9qdmjwH1DznMJqM/aOkz9ZOF2Q
	ix5ISVX3CMkbCfLeaN7NJ18Xx96Dk+y8epgSO4Eoyw2eyuxpfY1hmc4xd8INzA==
X-Google-Smtp-Source: AGHT+IHhSbNEheeu8N+XggMBQ6GgUh1iDldQYOBg3N+9VFCBzZahEgG26ZKkghHPMvZArliKFvYVcQ==
X-Received: by 2002:a17:906:6a22:b0:ab7:844e:1bc7 with SMTP id a640c23a62f3a-abf261fbb40mr248229766b.32.1740738542398;
        Fri, 28 Feb 2025 02:29:02 -0800 (PST)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com. [209.85.208.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c7c0d8csm266239066b.183.2025.02.28.02.29.01
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 02:29:01 -0800 (PST)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5dbfc122b82so8416a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 02:29:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUKJMOYJQTTsZjX3aTV2h0biL4T9kl4kdlx80brS9C8HswwUp76oHkJtYcyZpL+LTXUvh7QqryB6IaDZYO0kg==@lists.infradead.org
X-Received: by 2002:aa7:de02:0:b0:5e0:eaa6:a2b0 with SMTP id
 4fb4d7f45d1cf-5e4e5170fb5mr58690a12.5.1740738540504; Fri, 28 Feb 2025
 02:29:00 -0800 (PST)
MIME-Version: 1.0
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
 <20250103152326.GP554@pendragon.ideasonboard.com> <87bjw9s4s3.fsf@gmail.com>
 <dtfv2slbtj3ar2wvlcnd74p3xtlvggebkk3fj5ocm3eil7kyqw@al3brwf4y5dw>
 <CAAFQd5DS2x3sX59EdkTEMuO=eXc=Q0jD44EUwMisP6ocWz11qg@mail.gmail.com> <bgnkzjpegpmif7gohoijt42rku6jruovjsxscg75dprdz5ek2i@ntfh2yyjyiry>
In-Reply-To: <bgnkzjpegpmif7gohoijt42rku6jruovjsxscg75dprdz5ek2i@ntfh2yyjyiry>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 28 Feb 2025 19:28:43 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BihpFYgqvKta7ULMAVSMTy3kd6iR6Mo4ea9Ci935EFMA@mail.gmail.com>
X-Gm-Features: AQ5f1JqDA8fCcluEWQ8PbLmXiOugq2U0_Riaa619CBxdwyIQsImrMMMyouCy8M0
Message-ID: <CAAFQd5BihpFYgqvKta7ULMAVSMTy3kd6iR6Mo4ea9Ci935EFMA@mail.gmail.com>
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_022904_935645_E45FE0D7 
X-CRM114-Status: GOOD (  47.52  )
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

T24gRnJpLCBGZWIgMjgsIDIwMjUgYXQgNzoxOOKAr1BNIEphY29wbyBNb25kaQo8amFjb3BvLm1v
bmRpQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gSGkgVG9tYXN6Cj4KPiBPbiBGcmksIEZl
YiAyOCwgMjAyNSBhdCAwNzowMDo1N1BNICswOTAwLCBUb21hc3ogRmlnYSB3cm90ZToKPiA+IEhp
IEphY29wbywKPiA+Cj4gPiBPbiBGcmksIEZlYiAyOCwgMjAyNSBhdCAyOjEx4oCvQU0gSmFjb3Bv
IE1vbmRpCj4gPiA8amFjb3BvLm1vbmRpQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+ID4gPgo+
ID4gPiBIaSBNaWtoYWlsCj4gPiA+Cj4gPiA+IE9uIFR1ZSwgSmFuIDE0LCAyMDI1IGF0IDA3OjAw
OjM5UE0gKzAzMDAsIE1pa2hhaWwgUnVkZW5rbyB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEhpIExh
dXJlbnQsCj4gPiA+ID4KPiA+ID4gPiBPbiAyMDI1LTAxLTAzIGF0IDE3OjIzICswMiwgTGF1cmVu
dCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPiA+
ID4gPgo+ID4gPiA+ID4gT24gVGh1LCBKYW4gMDIsIDIwMjUgYXQgMDY6MzU6MDBQTSArMDMwMCwg
TWlraGFpbCBSdWRlbmtvIHdyb3RlOgo+ID4gPiA+ID4+IEN1cnJlbnRseSwgdGhlIHJraXNwMSBk
cml2ZXIgYWx3YXlzIHVzZXMgY29oZXJlbnQgRE1BIGFsbG9jYXRpb25zIGZvcgo+ID4gPiA+ID4+
IHZpZGVvIGNhcHR1cmUgYnVmZmVycy4gSG93ZXZlciwgb24gc29tZSBwbGF0Zm9ybXMsIHVzaW5n
IG5vbi1jb2hlcmVudAo+ID4gPiA+ID4+IGJ1ZmZlcnMgY2FuIGltcHJvdmUgcGVyZm9ybWFuY2Us
IGVzcGVjaWFsbHkgd2hlbiBDUFUgcHJvY2Vzc2luZyBvZgo+ID4gPiA+ID4+IE1NQVAnZWQgdmlk
ZW8gYnVmZmVycyBpcyByZXF1aXJlZC4KPiA+ID4gPiA+Pgo+ID4gPiA+ID4+IEZvciBleGFtcGxl
LCBvbiB0aGUgUm9ja2NoaXAgUkszMzk5IHJ1bm5pbmcgYXQgbWF4aW11bSBDUFUgZnJlcXVlbmN5
LAo+ID4gPiA+ID4+IHRoZSB0aW1lIHRvIG1lbWNweSBhIGZyYW1lIGZyb20gYSAxMjgweDcyMCBY
UkdCMzIgTU1BUCdlZCBidWZmZXIgdG8gYQo+ID4gPiA+ID4+IG1hbGxvYydlZCB1c2Vyc3BhY2Ug
YnVmZmVyIGRlY3JlYXNlcyBmcm9tIDcuNyBtcyB0byAxLjEgbXMgd2hlbiB1c2luZwo+ID4gPiA+
ID4+IG5vbi1jb2hlcmVudCBETUEgYWxsb2NhdGlvbi4gQ1BVIHVzYWdlIGFsc28gZGVjcmVhc2Vz
IGFjY29yZGluZ2x5Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IFdoYXQncyB0aGUgdGltZSB0YWtlbiBi
eSB0aGUgY2FjaGUgbWFuYWdlbWVudCBvcGVyYXRpb25zID8KPiA+ID4gPgo+ID4gPiA+IFNvcnJ5
IGZvciB0aGUgbGF0ZSByZXBseSwgeW91ciBxdWVzdGlvbiB0dXJuZWQgb3V0IGEgbGl0dGxlIG1v
cmUKPiA+ID4gPiBpbnRlcmVzdGluZyB0aGFuIEkgZXhwZWN0ZWQgaW5pdGlhbGx5LiA6KQo+ID4g
PiA+Cj4gPiA+ID4gV2hlbiBjYXB0dXJpbmcgdXNpbmcgWWF2dGEgd2l0aCBNTUFQIGJ1ZmZlcnMg
dW5kZXIgdGhlIGNvbmRpdGlvbnMgbWVudGlvbmVkCj4gPiA+ID4gaW4gdGhlIGNvbW1pdCBtZXNz
YWdlLCBmdHJhY2UgZ2l2ZXMgNDM3LjYgKy0gMS4xIHVzIGZvcgo+ID4gPiA+IGRtYV9zeW5jX3Nn
dGFibGVfZm9yX2NwdSBhbmQgNDA5ICstIDE0IHVzIGZvcgo+ID4gPiA+IGRtYV9zeW5jX3NndGFi
bGVfZm9yX2RldmljZS4gVGh1cywgaXQgbG9va3MgbGlrZSB1c2luZyBub24tY29oZXJlbnQKPiA+
ID4gPiBidWZmZXJzIGluIHRoaXMgY2FzZSBpcyBtb3JlIENQVS1lZmZpY2llbnQgZXZlbiB3aGVu
IGNvbnNpZGVyaW5nIGNhY2hlCj4gPiA+ID4gbWFuYWdlbWVudCBvdmVyaGVhZC4KPiA+ID4gPgo+
ID4gPiA+IFdoZW4gdHJ5aW5nIHRvIGRvIHRoZSBzYW1lIG1lYXN1cmVtZW50cyB3aXRoIGxpYmNh
bWVyYSwgSSBmYWlsZWQuIEluIGEKPiA+ID4gPiB0eXBpY2FsIGxpYmNhbWVyYSB1c2UgY2FzZSB3
aGVuIE1NQVAgYnVmZmVycyBhcmUgYWxsb2NhdGVkIGZyb20gYQo+ID4gPiA+IGRldmljZSwgZXhw
b3J0ZWQgYXMgZG1hYnVmcyBhbmQgdGhlbiB1c2VkIGZvciBjYXB0dXJlIG9uIHRoZSBzYW1lIGRl
dmljZQo+ID4gPiA+IHdpdGggRE1BQlVGIG1lbW9yeSB0eXBlLCBjYWNoZSBtYW5hZ2VtZW50IGlu
IGtlcm5lbCBpcyBza2lwcGVkIFsxXQo+ID4gPiA+IFsyXS4gQWxzbywgdmIyX2RjX2RtYWJ1Zl9v
cHNfe2JlZ2luLGVuZH1fY3B1X2FjY2VzcyBhcmUgbm8tb3BzIFszXSwgc28KPiA+ID4gPiBETUFf
QlVGX0lPQ1RMX1NZTkMgZnJvbSB1c2Vyc3BhY2UgZG9lcyBub3Qgd29yayBlaXRoZXIuCj4gPiA+
ID4KPiA+ID4gPiBTbyBpdCBsb29rcyBsaWtlIHRvIG1ha2UgdGhpcyBjaGFuZ2UgcmVhbGx5IHVz
ZWZ1bCwgdGhlIGFib3ZlIGlzc3VlIG9mCj4gPiA+ID4gY2FjaGUgbWFuYWdlbWVudCBmb3IgbGli
Y2FtZXJhL0RNQUJVRi92aWRlb2J1ZjItZG1hLWNvbnRpZyBoYXMgdG8gYmUKPiA+ID4gPiBzb2x2
ZWQuIEknbSBub3QgYW4gZXhwZXJ0IGluIHRoaXMgYXJlYSwgc28gYW55IGFkdmljZSBpcyBraW5k
bHkgd2VsY29tZS4gOikKPiA+ID4KPiA+ID4gSXQgd291bGQgYmUgc2hhbWUgaWYgd2UgbGV0IHRo
aXMgZGlzY3Vzc2lvbiBkcm9wIGRlYWQuLiBjYWNoZQo+ID4gPiBtYW5hZ2VtZW50IHBvbGljaWVz
IGFyZSByZWxldmFudCBmb3IgcGVyZm9ybWFuY2VzLCBzcGVjaWZpY2FsbHkgZm9yCj4gPiA+IGNw
dSBhY2Nlc3MsIGFuZCB5b3VyIGFib3ZlIDcuN21zIHZzIDEuMSBtcyB0ZXN0IGNsZWFybHkgc2hv
d3MgdGhhdC4KPiA+ID4KPiA+ID4gPgo+ID4gPiA+IFsxXSBodHRwczovL2dpdC5saW51eHR2Lm9y
Zy9tZWRpYS5naXQvdHJlZS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYy
LWNvcmUuYz9pZD05NDc5NGI1Y2U0ZDkwYWIxMzRiMGIxMDFhMDJmZGRmNmU3NGM0MzdkI240MTEK
PiA+ID4KPiA+ID4gSSB3b3VsZCBsaWtlIHRvIGtub3cgZnJvbSBIYW5zIGlmIHRoZSBkZWNpc2lv
biB0byBkaXNhbGxvdyBjYWNoZS1oaW50cwo+ID4gPiBmb3IgZG1hYnVmIGltcG9ydGVycyBpcyBh
IGRlc2lnbiBjaG9pY2Ugb3IgaXMgZGVlcGx5IHJvb3RlZCBpbiBvdGhlcgo+ID4gPiByZWFzb25z
IEkgbWlnaHQgYmUgbWlzc2luZy4KPiA+Cj4gPiBXaGVuIERNQS1idWYgaXMgdXNlZCwgdGhlIHJl
c3BvbnNpYmlsaXR5IGZvciBjYWNoZSBtYW5hZ2VtZW50IGlzCj4gPiBzb2xlbHkgb24gdGhlIENQ
VSB1c2Vycycgc2lkZSwgc28gY2FjaGUtaGludHMgZG9uJ3QgcmVhbGx5IGFwcGx5LiBJdCdzCj4g
PiB0aGUgZXhwb3J0ZXIgKD1hbGxvY2F0b3IpIHdobyBkZXRlcm1pbmVzIHRoZSBtYXBwaW5nIHBv
bGljeSBvZiB0aGUKPiA+IGJ1ZmZlciBhbmQgcHJvdmlkZXMgbmVjZXNzYXJ5IERNQV9CVUZfU1lO
QyBvcGVyYXRpb25zIChjYW4gYmUgbm8tb3AgaWYKPiA+IHRoZSBidWZmZXIgaXMgY29oZXJlbnQp
Lgo+Cj4gVGhpcyBhbGwgbWFrZXMgc2Vuc2UuCj4KPiBJIHRha2UgaXQgYXMsIGZvciBsaWJjYW1l
cmEsIHVzZXJzIG9mIHRoZSBGcmFtZUJ1ZmZlckFsbG9jYXRvciBoZWxwZXIKPiAod2hpY2ggZmly
c3QgZXhwb3J0cyBNTUFQIGJ1ZmZlcnMgZnJvbSB0aGUgdmlkZW8gZGV2aWNlIGFuZCB0aGUKPiBp
bXBvcnRzIHRoZW0gYmFjayBhcyBETUFCVUYpIHdvbid0IGJlIGFibGUgdG8gY29udHJvbCB0aGUg
Y2FjaGUKPiBwb2xpY2llcy4KPgo+IE5vdywgaW4gdGhlIGxvbmcgdGVybSwgd2Ugd2FudCBGcmFt
ZUJ1ZmZlckFsbG9jYXRvciB0byBnbyBhd2F5IGFuZAo+IGhhdmUgZWl0aGVyIGJ1ZmZlcnMgZXhw
b3J0ZWQgYnkgdGhlIGNvbnN1bWVyIChsaWtlbHkgRFJNKSBvciBieSBhCj4gc3lzdGVtIHdpZGUg
YnVmZmVyIGFsbG9jYXRvciAod2hlbiB3ZSdsbCBoYXZlIG9uZSkgYW5kIGhhdmUgdGhlIHZpZGVv
Cj4gZGV2aWNlcyBvcGVyYXRlIGFzIHB1cmUgaW1wb3J0ZXJzLiBCdXQgZm9yIHRoZSB0aW1lIGJl
aW5nIHRoZQo+ICJmaXJzdCBleHBvcnQgdGhlbiBpbXBvcnQiIHVzZSBjYXNlIGlzIHBvc3NpYmls
ZSBhbmQgdmFsaWQgc28gSSB3b25kZXIKPiBpZiB3ZSBzaG91bGQgY29uc2lkZXIgbWVhc3VyZXMg
dG8gYWxsb3cgY29udHJvbGxpbmcgY2FjaGluZyBwb2xpY2llcwo+IGZvciB0aGlzIHVzZSBjYXNl
IHRvby4KCkhtbSwgSSBtYXkgYmUgbWlzc2luZyBzb21ldGhpbmcsIGJ1dCBpZiBGcmFtZUJ1ZmZl
ckFsbG9jYXRvciBkb2VzIHRoZQphbGxvY2F0aW9uIGludGVybmFsbHkgaW4gbGliY2FtZXJhLCB3
aHkgY291bGRuJ3QgaXQgdXNlIHRoZQpWNEwyX01FTU9SWV9GTEFHX05PTl9DT0hFUkVOVCBSRVFC
VUZTL0NSRUFURV9CVUZTIGZsYWc/CgpOb3RlIHRoYXQgaG93ZXZlciwgb25jZSB0aGUgYnVmZmVy
IGlzIGFsbG9jYXRlZCBhbmQgbWFwcGVkIG9uY2UsIG9uCm1hbnkgYXJjaGl0ZWN0dXJlcyBpdCBt
dXN0IGtlZXAgdGhlIHNhbWUgbWFwcGluZyBhdHRyaWJ1dGVzIGFjcm9zcyB0aGUKZGlmZmVyZW50
IG1hcHBpbmdzLCBkdWUgdG8gaG93IHRoZSBtZW1vcnkgaGllcmFyY2h5IHdvcmtzLiAoTm90IHN1
cmUKaWYgdGhpcyBpcyB3aGF0IHlvdSBhcmUgYXNraW5nIGZvciBoZXJlLCB0aG91Z2guKQoKPgo+
ID4KPiA+IEJlc3QgcmVnYXJkcywKPiA+IFRvbWFzego+ID4KPiA+ID4KPiA+ID4gSSdtIGFza2lu
ZyBiZWNhdXNlIHRoZSBpZGVhIGlzIGZvciBsaWJjYW1lcmEgdG8gYWN0IHNvbGVseSBhcyBkbWEt
YnVmCj4gPiA+IGltcG9ydGVyLCB0aGUgY3VycmVudCBhbGxvYy1leHBvcnQtdGhlbi1pbXBvcnQg
dHJpY2sgaXMgYW4gaGVscGVyIGZvcgo+ID4gPiBhcHBsaWNhdGlvbnMgdG8gd29yayBhcm91bmQg
dGhlIGFic2VuY2Ugb2YgYSBzeXN0ZW0gYWxsb2NhdG9yLgo+ID4gPgo+ID4gPiBJZiB0aGUgcmVx
dWlyZW1lbnQgdG8gZGlzYWJsZSBjYWNoZS1oaW50cyBmb3IgaW1wb3J0ZXJzIGNhbm5vdCBiZQo+
ID4gPiBsaWZ0ZWQsIGZvciBsaWJjYW1lcmEgaXQgbWVhbnMgd2Ugd291bGQgbm90IGJlIGFibGUg
dG8gdXNlIGl0Lgo+ID4gPgo+ID4gPgo+ID4gPiA+IFsyXSBodHRwczovL2dpdC5saW51eHR2Lm9y
Zy9tZWRpYS5naXQvdHJlZS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYy
LWNvcmUuYz9pZD05NDc5NGI1Y2U0ZDkwYWIxMzRiMGIxMDFhMDJmZGRmNmU3NGM0MzdkI244MjkK
PiA+ID4gPiBbM10gaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWEuZ2l0L3RyZWUvZHJpdmVy
cy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmM/aWQ9OTQ3OTRi
NWNlNGQ5MGFiMTM0YjBiMTAxYTAyZmRkZjZlNzRjNDM3ZCNuNDI2Cj4gPiA+ID4KPiA+ID4gPiAt
LQo+ID4gPiA+IEJlc3QgcmVnYXJkcywKPiA+ID4gPiBNaWtoYWlsIFJ1ZGVua28KPiA+ID4gPgo+
ID4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
