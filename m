Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEA65FCD0DD
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 08:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH8UZG8ka55I3V0cSRY3+WjumaACVjcllrgYgK44/lY=; b=acgVioxewPT7+q
	i+AazJ8xvKICra3ztUQ4mfJyG6Qo1Xazld8C0Z4Rqx8ao/L168WWp1SyimG88V2HSBHfoT0jsiQ8s
	IOuKSEcrDA7a88m28blp6lVtDfE+i1SaiPThOeuxI4NcpoQh72fi11EEJ9/fpHh1YiW/tJNEoZDXC
	h1fezbZkrNWWtKY0KZKFEt2OJ37CG69wwkBDa8fKVhSH9AfX/pVgbzGUWO3AndutHVVdQa2KUpkuv
	OsXQkEU/4WZ81jDOjsf6ZaX1lT7Kv3bRSbnLNJNZUFf2+GFs2XwIE8pt/nzVSCDqAbFhXsy0PIrcu
	C0Yc0vcAeoikkv58XNIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mIn-000000083Eo-3x3R;
	Wed, 18 Mar 2026 08:30:53 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mIl-000000083Dg-1Xbw
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 08:30:52 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-b97a0f18a3aso506059466b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Mar 2026 01:30:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773822648; cv=none;
        d=google.com; s=arc-20240605;
        b=ayqa4e51agbr5TKK1Gh1n1+ZzUuHpxkMikLFv6Dig26ZF708qAuGHVbYImR5fe1MOS
         3DX0HYDJ3W7AFQoS/k9otYZFgnLIxm2xGf6sU1OP6chuvr2KOBUnu/+oy1abWFmUe7YR
         9wY5f5S74Qu7MdvqU0jNZuXV44w6F3b+ONdtc2XgHaNoeo31EHJ7ViH7x3k3enCMjrA3
         7i8aHH/qNjzDmOp90V6npzx0O0eWiB4uwaPbL7ShZXfBDvrHFxJfKVwon0SdSQDUJGzQ
         BnTgS4l1XP7vYu830iCF2npGvav5Rw/QxzxvjkMlHrqOCo8L1TGm/RybD4mSmR0lt5rH
         B3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BbWR2/gQozMOlanUkb5RxqFQxqhUpLHTgJQy5vCFP2w=;
        fh=Zxeyosxd37cCrUTKRWnNW+62M4btL5Cf5PAJI6fYVj8=;
        b=AyJu+iH7x2GX/ACD5WI41jajrbZz1FzHJZayCRrhk+YewBzUANy3nqnQxlpbECHaqJ
         mNpPq78gdg2PhTGRqOFJIr/cwAA6rfP/GBFYF848i7NECJDvtt0OUIgqnDb+VNCWWHpe
         KcyRjl24inytNXGP33c7BVWtwqkF2l8TFYmVr3DWSJpp6PcXrtjy9IcwLqi4y1/F5vfD
         CD4LKK43WekDovDPK+rw9u6LYAeI1LyLzO4K+R8W5QSaV3K1M57WlyjW9vwODW6fC1B+
         cKIGCxZ60MaA7VLkl2IT9tPMiHs9zKenlTJD0oX9BYHbWpeemayrqUf/skToBhqHt1Bz
         JolA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773822648; x=1774427448; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbWR2/gQozMOlanUkb5RxqFQxqhUpLHTgJQy5vCFP2w=;
        b=WhD8vneUPtP/U5osSH1XQI8WYaxS31JWhuL3IT7LsIbeT9GgNXe/pf6skv4PPLLTZU
         fvTFXAUNxXtTd1FGEa6VQ7Q8bBH6MzN28RlTf2qljFTJdOrYbvsIm8M7Mi3arLRLYZ2V
         +GMPrU4wOJ7sbO7qdgKE87SliXZ07HSgKV3Uy0L8U27rEQbpGuVVTP6A2AlcTvmLtsKi
         t5Sza7Pa8nYKCYJekvnL4bqbhOMgCD/x62C6OX0Y9bVBuKJet72YeHfawk5+bJVIjh92
         Qisr6El3nSbolUGG4bNvO9Chv1I7d25B006ACbkRER/3w+dVxVSv1XLNmftf3C9dXA2w
         rXsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773822648; x=1774427448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BbWR2/gQozMOlanUkb5RxqFQxqhUpLHTgJQy5vCFP2w=;
        b=XRJT3+rQ7JHNINRRoNte0eAsoLs16Jaf/Mb1oYkBgrOpWjJ4jhMJbzaOOO3r+uJf+1
         2vx6/Sv6q6zu0yIOuyCo+++IsHIAFcB5+w89gJyMgu/FvfedSBXA5m76e5lQGeA1mg6p
         9WWSf/suKHxnwGFJ7XP4ZhRXAUmjBkTmczTLTsP8BdW1NZ+6dy3Ki2fKRHp0O6XpjZV5
         Eu+yhlQx/AQBOPdO3kcAAawggAG1gXZcoEhWwpcRPp20Nk+X/u9fFFQiGfqlEvD3EOBj
         smLBr0DhmB1KUZotaHVl5rPOR3QzFDvXCgC4uHNNxWquV3FFkCxrFfiGtDHPIv2CGnXs
         smIg==
