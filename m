Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3BE4CD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 10:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tljf2Tw+RuZ0+N8hL/MqAkTNqdCY66lLjLD687wLMoc=; b=Jk0ctVqGNPacpp
	/k4yABmffdZ9neRRdVKW5g1hKWSNgHBqAetGBZX39cgbdF5sC32MarrOF3Xl1cPP78Wd3ZCZdq+nj
	RFzBOr8ONJ9ZfVyD4T/dKWYgbmTE1GHQgwXEqL/Xu+pXoSd5buJc076N6Rw3Y5u6DO92sha3Atclg
	groCZ1HgBXVi8wsUb56JOc/RQJBH4JRmcmcSZe4tcKl471SllnssJuccTMnpDw7KxSqdrOQDuL0Py
	JGsTf8Vjz86XK3eIf87uvtGk0mGhjECaLAgjHMQduhDHikcJ8rEltY7/kIlYt4Y6J5Cr1MlNc9Ls0
	SVOGNEQdEzPYCM4c/uBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGPC-00000007RZy-4BAc;
	Wed, 10 Jun 2026 10:43:30 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGP9-00000007RYF-2JTx
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 10:43:29 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-691c5776f95so5721217a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 03:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781088205; x=1781693005; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QVbrD2t2ulKBTgQFMKkzp21clFhntPxcEbJMRFx6ZO8=;
        b=T53AvkW4hZEtDIZlbg/nEGsPECfp2leYDDJdIrBa0c2Ia4jXEm4/eGVl7XqqQUyUCn
         ezKp4wKxGFS/3BlSFcIOGMWh+73Zyt01EPQYCQxZVJT1uH86pJLYLBl6Z96TLySLca22
         BkstrqskYBxp6TBiqJtQp0CkK7zRGdaKs3W9ngY1/StNRcLr5twaztto2dsN3AiEvqPs
         4m6TlFhfyPUxfHiqNr/CQ9elTFPzisfIRx3qk2ICfrwDJMYYKHRnNVjWvIQRea7FHiGw
         H4icuJbyLt1e6enlMPCJn3FB3pB7CYfuDbdfXfgKMIq5hPhcayT3bwh0TjyyvIgJi4Ik
         LyQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781088205; x=1781693005;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QVbrD2t2ulKBTgQFMKkzp21clFhntPxcEbJMRFx6ZO8=;
        b=sI6m3zUco5wPUTiNPYZqG+QwGVygph35FNfgWGLTX/hArJD3GGP4l7WSR61EzFn1xy
         pnXClDtb4C7zcV7dKbqFAe+vFwilcbbFs8UcgowdowzJje4t0yp3Rf3yICTLzSyS+wYc
         TM8YdaX+e5LUiVGdEn9oHA+PQuUYI6EyAfwew9vowf/igla/CnjQGixcYVXQr1L5CZL4
         GpiGNqc4WDJvEIsD1b3PPZPr3L0Db1cSbbS3OawBKE/s3L6dk6tm1qG7LRRxglOPlkzG
         mlD0lVU2+2UtQM4PQ6E1XBPmjj/97gfVFLc7vEWNMJriIy8w0Erds8sEbQwIoQrhAK13
         Cirw==
X-Forwarded-Encrypted: i=1; AFNElJ866ZBRV9oXqTeqmevV8mkqCCVN22Unco4qwM812xcnX0eLWuKez5hbhrFlz1Y0OfYSlXRrQWWTeSqQFs5azA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyTS2S+rR4iApcYcqOnfl60MvDQ3EY45+InqzXrwcxaBPCfhI+b
	as0AUBkqUr6GxM1cYFn4eOaHbq7Cq+fukuH6D45MLRqkiba7P00WqWEL
X-Gm-Gg: Acq92OFu4i6afBf7jVoVo/vjQJyRKedAXuQNtjY79x0Cy7hZazFz8L0OPEzD9LPpNAT
	gSrTJfB9BasF5qEnfJzywan3SmMQupf9uQXluGFSHYlWyeLkjP3CCF7Y5WgJmOjPFeqiwrCcMYt
	REmiKdWHx8/H0jtJvUmd7e35Asyw9LKBPvPtf9xqAlfbohzEnD1vTNHzz1ekNMmNca/h/t4XG8a
	PW0rCr0ctLwHmU5gItZl0BZbCrWKnPrmBP7yp8glTf39mICruWvCx10PMxq9fxztzaEhS+G1uyC
	w4K8KjPNBW5CIcmjkxoJ5G/AZGSaVHzKmF9q76+4oeY+NVG0KYg39SVg2ypNX9v5PYQPqStuifD
	kRJNxZCJjYyZ2LVbiOXYsNhsHdr19YHfl+hni4NjozA6wwDXypCClaap/jhe2glwZ7huDYcuT5m
	Ck+i10TWWfgT05qMWutTy1GIgQQPN5fF4JrRFqFVNvefpBZgoQ9Bb5qVOo1z4RAyjXsQlNb446b
	Vz9z7DunnJLbbIzDoGs
