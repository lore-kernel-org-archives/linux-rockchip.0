Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D57FBC282D2
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Mar 2025 16:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEzPJ0Bq8QF9284E4rGLPWL5+eFUVR4Hpvc6EcCUIks=; b=cBoIfNuzN4fLHT
	XX2NINJorSdOa39hBsSlpusupOV7DRTdSwNOp0SoFCnQl5i9dO7V+op4y8kW35oTQjGC0ivaSs9Ak
	4IFw7UlXcAPik6JDQIuqIC48VQiI6LOi1x+x3sa+abDy9ogtSa6yvjr4ruI7sGECsnJCD696xoi5D
	wW4acwuFlubCAYZ93Tx/vaBmwL96zsCpHb5mN+UgSz3V91kOXpcuSpoVQP13dzd+qkkIpv9TaBIgO
	ytp81dZiohV601NURlM0sj+iMrIClPRbJs7woZ06yJl4/0CjTEpORAPgnmj/f7R5TI+DALefSTtE5
	2PMpqFQo8XKEMyevF6iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp8Hk-00000001Qaq-201D;
	Mon, 03 Mar 2025 16:04:52 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp7el-00000001Ikj-3o7Z
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Mar 2025 15:24:38 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-7c0ade6036aso529403685a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Mar 2025 07:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1741015474; x=1741620274; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WFHt+0PcUrjf2KPzth13ahqz68xbUj7oThx+bYUbytM=;
        b=Rj2M+9WiAQ1RuI9gAuevVL0OijeaDzKgLsVqhknGCM0cXSwQVGJroSGPj4izGDI803
         bfYXFMCxL+4DNRYuNafBaiIkz2+AbV2pgGACs0sxLhCWL61WwCxw2yCfwFZSIFNyzD+T
         b4qnmLcdQtSnP5UljUnSNiXOlYKzUHmuWCwdbA3i5rcDp5ZBWK4f5X/V4RnK4PTMFOir
         xYMFdCMyjMmaV5Y8YtvaTdC27T7I1tjw18Mzo23QZL1tHFaEj1KhwJHjthwZFLctgQpu
         xR2Zb+75HON2dcM//5GbuE4WY4mzjK/Gb3rdIPYMATqrccNgk564zWCFHobjK3OCq63D
         kyEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741015474; x=1741620274;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WFHt+0PcUrjf2KPzth13ahqz68xbUj7oThx+bYUbytM=;
        b=P/jdk4zCvh9DaNHbEpzAzHlOSdTxN5H0mA9lRKvv1fCRtDdK8Q6CHxHLs1pMkzqFp7
         NtdpcE+OKS5XDHdcy7vG1rv51ZontUGf2L0h+AQP3LSvdufvgWc0X4roOl9l1t1IzZ9B
         PZwaP5L1+xXVDriflTMEpfUaoAM5CfEW8RMFzflXKkG1Ai0VTIHrGLnZ0qw0AlD9KATO
         52nDV+63G8+6PXfKDgjVcxyR2onR7orihLNB/ZJJAOG2mJtqe4QIvrB3E/GI96f5icv2
         wrrlT2dstx6KdWlaEERitSck0yqXOhEUzYc7czN9gTJlrt/aX0Pm4SdJ0ID3Kn0kdO3X
         3CJg==
X-Forwarded-Encrypted: i=1; AJvYcCW/I+qmOGwNTusFdvAEMXLnvnz795FhPtmaiCfAoJyTmlSSoxCmQJoI4K0ItTcyoP15bFv0rwaVd6tOysDeog==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2ebtBwHAwwd3VQXV6b3yqnbilPUgSugKYCTmcr2TrO+U4lSfI
	izU3Wr2OCMqVMilHelqiKU6/TxgqsEeXvZdzmSDn14nBWfcAR2baJvfkEIC5F0A=
X-Gm-Gg: ASbGncsMgooZ8n71CO7ZfEyiXx7+YKJed7jahXJ8WNz+PvlioDAkP+UeBnz2xQh3TI8
	9wtcep8ER0TiSTvwVdrJRiqYuVW8GIW8Jfg787BpvBMbqyKBdNdT6kJ+OWL2Hka6Kw4oYj4KGQb
	as6rnJTcP+IC8MdJoIXc5+O7ZgN6GgI/aQx4z1fQjfg/CTQcKwczbRisl1sugQjncw+wG1gybZL
	GoO4o7VIDU/qb/0gb49cwDZua6yUrke/Ypj6+a8/EpcQnEauOOMfFK4ql6CKykedkqvTU6T9GAG
	WqJkOefoUKtAMrQp2siYLwhN+1MZpUl1k+gygtbIhBxsQmCzGw==
