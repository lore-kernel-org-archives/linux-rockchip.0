Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC7ACD6E64
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 08:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9bGI3L2cDgK2W1b/FpFldVBVWuP5wPYSN/C+RudAfY=; b=PzyWbXMk2qXmiY
	o91fJ0/jfpomVJzRlkI9cTVAM1wrE9RDfxdkY0VZLamEchdbLjXhUZvCImM2MbmDoVpmnePI84iY5
	SV4kgk5MGojQrsqqNrruSDjjBYRjpX7+SfZyfAKPswaowDkUBPC95g5uql9EbmTJSD7TQjCQ5IZrq
	KjQG+zbctz8brYPKB9lZyx2Qf/AEDE6hlV7TRkEuusrSjUUn2lN0VZRXf5eWCmSu5dXbkXdZ8FoZ7
	SM50kglEfhzZcLravPeZy09hWNEKyDDYiHI2EGdUneYBXAewuy86AuBW5USioRiEdpTKZGoJvdPI3
	h1kVuNs5m8vLlS+cYlYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUgl0-0000000EYXY-2ijr;
	Wed, 03 Jun 2026 08:15:22 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUgky-0000000EYWl-3wfb
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jun 2026 08:15:22 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-bec449cf976so400092866b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Jun 2026 01:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780474519; cv=none;
        d=google.com; s=arc-20240605;
        b=UwfTHp+SnX8cmKbocswy+v4k4/yljU6yXq/1AHMrtwlh5bK5oKHTlwP7d7tnkdMzEb
         eIZE1FqXqsNNf6lVTQjmd3tii5+gcTrtPCWOuyi6WHhjkQTfmLlWn/7qRi3hpLZMNt6b
         D8UDIVfIdZmDL0TjvrNmoEBT/2mHwEDDqSg1Qdy77akgZELLUgoeqTibJtQGNoAHG7X9
         WWAm0gDvpjHOce0RcFjaYxQYETwZaz5IEDRy3IiS1GA5wHFa6PtZSn3xEdoKbqGXzhMy
         ml4tA9hmosMKWK4e/t35irTZDAw6ZAiYARDF2wQus7fls47rJmSDldBrxxO+Njti35OW
         5Dtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gRjZpsNs43oaDIo6NFyqCqveQQyEyd7nLlm/j3z6ROA=;
        fh=xczHt0tUnhQ4i+DmOPsOOrPcwCftbggK1izcHR3mRBw=;
        b=TI7GmOslxP2EPBaTtkrupagw1ZVSyyXGyjJhLOtlSYmfmvhLwSByAtZtUz7umMRetW
         AVYryRGvSOo96RUbfPBFfFc6eRAsFxfhOc1YAqbrbJAsKCJAewHAw99ix+zd0DEiwofD
         cw4oWgid/Hb2RcCIePU68c1ntfFKOJwBSBfBzIZCFgYDqwZkR7VdVC8LTjFJGxm6KGJ7
         yV5Q5dl7Cattg+DWM5OkgzvZ8yXkDUNzaPpTPxGIEZY6GWLZaLkjO+GAI6JBqWpgKtap
         kEdP7gHmKoNY/cX2S63QordftB+dE3QLGJ58QUTPw5rCbcAocPrlq71U+2Tlxm1qFach
         7Xsw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1780474519; x=1781079319; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gRjZpsNs43oaDIo6NFyqCqveQQyEyd7nLlm/j3z6ROA=;
        b=0Z9Bx3ida+eD770p8pGwQhEpajo+RpwFrDd9RGjXq6hwxwj4ujTOOsnLxMhX7OEFkJ
         iViGnZQAObdAI7qdQq5USYZXcNAxHo2g7yNa19Xx0Iej6OaAqIMSr6p9kT40f5H9+Tjl
         LIA3cBW6SIlqu+En+Vu1dbRhnU6ZlCxgwAJl96xsEnIOaK0BD9QDa1KDDnX1Vnv85vts
         29IeAlUjR9F9yvkz4+vfu7mE87bgaFMKrOtxYA2AUbtULwjm+tzjH1/xxK23Wo7C4X33
         0Pq7AmgN9Syubs4MoSDxNoUmoHzd0Nncf3IEUquaU75T3+KEUiW7vhLEOWXhq/PfAkZl
         iW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780474519; x=1781079319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gRjZpsNs43oaDIo6NFyqCqveQQyEyd7nLlm/j3z6ROA=;
        b=cel8gIFlP1RRlI+8S7m89RhJSNMsXUWErXvm86ldiAy3X0tSNc9MRi+j3SXGre5ZKN
         7Sid/g/wqdLrH7T5EZj3rmbllP7MYb4IKHcR1oVkAoV/hEdZi7HGvuXQyf79XrNany1M
         nQmCf6qgY2hoePBqNBJ+g/Mhx9wlNtmaIH6Yjc8QYQsD0DHGEqiWkCcH5IF7gSZEbLDL
         ThNnRc4GbCaNKgNHq7GOrRZ7xGEDJu1NGrKr8PlzwRhofG80D2pZX+2S3ITQwg9DIY7t
         uy3FeLwarQly7qVsCrSiNNfkDeC5alXm/aKq9UxszLVDsIg4nNITLTgiMzyujz3U1vsA
         A/WA==
