Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46242C5320E
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 14:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXA+1roPXGvF40BOoEEgngp7iTSFypmXuS2QQ4+9ZCY=; b=Rsu4LpFLTNEVhF
	FANSK9wfCdchppDGwkB5r5HQk6r47PHiket6HkmMrauDPS9IpPJ6gLsC321iEJWFK5qjBCwI/GWG+
	P8KiQi6cU9J7E+s2vu7nfcmyO4d6lJJTJAYIBqi2cWIYuc24is/OyReAHB/FOxKaoKjh77R2uItlR
	NcOCN5VAJM84bLfyKo67dg4xDsorFk2wgdBg7E12bhu3z1ylHAkzL7lI1jKwfqRb8sXgiEI/9PyXZ
	bzE4Fr+v3HjKvoI57ERb4JaJKf3NZ6fUjwLTk04SX6VpzpPtC2+Y7OAQLY1IjreVjhKjwdbQNhv19
	NF4L1DA9g3l7tif04fRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg3Vx-00000001mIw-104O;
	Mon, 19 Aug 2024 14:37:45 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg3Vu-00000001mIT-0hye;
	Mon, 19 Aug 2024 14:37:44 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3db1270da60so3129667b6e.2;
        Mon, 19 Aug 2024 07:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724078260; x=1724683060; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTnWVMvWno7wb24qY7+dCZeMGgbDqXTbc7a5NZ88QvI=;
        b=TwKE6ptnBwFOje3Jod46DToE1VcrxzJdTr/9OoXNmYFScwSQ3Dy4lnZe0EQKYOVsxh
         U4wAJP+WBffxMMsr/z2wPyz+wbIujP0ORJ3m0LPyEF6iIpQCl7QjXanQDPHQqWedwHac
         gv3LFVfkeCWIb4Q8+R+vruAtp9DT2xkyfvSLwU7CQng5O12spEHxGw2ZfRNWIwpJQohO
         E7Y7kBEl3Ry15pRrFIFOPyuAZ7TOA3lEBRewANJzdgBw5r6/KjIrAe5yCxYNpTMG3zuW
         yOrzsza/3mSFozBoEopDvu7uoDYBFWOaUzCCtd1eJywyv9uqzVGjtfSs0lFWtv0WQh1z
         xaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724078260; x=1724683060;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTnWVMvWno7wb24qY7+dCZeMGgbDqXTbc7a5NZ88QvI=;
        b=F0VJwvUmwzW9prprIc7kxJELj+0A4eiYp4lbE9816NFA/TfsPYN2sIi78sTHdyr2Bb
         vA9yaJvhQoplDFBg+/xQp7N8TRIhJrlMffgDI/5BoGFNczYV0z4jOosCab2w4g8jfimP
         NtkWuzrkBe29zg2lK7TrpM1AXpYvhZo4MdYhKgcU24kCI9mqzoJ1YjCI5JYsoxt06EZN
         PZnVEw7ZvBgxZAjdPPPUd3DtXIyD/+Q0K20wMyTxMy5n0owc+miDUEqu6FFDbK+4OQGq
         ijrbotWqR3SQIoWTp4LSTDP7jf+Lmn1gagXrTdoX4bfnXyKiXziHgLjXDL3AWR4TD8Tt
         eoAQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/MkK8r36n8gKhp+7XJjK1HwFsHA0ab6T2SABbaeiHiTv/iaIrXSA2OwbKSAmd6xSTtbCYIDKz5HNaIY8kq/Gn5nQeFNdGngZV8/z2xLwlaLjAVWWvzw1wDGx0l7DOVNxhDelbFTj8k2SYGo7Spy++90vLh6S9w3k=
X-Gm-Message-State: AOJu0YwX0voY8IqnqnZv3Uioy7jl3vD02wCaMAiGFdxWj4ux6SVNqscG
	0vx6eWVYO2xIPei6tH1WYvWVmOz35R2cQFT1yr4qWAHIlzDk+EjG4RZsNx8Qon7fywwy/ribq5V
	F/kGCLH3WwB4Lm6q/9p7pjQmII43QkOdJsF0=
X-Google-Smtp-Source: AGHT+IEIMKuCROk4UKJ0V128vJxPpf58Ob3VgbLfepoK0u7fYdeYSni6/KOEUJbQPo80EFHtKiLq1ktsuj1uRRlvKBY=
X-Received: by 2002:a05:6808:2219:b0:3d9:222e:40ac with SMTP id
 5614622812f47-3dd3ae3531bmr11209758b6e.44.1724078260399; Mon, 19 Aug 2024
 07:37:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
 <CAAMcf8DZu4B2AN+=8xP3wuknqUtD-e-v+Ej31=08ibPfyL+dGw@mail.gmail.com>
 <CAAMcf8A59MqhZEswC5VmKZyThG7oG=ztEYd_yfuOwvGTvKzMow@mail.gmail.com>
 <CAAMcf8Ctr9rOZ2oOzk48haakJOO2bzyNURb2oZTRxJ3tnafXUA@mail.gmail.com> <D3JXD607339U.2F1IAKUSM59UP@cknow.org>
In-Reply-To: <D3JXD607339U.2F1IAKUSM59UP@cknow.org>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 19 Aug 2024 16:37:29 +0200
Message-ID: <CAAMcf8BAiva1GB_1AoVH-Nq8sp81KdtVe=rUMVjV2ZxCiM4NAg@mail.gmail.com>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Huang-Huang Bao <i@eh5.me>, "Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	linux-spi@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Linus Walleij <linus.walleij@linaro.org>, Sasha Levin <sashal@kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_073742_231149_CE1C505A 
X-CRM114-Status: GOOD (  19.87  )
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

