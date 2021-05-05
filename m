Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29AAAC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 17:36:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7CB1E6101A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 17:36:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7CB1E6101A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AqTEt3+3aVkK8EDoFW6/gJy7o6doBnZdurSQc9PATvg=; b=P4iNHJFlfe5rT7fpEJjbwhrW7
	+A8USQ3BvXR2CmJ9pIZ/75ePfYsT2jqUydX8fH04mGTEwsTKtpEQpvZMqZj+q1JFhLxwCu2TSeEp+
	1NtYUOvzOH7L82I9mZsBxzMfEAOrR0rAg1wENB3pYvSyxcQvWZHEQAHEtNREP5IRlueVTAS8Kb/be
	fiHaawYt/4uSsenOu9pCEn/KhB9XTvCvRBN5Eng6ypcx+UIjKUb/nTvX0pG6pnphXboXPApEHfz7k
	Zf4PdEcWO9eLVvvks5noQhumcw7VIEbpg2R7RaqCrKuA+nT/LgxjGkuWhmHXjqi32fyyABH6FvK3a
	67qcCtbtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leLRY-001v5W-Oi; Wed, 05 May 2021 17:36:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leLRX-001v5N-Ak
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 17:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=bML/KIw4vkIF6m6AF0QDRSbzcPArKEWcSuhrrYaBtBo=; b=1n7w/b2JaNju4QGGJlCihh5qux
 7s+wxsKz7k1SKdP3wFv2z+x1Wy4fzXGOp2fY939CpOtyyMOahcsozQAAvXcF9GWIX9SFg864u3ROj
 fQV/fx0C/wW0tlT+b9D8VU8dXTrjGBXdOK4VXSKzMzEsCOwC2ApVPyWPbcuEWwKz0H4YTyYzlXg6/
 BqlO59ANgSacLoRYBNCYHFN9Q8VZSxqwlsWPMez020QxdyXQ3n00otA+EJN9xaSlCY5iscwWfGulY
 e1D/hIe0bIcY2FF38hqYNU2VnBDtS2ocM8AsTZLZq2XchOjhnmkxWanGmgOluHZoOmOcVvMECDHP2
 4qrcVrcQ==;
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leLRU-0054oZ-6k
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 17:36:13 +0000
Received: by mail-qk1-x733.google.com with SMTP id o5so2365867qkb.0
 for <linux-rockchip@lists.infradead.org>; Wed, 05 May 2021 10:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=bML/KIw4vkIF6m6AF0QDRSbzcPArKEWcSuhrrYaBtBo=;
 b=R34Ur0CNg21NAR2OMM8TqSpqyikAwMGN+4u43bnC29jGlBGkb+vt6oezgDWw5sLP4/
 fv2vyFxX7LaKKOPufJ8LsB5TjRFp5PLyEgDF3g4PZvHO/SH1CGijp4Erndyn8Powm9Rb
 akPPpupvefTwLByDo6YOrBVj3yiOhLVyY7+L3p3GcKGfr1z9mgZXSHmqVi0aZmIYND7v
 zAAt2DdrNWwVR8OdYKBit9LaGNftIib1OClHEnylLjXjS7TN1euJpt+fqmQFxl6wo901
 sTfq2Bvdm0EalAzwRAVGxBklTmRCPV6h62XAk6gKcLZJRKrIi7qv8R/E0rQcMm8jtBcm
 0Rrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=bML/KIw4vkIF6m6AF0QDRSbzcPArKEWcSuhrrYaBtBo=;
 b=kkVGg7PPu6RrCjJS/wQUsW8unuM5cYnDGD4+aiSkMcO4g7vULXqW/+ZzciDNdsvCgQ
 Xg5YmHsxILB2cEecQza13aPmjZQGF3/wvgRE8Phz6wc3EQOT54FPKn5Qp3PVDyntK6vZ
 zjwbe+XMQnszNchdx4hjoh6WQxjL65Oz9CxwVGFLsB00sK02EdJTX6BHFeCU84xrEf1p
 s8zgg9bKB9E5OPUqDoUcKA8mcycovgVly2Xq9tLWGB4uCf7OWiGRPywdYA/sDYCqIcqs
 bF9Yb+NfRb1ptMxSlsQPkeBQUHOIzqioPA4MXy0+FPlHzuZXT3+sVsbaWUKzFhmuidMU
 JpXQ==
X-Gm-Message-State: AOAM533HmMnJJ42Usrv3GDmBpEKLV4EXHY8tyun1m0tGyidNA2dkustI
 uyyL8w2Y9FUwa2DKYeglP/i9HQ==
X-Google-Smtp-Source: ABdhPJyIptnjQKHB27Jsmv9m4bDilzW/rWjk1KdkwhlFuX2rQqKITvXb6nrs2FiUWrUkHiUl4wfrlw==
X-Received: by 2002:a05:620a:14a8:: with SMTP id
 x8mr4216682qkj.86.1620236169018; 
 Wed, 05 May 2021 10:36:09 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id 44sm5665119qtb.45.2021.05.05.10.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 10:36:08 -0700 (PDT)
