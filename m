Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9022FC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 07:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvtVRYZEhhqpOggdWmhdn/gN8TL1pPDKa/Seo5A5gYc=; b=VHbBBYSwHX2rIK
	WbKHhtGSVi5MA4CIKRbHYR+mRshh1yBgEOGtbYrEN9Ep+N3Pa8h5Y4Jt0f8bM8Wy8GgE8k6ifqofv
	JdNco7ZRzlNk8YIV8h4CmS9HdL6BteY5zO0CD9WsSDJ5hYUdS2yUQlbt4edTwKn1/dC6M9jx+k0Je
	wEoQ2iilxWsnDVWWD1XncGnFK25DfWdHAAtTihyR0P2HyJhbABXUuv4LNc30zvyZOikpUkzj7MuQ2
	JcgbENOgixI9z6WwO/NuP7lxpVn2UhlHnoO+5cvr2gc6oo0nW49ASVBxZnta4JC9vl/hfwuM/N50c
	dtAOncsu1fMBQ+I4SX2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0zT8-005VGd-1q;
	Thu, 09 Nov 2023 07:28:50 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0zT5-005VEj-1b
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 07:28:48 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9d0b4dfd60dso83071666b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Nov 2023 23:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699514921; x=1700119721; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZGyCYYTcq3tfAOSXtV2/dw7L3jydVZ3P+lrWN5MQ7s=;
        b=hMMvP1C0RwlAf+3uPvX7T1DeZ/LsulaL7rSos9xXmzSAO9WE+gzegu8UWefsD9kg+e
         s1N4ka3De9N5RcGvWZaoIdIZH6KqcYlkfXWcoY87Vd3WM40BDYZIzrDdn6TKSksX9QBT
         KYl8K/AwU/2NZOq+MjgnkzjGQpK2I7sqxH7cY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699514921; x=1700119721;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZGyCYYTcq3tfAOSXtV2/dw7L3jydVZ3P+lrWN5MQ7s=;
        b=dBdvIU/QOYceTqByD6XJFWY2PeGXoQqvHYa9ZZ3LoI8rnjgkEFWkh7uI2ZTUBZkVgM
         mtmix1enhSNa71yaIukvWCJ4hoz8QdL2MiyQ7Z1OF4AEXoUOQL7J5ydj7znUfilyO+n2
         mJA/bsZdnUDYdLiQ6oFsgiN8n1m1+K9bjYOO3rJBCFln8HWCIGYqvRipelIzPFHOfl2d
         mJfvZUZWzFn0G6dfbLKZtOMbhSP4XxV1IvMpegfhSWIPmXT5lpg1cgXvu4AvpEWGFQ3N
         rRy1uu+U0UZhqzxN37rql1SibP3KUvVdet0dzPS7cM0H8qrl+sIJitSA5C4h2h/oN+Ec
         JZXw==
X-Gm-Message-State: AOJu0YwbZoGlHWE1LdNsfkew765ezSVvtMBdJRITIueXBCdGuX8Cawij
	9a2HFp5jkImAeHlLCKu0dATJDs0e+mmDPTc0hbNeeJ5G
X-Google-Smtp-Source: AGHT+IHL666ggjNl1sHnas8ICXdSWdd+52yHtc3FEN1U6FelCKzOpDx77j19/XA5HhbPrT8F/5uV/g==
X-Received: by 2002:a17:907:7206:b0:9b2:7b89:8199 with SMTP id dr6-20020a170907720600b009b27b898199mr3360120ejc.53.1699514921463;
        Wed, 08 Nov 2023 23:28:41 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id v9-20020a17090606c900b009ae05f9eab3sm2163825ejb.65.2023.11.08.23.28.40
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 23:28:40 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40839652b97so3199365e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Nov 2023 23:28:40 -0800 (PST)
X-Received: by 2002:adf:e311:0:b0:32c:ea14:89e5 with SMTP id
 b17-20020adfe311000000b0032cea1489e5mr3220105wrj.39.1699514920620; Wed, 08
 Nov 2023 23:28:40 -0800 (PST)
MIME-Version: 1.0
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-53-benjamin.gaignard@collabora.com>
 <20231108104439.oxpbbd2yro7u57t4@chromium.org> <e9eeac63-b4d5-4710-bb85-b0997dce55cc@collabora.com>
In-Reply-To: <e9eeac63-b4d5-4710-bb85-b0997dce55cc@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 9 Nov 2023 16:28:20 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AH6x461-a2=2JmzUhW2pWacgwj1w3SZH1kfMBbsmaZ3A@mail.gmail.com>
Message-ID: <CAAFQd5AH6x461-a2=2JmzUhW2pWacgwj1w3SZH1kfMBbsmaZ3A@mail.gmail.com>
Subject: Re: [PATCH v14 52/56] media: core: Add bitmap manage bufs array entries
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, m.szyprowski@samsung.com, ming.qian@nxp.com, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, 
	gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl, 
	nicolas.dufresne@collabora.com, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_232847_535613_7E271FC6 
X-CRM114-Status: GOOD (  22.46  )
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

