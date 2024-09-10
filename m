Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77410EDE9B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 19:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guPHL+ORJepEg+unVihd7jh8aQioI32vuSc9ZKSnbfQ=; b=BitGNoXzUjmyNe
	sUebZ0m1DSXXoyh0Mu8FF42kuFArZcPb+xpA78IWP356D5GvhNVXl8yRSUfEm9ntCXnd1ma0mEFfp
	kbASA6or87++kRalP/p+wa3jACrH3CclcWWZK+8R+gUuPfsogEqrYVYRDgTvWVgrLEJN6pZtjLUqX
	dW6+2qtNcRRLP76TWRYmRSuWzM1aOsMVaRSBKB64KrTD2Nzn7eyAP24s4gW/mzHG9yDKwqQD4N33Z
	Xa2YRbX7b8NLy2BO716vpjPRSudZUBkCkO1u7RqIUwTMrz830hicuYE77lUDnbS7lTQs/gAWjO2UU
	PuYNPsVbugzCSVpvyx9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so6nG-00000006wc0-1G7i;
	Tue, 10 Sep 2024 19:44:54 +0000
Received: from mail-vs1-xe2e.google.com ([2607:f8b0:4864:20::e2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so6nD-00000006wb9-2lIC
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 19:44:53 +0000
Received: by mail-vs1-xe2e.google.com with SMTP id ada2fe7eead31-49bd45cfe38so393748137.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Sep 2024 12:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1725997489; x=1726602289; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=paDdDLZuWPg2gJJW4B+S1cFVaWCPfU31jT9c47Deq1c=;
        b=BlGAKhUYK3qysWGKLd2Qyf9orYy4BB/iU5F6HsL5ZaMZqEMrudhZ+TzvkF5q5X4p+k
         FTZVshTFk81PSIQiMtHMfAkgDg/jBWQ/unMzMMgZ1SO12nw7y5wmgr2wooW4I4egxTXb
         Aao2XEy+wN7P5bu792wLkjKshZ1FFXEEmkE0F9rnQm/pE2pKA1/sW/o0q1eBnTYfUg0b
         4LjMydI/gkkHFJTTND6ZEAWaBlf/rLe9hopU6v7nEPIEMfyFlGT00123O0wkPz7Mipov
         P/99htoluVHnuA/AKNedFlOCefb1NPRteeugMUJoQJfySjYkiOvO482TKvYllzl7du8d
         dGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725997489; x=1726602289;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=paDdDLZuWPg2gJJW4B+S1cFVaWCPfU31jT9c47Deq1c=;
        b=UQstRUNbN/bPkpmRT6ATvMMdO9gWC/eVNqaiLd7VtSlRhVxlaJh00ND4Q/pwKVXm0i
         SYDcjd+jbek2exKsjcVqjTI9wSZS1Fk1nakCaKRZlmKuzfqTzSwU5SKzSLPMQ7VKbLDu
         EH/xmw1DRS63hehTJ9VnjyHMSVkfIy96GFLliD+F9FrLMHvdGYb0UWSSSxqg0I0S0AYG
         VIrhKj5wLwCFcjEdW0AFiQbQinJB1T7QMum+8oQ7JFtUHwVd/LFW1uQ5TTVSj7JLK0bR
         cHedweheMt1BpJZaGYci68qs7MLGIdnXBVmHXFSlZwjw6NP6ITABHJe1pThLcm3QS2BH
         Utiw==
X-Forwarded-Encrypted: i=1; AJvYcCVa4T9Znp/hlMNACOZ/kWfsYtaXzIWxRPeJ96mm7zNMIt2cJn44+UWukkU7zgUy91eIQrpKFte++sY59N8A3g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwowMo7p1P4OtPmKV9fAkAfdGmXsRnEyxyx0Sqv2otbBkAgbtpK
	HEjyrLUGG/o9Rb8HBh+Yg1vVWagmzKUsTgPvM9cgAWzCTm57GaVIdD/2/zzKVGk=
X-Google-Smtp-Source: AGHT+IFg9JLqxdW3sXfJRhqrKXQcUosatQMw8YzACBm6eCw99hRxZNZ+Q4Fu0IP4u78spQSl2exOIw==
X-Received: by 2002:a05:6102:d86:b0:493:d3ec:76e5 with SMTP id ada2fe7eead31-49c2423d34bmr1186558137.18.1725997489510;
        Tue, 10 Sep 2024 12:44:49 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:17:9cac::580])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c53432dee3sm33173866d6.8.2024.09.10.12.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 12:44:49 -0700 (PDT)
