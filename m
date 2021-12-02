Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D9ECC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 10:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVvWjyl/Xvk+Aq+ggP2vvvY15cRpLb4ugylADR33hOM=; b=QcUbVp+dis0SHm
	H03kb8w7wn1rXLeEwzJp8Zx5yapUucbQaqyykRxvcFQ71yXsCYrKs9x5zPouc585XmGf0FK5+Wq+b
	pT7NvRSsrVMFlvvHyeVwccBgESbpB0ZOAdBkI18c4DS6uGMq6oyCos+TCTaHVIWe3uNm3f+9uVgfE
	U/WzDUuAMzxEpxNAV21reyxAUdwhSR4KumijiGyQIT68Rquj85Hs6F35atKc072RXRQoW+smR4O/R
	nOveCnI+L2xCzebSIAwlT+aeG8y25nQMChlx1d2mhvpmsUoQq9gtf2INULXA4cercj4H19tVYa9dG
	2P+g0Vd3VpD1onKYiCGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msjU6-00BrFs-6N; Thu, 02 Dec 2021 10:38:38 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msjU3-00BrEP-4A
 for linux-rockchip@lists.infradead.org; Thu, 02 Dec 2021 10:38:37 +0000
Received: by mail-ed1-x535.google.com with SMTP id e3so114169786edu.4
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Dec 2021 02:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ehrJkM+CUHyrmfsopnJn0wAZnxmyyocrjM1q1kJwX8Y=;
 b=4VLkCG+dx7E1PduqHRximAmE4CE4XsvpcoGwk40OaUGmDIgAgtUYqiu9HGW45rgZAP
 vWig5fVNPVewTGflK6J+FZJYT12rlZIfs2WxqHGGnqOHbWxo9TPn143goxHaz3NNnewp
 dZ9WyQcDYqQG0WVIwm/QT34m81492gXUAFuCvdHAp70v0uOzWp1aZuXvfWBbDMOpqyGU
 D0jizlBvCN80AXlgbL3BvSQWJc1lSX84gQcQV9iJei8eQ6b3PogPOogxMIk0re6lJGJU
 GwVKPT8PQtyl+tqOhkJw8qjYrlaXoLgTCoakYy7AuAuQcJkZR3f5Ukza9gjjveT6TFcL
 tw6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ehrJkM+CUHyrmfsopnJn0wAZnxmyyocrjM1q1kJwX8Y=;
 b=zT5Ybtovd9/t5YK1pmnJLC6YxRaEzUhMj6LoWlJwjh/zok3Xp4/DpmO4l9S7/6tlPd
 oT7D5BIFACMZeRksUZFVLkPgnQaCokFySlCdCyJsPUOI+gD5WrdnbT83VNebySQpOKMQ
 Y6/Cd6jULWBGDGmJwRAV+8n+Me2YSiSrrUg1S82mrwAE4TCFY5Pmgnem2vPZq3nZvFgg
 I+pj//8IfpS1K5zmh6Bv6KpZc1RTQyzILbWzCe9J7zAHxDk73vQL3vC/rgAsP/2OtORU
 mty4qVqB4pC/j2XgjgrT08cVxZceFnkCr8IgekDsgaS7GgdCxliEZBt9fpPgllghamH6
 Ia0Q==
X-Gm-Message-State: AOAM533WHG/nxapr7xla25am7mS/yOQOzNabfuwPiU4o9+1MQPUDnBwl
 8D0bAkah3F5DIrrJiEN8vybctPCEKM/r6zoogKYs6Q==
X-Google-Smtp-Source: ABdhPJynjfOwGdomnFBHQfk0Yrez9pulbplqtsSoWO+V9YB8K5XokEPS3MPKhpOBfknmi+wqmilhplYP32bD4/X93uw=
X-Received: by 2002:aa7:d412:: with SMTP id z18mr16666950edq.315.1638441513077; 
 Thu, 02 Dec 2021 02:38:33 -0800 (PST)
MIME-Version: 1.0
References: <20211125155001.622405-1-benjamin.gaignard@collabora.com>
 <Yae9BphwX9cGxhQf@eze-laptop>
 <cf0ba2fa2a166da6bb514c2aa997ceec680590a7.camel@ndufresne.ca>
 <862d4ee2-8a32-9bdb-ee01-b307660f78a1@collabora.com>
In-Reply-To: <862d4ee2-8a32-9bdb-ee01-b307660f78a1@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 2 Dec 2021 07:38:21 -0300
Message-ID: <CAAEAJfDJp_3Z7HO41j-PhU_Cb+=gj9KQ7JarMN=dky1DaJRyWw@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Make G2/HEVC use hantro_postproc_ops
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, 
 linux-media <linux-media@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_023835_362884_B3F27E2B 
X-CRM114-Status: GOOD (  20.40  )
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

