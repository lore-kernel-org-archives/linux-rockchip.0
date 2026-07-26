Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF27C531FA
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jul 2026 14:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEQFCm8X/Iczd0GorwCHjVrpztYTzmn9gzouDHd/lCM=; b=R7uY3PnSY5hJYx
	voq6RUf7uDKhPHLYcK0YRKaagjYzG9ScfglL4GmKOMjw0A4Zx53zyfTxOlVkaZUty5p5wHQsBCtVd
	zdn9iJUvkm9H2d7yvEa9jHgMbL1xneqKSGT+gYu2YPMg1clDjVeueLC+GWCngRU8MO8liN0qrBNXh
	1/sXtcIqOKnZ4KGbBevyBxMRn1T5Bgip9nLj+NSDAv7rzXPdDfrHHJ1Z1GkdoYem3QYmwuT0aJhRK
	gC/09uoUEoiciXj7hFgTYPBdqX+CCsyavycGltoeQveMSr8Glc7NJd3hSJvi0/mgNwCzaf4UYUM0H
	Sb24sgIOMLytJd8aE1cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0Eh-00000001Fgf-1xcl;
	Sun, 26 Jul 2026 14:53:51 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0Ef-00000001FfW-0z3B
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Jul 2026 14:53:50 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-69fdfd98eb8so80174a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 07:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785077627; cv=none;
        d=google.com; s=arc-20260327;
        b=CbqUc03zFadQy4XnsWHLx9MTLflwIEffOht8EvrHkm/ojdYH4X1BifZntmsAaagZjt
         SBczz4NSwFdTphVZKXJcG4lcrhcpLypznfLVLeEbNL1iryblFONdD5wmg/P08N96fT8Q
         q6M5dc9+0S4xUqu31R8/h+eEM/f6TPJLRFwzbztgR9ct89C+reZ/xWLgm2+e9LUky9Hw
         94Y3tfom2EhCQY337jwKxPbD0HrHdVjwYScxCSz7zXH1KsjZLGBeimqs1rmg6mAswWHY
         pXNK1uR2L0l8Q9DHlpylnKn1oYmGr7Vrh6K8odnukyTdqrn/Eu6tyTboGPxrPugQ5/lC
         IdfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Xy1dPJ6HKi7tYjJxDc2Ha4OJQEIkMNVF9gLqcXcYzos=;
        fh=gU6kYvbdyEcjEYfmEjlNZkR9Iwo1Hv8jeGmIsEqCxY0=;
        b=fcp6EfYQSaFE00KjeFiPCQlUNWSo/E+1TuTVQ2gKgYGXPWoY5LKcDyJ+N+hDJbmJ+v
         cNeYMEPXilsS4lpIbQtW7ll0qtj0QomH+QGiqPHN7o8RuiipdAcR30Q8j8Ljox9yNwNn
         jZAVd1MbDu4prKpjoh8KWkb/7yTah9rO8FuuAM97HYvZcfs0AZ1HvumnJn6ESE1pHPib
         xl6D6Ke41HCCMODrH8RXjTQinNSL8bmiJLcIDzz4xrw/ZM1m2wl1PYJWiXKqeG0vDhQl
         /w4e++4nm6KD+2ArrZZHFvHvdmCfBLOEJjOqLYbNcv4sdiRk7/WChn5on3mjrFv0jBVR
         ISrg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785077627; x=1785682427; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Xy1dPJ6HKi7tYjJxDc2Ha4OJQEIkMNVF9gLqcXcYzos=;
        b=Ekd3CS3hKKyJSi/gx27tXl36itQsZdnczVRHm9k+CvbtHLfuoutQC+G2czA4/0whV/
         +HDoJYryuyTueyCaFwRi4nypNTYY79vp3bCmb1KLdVFJJaUluW442FEO/47cNhCUqISk
         IHKiSeUnocF3yN3JdTSht1IbPbbdT91sB45IaPzm148SkKwJfDGmgAi6EJu9ejwPgsnK
         kGfI3eoNsF+6xLg+l/u2qDGDscVrffDxPmyaCP6ApkdiP5hv2VYmbkxs4bNYXZ0mANNJ
         OsbQbL09BclVrM0Y1kkl6v/QFsMKV02SPqmSEqYyptO9znXjzwv73cm0tBt6mZnJFzDB
         apAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785077627; x=1785682427;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Xy1dPJ6HKi7tYjJxDc2Ha4OJQEIkMNVF9gLqcXcYzos=;
        b=Poa+Aa4V+7Be/0x0FiqBdTUoS+br0z3LoTb9BkRtaOYcf+vjOmH0L6LD4kVOjWUcHH
         UpkPbHNTq2f3WyRGE9Up7U4WPuRALq8gxzf5neOfiHl0NqTCJLgAMBKBmaMXa+Er6uDI
         Vpd+SEAg3W0TAXRobVZWnV+DcPY4RSt4UNs8l+5EtPg3x5hxSL7Fi5A5tx1sVfpZjRaw
         p0i3vLE2A4ttBium0QN8Jty7xwl84no4/9Ef4uuJ+pzWX/e38OstCdT2q3hcDOcPQgVO
         ECt5j/gBrKohv4AEAenN63bjPNWmlpqnLJ5XBx3BCpBL0djEF70CdT6ozoKEFIm0vige
         6QAQ==
