Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 502B1C0219D
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 14:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjiLc7ZGmp/TOHsr6hXpgJwkOJ+IA47F9jyIE8I2awE=; b=kkuoMMGlCFKg70
	tu5FV4C7zQGxoY20OYKtL4JZNFhDUrCEwsfQNoZMxbw9RWkvdsgd0n4OfW4FRI2ibJjpW5ztHN869
	kmLmP842HJGMeC3T+jQTLMMe+dLfVj2we57RV8qu28YdyepcuAdNUCwq2dYfL5hE2WDOq/sqHqJAf
	ddpqpIF2mJHpuAaEx3KzJ/7TUuRO0Opeao9wv0xBcucHHwiIaMl/jOQe885x0jzNXFtSjYl1UTVG/
	bYO0QMJlHNTETxPybaVRVX3uXqYnWGJ9YWUJqGT6Z1hnzvS5iRta39albvAQEIBCRAmGhcIBLVDV2
	sEn04w8NCEU3O0rCGRPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiae1-0000000BR5y-0lnP;
	Thu, 13 Feb 2025 14:56:49 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiabY-0000000BQS2-23ac;
	Thu, 13 Feb 2025 14:54:17 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-ab7d58aa674so149083166b.0;
        Thu, 13 Feb 2025 06:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739458454; x=1740063254; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aUwOmDEJF2wOs2nTiLIA+I47nkpCmb6VTNh/7P12ZFk=;
        b=e554P7Wxe8RQPTwvboCVq3DFsn+R/v08qJQhsvx9BewYfz0lCHfL6b+aHiQe0Oqoh2
         HasyLwZFzkU1kQnJ+8Exfye3zSxL+YdNqRakGcGfxi29jDwnB3hQ4d2ZHtcVHzy8PdWH
         T7zVIUKu1fXZXd3NEiU2vLzSqyu+94RFA41JhmjDWVYz5W4lhYmZLIDi626pTz4/ux1f
         sY1+/EaY3EYcvUnhoZvOeQ3De1v1xqWZdSS5df1Tg6leJD9zuxJBU6OqUU4ZO4Fynbcu
         WeBK/Vj9xP07xl0UGaeCv0lQMKDEu75eBP6YgzedO6bRIcfRaoBd6sv77PF8F8fpC62y
         ZWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739458454; x=1740063254;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aUwOmDEJF2wOs2nTiLIA+I47nkpCmb6VTNh/7P12ZFk=;
        b=EnRIbvavGE7alEWvuLAINe5NGAgXH1O9QLzqUfJZBMV3nBDwxMH+M3qadrn6aXbGrd
         FwQHaVVDSUt5Qke/AnB7yWj7ryHIhXgbmXeREzMEFfUg2cRLPBKzbin/ttmc1p1mxfQP
         UklBLmHN70irDVPxDghYHIrpBxQESdC+0VvKOCnrSCOtBBclA4kro99kKi+R8+HUzmqM
         x4ofgSfG2VQBKycyQYFFqHCSlaeWZzh62yb+WRiGqO5+x5rp0xuCj4qk613WzvcwJ3xt
         4hmurquqMHvcNHrpmVfObyhmoY2i69rLe25lU8DnnRrVTzdBZRdUHSIu3vbUV3TFXnYL
         PzqQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+xACvosdgzSuBCbaaRmJnqQTVyV+c1cRKic8H2DdRJC7UKblL/t/DylNuyL/b8zzk3Pj4QNw1E7oPYywx1ouH@lists.infradead.org, AJvYcCWKySDf/gKtil6x1AaPkm5wVBM9nWJeVu2fBhmGxw1ufy5b+992hqZEk+ztVz0iUgDD9ANj3hpEUvGl@lists.infradead.org, AJvYcCXHJVO0O2Sw2yXol8GQdnLq2GV9p3Fs9Q3Bx+tr3+NLk/reeYjNUPH0Poh8W7wZm2jdD8jXuy1bg/IWN5WM2SM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVVd2xA4FoKLxOgdrFx40IAVujPjU0dbeQFd5bYEogR/cIWkuZ
	T4fBea5MEdFCQBfA97ATzWWOnJre89yhMl7OCkPyG/a9gek2M224