X-Forwarded-Encrypted: i=1; AFNElJ8rRtEfEHVyrXQDhRZvKyXQX+OZxe7oUNf/vgZUwjVIW0mPVzJqNmm2OFl2b91ez0L6TSmgEGtR5AA6KZ/H9w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQ3G/o9EvKJBEdYZ8bMt+KKqRXMWA0LUaVZQkBFg4sB5USw2sN
	rAKp7jq931QbwqpwWXTH0y8uU9EbstGA6Bhh/f8vQNK3+ZEeO/LxbvL7DNXfXVKiUOjzMDYu6Du
	bt64cfiF5E5cTwGKcfR/xmtiLytQ9JdpFiY858l/fiQ==
X-Gm-Gg: Acq92OGhmPtMXbIMltwqBRyue+mAppX47vWm8J4TV63pKaD8aQWLoXVo4oyKqNidTS3
	Btlsqlq2REyoZTfHah84p/u0phdErQm2tq5fVIMFDX5uh7L5x/jory/2BdiZ+5qcWPbfqjt8v+9
	Gez0Dxi4JZCO77hOCeRJc/G+wLbMBVT7b/LHSW55+/ufBYC0ZNUzTPmMwIoXRoH12n/glhMUhUS
	JK66gO3G1LeBtaK5JEzakEAT79CxHPOzeb4XBWA+UjnssW+U1CO6xKkp98i06s8wLN3xybEWVx9
	P0/dCo0ha/hq/DXKR5E=
X-Received: by 2002:a17:907:2888:b0:bee:77ae:331d with SMTP id
 a640c23a62f3a-bf0ab21598amr67736366b.40.1780474518495; Wed, 03 Jun 2026
 01:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260602-hdmi-overscan-v1-0-31f71b817c80@flipper.net>
 <20260602-hdmi-overscan-v1-2-31f71b817c80@flipper.net> <20260603-glittering-vigilant-beluga-0c6bf6@houat>
