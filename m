Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81259C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 04:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSzZOsalwSbTPbx114nTcefqfD4yhTva4x/wyaMtlL4=; b=QV/fxqYRI0NWys
	6pTOGGh9XO3euY4l+EGH9tdhgA4IM7xw+7Alu0IBu7Z6eltp1SAsSlJZDMnHXL0gqSRbzJlGpRBMv
	bYK6ufCFPK/cU25SqZlBqyYI17PnCYAE35HnuBLLq27hxzKB7ysTAoJ4TYp3hXp9kbrRfcHpIQOHF
	w2i3ZtNAqOFmJbIkq6L1ZzTV3g6O7ZxFt+pZvIPk3/MwuA4lmw1MRIAERP4koGxPOhB+UyDK+jLT2
	K1GyiTY3NTn8zlpZ/XsyC9OqTAL9NTnelSzWD8OrNmjTMWcTSB4AQVH0EFpGpF3E29prBcQUejMUh
	01Hq2m3uY2nhmOVYj2Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0wdz-005FT9-0g;
	Thu, 09 Nov 2023 04:27:51 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0wdv-005FRW-1B
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 04:27:49 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9bf86b77a2aso73949066b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Nov 2023 20:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699504063; x=1700108863; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZTb319PKi1K5hE3fGXAxhdTNxkLrwLwVOwF53ZkG1AY=;
        b=KE0LTOXfNgVlP/yKrHoDoulErEO4J23eCzz84RUmQJOXlx/1dQz74YaTpMdSx98nH6
         Qv8L/uMw7BW3IyvG3j3f20hsEBIo8l+j10dm7/398Vb0KmaVun29tVGPQBAaY1zSRIng
         DmS39MTPf6lDJXBb93qS0SOcfY4CT9CKWQCOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699504063; x=1700108863;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZTb319PKi1K5hE3fGXAxhdTNxkLrwLwVOwF53ZkG1AY=;
        b=O/XtoLfWp6o8VojyyTrEDhwXOn7oqlYxxpGNuFHj38/45opR3nSspdikvt2NVzjLrs
         bVtqkPXniHYBArJ7dA/beljx0zL3O4Aiq+/53ITmqzkcd2UB+6Sog4BGcXVUFiTiB2cz
         uU0lhevqnF71cmLhT02lcXwL/E+nkrx6CUtu6U/5/uE75C8jMWH+2ylNTd1IczWOew3Z
         b8lx8iOAneJ3S6KBTq4H7p+oWODHkBTRNWTTg0a600Pn6j+ah/iGrKFNa9/T5FB/YgvZ
         G6oBxvtxK3zHulQ8I58vNtQRhtZF2drkoeI2jAIeCxBhVj0TaPj1RpknriddNLkknJJi
         F9FA==
X-Gm-Message-State: AOJu0YzzY/lzbxLu8zNsb8iH8apA7yg9Lirou94JC2/JYuWAYixw72X/
	kZCb+BlaXKJ8XujuQq6bBSEQNNXebDY522V1WR3ulg+4
X-Google-Smtp-Source: AGHT+IGsOCvASVwXF9jSBzzwTK3xldJ3OkjEKv+O6BCYLJEN5ktshsWGaYOGgaHqY61VMLk+Cl9IzQ==
X-Received: by 2002:a17:907:da4:b0:9b9:faee:4228 with SMTP id go36-20020a1709070da400b009b9faee4228mr2989702ejc.56.1699504063363;
        Wed, 08 Nov 2023 20:27:43 -0800 (PST)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id pj13-20020a170906d78d00b009c7608eb499sm2024917ejb.94.2023.11.08.20.27.42
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 20:27:43 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40891d38e3fso2529645e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Nov 2023 20:27:42 -0800 (PST)
X-Received: by 2002:a05:600c:4ecd:b0:405:7400:1e3d with SMTP id
 g13-20020a05600c4ecd00b0040574001e3dmr3298654wmq.32.1699504062425; Wed, 08
 Nov 2023 20:27:42 -0800 (PST)
MIME-Version: 1.0
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-6-benjamin.gaignard@collabora.com> <20231108085016.3kmhmdroh4qs53f5@chromium.org>
 <795ef94f-23d3-433e-b5a3-0a2e0ab7a18c@collabora.com>
In-Reply-To: <795ef94f-23d3-433e-b5a3-0a2e0ab7a18c@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 9 Nov 2023 13:27:22 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Dd_w50ppjy1_wQ2yX+Qj0mOMWbhJKsJ7Cq6zYsQ+GwyQ@mail.gmail.com>
Message-ID: <CAAFQd5Dd_w50ppjy1_wQ2yX+Qj0mOMWbhJKsJ7Cq6zYsQ+GwyQ@mail.gmail.com>
Subject: Re: [PATCH v14 05/56] media: videobuf2: Access vb2_queue bufs array
 through helper functions
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
X-CRM114-CacheID: sfid-20231108_202747_405722_24FC3B4C 
X-CRM114-Status: GOOD (  24.55  )
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