X-Google-Smtp-Source: AGHT+IFfnYkxtmeyMx4cbVUhHoEgj8vIHk0FHdrXdCz4obVUHVFmEQgHCvy9FSBCGdXes2aYUVuO3Q==
X-Received: by 2002:a05:620a:f06:b0:7bc:de68:e932 with SMTP id af79cd13be357-7c2a7632d54mr2279290185a.23.1741015473845;
        Mon, 03 Mar 2025 07:24:33 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:e976::c41? ([2606:6d00:11:e976::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c3c89408efsm27440485a.114.2025.03.03.07.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 07:24:33 -0800 (PST)
Message-ID: <8b3dac7baed1de9542452547454c53188c384391.camel@ndufresne.ca>
Subject: Re: [PATCH v4 1/2] media: videobuf2: Fix dmabuf cache sync/flush in
 dma-contig
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Mikhail Rudenko <mike.rudenko@gmail.com>, Dafna Hirschfeld	
 <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
  Mauro Carvalho Chehab	 <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Tomasz Figa	 <tfiga@chromium.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Hans Verkuil	 <hverkuil@xs4all.nl>, Sergey
 Senozhatsky <senozhatsky@chromium.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Mauro
 Carvalho Chehab <mchehab+huawei@kernel.org>, stable@vger.kernel.org
Date: Mon, 03 Mar 2025 10:24:32 -0500
In-Reply-To: <20250303-b4-rkisp-noncoherent-v4-1-e32e843fb6ef@gmail.com>
References: <20250303-b4-rkisp-noncoherent-v4-0-e32e843fb6ef@gmail.com>
	 <20250303-b4-rkisp-noncoherent-v4-1-e32e843fb6ef@gmail.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_072437_008585_EE5F4558 
X-CRM114-Status: GOOD (  19.25  )
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

SGkgTWlraGFpbCwKCkxlIGx1bmRpIDAzIG1hcnMgMjAyNSDDoCAxNDo0MCArMDMwMCwgTWlraGFp
bCBSdWRlbmtvIGEgw6ljcml0wqA6Cj4gV2hlbiBzdXBwb3J0IGZvciBWNEwyX0ZMQUdfTUVNT1JZ
X05PTl9DT05TSVNURU5UIHdhcyByZW1vdmVkIGluCj4gY29tbWl0IDEyOTEzNGU1NDE1ZCAoIm1l
ZGlhOiBtZWRpYS92NGwyOiByZW1vdmUKPiBWNEwyX0ZMQUdfTUVNT1JZX05PTl9DT05TSVNURU5U
IGZsYWciKSwKPiB2YjJfZGNfZG1hYnVmX29wc197YmVnaW4sZW5kfV9jcHVfYWNjZXNzKCkgZnVu
Y3Rpb25zIHdlcmUgbWFkZQo+IG5vLW9wcy4gTGF0ZXIsIHdoZW4gc3VwcG9ydCBmb3IgVjRMMl9N
RU1PUllfRkxBR19OT05fQ09IRVJFTlQgd2FzCj4gaW50cm9kdWNlZCBpbiBjb21taXQgYzBhY2Y5
Y2ZlZWUwICgibWVkaWE6IHZpZGVvYnVmMjogaGFuZGxlCj4gVjRMMl9NRU1PUllfRkxBR19OT05f
Q09IRVJFTlQgZmxhZyIpLCB0aGUgYWJvdmUgZnVuY3Rpb25zIHJlbWFpbmVkCj4gbm8tb3BzLCBt
YWtpbmcgY2FjaGUgbWFpbnRlbmFuY2UgZm9yIG5vbi1jb2hlcmVudCBkbWFidWZzIGFsbG9jYXRl
ZAo+IGJ5Cj4gZG1hLWNvbnRpZyBpbXBvc3NpYmxlLgo+IAo+IEZpeCB0aGlzIGJ5IHJlaW50cm9k
dWNpbmcgZG1hX3N5bmNfc2d0YWJsZV9mb3Jfe2NwdSxkZXZpY2V9IGFuZAo+IHtmbHVzaCxpbnZh
bGlkYXRlfV9rZXJuZWxfdm1hcF9yYW5nZSBjYWxscyB0bwo+IHZiMl9kY19kbWFidWZfb3BzX3ti
ZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMgZm9yIG5vbi1jb2hlcmVudAo+IGJ1ZmZl
cnMuCj4gCj4gRml4ZXM6IGMwYWNmOWNmZWVlMCAoIm1lZGlhOiB2aWRlb2J1ZjI6IGhhbmRsZQo+
IFY0TDJfTUVNT1JZX0ZMQUdfTk9OX0NPSEVSRU5UIGZsYWciKQo+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogTWlraGFpbCBSdWRlbmtvIDxtaWtlLnJ1ZGVua29A
Z21haWwuY29tPgo+IC0tLQo+IMKgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYy
LWRtYS1jb250aWcuY8KgIHwgMjIKPiArKysrKysrKysrKysrKysrKysrKysrCj4gwqAxIGZpbGUg
Y2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlh
L2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+IGIvZHJpdmVycy9tZWRp
YS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiBpbmRleAo+IGExM2Vj
NTY5YzgyZjZkYTJkOTc3MjIyYjk0YWYzMmU3NGM2YzZjODIuLmQ0MTA5NWZlNWJkMjFmYWY4MTVk
NmIwMzVkNwo+IGJjODg4YTg0YTk1ZDUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21t
b24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiArKysgYi9kcml2ZXJzL21lZGlh
L2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+IEBAIC00MjcsNiArNDI3
LDE3IEBAIHN0YXRpYyBpbnQKPiDCoHZiMl9kY19kbWFidWZfb3BzX2JlZ2luX2NwdV9hY2Nlc3Mo
c3RydWN0IGRtYV9idWYgKmRidWYsCj4gwqAJCQkJwqDCoCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlv
bgo+IGRpcmVjdGlvbikKPiDCoHsKPiArCXN0cnVjdCB2YjJfZGNfYnVmICpidWYgPSBkYnVmLT5w
cml2Owo+ICsJc3RydWN0IHNnX3RhYmxlICpzZ3QgPSBidWYtPmRtYV9zZ3Q7Cj4gKwo+ICsJaWYg
KCFidWYtPm5vbl9jb2hlcmVudF9tZW0pCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJaWYgKGJ1Zi0+
dmFkZHIpCj4gKwkJaW52YWxpZGF0ZV9rZXJuZWxfdm1hcF9yYW5nZShidWYtPnZhZGRyLCBidWYt
PnNpemUpOwoKV2hhdCB3b3VsZCBtYWtlIG1lIGEgbG90IG1vcmUgY29uZm9ydGFibGUgd2l0aCB0
aGlzIGNoYW5nZSBpcyBpZiB5b3UKZW5hYmxlIGtlcm5lbCBtYXBwaW5ncyBmb3Igb25lIHRlc3Qu
IFRoaXMgd2lsbCBlbnN1cmUgeW91IGNvdmVyIHRoZQpjYWxsIHRvICJpbnZhbGlkYXRlIiBpbiB5
b3VyIHRlc3RpbmcuIEknZCBsaWtlIHRvIGtub3cgYWJvdXQgdGhlCnBlcmZvcm1hbmNlIGltcGFj
dC4gV2l0aCB0aGlzIGltcGxlbWVudGF0aW9uIGl0IHNob3VsZCBiZSBpZGVudGljYWwgdG8KdGhl
IFZCMiBvbmUuCgpXaGF0IEkgd2FzIHRyeWluZyB0byBzYXkgaW4gcHJldmlvdXMgY29tbWVudHMs
IGlzIHRoYXQgbXkgaW1wcmVzc2lvbiBpcwp0aGF0IHdlIGNhbiBza2lwIHRoaXMgZm9yIENQVSBy
ZWFkIGFjY2Vzcywgc2luY2Ugd2UgZG9uJ3QgZ3VhcmFudHkKY29uY3VycmVudCBhY2Nlc3MgYW55
d2F5LiBCb3RoIGFkZHJlc3Mgc3BhY2UgY2FuIGtlZXAgdGhlaXIgY2FjaGUgaW4KdGhhdCBjYXNl
LiBUaG91Z2gsIEkgc2VlIFJLSVNQIGRvZXMgbm90IHVzZSBrZXJuZWwgbWFwcGluZyBwbHVzIEkn
bSBub3QKcmVwb3J0aW5nIGEgYnVnLCBidXQgY2hlY2tpbmcgaWYgd2Ugc2hvdWxkIGxlYXZlIGEg
Y29tbWVudCBmb3IgcG9zc2libGUKdXNlcnMgb2Yga2VybmVsIG1hcHBpbmcgaW4gdGhlIGZ1dHVy
ZSA/Cgo+ICsKPiArCWRtYV9zeW5jX3NndGFibGVfZm9yX2NwdShidWYtPmRldiwgc2d0LCBkaXJl
Y3Rpb24pOwo+ICsKPiDCoAlyZXR1cm4gMDsKPiDCoH0KPiDCoAo+IEBAIC00MzQsNiArNDQ1LDE3
IEBAIHN0YXRpYyBpbnQKPiDCoHZiMl9kY19kbWFidWZfb3BzX2VuZF9jcHVfYWNjZXNzKHN0cnVj
dCBkbWFfYnVmICpkYnVmLAo+IMKgCQkJCSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rp
b24pCj4gwqB7Cj4gKwlzdHJ1Y3QgdmIyX2RjX2J1ZiAqYnVmID0gZGJ1Zi0+cHJpdjsKPiArCXN0
cnVjdCBzZ190YWJsZSAqc2d0ID0gYnVmLT5kbWFfc2d0Owo+ICsKPiArCWlmICghYnVmLT5ub25f
Y29oZXJlbnRfbWVtKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWlmIChidWYtPnZhZGRyKQo+ICsJ
CWZsdXNoX2tlcm5lbF92bWFwX3JhbmdlKGJ1Zi0+dmFkZHIsIGJ1Zi0+c2l6ZSk7Cj4gKwo+ICsJ
ZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGJ1Zi0+ZGV2LCBzZ3QsIGRpcmVjdGlvbik7Cj4g
Kwo+IMKgCXJldHVybiAwOwo+IMKgfQo+IMKgCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