T24gVGh1LCAyIERlYyAyMDIxIGF0IDA2OjI2LCBCZW5qYW1pbiBHYWlnbmFyZAo8YmVuamFtaW4u
Z2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPgo+IExlIDAxLzEyLzIwMjEgw6AgMjE6
NTMsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXQgOgo+ID4gTGUgbWVyY3JlZGkgMDEgZMOpY2Vt
YnJlIDIwMjEgw6AgMTU6MjAgLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdCA6Cj4gPj4g
SGkgQmVuamFtaW4sCj4gPj4KPiA+PiBPbiBUaHUsIE5vdiAyNSwgMjAyMSBhdCAwNDo1MDowMVBN
ICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+Pj4gVXNlIHRoZSBwb3N0cHJvY2Vz
c29yIGZ1bmN0aW9ucyBpbnRyb2R1Y2VkIGJ5IEhhbnRybyBHMi9WUDkgY29kZWMgc2VyaWVzCj4g
Pj4+IGFuZCByZW1vdmUgZHVwbGljYXRlZCBidWZmZXIgbWFuYWdlbWVudC4KPiA+Pj4gVGhpcyBh
bGxvdyBIYW50cm8gRzEyL0hFVkMgdG8gcHJvZHVjZSBOVjEyXzRMNCBhbmQgTlYxMi4KPiA+Pj4K
PiA+PiBDYW4geW91IGFkZCB0aGUgZmx1c3RlciBzY29yZSBmb3IgSEVWQyBzbyB3ZSBjb25maXJt
IHRoZXJlIGFyZSBubwo+ID4+IHJlZ3Jlc3Npb25zPwo+ID4+Cj4gPj4gQWxzbywgcGxlYXNlIG1h
a2Ugc3VyZSB0byB0ZXN0IHdpdGggdGhlIFVWRyBzZXQgaHR0cDovL3VsdHJhdmlkZW8uZmkvLAo+
ID4+IGFzIHdlbGwgYXMgdGVzdGluZyB0aGF0IE5WMTJfNEw0IG91dHB1dCBjb252ZXJ0ZWQgdmlh
IEdTdHJlYW1lcidzCj4gPj4gdmlkZW9jb252ZXJ0IGVsZW1lbnQuCj4gPiBUaGlzIGlzIGEgYml0
IHVuZm9ydHVuYXRlIGZvciBwZXJmb3JtYW5jZSwgYnV0IGZsdXN0ZXIgd2lsbCBlbmR1cCB0ZXN0
aW5nIGZyb20KPiA+IDRMNCB3aXRoIGhvdyB0aGUgcGlwZWxpbmUgZ2V0IG5lZ290aWF0ZWQuIFdp
bGwgYmUgZ29vZCB0byBhZGQgc29tZSBlbnYgYXQgc29tZQo+ID4gcG9pbnQgc28gZm9sa3MgY2Fu
IHRlc3QgdGhlaXIgQ1NDLgo+Cj4gZmx1c3RlciBzY29yZSBpcyBzdGlsbCA3Ny8xNDcgc28gbm8g
cmVncmVzc2lvbnMuCj4gTlYxMl80TDQgaXMgdGhlIGZpcnN0IHBpeGVsIGZvcm1hdCBlbnVtZXJh
dGVkIGJ5IHRoZSBkcml2ZXIgc28gaXQgaXMgdGhlIG9uZSB1c2VkCj4gYnkgZmx1c3RlciBwaXBl
bGluZSBhbmQgaXQgaXMgd2VsbCBjb252ZXJ0ZWQgaW50byBJNDIwIGJ5IEdTdHJlYW1lcidzIHZp
ZGVvY29udmVydC4KPiBEbyBub3Qgd29ycnkgTlYxMiBpcyBhbHNvIHdvcmtpbmcgZmluZSA6LSkK
Pgo+IEkgaGF2ZSB0ZXN0ZWQgQmVhdXR5LCBKb2NrZXkgYW5kIFNoYWtlTkRyeSBmcm9tIFVWRyBz
ZXQgYW5kIEkgc2VlIG5vIHByb2JsZW1zLgo+CgpBd2Vzb21lIQoKU2luY2Ugd2UgZG9uJ3QgaGF2
ZSBhbnkgZm9ybSBvZiBDSSAoeWV0PyksIHBsZWFzZSBhZGQgdGhlIGFib3ZlIHRvIHRoZQpjb21t
aXQgZGVzY3JpcHRpb24KYW5kIHJlLXN1Ym1pdCB0aGUgcGF0Y2guCgpUaGVzZSBkcml2ZXJzIGFy
ZSBhIGJpdCBmcmFnaWxlIHVuZm9ydHVuYXRlbHksIGFuZCB3aXRob3V0IGEgYmV0dGVyCndheSB0
byBrZWVwIHRyYWNrCm9mIHRlc3RpbmcgZG9uZSBvbiBlYWNoIGNoYW5nZSwgSSBmZWVsIGJldHRl
ciBoYXZpbmcgdGhpcyBpbmZvcm1hdGlvbgpvbiB0aGUgY29tbWl0cwp0aGVtc2VsdmVzLCBzcGVj
aWFsbHkgZm9yIHNvbWV3aGF0IGludmFzaXZlIGNoYW5nZXMgbGlrZSB0aGlzLgoKVGhhbmtzIGFu
ZCBncmVhdCB3b3JrIQpFemVxdWllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