T24gTW9uLCBBdWcgMTksIDIwMjQgYXQgMzozM+KAr1BNIERpZWRlcmlrIGRlIEhhYXMgPGRpZGku
ZGViaWFuQGNrbm93Lm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24gQXVnIDE5LCAyMDI0IGF0IDM6MTQg
UE0gQ0VTVCwgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4gPiBPbiBNb24sIEF1ZyAxOSwgMjAyNCBh
dCAyOjQ54oCvUE0gVmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPiB3cm90ZToKPiA+
ID4gT24gTW9uLCBBdWcgMTksIDIwMjQgYXQgNDoxMuKAr0FNIFZpY2VudGUgQmVyZ2FzIDx2aWNl
bmNiQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiBpIGFtIGEgdXNlciBvZiB0aGUgQ09ORklH
X1NQSV9TUElERVYgZGV2aWNlLgo+ID4gPiA+ID4gSXQgc3RvcHBlZCB3b3JraW5nIGJldHdlZW4g
Ni44IGFuZCA2LjEwLjUuCj4gPiA+ID4gPiBUaGUgU1BJIGJ1cyBpdHNlbGYgcmVwb3J0cyBubyBl
cnJvcnMgdG8gdXNlcnNwYWNlLCBidXQgbm8gZGV2aWNlcwo+ID4gPiA+ID4gYXBwZWFyIGNvbm5l
Y3RlZCB0byB0aGUgYnVzLgo+ID4gPiA+ID4gVGhlIHBsYXRmb3JtIHVzZWQgaXMgUkszMzI4Lgo+
ID4gPiA+ID4gVGhlIG9ubHkgc3BpLXJlbGF0ZWQgbWVzc2FnZSBpbiBkbWVzZyBpczoKPiA+ID4g
PiA+IHJvY2tjaGlwLXNwaSBmZjE5MDAwMC5zcGk6IFJ1bnRpbWUgUE0gdXNhZ2UgY291bnQgdW5k
ZXJmbG93IQo+Cj4gRldJVzogSSd2ZSBzZWVuIHRoaXMgaXNzdWUgYXMgd2VsbC4KPgo+ID4gPiBB
ZGRlZDoKPiA+ID4gSHVhbmctSHVhbmcgQmFvIDxpQGVoNS5tZT4KPiA+ID4gTGludXMgV2FsbGVp
aiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+ID4gPiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtl
cm5lbC5vcmc+Cj4gPiA+Cj4gPiA+IFRoZSBmaXJzdCBvZmZlbmRpbmcgY29tbWl0IGlzOgo+ID4g
PiAyOWQ4MTAxZmI5NDQyNTQ0MDc3ZTY4ZTI3ODM5YTE5NzlmODU2MzNkIHBpbmN0cmw6IHJvY2tj
aGlwOiBmaXggcGlubXV4Cj4gPiA+IGJpdHMgZm9yIFJLMzMyOCBHUElPMi1CIHBpbnMKPiA+ID4K
PiA+ID4gSSd2ZSBhbHNvIHRlc3RlZCA2LjEwLjYgd2l0aCBpdCByZXZlcnRlZCAoYW5kCj4gPiA+
IDQ1NjQ0N2ZmMWZlM2MyOGUyZmQ3YjU3YTc5NjUwZjYyMjQ1YzY0MjggYW5kCj4gPiA+IDcxMjdj
NjhjNzZmMTIwMzY3YjlhNTA1M2Y1MjRkZjBiNjAzZDRhNDggYXMgZGVwZW5kZW5jaWVzKSBhbmQg
U1BJCj4gPiA+IHdvcmtzIGZpbmUuCj4gPgo+ID4gU29ycnkgZm9yIHRoZSBub2lzZToKPiA+IHJl
dmVydGluZyBvbmx5IDI5ZDgxMDFmYjk0NDI1NDQwNzdlNjhlMjc4MzlhMTk3OWY4NTYzM2QgbWFr
ZXMgaXQgd29yayBvbiA2LjEwLjYuCj4gPiBJZ25vcmUgd2hhdCBpIHNhaWQgYWJvdXQgNDU2NDQ3
ZmYxZmUzYzI4ZTJmZDdiNTdhNzk2NTBmNjIyNDVjNjQyOCBhbmQKPiA+IDcxMjdjNjhjNzZmMTIw
MzY3YjlhNTA1M2Y1MjRkZjBiNjAzZDRhNDguCj4KPiBQbGVhc2UgdHJ5IGlmIHVucmV2ZXJ0aW5n
IHRoYXQgY29tbWl0IGFuZCBhZGRpbmcgdGhlIGZvbGxvd2luZzoKPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MDcwOTEwNTQyOC4xMTc2Mzc1LTEtaUBlaDUubWUv
Cj4KPiBmaXhlcyB0aGUgaXNzdWUgYXMgd2VsbC4KCkkgY29uZmlybSB0aGF0IDYuMTAuNiB3aXRo
b3V0IGFueSByZXZlcnRzIHBsdXMKMjAyNDA3MDkxMDU0MjguMTE3NjM3NS0xLWlAZWg1Lm1lIGFs
c28gZml4ZXMgdGhlIGlzc3VlLgpUaGFuayB5b3UgYWxsLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
