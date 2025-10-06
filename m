Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 463D7CCA471
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Oct 2025 23:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4wwx97nQlesMHZi6Jvd7y616v/ey0JTU395waXfXsw=; b=wigOnloxAX668y
	655+IceAELwa8lodGz3H/mk3kYonGVgyVW6ZsoUDsf158GS/u76evgzUT21piqK2EOERIaxxtUe3o
	FhTB7+szuiSNRSFaT9XCL4vBcVPJbftBnOjkFQuqvdbE+wLP7iID3paHxMF9uTvem3dI8dbVEovrL
	aeXwJ5zuoIWykkO2s/Y4grr73/uFAFfXXnFI0k5eDKqzvmrPtRvOsZwFKC6cZULRDHmp9xRB7+6TK
	OZyLGynKo6IeKr4rmYQRlFphsiJgaW3VNK8MqPX+OPqsxWyXJmyAjTc39SfLV8zw58QAkg6Bunejg
	CsWqKsj4/3fJK+lkdoVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5uEn-00000000yQG-3xIX;
	Mon, 06 Oct 2025 23:03:25 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5uEl-00000000yNs-0qmi
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Oct 2025 23:03:24 +0000
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-92aee734485so240957139f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Oct 2025 16:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1759791802; x=1760396602; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UhKOB1LeZ+mbxoao/sRZ8yxswtEf+MPffXFWfBjnldQ=;
        b=l0U/sqXhy7rP1+dR6fgEyXkOJKUGv90wNroEHHnn4uAyaoQ0821ZJoNd2+upaQIScG
         YP07+BJaUEZZuzsppdZPvcwa8LKmUo0tytxO+EeVNWDGfFID5pGuPzZSExCNNxUJHrFq
         OO52ONWuY7GMuBgBbBfkV0qJ65v6+dV5JXnHUm58sYfCjjBgUmdpA+ibACSAD/G+jDp8
         iPeo6Mv+BqhUzithhcTmNLL/z1ElXgLG8AAFAOjY0tKJjKdzSvPpkWuaFt7v3BG1De7y
         32YEU0LcSrdEUhp+PnIrI67e9bRj/nQsbFcOqLyIfpTEkkHRUh+klBQJk3fOdT9wTL0u
         gmvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759791802; x=1760396602;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UhKOB1LeZ+mbxoao/sRZ8yxswtEf+MPffXFWfBjnldQ=;
        b=CJMjqgoUpirc9c077StaY5uhxPoZVdN6YP4qGLBk/2M9N50hIx+VL/Iah4Qc5DU2iw
         ipkP7WEm7nKrR9kreWJvVpa/LahfwbRQ1cFyB7DseU3nsbyi1AI4lcYGzXLJkZsrYJ5m
         evnX8/2GdXtcCsJxfpjN4Udeh1YVAW5DIkRu+bxF/9iW66P3m9Lx5Vuf+QVYLqLQSAfG
         RjVp6gkW2VYjMGsgZyo5Sh+OXElboML1qj4SUv5cy0S5LbBQEHnE//q9tM8dIZW0m6y2
         BMe6bVYc/hNczA0NrsZc0pMD+HKF0OhO+eNMR82TdLhHMpbElRyn1QfaRvG/h/CIcFPf
         6C6A==
X-Forwarded-Encrypted: i=1; AJvYcCWPbYNKJAMWP/pVgFHT7JQi3M33EFmMXyihcbJ2nBGtC0cPgIBvD6N5ssAxCa5NysKv86EX+z6z9eOQMzqiDA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywkf7M5/8+mFgda1Dc3TIlSM5X9PU3tq5IIIznHDOfKhnRKHDTu
	zNT+h6CTgM+CKswcGoN3vnBm+ANtiGRbJ8BMLcvQJyLDVQdBwhtAE+HnHdDdOKH2TbM=
X-Gm-Gg: ASbGncvrK7OmjqFaNAXYUDMvtnIudxSafI6imXs3LRrG1IFTRFh6szbu9386FPVeJWW
	FpRIkF6FmOYVn4CYleT3XuRrTwQxCjNpCGXnUOjiysJtUqf+91jMjPSmBwg9nXrOoJHOm13Bb/N
	h/y2oqMFloLwKNpXVXIU9E15Jgedm1+tyZLcU+fdG6pxx4GlRiiJznAuV8biKbCCbXk1IZMsNAO
	J5sjYO/kdspQFrYCJ3JtQ9hX5rtIj2mqH3IHxMr+HCD+BOQqKUGibzU2TI2RCo30EXbrVrvTQ0+
	1u7PcOXFu4oE+EFF52S/3mBGi4nnVdqIFMaa34RyzAbGVinTrfORl1dumK5nE4Dc1tyKSSTHMLb
	vfb4gl+F4+GIgFMGpCyFiNzMga8Rf4/Vo7gZk7ONVXivC
X-Google-Smtp-Source: AGHT+IFZki8yvjWv0uD3MZa7HW3OsFV/V9Dt5t19qdy0NZq9NMgc+HgsCv9T6/dPQODY9Y8Dxfff9g==
X-Received: by 2002:a05:6e02:164f:b0:42a:f84b:9e7f with SMTP id e9e14a558f8ab-42e7ad95e38mr204069925ab.15.1759791801853;
        Mon, 06 Oct 2025 16:03:21 -0700 (PDT)