Message-ID: <10f107089cf679bcabd03e49fc469bb89518deeb.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: av1: Fix reference video buffer
 pointer assignment
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	heiko@sntech.de, hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Tue, 10 Sep 2024 15:44:47 -0400
In-Reply-To: <01020191dc45365b-26b103cd-153a-4b74-a663-ed7beecc1713-000000@eu-west-1.amazonses.com>
References: <01020191dc45365b-26b103cd-153a-4b74-a663-ed7beecc1713-000000@eu-west-1.amazonses.com>
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_124451_960234_0F6697EE 
X-CRM114-Status: GOOD (  13.25  )
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

SGksCgpMZSBtYXJkaSAxMCBzZXB0ZW1icmUgMjAyNCDDoCAxNDoxMCArMDAwMCwgQmVuamFtaW4g
R2FpZ25hcmQgYSDDqWNyaXTCoDoKPiBBbHdheXMgZ2V0IG5ldyBkZXN0aW5hdGlvbiBidWZmZXIg
Zm9yIHJlZmVyZW5jZSBmcmFtZSBiZWNhdXNlIG5vdGhpbmcKPiBnYXJhbnR5IHRoZSBvbmUgc2V0
IHByZXZpb3VzbHkgaXMgc3RpbGwgdmFsaWQgb3IgdW51c2VkLgoKTWluZCBkb2N1bWVudGluZyBo
ZXJlIHdoaWNoIHRlc3RzIGdvdCBmaXhlZCB3aXRoIHRoaXMgY2hhbmdlID8KCj4gCj4gRml4ZXM6
IDcyN2E0MDA2ODZhMiAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIFJvY2tjaGlwIEFWMSBkZWNv
ZGVyIikKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25h
cmRAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMgICAgfCAzICstLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMu
YyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3
X2F2MV9kZWMuYwo+IGluZGV4IDM3MmRmY2QwZmNkOS4uMmI5YTEwNDc0NzljIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3
X2F2MV9kZWMuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9j
a2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+IEBAIC0xNjEsOCArMTYxLDcgQEAgc3RhdGljIGlu
dCByb2NrY2hpcF92cHU5ODFfYXYxX2RlY19mcmFtZV9yZWYoc3RydWN0IGhhbnRyb19jdHggKmN0
eCwKPiAgCQlhdjFfZGVjLT5mcmFtZV9yZWZzW2ldLnRpbWVzdGFtcCA9IHRpbWVzdGFtcDsKPiAg
CQlhdjFfZGVjLT5mcmFtZV9yZWZzW2ldLmZyYW1lX3R5cGUgPSBmcmFtZS0+ZnJhbWVfdHlwZTsK
PiAgCQlhdjFfZGVjLT5mcmFtZV9yZWZzW2ldLm9yZGVyX2hpbnQgPSBmcmFtZS0+b3JkZXJfaGlu
dDsKPiAtCQlpZiAoIWF2MV9kZWMtPmZyYW1lX3JlZnNbaV0udmIyX3JlZikKPiAtCQkJYXYxX2Rl
Yy0+ZnJhbWVfcmVmc1tpXS52YjJfcmVmID0gaGFudHJvX2dldF9kc3RfYnVmKGN0eCk7Cj4gKwkJ
YXYxX2RlYy0+ZnJhbWVfcmVmc1tpXS52YjJfcmVmID0gaGFudHJvX2dldF9kc3RfYnVmKGN0eCk7
CgpHb29kIGNhdGNoLCB3b3VsZCBzdGlsbCBiZSBuaWNlIHRvIGltcHJvdmUgdGhlIGNvbW1pdCBt
ZXNzYWdlLgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVA
Y29sbGFib3JhLmNvbT4KCj4gIAo+ICAJCWZvciAoaiA9IDA7IGogPCBWNEwyX0FWMV9UT1RBTF9S
RUZTX1BFUl9GUkFNRTsgaisrKQo+ICAJCQlhdjFfZGVjLT5mcmFtZV9yZWZzW2ldLm9yZGVyX2hp
bnRzW2pdID0gZnJhbWUtPm9yZGVyX2hpbnRzW2pdOwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
