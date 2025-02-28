Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EADDFC19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 12:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGpqvTc5wNfMpWlvW9FJEMapq3Ifr71yfsbIGoPfOXM=; b=vuoF+VrgefkA8j
	u3st+txelfS3Cy+uPMdaAnizHn5BkmL8/DrMjFxOkJAHcn4A2ez8gfTHk2hQJvYxhqgDPwW3Wudw4
	BXhFeIJq1IZQvBzgbixInZp1a/22zclbkr6jTPTXFk/zPtNFnLEZKem1nKlefORBFJogv335Benjh
	SWiDKcZfOS13XAUxsQu9RMzzJV9xWcB65iWW5F7N25jnqshsZFUocgRmtIYbmp3isLoudcKFzp/U5
	jnxdFpfmJuVTJ60Vd/trS/pS5BGAbIKyJd7X99YerUKj+QtJvSaldoQzSwpFY1VucD4qQoFRbuz1x
	WRcUcURYp82MGrJXjs8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnz6T-0000000Aq9T-0Vzy;
	Fri, 28 Feb 2025 12:04:29 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnyPH-0000000AjSO-2Y5U
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 11:19:53 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5ded6c31344so2519580a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 03:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740741590; x=1741346390; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OsXYM8ePl9dRXaykIjugDeDQ+GWuufEIdXvrBWmNtGQ=;
        b=iQQIhOpAA8MkHqQG6vDAmIO1Wy0V6k6F453yphOUYAXAdO87yooGR+Ri+ZlNBMp3oo
         9wxyWufdDskj1+ag+1CRh9B1YMuNouveXUMmRiasSphxQQ3f+mZV+vlUAc5Ov7BOAHAI
         3JGNiZCstvMmIAn4B7hub1kbmbIzP+iMj/9Yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740741590; x=1741346390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OsXYM8ePl9dRXaykIjugDeDQ+GWuufEIdXvrBWmNtGQ=;
        b=qZ+yqwscR7qae4RZPha+yZOM+MlM22OI1IM5gwsoyAbMfi0v72AqzhmT0VWc957ls3
         O+mH6wZrmG7bl4gY8cg/vWsWrmOX6URfMQN5cvP29HgVCIJ6oF51AFX9hlIThVhNu9oo
         cg17umGYxb1P0TOVC5TLI0PUxTeKLQTKfpHr8Mlx4rNboGpDXCkWO3X/wQFaKcuYGJ/S
         Z6BIbsf0RQ7rAydgu/3+zvZ5XfWkZN01JYkoC0bfV+zSQFip2U67EQ0TcRKqYM/FClSt
         PHxB+Ebm9lXj357FOtEPn6PvUUtfcv6oRuJUiDDnnOe+dSXeqN8TUhKoUdHuPHThCHNW
         7ZBg==
X-Forwarded-Encrypted: i=1; AJvYcCW73aBFme6FVv/rzx3kGGbTsseFZLS/KIUW5nWYyB+YmzLQYjzkUOYwA70gY79+clRY0y4v27hOanbOvBzsdg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxblHqOQl2w2QBKBvw6zXrMlS2YuuqvHP33y8jm232MfgxiMBcL
	iLKVTl/Ti85itE+UC8rFIBXVtwPhNKxxl8DeFrrnFL2ppLjKhlEmJD3z2MhfiOJ9NeE8YksZBEM
	Yjw==
X-Gm-Gg: ASbGncvF/wx4aPAR3mhPZGwPQAQcjGh+fiB8AEl42gHsVZPMN4kd8e/lUrj6ygy2Akd
	v14753ax9eF+4isJb+EGQPB+tkvKnjbzwkXpAmq6hGPkZ+ka6CmVlmFpRDX0QAYgup+nkvEGtUq
	WsgKFuaIFyoC5vlQ4XWVvQNrTit5wpuBjQV5HbToAxv+Ptw57j9T+GheyJJB6HSuuvyQk/qoInW
	hVeDPqH+ActAc6X7OKDw8Yj0i401dv1C46ApqC0+rZGsU6cdyUOCWLuo/Egpq2FgMMXT2XnA77f
	9FsaCk90ZkHANvYTNABBggPNyrW14JO1lBobH1Gq97ytNDOgLNeVXwLlu/Rjtg==