In-Reply-To: <20260603-glittering-vigilant-beluga-0c6bf6@houat>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 3 Jun 2026 12:15:04 +0400
X-Gm-Features: AVHnY4JpnTW5Hb5wV2KDIa-xAcNMWSVw4PZh0S5vcLCYVB4NPlWeSB2i4m-eFk8
Message-ID: <CAKTNdwE5uAOc9V+L1J7_QJfW45D-K-vTnpHuktxD2=x9e_4jOQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi_qp: expose "overscan" property
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_011521_012634_158935C6 
X-CRM114-Status: GOOD (  25.66  )
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
Cc: Simona Vetter <simona@ffwll.ch>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKdW4gMywgMjAyNiBhdCAxMTo1NeKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1biAwMiwgMjAyNiBhdCAwOTowMDo0MFBN
ICswNDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IEV4cG9zZSB0aGUgIm92ZXJzY2FuIiBj
b25uZWN0b3IgcHJvcGVydHkgYXMgcmVjb2duaXplZCBieSBLV2luIGFuZCB0aGUKPiA+IGxpa2Vz
IHRvIGNvbXBlbnNhdGUgZm9yIFRWIG92ZXJzY2FuIGNyb3BwaW5nLgo+ID4KPiA+IFRoZSBDUlRD
IHdpbGwgdXNlIHRoZSBtYXJnaW4gdmFsdWVzIGRlcml2ZWQgZnJvbSB0aGlzIG92ZXJzY2FuIHBl
cmNlbnRhZ2UKPiA+IGluIGl0cyBwb3N0LWNvbXBvc2l0aW9uIHNjYWxlciB0byBhZGQgYXBwcm9w
cmlhdGUgYmxhbmsgbWFyZ2lucyBvbiBhbGwKPiA+IHNpZGVzIG9mIHRoZSBvdXRwdXQgaW1hZ2Ug
c28gdGhhdCB0aGUgVFYgZG9lc24ndCBlYXQgdXAgdmlzaWJsZSBjb250ZW50Lgo+ID4KPiA+IFNp
Z25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGZsaXBwZXIubmV0Pgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyB8IDE2
ICsrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+
ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1y
b2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAu
Ywo+ID4gaW5kZXggZjM1NDg0NzE1YzJkLi5mYWU0NGQxMWRiZWYgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jCj4gPiBAQCAtMTM3
LDEwICsxMzcsMTggQEAgZHdfaGRtaV9xcF9yb2NrY2hpcF9lbmNvZGVyX2F0b21pY19jaGVjayhz
dHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkKPiA+
ICB7Cj4gPiAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9xcCAqaGRtaSA9IHRvX3JvY2tjaGlw
X2hkbWlfcXAoZW5jb2Rlcik7Cj4gPiArICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZSAqYWRqX21vZGUgPSAmY3J0Y19zdGF0ZS0+YWRqdXN0ZWRfbW9kZTsKPiA+ICAgICAgIHN0cnVj
dCByb2NrY2hpcF9jcnRjX3N0YXRlICpzID0gdG9fcm9ja2NoaXBfY3J0Y19zdGF0ZShjcnRjX3N0
YXRlKTsKPiA+ICAgICAgIHVuaW9uIHBoeV9jb25maWd1cmVfb3B0cyBwaHlfY2ZnID0ge307Cj4g
PiArICAgICB1bnNpZ25lZCBpbnQgb3ZlcnNjYW47Cj4gPiAgICAgICBpbnQgcmV0Owo+ID4KPiA+
ICsgICAgIG92ZXJzY2FuID0gbWluKGNvbm5fc3RhdGUtPnR2Lm92ZXJzY2FuLCAxMDB1KTsKPiA+
ICsgICAgIHMtPnR2X21hcmdpbnMubGVmdCAgID0gYWRqX21vZGUtPmhkaXNwbGF5ICogb3ZlcnNj
YW4gLyAyMDA7Cj4gPiArICAgICBzLT50dl9tYXJnaW5zLnJpZ2h0ICA9IHMtPnR2X21hcmdpbnMu
bGVmdDsKPiA+ICsgICAgIHMtPnR2X21hcmdpbnMudG9wICAgID0gYWRqX21vZGUtPnZkaXNwbGF5
ICogb3ZlcnNjYW4gLyAyMDA7Cj4gPiArICAgICBzLT50dl9tYXJnaW5zLmJvdHRvbSA9IHMtPnR2
X21hcmdpbnMudG9wOwo+ID4gKwo+ID4gICAgICAgaWYgKGhkbWktPnRtZHNfY2hhcl9yYXRlID09
IGNvbm5fc3RhdGUtPmhkbWkudG1kc19jaGFyX3JhdGUgJiYKPiA+ICAgICAgICAgICBzLT5vdXRw
dXRfYnBjID09IGNvbm5fc3RhdGUtPmhkbWkub3V0cHV0X2JwYykKPiA+ICAgICAgICAgICAgICAg
cmV0dXJuIDA7Cj4gPiBAQCAtNjAzLDYgKzYxMSwxNCBAQCBzdGF0aWMgaW50IGR3X2hkbWlfcXBf
cm9ja2NoaXBfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3RlciwK
PiA+ICAgICAgICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJvYmUoaGRtaS0+ZGV2LCBQVFJfRVJS
KGNvbm5lY3RvciksCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJGYWls
ZWQgdG8gaW5pdCBicmlkZ2UgY29ubmVjdG9yXG4iKTsKPiA+Cj4gPiArICAgICByZXQgPSBkcm1f
bW9kZV9jcmVhdGVfdHZfcHJvcGVydGllc19sZWdhY3koZHJtLCAwLCBOVUxMKTsKPiA+ICsgICAg
IGlmIChyZXQpCj4gPiArICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0
LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiRmFpbGVkIHRvIGNyZWF0
ZSBUViBjb25uZWN0b3IgcHJvcGVydGllc1xuIik7Cj4gPiArCj4gPiArICAgICBkcm1fb2JqZWN0
X2F0dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZHJtLT5tb2RlX2NvbmZpZy50dl9vdmVyc2Nhbl9wcm9wZXJ0eSwgMCk7
Cj4gPiArCj4KPiBBcyB0aGUgbmFtZSBzdWdnZXN0cywgaXQncyBhIGxlZ2FjeSBwcm9wZXJ0eSBv
bmx5IGV2ZXIgdXNlZCBmb3IgVFYuIFlvdQo+IHNob3VsZCBiZSB1c2luZyBkcm1fbW9kZV9jcmVh
dGVfdHZfbWFyZ2luX3Byb3BlcnRpZXMoKQoKSGkgTWF4aW1lLCBJIHRyaWVkIHRoYXQgb25lIGJl
Zm9yZSBnb2luZyBmb3IgdGhlIGN1cnJlbnQgc29sdXRpb24gYnV0CnJlYWxpemVkIHRoYXQgdGhl
IHVzZXJzcGFjZSB0b29saW5nIEkgY2FyZSBhYm91dCAoS1dpbiBpbiBwYXJ0aWN1bGFyKQpkb2Vz
bid0IHJlY29nbml6ZSB0aG9zZSBwcm9wZXJ0aWVzLCBidXQgaXQgZG9lcyByZWNvZ25pemUgIm92
ZXJzY2FuIi4KTWF5YmUgdGhlcmUncyBhIGNvbXBhdCBoZWxwZXIgc29tZXdoZXJlIHRoYXQgSSBt
aXNzZWQsIHdoaWNoIHdvdWxkCnRyYW5zbGF0ZSBiZXR3ZWVuIHRoZSB0d28/CgpJdCBpcyBmb3Ig
VFZzLiBUdXJucyBvdXQgdGhhdCBoYXZpbmcgYSBwcm9wZXIgcmlnaHQtc2l6ZWQgZGlnaXRhbApp
bnB1dCBpbnRlcmZhY2UgZG9lc24ndCBwcmV2ZW50IHRoZW0gZnJvbSBkb2luZyB3ZWlyZCBzdHVm
ZiB3aXRoIHRoZQppbWFnZSBkYXRhLCBpLmUuIG92ZXJzY2FubmluZyBhbmQgY3JvcHBpbmcgaXQg
cmlnaHQgd2hlcmUgb25lIHdvdWxkCmV4cGVjdCB0byBzZWUgdGhlIHN5c3RlbSB0cmF5IGFuZCBw
YW5lbC4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