Received: from [192.168.1.150] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-57b5ec07eaasm5137984173.53.2025.10.06.16.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 16:03:21 -0700 (PDT)
Message-ID: <07dbe66c-86d4-4a2d-ab7d-e0a351b3ae9f@kernel.dk>
Date: Mon, 6 Oct 2025 17:03:19 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 5/5] blk-mq: Replace tags->lock with SRCU for tag
 iterators - Rockchip UFS regression
To: Bart Van Assche <bvanassche@acm.org>, Ming Lei <ming.lei@redhat.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-block@vger.kernel.org, Hannes Reinecke <hare@suse.de>,
 Yu Kuai <yukuai3@huawei.com>, kernel@collabora.com,
 linux-rockchip@lists.infradead.org
References: <20250830021825.2859325-1-ming.lei@redhat.com>
 <20250830021825.2859325-6-ming.lei@redhat.com>
 <pnezafputodmqlpumwfbn644ohjybouveehcjhz2hmhtcf2rka@sdhoiivync4y>
 <CAFj5m9Ki1U6N4N6-=HYy49KfvYAbegmwcXLuKCxjX4E+qy7u7Q@mail.gmail.com>
 <4f16e17d-796b-4896-9d4c-6d227514f1ca@acm.org>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <4f16e17d-796b-4896-9d4c-6d227514f1ca@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_160323_478048_091326E3 
X-CRM114-Status: GOOD (  11.24  )
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

T24gMTAvNi8yNSAxMjowMiBQTSwgQmFydCBWYW4gQXNzY2hlIHdyb3RlOgo+IE9uIDEwLzQvMjUg
Nzo0MiBBTSwgTWluZyBMZWkgd3JvdGU6Cj4+IMKgwqAgT25lIHBvc3NpYmxlIGZpeCBpcyB0byBj
aGVjayBoYmEtPnNjc2lfaG9zdF9hZGRlZCBiZWZvcmUgY2FsbGluZwo+PiBzY3NpX2hvc3RfYnVz
eSgpOgo+Pgo+PiDCoMKgIGRldl9lcnIoaGJhLT5kZXYsICIlZCBvdXRzdGFuZGluZyByZXFzLCB0
YXNrcz0weCVseFxuIiwKPj4gwqDCoMKgwqDCoMKgIGhiYS0+c2NzaV9ob3N0X2FkZGVkID8gc2Nz
aV9ob3N0X2J1c3koaGJhLT5ob3N0KSA6IDAsCj4+IMKgwqDCoMKgwqDCoCBoYmEtPm91dHN0YW5k
aW5nX3Rhc2tzKTsKPiAKPiBNeSBwcmVmZXJlbmNlIGlzIHRvIGFkZCBhIGNoZWNrIGluc2lkZSBz
Y3NpX2hvc3RfYnVzeSgpLCBlLmcuIGFzIGZvbGxvd3MKPiAoZW50aXJlbHkgdW50ZXN0ZWQpOgo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Njc2kvaG9zdHMuYyBiL2RyaXZlcnMvc2NzaS9ob3N0
cy5jCj4gaW5kZXggY2M1ZDA1ZGMzOTVjLi4xNzE3MzIzOTMwMWUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9zY3NpL2hvc3RzLmMKPiArKysgYi9kcml2ZXJzL3Njc2kvaG9zdHMuYwo+IEBAIC02MTEs
OCArNjExLDkgQEAgaW50IHNjc2lfaG9zdF9idXN5KHN0cnVjdCBTY3NpX0hvc3QgKnNob3N0KQo+
IMKgewo+IMKgwqDCoMKgIGludCBjbnQgPSAwOwo+IAo+IC3CoMKgwqAgYmxrX21xX3RhZ3NldF9i
dXN5X2l0ZXIoJnNob3N0LT50YWdfc2V0LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc2NzaV9ob3N0X2NoZWNrX2luX2ZsaWdodCwgJmNudCk7Cj4gK8KgwqDCoCBpZiAoc2hvc3Qt
PnRhZ19zZXQub3BzKQo+ICvCoMKgwqDCoMKgwqDCoCBibGtfbXFfdGFnc2V0X2J1c3lfaXRlcigm
c2hvc3QtPnRhZ19zZXQsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHNjc2lfaG9zdF9jaGVja19pbl9mbGlnaHQsICZjbnQpOwo+IMKgwqDCoMKgIHJldHVybiBjbnQ7
Cj4gwqB9Cj4gwqBFWFBPUlRfU1lNQk9MKHNjc2lfaG9zdF9idXN5KTsKCkFncmVlLCB0aGF0J3Mg
YSBuaWNlciB3YXkgdG8gc29sdmUgaXQsIHB1dHRpbmcgdGhhdCBzdHVmZiBvdXRzaWRlCm9mIGFj
dHVhbCBkcml2ZXJzLgoKLS0gCkplbnMgQXhib2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