T24gVGh1LCBOb3YgOSwgMjAyMyBhdCAxMjozMOKAr0FNIEJlbmphbWluIEdhaWduYXJkCjxiZW5q
YW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+Cj4gTGUgMDgvMTEvMjAyMyDD
oCAxMTo0NCwgVG9tYXN6IEZpZ2EgYSDDqWNyaXQgOgo+ID4gT24gVHVlLCBPY3QgMzEsIDIwMjMg
YXQgMDU6MzE6MDBQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6CltzbmlwXQo+ID4+
IEBAIC0xMTUwLDcgKzExNTAsMTAgQEAgc3RhdGljIGlubGluZSBib29sIHZiMl9maWxlaW9faXNf
YWN0aXZlKHN0cnVjdCB2YjJfcXVldWUgKnEpCj4gPj4gICAgKi8KPiA+PiAgIHN0YXRpYyBpbmxp
bmUgdW5zaWduZWQgaW50IHZiMl9nZXRfbnVtX2J1ZmZlcnMoc3RydWN0IHZiMl9xdWV1ZSAqcSkK
PiA+PiAgIHsKPiA+PiAtICAgIHJldHVybiBxLT5udW1fYnVmZmVyczsKPiA+PiArICAgIGlmICgh
cS0+YnVmc19iaXRtYXApCj4gPj4gKyAgICAgICAgICAgIHJldHVybiAwOwo+ID4+ICsKPiA+PiAr
ICAgIHJldHVybiBiaXRtYXBfd2VpZ2h0KHEtPmJ1ZnNfYml0bWFwLCBxLT5tYXhfbnVtX2J1ZmZl
cnMpOwo+ID4gSG1tLCBjb3VsZCB3ZSBqdXN0IGNhY2hlIHRoZSBudW1iZXIgb2YgYnVmZmVycyB3
ZSBoYXZlLCBzbyB0aGF0IHdlIGRvbid0Cj4gPiBoYXZlIHRvIGdvIG92ZXIgdGhlIGVudGlyZSBi
aXRtYXAgZXZlcnkgdGltZT8gKEJhc2ljYWxseSBqdXN0IGtlZXAgdGhlCj4gPiBjb2RlIHRoYXQg
d2UgaGFkIGZvciBoYW5kbGluZyBxLT5udW1fYnVmZmVycyBiZWZvcmUgdGhpcyBwYXRjaC4pCj4K
PiBJIHdvdWxkIHByZWZlciBubyBkdXBsaWNhdGUgaG93IHRoZSBudW1iZXIgb2YgYnVmZmVycyBp
biBhIHF1ZXVlIGlzIGNvbXB1dGVkCj4gYW5kIGJpdG1hcCBvZmZlciBoZWxwZXJzIGZvciB0aGF0
LiBXaHkgbm90IHVzZSBpdCA/Cj4KCmJpdG1hcF93ZWlnaHQoKSBjYW4gYmVjb21lIGNvc3RseSB3
aGVuIHRoZSBudW1iZXIgb2YgYnVmZmVycyBncm93cy4KU2luY2UgaXQncyBlYXN5IHRvIHRyYWNr
IGhvdyBtYW55IGJ1ZmZlcnMgd2UgYWRkIGFuZCByZW1vdmUsIHdlIGNvdWxkCmp1c3QgY2FjaGUg
dGhhdCBudW1iZXIgYW5kIHRoZW4gYW55IGNvZGUgY291bGQgY2FsbAp2YjJfZ2V0X251bV9idWZm
ZXJzKCkgd2hlbmV2ZXIgaXQgbmVlZHMgdGhlIGJ1ZmZlciBjb3VudCB3aXRob3V0CmNhcmluZyBo
b3cgY29zdGx5IGl0IGlzLgoKPiA+Cj4gPj4gICB9Cj4gPj4KPiA+PiAgIC8qKgo+ID4+IEBAIC0x
MjUzLDEzICsxMjU2LDEzIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCB2YjJfY2xlYXJfbGFzdF9idWZm
ZXJfZGVxdWV1ZWQoc3RydWN0IHZiMl9xdWV1ZSAqcSkKPiA+PiAgIHN0YXRpYyBpbmxpbmUgc3Ry
dWN0IHZiMl9idWZmZXIgKnZiMl9nZXRfYnVmZmVyKHN0cnVjdCB2YjJfcXVldWUgKnEsCj4gPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50
IGluZGV4KQo+ID4+ICAgewo+ID4+IC0gICAgaWYgKCFxLT5idWZzKQo+ID4+ICsgICAgaWYgKCFx
LT5idWZzX2JpdG1hcCkKPiA+PiAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPj4KPiA+PiAg
ICAgIGlmIChpbmRleCA+PSBxLT5tYXhfbnVtX2J1ZmZlcnMpCj4gPj4gICAgICAgICAgICAgIHJl
dHVybiBOVUxMOwo+ID4+Cj4gPj4gLSAgICBpZiAoaW5kZXggPCBxLT5udW1fYnVmZmVycykKPiA+
PiArICAgIGlmICh0ZXN0X2JpdChpbmRleCwgcS0+YnVmc19iaXRtYXApKQo+ID4gQWhhLCBJIHNl
ZSB3aHkgd2UgbmVlZCB0aGUgZXh0cmEgY29uZGl0aW9uIGFib3ZlIG5vdy4gUGVyaGFwcyBpdCBz
aG91bGQndmUKPiA+IGJlZW4gYWRkZWQgaW4gdGhpcyBwYXRjaCBpbnN0ZWFkPwo+Cj4gRm9yIG1l
IGl0IHdhcyBtb3JlIGV4cGxpY2l0IGRvIGludHJvZHVjZSBpdCBhdCB0aGUgc2FtZSB0aW1lIHRo
YXQKPiBtYXhfbnVtX2J1ZmZlcnMgZmllbGQuCgpPa2F5LiBJIGRvbid0IGhhdmUgYSBzdHJvbmcg
b3BpbmlvbiwgZXNwZWNpYWxseSBzaW5jZSBpdCB3YXMganVzdCBhbgppbnRlcm1lZGlhdGUgcGF0
Y2guCgpCZXN0IHJlZ2FyZHMsClRvbWFzegoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