T24gV2VkLCBOb3YgOCwgMjAyMyBhdCA3OjI04oCvUE0gQmVuamFtaW4gR2FpZ25hcmQKPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4KPiBMZSAwOC8xMS8yMDIzIMOg
IDA5OjUwLCBUb21hc3ogRmlnYSBhIMOpY3JpdCA6Cj4gPiBPbiBUdWUsIE9jdCAzMSwgMjAyMyBh
dCAwNTozMDoxM1BNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+PiBUaGlzIHBh
dGNoIGFkZHMgMiBoZWxwZXJzIGZ1bmN0aW9ucyB0byBhZGQgYW5kIHJlbW92ZSB2YjIgYnVmZmVy
cwo+ID4+IGZyb20gYSBxdWV1ZS4gV2l0aCB0aGVzZSAyIGFuZCB2YjJfZ2V0X2J1ZmZlcigpLCBi
dWZzIGZpZWxkIG9mCj4gPj4gc3RydWN0IHZiMl9xdWV1ZSBiZWNvbWVzIGxpa2UgYSBwcml2YXRl
IG1lbWJlciBvZiB0aGUgc3RydWN0dXJlLgo+ID4+Cj4gPj4gQWZ0ZXIgZWFjaCBjYWxsIHRvIHZi
Ml9nZXRfYnVmZmVyKCkgd2UgbmVlZCB0byBiZSBzdXJlIHRoYXQgd2UgZ2V0Cj4gPj4gYSB2YWxp
ZCBwb2ludGVyIGluIHByZXBhcmF0aW9uIGZvciB3aGVuIGJ1ZmZlcnMgY2FuIGJlIGRlbGV0ZWQu
Cj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KPiA+PiAtLS0KPiA+PiAgIC4uLi9tZWRpYS9jb21tb24vdmlk
ZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMgICB8IDE1MSArKysrKysrKysrKysrLS0tLS0KPiA+PiAg
IC4uLi9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12NGwyLmMgICB8ICA1MCArKysr
LS0KPiA+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTQ5IGluc2VydGlvbnMoKyksIDUyIGRlbGV0aW9u
cygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVm
Mi92aWRlb2J1ZjItY29yZS5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVv
YnVmMi1jb3JlLmMKPiA+PiBpbmRleCA5NjhiN2MwZTc5MzQuLmI0MDZhMzBhOWIzNSAxMDA2NDQK
PiA+PiAtLS0gYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUu
Ywo+ID4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29y
ZS5jCj4gPj4gQEAgLTQwOCw2ICs0MDgsMzEgQEAgc3RhdGljIHZvaWQgaW5pdF9idWZmZXJfY2Fj
aGVfaGludHMoc3RydWN0IHZiMl9xdWV1ZSAqcSwgc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+ID4+
ICAgICAgICAgICAgICB2Yi0+c2tpcF9jYWNoZV9zeW5jX29uX2ZpbmlzaCA9IDE7Cj4gPj4gICB9
Cj4gPj4KPiA+PiArLyoqCj4gPj4gKyAqIHZiMl9xdWV1ZV9hZGRfYnVmZmVyKCkgLSBhZGQgYSBi
dWZmZXIgdG8gYSBxdWV1ZQo+ID4+ICsgKiBAcTogICAgICBwb2ludGVyIHRvICZzdHJ1Y3QgdmIy
X3F1ZXVlIHdpdGggdmlkZW9idWYyIHF1ZXVlLgo+ID4+ICsgKiBAdmI6ICAgICBwb2ludGVyIHRv
ICZzdHJ1Y3QgdmIyX2J1ZmZlciB0byBiZSBhZGRlZCB0byB0aGUgcXVldWUuCj4gPj4gKyAqIEBp
bmRleDogaW5kZXggd2hlcmUgYWRkIHZiMl9idWZmZXIgaW4gdGhlIHF1ZXVlCj4gPj4gKyAqLwo+
ID4+ICtzdGF0aWMgdm9pZCB2YjJfcXVldWVfYWRkX2J1ZmZlcihzdHJ1Y3QgdmIyX3F1ZXVlICpx
LCBzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIsIHVuc2lnbmVkIGludCBpbmRleCkKPiA+PiArewo+ID4+
ICsgICAgV0FSTl9PTihpbmRleCA+PSBWQjJfTUFYX0ZSQU1FIHx8IHEtPmJ1ZnNbaW5kZXhdKTsK
PiA+IG5pdDogV291bGQgaXQgbWFrZSBzZW5zZSB0byBhbHNvIGVuc3VyZSB0aGF0IHZiLT52YjJf
cXVldWUgaXMgTlVMTD8KPgo+IFNpbmNlIHZiLT52YjJfcXVldWUgYW5kIHEtPmJ1ZnNbaW5kZXhd
IGFyZSBhbHdheXMgc2V0IGFuZCBjbGVhciBpbiB0aGUgc2FtZQo+IGZ1bmN0aW9ucyBJIGRvbid0
IHRoaW5rIGl0IGlzIHVzZWZ1bCB0byB0ZXN0IHRoZSBib3RoIGhlcmUuCj4KCldlbGwsIHRoZXkg
YXJlIGlmIHRoZSBjYWxsZXIgaXMgbm90IGJ1Z2d5LiBCdXQgSSBzdXBwb3NlIHRoZSBjaGVjayBp
cwp0byBkZXRlY3QgYnVnZ3kgY2FsbGVycz8KCkZvciBleGFtcGxlLCBhbiBtMm0gZHJpdmVyIGNv
dWxkIGFjY2lkZW50YWxseSBjYWxsIHRoaXMgb24gYSBidWZmZXIKdGhhdCB3YXMgYWxyZWFkeSBh
ZGRlZCB0byBhbm90aGVyIHF1ZXVlLgoKQmVzdCByZWdhcmRzLApUb21hc3oKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