Message-ID: <7fc04abf3959720a9f344bc3a67b4792552811c1.camel@ndufresne.ca>
Subject: Re: [RFC RESEND 2/3] media: uapi: Add VP9 stateless decoder controls
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Ezequiel Garcia
 <ezequiel@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Boris Brezillon <boris.brezillon@collabora.com>,
 Adrian Ratiu <adrian.ratiu@collabora.com>
Date: Wed, 05 May 2021 13:36:06 -0400
In-Reply-To: <12493c55-e6cf-0491-d310-7561c7f77258@xs4all.nl>
References: <20210421100035.13571-1-andrzej.p@collabora.com>
 <20210421100035.13571-3-andrzej.p@collabora.com>
 <12493c55-e6cf-0491-d310-7561c7f77258@xs4all.nl>
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_103612_253672_F5A1E6CC 
X-CRM114-Status: GOOD (  21.24  )
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

SGkgSGFucywKCmp1c3QgYSBwYXJ0aWFsIHJlcGx5LCBJJ2xsIGxldCBBbmRyemVqIGV4dGVuZC4K
CkxlIGpldWRpIDI5IGF2cmlsIDIwMjEgw6AgMTI6MjAgKzAyMDAsIEhhbnMgVmVya3VpbCBhIMOp
Y3JpdMKgOgo+ID4gK8KgwqDCoMKgwqAgLSBgYGZyYW1lX3dpZHRoX21pbnVzXzFgYAo+ID4gK8Kg
wqDCoMKgwqAgLSBBZGQgMSB0byBnZXQgdGhlIGZyYW1lIHdpZHRoIGV4cHJlc3NlZCBpbiBwaXhl
bHMuCj4gPiArwqDCoMKgICogLSBfX3UxNgo+ID4gK8KgwqDCoMKgwqAgLSBgYGZyYW1lX2hlaWdo
dF9taW51c18xYGAKPiA+ICvCoMKgwqDCoMKgIC0gQWRkIDEgdG8gZ2V0IHRoZSBmcmFtZSBoZWln
aHQgZXhwcmVzc2VkIGluIHBpeGVscy4KPiAKPiBUaGVzZSB0d28gZmllbGRzIGFyZSB3ZWlyZC4g
SXNuJ3QgdGhpcyBkZWZpbmVkIGJ5IHNldHRpbmcgdGhlIG91dHB1dCBmb3JtYXQ/Cj4gQW5kIHdo
eSB0aGUgJ21pbnVzXzEnPwo+IAo+ID4gK8KgwqDCoCAqIC0gX191MTYKPiA+ICvCoMKgwqDCoMKg
IC0gYGByZW5kZXJfd2lkdGhfbWludXNfMWBgCj4gPiArwqDCoMKgwqDCoCAtIEFkZCAxIHRvIGdl
dCB0aGUgZXhwZWN0ZWQgcmVuZGVyIHdpZHRoIGV4cHJlc3NlZCBpbiBwaXhlbHMuIFRoaXMgaXMK
PiA+ICvCoMKgwqDCoMKgwqDCoCBub3QgdXNlZCBkdXJpbmcgdGhlIGRlY29kaW5nIHByb2Nlc3Mg
YnV0IG1pZ2h0IGJlIHVzZWQgYnkgSFcKPiA+IHNjYWxlcnMgdG8KPiA+ICvCoMKgwqDCoMKgwqDC
oCBwcmVwYXJlIGEgZnJhbWUgdGhhdCdzIHJlYWR5IGZvciBzY2Fub3V0Lgo+ID4gK8KgwqDCoCAq
IC0gX191MTYKPiA+ICvCoMKgwqDCoMKgIC0gcmVuZGVyX2hlaWdodF9taW51c18xCj4gPiArwqDC
oMKgwqDCoCAtIEFkZCAxIHRvIGdldCB0aGUgZXhwZWN0ZWQgcmVuZGVyIGhlaWdodCBleHByZXNz
ZWQgaW4gcGl4ZWxzLiBUaGlzCj4gPiBpcwo+ID4gK8KgwqDCoMKgwqDCoMKgIG5vdCB1c2VkIGR1
cmluZyB0aGUgZGVjb2RpbmcgcHJvY2VzcyBidXQgbWlnaHQgYmUgdXNlZCBieSBIVwo+ID4gc2Nh
bGVycyB0bwo+ID4gK8KgwqDCoMKgwqDCoMKgIHByZXBhcmUgYSBmcmFtZSB0aGF0J3MgcmVhZHkg
Zm9yIHNjYW5vdXQuCj4gCj4gTm8gaWRlYSB3aGF0IHRoZXNlIGZpZWxkcyBhcmUgYWJvdXQuIEkg
c3VzcGVjdCB0aGlzIGNhbiBiZSBkZWZpbmVkIGJ5IHNldHRpbmcKPiB0aGUgY2FwdHVyZSBmb3Jt
YXQsIGJ1dCBJJ20gbm90IHN1cmUuCgpXZSBoYXZlIHRoZSBzYW1lIGZvciBvdGhlciBjb2RlY3Mu
IEVhY2ggY29kZWMgYml0c3RyZWFtIGluY2x1ZGUgdGhlIGNvZGVkIGFuZAp0aGUgZGlzcGxheSBz
aXplIGluIHNvbWUgZm9ybS4gRm9yIEgyNjQvSDI2NSB0aGF0IHdhcyBwYXNzZWQgYXMgYXMgbnVt
YmVyIG9mCm1hY3JvYmxvY2sgYW5kIGEgY3JvcCByZWN0YW5nbGUuIEZvciBWUDkgdmFsdWUgLSAx
IGlzIGFzIGRlZmluZWQgaW4gdGhlIHNwZWMuIEFzCjAgaXMgbm90IHZhbGlkLCB0aGUgYm9vbGVh
biBjb2RlciBjYW4gc2F2ZSBzb21lIGJpdHMgd2hlbiBzdG9yaW5nIHRoZSB2YWx1ZS4KVGhvdWdo
LCBmb3IgcGFyYW1ldGVycywgd2UgdXN1YWxseSBzdGFydCB3aXRoIHRoZSB3YXkgaXQncyBlbmNv
ZGVkIGZpcnN0LCBhbmQKY2hhbmdlIGl0IG9ubHkgaWYgd2UgdGhpbmsgaXQgbWFrZSBzZW5zZS4g
V2UnbGwgdGFrZSBub3RlIGFuZCBjb25zaWRlciB0aGlzCndoZW5ldmVyIHdlIGhhdmUgYSBzZWNv
bmQgZHJpdmVyIHRvIGxvb2sgYXQuCgpOb3csIHdoeSBkbyB3ZSBpbmNsdWRlIGJvdGggaGVyZS4g
V2VsbCBpbiBmYWN0LCB0aGUgSFcgbWF5IGhhdmUgc29tZSBleHRyYQpjb25zdHJhaW50cy4gV2hp
Y2ggbWVhbnMgdGhlcmUgd2lsbCBiZSB1cCB0byAzIGZyYW1lIHNpemVzIHRoYXQgbWF0dGVycy4g
V2UKY2FuJ3QgYWxzbyBkZXRlcm1pbmUgaWYgdGhlIGRpc3BsYXkvcmVuZGVyIG9yIGNvZGVkIHNp
emUgd2lsbCBiZSB1c2VkIGZvciBtaW5pbQpDQVBUVVJFIGZvcm1hdCwgYXMgdGhpcyB3aWxsIGlu
IGZhY3QgZGVwZW5kcyBpZiBhIHBvc3QgcHJvY2Vzc29yIHdpbGwgYmUgdXNlZCBvcgpub3QuIAoK
U28gdG8gcmVjYXAsIHdlIGxpbWl0IHRoZSBDQVBUVVJFIGZvcm1hdCBiYXNlIG9uIHRoaXMgaW5m
b3JtYXRpb24sIGFuZCBub3QgdGhlCm9wcG9zaXRlLiBUaGUgd2lkdGgvaGVpZ2h0IG9uIE9VVFBV
VCBGTVQgaGFzIGJlZW4gZGVmaW5lIGFzIG1lYW5pbmdsZXNzIGluIHRoZQpzcGVjICh0byBhbGln
biB3aXRoIHN0YXRlZnVsIEkgc3VwcG9zZSA/KS4gVGhpcyB3YXksIHRoZSBkcml2ZXIgZ290IGFs
bCB0aGUKaW5mb3JtYXRpb24gYWxpZ25lZCB3aXRoIGhvdyBpdCB3b3JrcyBpbnNpZGUgdGhlIGNv
ZGVjLCB3aXRob3V0IGhhdmluZyB0byBkbyBhCnRyYW5zbGF0aW9uIGRhbmNlLCBhbmQgdGhlbiBw
cm9wZXJseSBpbXBsZW1lbnQgQ0FQVFVSRSBUUllfRk1UIGJhc2Ugb24gdGhhdC4KClRvIG1ha2Ug
YW4gYW5hbG9neSB3aXRoIHN0YXRlZnVsIGNvZGVjLCB0aGlzIHJlcGxhY2VzIHRoZSBxdWV1aW5n
IG9mIGEgZnJhbWUKdGhhdCBjb250YWlucyBjb2RlYyBoZWFkZXJzLiBXZSBza2lwIHRoZSBTUkNf
Q0ggZXZlbnRzLCBzaW5jZSB0aGlzIGlzIG5vIGxvbmdlcgphc3luY2hyb25vdXMuCgpOaWNvbGFz
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