X-Forwarded-Encrypted: i=1; AJvYcCXv6cQAtZ+yICciMb0mQoUp62WCgXuN5MSR/vGobQh+Brs8cW7qvWwjghEiju6owGsGnqUANu8p3YU/Q6RYWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxwHjo/4Yeew5IcFioFMCzR7mo6K8a9BgAi33KwYIMp9t4WDeq6
	zMWxEOmhBVG4G6xEbch3oGAnEXlQtzGl2oRJOOeD1VAdTjeUeRrfyjW/T+3xD7iukSoqcPmScNN
	gHuY8hQThusAUKBtMysF45sao/uC33vj6+4K7MF7GVw==
X-Gm-Gg: ATEYQzz3/BHf7syVJgUpUxq3yCTKRAV5cAlIgdOwyGUABlmW3JSvBgGfUQZb4Cdi35h
	gk/U1lKyE9xFuUrDE59hrpMjTWIJ9DlZC3YsoWyu/6q56rzICRLnuvIXjpH+IXJkp3NfWvAW8W+
	hivOj0iDlCPPtZxzox6zGVds3K+FG6nGTofdeQhrLDT+DwgZsnISmFCCm0qWIOYrgJpHemV2j/i
	2TUqoRRepA2Mzmv+eH0g8WoM6YNqLs2qgK+n75AOByMYrjgxxAORlwjrbsF6ptwI4d06piDC3ig
	2uhqP0Y9
X-Received: by 2002:a17:906:560b:b0:b97:b6de:8b70 with SMTP id
 a640c23a62f3a-b97f4a83971mr100061566b.45.1773822647758; Wed, 18 Mar 2026
 01:30:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
 <20260317-husb311-v2-5-03c17c986abe@flipper.net> <20260318-able-goose-of-downpour-db3bbd@quoll>
 <d925c15d-add5-4f2a-8eac-fa7dd1b56bf2@kernel.org>
In-Reply-To: <d925c15d-add5-4f2a-8eac-fa7dd1b56bf2@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 12:30:30 +0400
X-Gm-Features: AaiRm51FSOw7GXPkE6PrP7Z08J3AwH80SUW7rhgBPEdKkIl_8cJ7xjS_zqUlAVs
Message-ID: <CAKTNdwH7RswOSBZyVKvsHfhZ3-xwyDs7ywOHuafMFb1-xNf0PA@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add HUSB311 Type-C
 controller on RK3576 EVB1
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Gene Chen <gene_chen@richtek.com>, 
	Heiko Stuebner <heiko@sntech.de>, Yuanshen Cao <alex.caoys@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_013051_752978_06CA73A4 
X-CRM114-Status: GOOD (  17.96  )
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