X-Gm-Gg: ASbGncuFThl4NiVF2wEM94cr7NOv1hPg/rkidqT70o8dP3ikgl7UMYtgmjtwZmbxAKt
	+0cqmrg33tpAX2FFg+Hl7E5A7cJdu22qBoJVqj9GAIiBDPlHNW5oILSh03VbQEHBMWeGNEY6vOm
	K6zYiIMXbQvHCWfS1iBJcyl7x98c1pQaH3Su337G10YXcXfe9kDBAHcF8/QHn4upkm8LKMioIWm
	O88xurrcBdF1aXksgGbHg6hOrb4Kw7vS2flwhzYXPFfDYFqmwJYMrx2PqA6U21Rl6C8ImczC7le
	Nqm5FZyrvgXiGKxpUVdYkdmJeQ1JwaPpbfvzE0RMq67VQvvAD9rQCHENdZs3hLJ8xuko1zF4
X-Google-Smtp-Source: AGHT+IHRjDETV8MTnwCbNtSq+kIovSq5moe9v0r+//O++wk+ZnIkHd4F+W0Aw7g4U3jTuMaXq46XsQ==
X-Received: by 2002:a17:907:7207:b0:ab2:db7b:5db3 with SMTP id a640c23a62f3a-ab7f34e7515mr682372866b.54.1739458454075;
        Thu, 13 Feb 2025 06:54:14 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532322c4sm146145866b.34.2025.02.13.06.54.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Feb 2025 06:54:13 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH v6 00/14] Add eDP support for RK3588
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250123100747.1841357-1-damon.ding@rock-chips.com>
Date: Thu, 13 Feb 2025 15:54:00 +0100
Cc: heiko@sntech.de,
 robh@kernel.org,
 conor+dt@kernel.org,
 algea.cao@rock-chips.com,
 rfoss@kernel.org,
 devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 sebastian.reichel@collabora.com,
 dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com,
 kever.yang@rock-chips.com,
 dmitry.baryshkov@linaro.org,
 vkoul@kernel.org,
 andy.yan@rock-chips.com,
 krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Message-Id: <5044FFCB-B325-40D0-BA82-03AF64EAF029@gmail.com>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