X-Received: by 2002:a17:906:8e15:b0:be2:208a:a8ae with SMTP id a640c23a62f3a-bf370f6ac02mr1367077866b.22.1781088205164;
        Wed, 10 Jun 2026 03:43:25 -0700 (PDT)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf0553060dasm1178612666b.44.2026.06.10.03.43.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2026 03:43:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal de-blocking
 edges y=4 and y=12
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <4b3a9f32-807a-4b9e-8df2-d22f872d288e@symple.nz>
Date: Wed, 10 Jun 2026 12:43:13 +0200
Cc: linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Message-Id: <2CB1844A-3DB7-4973-98E0-0C141DD38B45@gmail.com>
References: <52a01f1f-5b36-429b-96cf-f1a0a1c8f5e4@symple.nz>
 <5939C396-3A70-458F-8E6B-A55319929564@gmail.com>
 <4b3a9f32-807a-4b9e-8df2-d22f872d288e@symple.nz>
To: Simon Wright <Simon@symple.nz>
X-Mailer: Apple Mail (2.3864.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_034327_603589_16FC8551 
X-CRM114-Status: GOOD (  13.49  )
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

U2ltb24sIHBscyBzZWUgaW5saW5lCgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNpbW9u
IFdyaWdodCA8U2ltb25Ac3ltcGxlLm56PiB3IGRuaXUgMTAgY3plIDIwMjYsIG8gZ29kei4gMDA6
MTQ6Cj4gCj4gCj4gICAgZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS9TeW1wbGVOWi9ya3Zk
ZWMtdmRwdTM4My12cDkKPiAgICBjZCBya3ZkZWMtdmRwdTM4My12cDkKPiAgICAjIGFnYWluc3Qg
eW91ciBydW5uaW5nIGtlcm5lbCdzIGhlYWRlcnMvc291cmNlOgo+ICAgIEtCVUlMRF9NT0RQT1NU
X1dBUk49MSBtYWtlIC1DIC9saWIvbW9kdWxlcy8kKHVuYW1lIC1yKS9idWlsZCBNPSRQV0Qvc3Jj
IG1vZHVsZXMKPiAKPiAgICBzdWRvIHJtbW9kIHJvY2tjaGlwX3ZkZWMgMj4vZGV2L251bGwgICAg
IyB1bmxvYWQgdGhlIGluLXRyZWUgZHJpdmVyCj4gICAgc3VkbyBpbnNtb2Qgc3JjL3JvY2tjaGlw
LXZkZWMua28gICAgICAgICMgd2FybXVwIGlzIGRlZmF1bHQtb24sIG5vIHBhcmFtcyBuZWVkZWQK
PiAKCk1hbnkgdGh4IGZvciBkZXRhaWxlZCBoaW50cy4KCkkgZGVjaWRlZCB0byBnbyB3aXRoIGFs
dGVybmF0aXZlIHBhdGg6IEkgaW5jb3Jwb3JhdGVkIFlvdXIgY29kZSBkaXJlY3RseSBpbnRvIGlu
LXRyZWUgb24gNy4xIG1haW5saW5lLCByZWNvbXBpbGVkIGFuZCBnaXZlIHRlc3QgcnVuIG9uIHJv
Y2s0ZC4gIApJIHRoaW5rIEknbSBnZXR0aW5nIFlvdXIgY29kZSBydW5uaW5nIGFzIGluIGRtZXNn
IEkgc2VlOiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS93YXJwbWUvNTFiY2U5NTMyYmFhMzdjY2I1
OWUxYzY5YTVjMmVmNDMKClVuZm9ydHVuYXRlbHkgbWluZSByazM1NzYgaDI2NCBpc3N1ZXMgc3Rp
bGwgaGFwcGVucyAoYXBwcm94IDUtNDAlIGZhaWx1cmUgcmF0ZTsgb25seSBvbiAzNTc2OyBvbmx5
IG9uIGgyNjQpIApWaXN1YWxseSBpc3N1ZSBpcyBsaWtlIHRoaXM6IGh0dHBzOi8vaWJiLmNvL2da
VDZ2TVpECgpJbnRlcmVzdGluZyBpczogbWluZSBpc3N1ZSBzeW1wdG9tcyBhcmUgaW1obyBzaW1p
bGFyIHRvIHlvdXJzOgoxLiBhcHByb3guIDUtMjAlIGZhaWx1cmUgcmF0ZSAoYnV0IHZhcmllcyBw
ZXIgYm9hcmQpCjIuIG9ubHkgb24gMzU3NgozLiBvbmx5IG9uIGgyNjQKCkFkMTogc29tZSBib2Fy
ZHMgaGF2ZSBxdWl0ZSBsb3cgcmF0ZTogbmFub3BpIGlzIGZldyAlIHdoaWxlIHJvY2s0ZCBpcyBy
ZWFsbHkgaGlnaCAoMjAtNDAlKQoKQWQyOiBpIGhhdmUgc2luZ2xlIGFwcGxpYW5jZSBpbWFnZSBm
b3IgPjQwIGJvYXJkcyBhbmQgb25seSAzNTc2IGhhcyB0aGlzIGlzc3VlCgpBZDM6IG9uIDM1NzYg
aXNzdWUgaGFwcGVucyBvbmx5IG9uIGgyNjQuIEhFVkMsIHZwOSwgZXRjIGFyZSBvay4gCgoKPiAo
SWYgcm9ja2NoaXAtdmRlYyBpcyBidWlsdCBpbnRvIHlvdXIga2VybmVsIHJhdGhlciB0aGFuIGEg
bW9kdWxlLCB5b3UnbGwgbmVlZCBpdCBhcwo+IGEgbW9kdWxlIC0gb3IgYmxhY2tsaXN0ZWQgLSBm
aXJzdC4gVGhlIG1vZHVsZSBuYW1lIG1heSBkaWZmZXIgc2xpZ2h0bHkgb24geW91cgo+IGJ1aWxk
LikKPiAKPiBUaGVuIGRlY29kZSB5b3VyIEguMjY0IGFzIHVzdWFsICh2NGwyc2xoMjY0ZGVjKSBh
bmQgY29tcGFyZSBhZ2FpbnN0IGF2ZGVjX2gyNjQgLSB0aGUKPiByb3dzLTQvMTIgY29ycnVwdGlv
biBzaG91bGQgYmUgZ29uZS4gVGhhdCByZXBvIGlzIHRoZSBWUDkgd29yaywgYnV0IGl0cyBzcmMv
IGJ1aWxkcwo+IHRoZSBmdWxsIFZEUFUzODEvMzgzIEguMjY0L0guMjY1L1ZQOS9BVjEgZHJpdmVy
LCBzbyBILjI2NCBpcyBpbmNsdWRlZC4KClNob3VsZCBJIGNvbGxlY3Qgc3RhdHMgb24gbWluZSBo
dyBvciByYXRoZXIgbWF5YmUgSSBzaG91bGQgdGVzdCB0aGUgc29sdXRpb24gKHdoZW4gd2Ugd2ls
bCBoYXZlIGl0KT8gIAoKPiAKPiBPbmUgaG9uZXN0IGNhdmVhdCBmb3IgdGhlIG1lZGlhLXBsYXll
ciB1c2UgY2FzZTogdGhlIHdhcm11cCBmaXhlcyBjb3JyZWN0bmVzcyAodGhlCj4gd3JvbmcgcGl4
ZWxzKSwgbm90IHRocm91Z2hwdXQgLSBhbmQgdGhlIHRocm91Z2hwdXQgbGltaXQgaXNuJ3Qgc3Bl
Y2lmaWMgdG8gSC4yNjQuCgpJbmRlZWQgLSBJIHNlZSBhbHNvIGlzc3VlIHdpdGggdGhyb3VnaHB1
dCBvbiAzNTc2LgpJaXJjIDM1ODggY2FuIGdvIHdpdGggMzAwbWJwcyBzYW1wbGVzIHdoaWxlIDM1
NzYgc3RhcnRzIHRvIGRyb3Agb24gMTMuLi4xNW1icHMgCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