X-Google-Smtp-Source: AGHT+IG1c9M2bBaIqH1SdeAavqu1QjctGd1vY7eX/O9nevdlhaOezs7e9fYmURCAXvrNOCtwgnYoXg==
X-Received: by 2002:a05:6402:5214:b0:5e4:af36:2315 with SMTP id 4fb4d7f45d1cf-5e4d6ad86b7mr7046098a12.12.1740741587350;
        Fri, 28 Feb 2025 03:19:47 -0800 (PST)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com. [209.85.208.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0dc168sm276339366b.70.2025.02.28.03.19.44
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 03:19:45 -0800 (PST)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e05ac70b61so5018a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 03:19:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXtyVuKZiruoAL2LFUvwHdrBmTADeEF+qWPlANVWCjtmapFPPtO1S46k8ph5n0YG1UnACyVj69gcsuhROjQpg==@lists.infradead.org
X-Received: by 2002:aa7:c593:0:b0:5dc:5ae8:7e1 with SMTP id
 4fb4d7f45d1cf-5e4d74de7ecmr78282a12.6.1740741584369; Fri, 28 Feb 2025
 03:19:44 -0800 (PST)
MIME-Version: 1.0
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
 <20250103152326.GP554@pendragon.ideasonboard.com> <87bjw9s4s3.fsf@gmail.com>
 <dtfv2slbtj3ar2wvlcnd74p3xtlvggebkk3fj5ocm3eil7kyqw@al3brwf4y5dw>
 <CAAFQd5DS2x3sX59EdkTEMuO=eXc=Q0jD44EUwMisP6ocWz11qg@mail.gmail.com>
 <bgnkzjpegpmif7gohoijt42rku6jruovjsxscg75dprdz5ek2i@ntfh2yyjyiry>
 <CAAFQd5BihpFYgqvKta7ULMAVSMTy3kd6iR6Mo4ea9Ci935EFMA@mail.gmail.com> <aw6hhc5x7lycbmckbc57ke5whksem5lasfkufcxrcuou5vhoyo@ylggg6tdzcnq>
In-Reply-To: <aw6hhc5x7lycbmckbc57ke5whksem5lasfkufcxrcuou5vhoyo@ylggg6tdzcnq>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 28 Feb 2025 20:19:27 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BEu_i8JeKkFSCqCNDEs75k3=vOjnAYzSBv9yhPJNvCsA@mail.gmail.com>
X-Gm-Features: AQ5f1Jo4iuYuE-WQ5kGFMC-K7_2dFm6wcUIvZdWnUkigr4hSv-4tmouuVXKBwk8
Message-ID: <CAAFQd5BEu_i8JeKkFSCqCNDEs75k3=vOjnAYzSBv9yhPJNvCsA@mail.gmail.com>
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_031951_665966_380EADC9 
X-CRM114-Status: GOOD (  52.49  )
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

T24gRnJpLCBGZWIgMjgsIDIwMjUgYXQgNzo0OOKAr1BNIEphY29wbyBNb25kaQo8amFjb3BvLm1v
bmRpQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gSGkgVG9tYXN6Cj4KPiBPbiBGcmksIEZl
YiAyOCwgMjAyNSBhdCAwNzoyODo0M1BNICswOTAwLCBUb21hc3ogRmlnYSB3cm90ZToKPiA+IE9u
IEZyaSwgRmViIDI4LCAyMDI1IGF0IDc6MTjigK9QTSBKYWNvcG8gTW9uZGkKPiA+IDxqYWNvcG8u
bW9uZGlAaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEhpIFRvbWFzego+ID4g
Pgo+ID4gPiBPbiBGcmksIEZlYiAyOCwgMjAyNSBhdCAwNzowMDo1N1BNICswOTAwLCBUb21hc3og
RmlnYSB3cm90ZToKPiA+ID4gPiBIaSBKYWNvcG8sCj4gPiA+ID4KPiA+ID4gPiBPbiBGcmksIEZl
YiAyOCwgMjAyNSBhdCAyOjEx4oCvQU0gSmFjb3BvIE1vbmRpCj4gPiA+ID4gPGphY29wby5tb25k
aUBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBIaSBNaWtoYWls
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gT24gVHVlLCBKYW4gMTQsIDIwMjUgYXQgMDc6MDA6MzlQTSAr
MDMwMCwgTWlraGFpbCBSdWRlbmtvIHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBIaSBM
YXVyZW50LAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBPbiAyMDI1LTAxLTAzIGF0IDE3OjIzICsw
MiwgTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPiB3
cm90ZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBPbiBUaHUsIEphbiAwMiwgMjAyNSBhdCAw
NjozNTowMFBNICswMzAwLCBNaWtoYWlsIFJ1ZGVua28gd3JvdGU6Cj4gPiA+ID4gPiA+ID4+IEN1
cnJlbnRseSwgdGhlIHJraXNwMSBkcml2ZXIgYWx3YXlzIHVzZXMgY29oZXJlbnQgRE1BIGFsbG9j
YXRpb25zIGZvcgo+ID4gPiA+ID4gPiA+PiB2aWRlbyBjYXB0dXJlIGJ1ZmZlcnMuIEhvd2V2ZXIs
IG9uIHNvbWUgcGxhdGZvcm1zLCB1c2luZyBub24tY29oZXJlbnQKPiA+ID4gPiA+ID4gPj4gYnVm
ZmVycyBjYW4gaW1wcm92ZSBwZXJmb3JtYW5jZSwgZXNwZWNpYWxseSB3aGVuIENQVSBwcm9jZXNz
aW5nIG9mCj4gPiA+ID4gPiA+ID4+IE1NQVAnZWQgdmlkZW8gYnVmZmVycyBpcyByZXF1aXJlZC4K
PiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPj4gRm9yIGV4YW1wbGUsIG9uIHRoZSBSb2NrY2hp
cCBSSzMzOTkgcnVubmluZyBhdCBtYXhpbXVtIENQVSBmcmVxdWVuY3ksCj4gPiA+ID4gPiA+ID4+
IHRoZSB0aW1lIHRvIG1lbWNweSBhIGZyYW1lIGZyb20gYSAxMjgweDcyMCBYUkdCMzIgTU1BUCdl
ZCBidWZmZXIgdG8gYQo+ID4gPiA+ID4gPiA+PiBtYWxsb2MnZWQgdXNlcnNwYWNlIGJ1ZmZlciBk
ZWNyZWFzZXMgZnJvbSA3LjcgbXMgdG8gMS4xIG1zIHdoZW4gdXNpbmcKPiA+ID4gPiA+ID4gPj4g
bm9uLWNvaGVyZW50IERNQSBhbGxvY2F0aW9uLiBDUFUgdXNhZ2UgYWxzbyBkZWNyZWFzZXMgYWNj
b3JkaW5nbHkuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBXaGF0J3MgdGhlIHRpbWUgdGFr
ZW4gYnkgdGhlIGNhY2hlIG1hbmFnZW1lbnQgb3BlcmF0aW9ucyA/Cj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+IFNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseSwgeW91ciBxdWVzdGlvbiB0dXJuZWQgb3V0
IGEgbGl0dGxlIG1vcmUKPiA+ID4gPiA+ID4gaW50ZXJlc3RpbmcgdGhhbiBJIGV4cGVjdGVkIGlu
aXRpYWxseS4gOikKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gV2hlbiBjYXB0dXJpbmcgdXNpbmcg
WWF2dGEgd2l0aCBNTUFQIGJ1ZmZlcnMgdW5kZXIgdGhlIGNvbmRpdGlvbnMgbWVudGlvbmVkCj4g
PiA+ID4gPiA+IGluIHRoZSBjb21taXQgbWVzc2FnZSwgZnRyYWNlIGdpdmVzIDQzNy42ICstIDEu
MSB1cyBmb3IKPiA+ID4gPiA+ID4gZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1IGFuZCA0MDkgKy0g
MTQgdXMgZm9yCj4gPiA+ID4gPiA+IGRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZS4gVGh1cywg
aXQgbG9va3MgbGlrZSB1c2luZyBub24tY29oZXJlbnQKPiA+ID4gPiA+ID4gYnVmZmVycyBpbiB0
aGlzIGNhc2UgaXMgbW9yZSBDUFUtZWZmaWNpZW50IGV2ZW4gd2hlbiBjb25zaWRlcmluZyBjYWNo
ZQo+ID4gPiA+ID4gPiBtYW5hZ2VtZW50IG92ZXJoZWFkLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiBXaGVuIHRyeWluZyB0byBkbyB0aGUgc2FtZSBtZWFzdXJlbWVudHMgd2l0aCBsaWJjYW1lcmEs
IEkgZmFpbGVkLiBJbiBhCj4gPiA+ID4gPiA+IHR5cGljYWwgbGliY2FtZXJhIHVzZSBjYXNlIHdo
ZW4gTU1BUCBidWZmZXJzIGFyZSBhbGxvY2F0ZWQgZnJvbSBhCj4gPiA+ID4gPiA+IGRldmljZSwg
ZXhwb3J0ZWQgYXMgZG1hYnVmcyBhbmQgdGhlbiB1c2VkIGZvciBjYXB0dXJlIG9uIHRoZSBzYW1l
IGRldmljZQo+ID4gPiA+ID4gPiB3aXRoIERNQUJVRiBtZW1vcnkgdHlwZSwgY2FjaGUgbWFuYWdl
bWVudCBpbiBrZXJuZWwgaXMgc2tpcHBlZCBbMV0KPiA+ID4gPiA+ID4gWzJdLiBBbHNvLCB2YjJf
ZGNfZG1hYnVmX29wc197YmVnaW4sZW5kfV9jcHVfYWNjZXNzIGFyZSBuby1vcHMgWzNdLCBzbwo+
ID4gPiA+ID4gPiBETUFfQlVGX0lPQ1RMX1NZTkMgZnJvbSB1c2Vyc3BhY2UgZG9lcyBub3Qgd29y
ayBlaXRoZXIuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFNvIGl0IGxvb2tzIGxpa2UgdG8gbWFr
ZSB0aGlzIGNoYW5nZSByZWFsbHkgdXNlZnVsLCB0aGUgYWJvdmUgaXNzdWUgb2YKPiA+ID4gPiA+
ID4gY2FjaGUgbWFuYWdlbWVudCBmb3IgbGliY2FtZXJhL0RNQUJVRi92aWRlb2J1ZjItZG1hLWNv
bnRpZyBoYXMgdG8gYmUKPiA+ID4gPiA+ID4gc29sdmVkLiBJJ20gbm90IGFuIGV4cGVydCBpbiB0
aGlzIGFyZWEsIHNvIGFueSBhZHZpY2UgaXMga2luZGx5IHdlbGNvbWUuIDopCj4gPiA+ID4gPgo+
ID4gPiA+ID4gSXQgd291bGQgYmUgc2hhbWUgaWYgd2UgbGV0IHRoaXMgZGlzY3Vzc2lvbiBkcm9w
IGRlYWQuLiBjYWNoZQo+ID4gPiA+ID4gbWFuYWdlbWVudCBwb2xpY2llcyBhcmUgcmVsZXZhbnQg
Zm9yIHBlcmZvcm1hbmNlcywgc3BlY2lmaWNhbGx5IGZvcgo+ID4gPiA+ID4gY3B1IGFjY2Vzcywg
YW5kIHlvdXIgYWJvdmUgNy43bXMgdnMgMS4xIG1zIHRlc3QgY2xlYXJseSBzaG93cyB0aGF0Lgo+
ID4gPiA+ID4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gWzFdIGh0dHBzOi8vZ2l0LmxpbnV4dHYu
b3JnL21lZGlhLmdpdC90cmVlL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1
ZjItY29yZS5jP2lkPTk0Nzk0YjVjZTRkOTBhYjEzNGIwYjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjQx
MQo+ID4gPiA+ID4KPiA+ID4gPiA+IEkgd291bGQgbGlrZSB0byBrbm93IGZyb20gSGFucyBpZiB0
aGUgZGVjaXNpb24gdG8gZGlzYWxsb3cgY2FjaGUtaGludHMKPiA+ID4gPiA+IGZvciBkbWFidWYg
aW1wb3J0ZXJzIGlzIGEgZGVzaWduIGNob2ljZSBvciBpcyBkZWVwbHkgcm9vdGVkIGluIG90aGVy
Cj4gPiA+ID4gPiByZWFzb25zIEkgbWlnaHQgYmUgbWlzc2luZy4KPiA+ID4gPgo+ID4gPiA+IFdo
ZW4gRE1BLWJ1ZiBpcyB1c2VkLCB0aGUgcmVzcG9uc2liaWxpdHkgZm9yIGNhY2hlIG1hbmFnZW1l
bnQgaXMKPiA+ID4gPiBzb2xlbHkgb24gdGhlIENQVSB1c2Vycycgc2lkZSwgc28gY2FjaGUtaGlu
dHMgZG9uJ3QgcmVhbGx5IGFwcGx5LiBJdCdzCj4gPiA+ID4gdGhlIGV4cG9ydGVyICg9YWxsb2Nh
dG9yKSB3aG8gZGV0ZXJtaW5lcyB0aGUgbWFwcGluZyBwb2xpY3kgb2YgdGhlCj4gPiA+ID4gYnVm
ZmVyIGFuZCBwcm92aWRlcyBuZWNlc3NhcnkgRE1BX0JVRl9TWU5DIG9wZXJhdGlvbnMgKGNhbiBi
ZSBuby1vcCBpZgo+ID4gPiA+IHRoZSBidWZmZXIgaXMgY29oZXJlbnQpLgo+ID4gPgo+ID4gPiBU
aGlzIGFsbCBtYWtlcyBzZW5zZS4KPiA+ID4KPiA+ID4gSSB0YWtlIGl0IGFzLCBmb3IgbGliY2Ft
ZXJhLCB1c2VycyBvZiB0aGUgRnJhbWVCdWZmZXJBbGxvY2F0b3IgaGVscGVyCj4gPiA+ICh3aGlj
aCBmaXJzdCBleHBvcnRzIE1NQVAgYnVmZmVycyBmcm9tIHRoZSB2aWRlbyBkZXZpY2UgYW5kIHRo
ZQo+ID4gPiBpbXBvcnRzIHRoZW0gYmFjayBhcyBETUFCVUYpIHdvbid0IGJlIGFibGUgdG8gY29u
dHJvbCB0aGUgY2FjaGUKPiA+ID4gcG9saWNpZXMuCj4gPiA+Cj4gPiA+IE5vdywgaW4gdGhlIGxv
bmcgdGVybSwgd2Ugd2FudCBGcmFtZUJ1ZmZlckFsbG9jYXRvciB0byBnbyBhd2F5IGFuZAo+ID4g
PiBoYXZlIGVpdGhlciBidWZmZXJzIGV4cG9ydGVkIGJ5IHRoZSBjb25zdW1lciAobGlrZWx5IERS
TSkgb3IgYnkgYQo+ID4gPiBzeXN0ZW0gd2lkZSBidWZmZXIgYWxsb2NhdG9yICh3aGVuIHdlJ2xs
IGhhdmUgb25lKSBhbmQgaGF2ZSB0aGUgdmlkZW8KPiA+ID4gZGV2aWNlcyBvcGVyYXRlIGFzIHB1
cmUgaW1wb3J0ZXJzLiBCdXQgZm9yIHRoZSB0aW1lIGJlaW5nIHRoZQo+ID4gPiAiZmlyc3QgZXhw
b3J0IHRoZW4gaW1wb3J0IiB1c2UgY2FzZSBpcyBwb3NzaWJpbGUgYW5kIHZhbGlkIHNvIEkgd29u
ZGVyCj4gPiA+IGlmIHdlIHNob3VsZCBjb25zaWRlciBtZWFzdXJlcyB0byBhbGxvdyBjb250cm9s
bGluZyBjYWNoaW5nIHBvbGljaWVzCj4gPiA+IGZvciB0aGlzIHVzZSBjYXNlIHRvby4KPiA+Cj4g
PiBIbW0sIEkgbWF5IGJlIG1pc3Npbmcgc29tZXRoaW5nLCBidXQgaWYgRnJhbWVCdWZmZXJBbGxv
Y2F0b3IgZG9lcyB0aGUKPiA+IGFsbG9jYXRpb24gaW50ZXJuYWxseSBpbiBsaWJjYW1lcmEsIHdo
eSBjb3VsZG4ndCBpdCB1c2UgdGhlCj4gPiBWNEwyX01FTU9SWV9GTEFHX05PTl9DT0hFUkVOVCBS
RVFCVUZTL0NSRUFURV9CVUZTIGZsYWc/Cj4KPiAtSS0gbWlnaHQgYmUgbWlzc2luZyBzb21ldGhp
bmcsIGJ1dCByZWFkaW5nIHRoZSBiZWxvdyBsaW5rcyB0aGF0Cj4gTWlraGFpbCByZXBvcnRlZCBp
biBhIHByZXZpb3VzIGVtYWlsCj4gWzFdIGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdp
dC90cmVlL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jP2lk
PTk0Nzk0YjVjZTRkOTBhYjEzNGIwYjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjQxMQo+IFsyXSBodHRw
czovL2dpdC5saW51eHR2Lm9yZy9tZWRpYS5naXQvdHJlZS9kcml2ZXJzL21lZGlhL2NvbW1vbi92
aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYz9pZD05NDc5NGI1Y2U0ZDkwYWIxMzRiMGIxMDFhMDJm
ZGRmNmU3NGM0MzdkI244MjkKPgo+IGl0IHNlZW1zIHRvIG1lIHRoYXQgeWVzLCB3aGVuIGZpcnN0
IGV4cG9ydGluZyB5b3UgY2FuIGhpbnQgdG8gdGVsbAo+IHZiMiB0byBhbGxvY2F0ZSBmcm9tIG5v
bi1jb2hlcmVudC9ub24tY29udGlndW91cyBtZW1vcnksIGJ1dCB0aGVuIHdoZW4KPiBzd2l0Y2hp
bmcgdGhlIGRldmljZSB0byBpbXBvcnRlciBtb2RlIChhbmQgaW1wb3J0IHRoZSBzYW1lIGJ1ZmZl
cnMgaXQKPiBwcmV2aW91c2x5IGV4cG9ydGVkKSB0aGUgY2FjaGUgc3luYyBwb2ludCB3b3VsZCB0
aGVuCj4gYmUgc2tpcHBlZCwgbGVhZGluZyB0byBwb3NzaWJsZSBzeW5jaHJvbml6YXRpb24gaXNz
dWVzIGJldHdlZW4gdGhlIGNwdQo+IGNvbnN1bWVyIGFuZCB0aGUgZGV2aWNlLgoKWWVhaCwgYW5k
IHRoYXQgaXMgMTAwJSBleHBlY3RlZC4gQXMgSSBzYWlkIGluIG15IHByZXZpb3VzIHJlcGx5LCBp
bgp0aGUgRE1BLWJ1ZiB3b3JsZCwgaXQncyB0aGUgcmVzcG9uc2liaWxpdHkgb2YgdGhlIHVzZXJz
IGRvaW5nIHRoZSBDUFUKYWNjZXNzZXMgdG8gZW5zdXJlIHRoZSBjb3JyZWN0IHN5bmNocm9uaXph
dGlvbiAoYWthIGV4cGxpY2l0IHN5bmMpLgoKPgo+ID4KPiA+IE5vdGUgdGhhdCBob3dldmVyLCBv
bmNlIHRoZSBidWZmZXIgaXMgYWxsb2NhdGVkIGFuZCBtYXBwZWQgb25jZSwgb24KPiA+IG1hbnkg
YXJjaGl0ZWN0dXJlcyBpdCBtdXN0IGtlZXAgdGhlIHNhbWUgbWFwcGluZyBhdHRyaWJ1dGVzIGFj
cm9zcyB0aGUKPiA+IGRpZmZlcmVudCBtYXBwaW5ncywgZHVlIHRvIGhvdyB0aGUgbWVtb3J5IGhp
ZXJhcmNoeSB3b3Jrcy4gKE5vdCBzdXJlCj4gPiBpZiB0aGlzIGlzIHdoYXQgeW91IGFyZSBhc2tp
bmcgZm9yIGhlcmUsIHRob3VnaC4pCj4gPgo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gQmVzdCByZWdh
cmRzLAo+ID4gPiA+IFRvbWFzego+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSSdtIGFza2lu
ZyBiZWNhdXNlIHRoZSBpZGVhIGlzIGZvciBsaWJjYW1lcmEgdG8gYWN0IHNvbGVseSBhcyBkbWEt
YnVmCj4gPiA+ID4gPiBpbXBvcnRlciwgdGhlIGN1cnJlbnQgYWxsb2MtZXhwb3J0LXRoZW4taW1w
b3J0IHRyaWNrIGlzIGFuIGhlbHBlciBmb3IKPiA+ID4gPiA+IGFwcGxpY2F0aW9ucyB0byB3b3Jr
IGFyb3VuZCB0aGUgYWJzZW5jZSBvZiBhIHN5c3RlbSBhbGxvY2F0b3IuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gSWYgdGhlIHJlcXVpcmVtZW50IHRvIGRpc2FibGUgY2FjaGUtaGludHMgZm9yIGltcG9y
dGVycyBjYW5ub3QgYmUKPiA+ID4gPiA+IGxpZnRlZCwgZm9yIGxpYmNhbWVyYSBpdCBtZWFucyB3
ZSB3b3VsZCBub3QgYmUgYWJsZSB0byB1c2UgaXQuCj4gPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gWzJdIGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdpdC90cmVlL2RyaXZlcnMv
bWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jP2lkPTk0Nzk0YjVjZTRkOTBh
YjEzNGIwYjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjgyOQo+ID4gPiA+ID4gPiBbM10gaHR0cHM6Ly9n
aXQubGludXh0di5vcmcvbWVkaWEuZ2l0L3RyZWUvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9i
dWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmM/aWQ9OTQ3OTRiNWNlNGQ5MGFiMTM0YjBiMTAxYTAy
ZmRkZjZlNzRjNDM3ZCNuNDI2Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IC0tCj4gPiA+ID4gPiA+
IEJlc3QgcmVnYXJkcywKPiA+ID4gPiA+ID4gTWlraGFpbCBSdWRlbmtvCj4gPiA+ID4gPiA+Cj4g
PiA+ID4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