T24gV2VkLCBNYXIgMTgsIDIwMjYgYXQgMTI6MTnigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gMTgvMDMvMjAyNiAwOToxNywgS3J6eXN6dG9m
IEtvemxvd3NraSB3cm90ZToKPiA+IE9uIFR1ZSwgTWFyIDE3LCAyMDI2IGF0IDEwOjA4OjAyUE0g
KzA0MDAsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4+IFJvY2tjaGlwIFJLMzU3NiBFVkIxIGJv
YXJkIGhhcyBhIEh5bmV0ZWsgSFVTQjMxMSBVU0IgVHlwZS1DIGNvbnRyb2xsZXIgb24KPiA+PiBp
dHMgVHlwZS1DIE9URyBwb3J0LCB3aGljaCBhbHNvIHN1cHBvcnRzIERpc3BsYXlQb3J0IEFsdGVy
bmF0ZSBNb2RlLgo+ID4+Cj4gPj4gQWRkIHRoZSByZXF1aXJlZCBEVCBub2RlcyB0byBlbmFibGUg
YmFzaWMgSFVTQjMxMSBvcGVyYXRpb24uCj4gPj4KPiA+PiBOb3RlIHRoYXQgZm9yIGZ1bGwgc3Vw
cG9ydCBvZiBtb2RlIGFuZCBvcmllbnRhdGlvbiBzd2l0Y2hpbmcsIHRoZSBVU0JEUAo+ID4+IFBI
WSBzY2hlbWEgbWF5IG5lZWQgdG8gYmUgZXhwYW5kZWQsIHN1Y2ggYXMgaW4gWzFdLiBUaGlzIGlz
IGxlZnQgb3V0IGZvcgo+ID4+IG5vdyB1bnRpbCB0aGUgcmVzcGVjdGl2ZSBzY2hlbWEgaXMgZmlu
YWxpemVkIGFuZCBtZXJnZWQuCj4gPj4KPiA+PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtcm9ja2NoaXAvMjAyNjAzMTMtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12My0xLTNlOGZl
ODlhMzViNUBjb2xsYWJvcmEuY29tLwo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENo
YXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gPj4gLS0tCj4gPj4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEwLmR0cyB8IDIwICsrKysrKysrKysrKysrKysr
KysrCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCj4gPgo+ID4gRFRTIHBh
dGNoIG11c3Qgbm90IGJlIGluIHRoaXMgcGF0Y2hzZXQuIERvbid0IG1peCBpdC4KPgo+IEluIGNh
c2UgSSBhbSB0b28gdmFndWU6IGJ5IGRvbid0IG1peCBpdCwgSSBtZWFuIC0gc2VwYXJhdGUgRFRT
IGNoYW5nZXMKPiB0byBpbmRlcGVuZGVudCBwYXRjaHNldC4gVGhleSBjYW5ub3QgYmUgY29tYmlu
ZWQgaW50byBVU0IgcG9zdGluZy4KClRoYW5rcyBLcnp5c3p0b2YuIEkgd2lsbCBzcGxpdCB0aGVt
IG91dCBpbiB0aGUgbmV4dCBzdWJtaXNzaW9uLiBJCnRoaW5rIGl0J3MgaW1wb3J0YW50IHRvIGZp
cnN0IGFncmVlIG9uIHRoZSB1c2Ugb2YgZmFsbGJhY2sgY29tcGF0aWJsZXMKYW5kIHRoZSBiZXN0
IHdheSB0byBoYW5kbGUgdGhlIChhbHJlYWR5IHF1ZXVlZCB1cCBpbiBuZXh0KSBFVDczMDQKcGF0
Y2hlcyB0aGlzIGN5Y2xlIGJlZm9yZSB0aGVpciBiaW5kaW5ncyBoaXQgbWFpbmxpbmUuIFRoZW4s
IEkgY2FuCnJlYmFzZSBhbmQgc3F1YXNoL3NwbGl0IGV2ZXJ5dGhpbmcgYXMgcmVxdWlyZWQuCgpC
ZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