To: Damon Ding <damon.ding@rock-chips.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_065416_530104_5AA360CC 
X-CRM114-Status: GOOD (  16.93  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9j
ay1jaGlwcy5jb20+IHcgZG5pdSAyMyBzdHkgMjAyNSwgbyBnb2R6LiAxMTowNzoKPiAKPiBQaWNr
ZWQgZnJvbToKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9j
a2NoaXAvbGlzdC8/c2VyaWVzPTkyMzU5Mwo+IAo+IFRoZXNlIHBhdGNocyBoYXZlIGJlZW4gdGVz
dGVkIHdpdGggYSAxNTM2eDIwNDhwNjAgZURQIHBhbmVsIG9uCj4gUkszNTg4UyBFVkIxIGJvYXJk
LCBhbmQgSERNSSAxMDgwUC80SyBkaXNwbGF5IGFsc28gaGFzIGJlZW4gdmVyaWZpZWQKPiBvbiBS
SzM1ODggRVZCMSBib2FyZC4gRnVydGhlcm1vcmUsIHRoZSBlRFAgZGlzcGxheSBoYXMgYmVlbiBy
ZWNoZWNrZWQKPiBvbiBSSzMzOTkgc2FwcGhpcmUgZXhjYXZhdG9yIGJvYXJkLgo+IAo+IFBhdGNo
IDF+NCAgIGFyZSBwcmVwYXJhdGlvbnMgZm9yIHRoZSBSSzM1ODggZURQIHN1cHBvcnQgb24gYm90
aCBBbmFsb2dpeAo+ICAgICAgICAgICAgc2lkZSBhbmQgUm9ja2NoaXAgc2lkZS4KPiBQYXRjaCA1
fjggIGFyZSB0byBzdXBwb3J0IHRvIGdldCBwYW5lbCBmcm9tIHRoZSBEUCBBVVggYnVzLgo+IFBh
dGNoIDl+MTEgYXJlIHRoZSBSSzM1ODggQW5hbG9naXggRFAgZHJpdmVyIHN1cHBvcnQuCj4gUGF0
Y2ggMTIgICAgaXMgdG8gYWRkIHRoZSBwb3dlciBzZXF1ZW5jaW5nIGRlbGF5cyBmb3IgcGFuZWwg
bW9kZWwKPiAgICAgICAgICAgIExQMDc5UVgxLVNQMFYuCj4gUGF0Y2ggMTMgICAgaXMgdGhlIGFk
ZGl0aW9uIG9mIFJLMzU4OCBlRFAwIG5vZGUuCj4gUGF0Y2ggMTQgICAgaXMgdG8gZW5hYmxlIHRo
ZSBlRFAwIGRpc3BsYXkgb24gUkszNTg4UyBFVkIxIGJvYXJkLgo+IAo+IERhbW9uIERpbmcgKDE0
KToKPiAgZHJtL3JvY2tjaGlwOiBhbmFsb2dpeF9kcDogUmVwbGFjZSBEUk1fLi4uKCkgZnVuY3Rp
b25zIHdpdGggZHJtXy4uLigpCj4gIGRybS9yb2NrY2hpcDogYW5hbG9naXhfZHA6IFVzZSBmb3Jt
YWxpemVkIHN0cnVjdCBkZWZpbml0aW9uIGZvciBncmYKPiAgICBmaWVsZAo+ICBkcm0vcm9ja2No
aXA6IGFuYWxvZ2l4X2RwOiBFeHBhbmQgZGV2aWNlIGRhdGEgdG8gc3VwcG9ydCBtdWx0aXBsZSBl
ZHAKPiAgICBkaXNwbGF5Cj4gIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBBZGQgc3VwcG9ydCBm
b3IgcGh5IGNvbmZpZ3VyYXRpb24uCj4gIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiByb2NrY2hpcDog
YW5hbG9naXgtZHA6IEFkZCBzdXBwb3J0IHRvIGdldCBwYW5lbAo+ICAgIGZyb20gdGhlIERQIEFV
WCBidXMKPiAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6IHN1cHBvcnQgdG8gZ2V0ICZhbmFsb2dp
eF9kcF9kZXZpY2UucGxhdF9kYXRhCj4gICAgYW5kICZhbmFsb2dpeF9kcF9kZXZpY2UuYXV4Cj4g
IGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBBZGQgc3VwcG9ydCB0byBnZXQgcGFuZWwgZnJvbSB0
aGUgRFAgQVVYIGJ1cwo+ICBkcm0vcm9ja2NoaXA6IGFuYWxvZ2l4X2RwOiBBZGQgc3VwcG9ydCB0
byBnZXQgcGFuZWwgZnJvbSB0aGUgRFAgQVVYCj4gICAgYnVzCj4gIGR0LWJpbmRpbmdzOiBkaXNw
bGF5OiByb2NrY2hpcDogYW5hbG9naXgtZHA6IEFkZCBzdXBwb3J0IGZvciBSSzM1ODgKPiAgZHJt
L2JyaWRnZTogYW5hbG9naXhfZHA6IEFkZCBzdXBwb3J0IGZvciBSSzM1ODgKPiAgZHJtL3JvY2tj
aGlwOiBhbmFsb2dpeF9kcDogQWRkIHN1cHBvcnQgZm9yIFJLMzU4OAo+ICBkcm0vZWRwLXBhbmVs
OiBBZGQgTEcgRGlzcGxheSBwYW5lbCBtb2RlbCBMUDA3OVFYMS1TUDBWCj4gIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBBZGQgZURQMCBub2RlIGZvciBSSzM1ODgKPiAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IEVuYWJsZSBlRFAwIGRpc3BsYXkgb24gUkszNTg4UyBFVkIxIGJvYXJkCj4gCj4gLi4uL3Jv
Y2tjaGlwL3JvY2tjaGlwLGFuYWxvZ2l4LWRwLnlhbWwgICAgICAgIHwgIDI1ICstCj4gYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIHwgIDI4ICsrKwo+IC4uLi9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODhzLWV2YjEtdjEwLmR0cyAgICB8ICA1NCArKysrCj4gLi4u
L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jICAgIHwgIDc2ICsrKy0tLQo+
IC4uLi9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuaCAgICB8ICAgMSArCj4g
Li4uL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX3JlZy5jIHwgIDUyICsrKysK
PiBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMgICAgICAgICAgICAgfCAgIDggKwo+
IC4uLi9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgICB8IDIzOCArKysr
KysrKysrKysrLS0tLS0KPiBpbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaCAgICAgICAg
ICAgICAgfCAgIDggKy0KPiA5IGZpbGVzIGNoYW5nZWQsIDQwMSBpbnNlcnRpb25zKCspLCA4OSBk
ZWxldGlvbnMoLSkKPiAKPiAtLSAKPiAyLjM0LjEKPiAKCkRhbW9uLAoKSeKAmW0gcGxheWluZyB3
aXRoIGhkbWkwIHBvcnQgZW5hYmxlbWVudCBvbiByYWR4YSByb2NrNSBpdHggYm9hcmQgd2l0aCA2
LjE0IG1haW5saW5lLgoKcm9jazUgaXR4IGhhcyAyIGhkbWkgcG9ydHM6IGhkbWkwIGlzIHdpcmVk
IHRvIHJrMzU4OCB0eXBlQzEvZURQMSBlRFAgd2l0aCByYTYyMCBlRFAtPkhETUkgY29udmVydGVy
IGFuZCBoZG1pMSBmcm9tIGhkbWkvZWRwIHR4MQooc2VlIHBhZ2UzICYgcGFnZTI5IGF0IGh0dHBz
Oi8vZGwucmFkeGEuY29tL3JvY2s1LzVpdHgvdjExMTAvcmFkeGFfcm9ja181aXR4X3YxMTEwX3Nj
aGVtYXRpYy5wZGYpCgpJ4oCZbSBvbiA2LjE0LXJjMiB3aXRoIGFwcGxpZWQ6IApbMV0gQ3Jpc3Rp
Y2MgaGRtaSBjb2RlIChodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2NyaXN0aWNjL2xpbnV4
LW5leHQvLS9jb21taXRzL3JrMzU4OC1oZG1pLWJyaWRnZSkKWzJdIGVEUCBzdXBwb3J0IGZvciBS
SzM1ODggKGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hp
cC9saXN0Lz9zZXJpZXM9OTI3NzY1KQpbM10gQWRkIGVEUCBtb2RlIHN1cHBvcnQgZm9yIFJvY2tj
aGlwIFNhbXN1bmcgSERQVFggUEhZIChodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2pl
Y3QvbGludXgtcm9ja2NoaXAvY292ZXIvMjAyNTAyMDUxMDUxNTcuNTgwMDYwLTEtZGFtb24uZGlu
Z0Byb2NrLWNoaXBzLmNvbS8pCgpJcyBlZHAxIHN1cHBvcnRlZCBieSB5b3VycyBbMl0gc2VyaWVz
PwoKSWYgeWVzIC0gbWF5IHlvdSBwbHMgaGludCBtZSBhYm91dCByZXF1aXJlZCBkdHMgYWRkaXRp
b25zIGluIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3N0
YWJsZS9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTUtaXR4LmR0cz9oPXY2LjE0LXJjMiA/CgooZm9yIHJlZmVyZW5jZTogcm9jazUgaXR4IGJz
cCBkdHMgZ29lcyBsaWtlIHRoaXM6IGh0dHBzOi8vZ2l0aHViLmNvbS9yYWR4YS9rZXJuZWwvYmxv
Yi9saW51eC02LjEtc3Rhbi1ya3IxL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LXJvY2stNS1pdHguZHRzKQoKaW4gWzJdIGkgc2VlIGR0cyBhZGRzIGZvciBFVkIxIC0gYnV0IGni
gJltIG5vdCBzdXJlIHdpbGwgc2ltcGxlIGV4dHJhcG9sYXRpb24gb2YgZXZiMSBlZHAwIGR0cyBh
ZGRpdGlvbnMgdG8gZWRwMSBpbiByb2NrNSBiZSBlbm91Z2jigKYuCgp0aHggaW4gYWR2YW5jZSEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