X-Forwarded-Encrypted: i=1; AHgh+RoppJPWqhDzlbmxUXdl6R/xRvxwecSAR0GbkOHpFfLvMQfq+DvL7KXT6cFOnG0BcwVxR9arDib3VSjC8pTogg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKHCvlqs1/qrHVuRjjgPI81N9a0/nSmLIXLwRAgFD/25qwVGHU
	umwW1f4Eo/4dMsUp5FoAsUV04+3SimTtfzGSEJ+SwsckzH+kC6MYqdBQO40xlxWgzweX8OFdrWD
	WFaFh/h3CgikG4eeyazTg9hMjLmTdpJI=
X-Gm-Gg: AR+sD12bUVQgAHbI7McW4dlUr+ACepSgMh+LpTYRjB2gUwavOeNC5zRA3j2eHjty1/s
	QkusziXQsOvAvH55YbTLd2XshdT56qpztWg3WIk679bpmk6tLi2/MFmPXjvS3+IMbnv0+pUQW7Q
	8SwFItgfDvZtpLgARok28RENtW6buEFCXQo2DVUjoO3ulmg0tFDlRzMyiZXBcvymRFM6DQO8WbT
	YFEoi1GvEDTyS0JA1Azeye59I0cASoJnnjHclBksaQYip7pbz7yA3/19G0Qqg==
X-Received: by 2002:a05:6402:450e:b0:69e:1246:a86a with SMTP id
 4fb4d7f45d1cf-69fc0f3e1bfmr2140114a12.0.1785077626864; Sun, 26 Jul 2026
 07:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20260721-dcphy-rx-v1-v1-0-4fc83c0ccac9@gmail.com>
 <20260721-dcphy-rx-v1-v1-1-4fc83c0ccac9@gmail.com> <20260724-incredible-colorful-trogon-9df033@quoll>
In-Reply-To: <20260724-incredible-colorful-trogon-9df033@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Sun, 26 Jul 2026 22:54:21 +0800
X-Gm-Features: AUfX_myy7YsobI1pf_jlBSXk7SDYrWERjtETFkIdeKdn3VY9LKRwt38o3X4kakY
Message-ID: <CAPwA33JUWPoWokeTFmP9RR5AzBqy2v7cEA8NUNr1-eUKyaaKYA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: support
 per-direction phys
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_075349_292039_071266F6 
X-CRM114-Status: GOOD (  13.50  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiBGaWxlbmFtZSBtdXN0IGZv
bGxvdyBjb21wYXRpYmxlIG9yIGJpbmRpbmcgZmlsZW5hbWUsIHNvIHRoaXMgaXMKPiByb2NrY2hp
cCxyazM1ODgtbWlwaS1kY3BoeS5oIGZvciBleGFtcGxlLgoKV2lsbCByZW5hbWUgaXQgdG8gcm9j
a2NoaXAscmszNTg4LW1pcGktZGNwaHkuaCBpbiB2Mi4KClRoYW5rcywKSmFzb24KCktyenlzenRv
ZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4g5pa8IDIwMjblubQ35pyIMjTml6XpgLHkupQg
5LiL5Y2INTo0NeWvq+mBk++8mgo+Cj4gT24gVHVlLCBKdWwgMjEsIDIwMjYgYXQgMDY6MzU6MTlQ
TSArMDgwMCwgSmFzb24gWWFuZyB3cm90ZToKPiA+ICAgIGNsb2NrczoKPiA+ICAgICAgbWF4SXRl
bXM6IDIKPiA+IEBAIC04Miw2ICs5Miw2IEBAIGV4YW1wbGVzOgo+ID4gICAgICAgICAgICAgICAg
ICAgPCZjcnUgU1JTVF9TX01JUElfRENQSFkwPjsKPiA+ICAgICAgICAgIHJlc2V0LW5hbWVzID0g
Im1fcGh5IiwgImFwYiIsICJncmYiLCAic19waHkiOwo+ID4gICAgICAgICAgcm9ja2NoaXAsZ3Jm
ID0gPCZtaXBpZGNwaHkwX2dyZj47Cj4gPiAtICAgICAgICAjcGh5LWNlbGxzID0gPDE+Owo+ID4g
KyAgICAgICAgI3BoeS1jZWxscyA9IDwyPjsKPiA+ICAgICAgICB9Owo+ID4gICAgICB9Owo+ID4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1zYW1zdW5n
LWRjcGh5LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtc2Ftc3VuZy1k
Y3BoeS5oCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi42
MGY2NjMwZjU4YjMKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGlu
Z3MvcGh5L3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmgKPgo+IEZpbGVuYW1lIG11c3QgZm9s
bG93IGNvbXBhdGlibGUgb3IgYmluZGluZyBmaWxlbmFtZSwgc28gdGhpcyBpcwo+IHJvY2tjaGlw
LHJrMzU4OC1taXBpLWRjcGh5LmggZm9yIGV4YW1wbGUuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6
eXN6dG9mCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
