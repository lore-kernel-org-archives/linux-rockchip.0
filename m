Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED0DAFED9E9
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 00:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCunR+g/tGKvjxopcFctlyfbhmBsa7lEGXGGNo3sD78=; b=VVidA0FDqmuLJX
	YD1nfEvnJS14P11fp1uh75Mq2hOX2BBWulw+bnHsm8o2IxKRpN268tmnXA2d0bjcDAmO1H8xccA+A
	l2+afmW7yE0gj1YZd/USYxNYMv6gneZGhUvBhB6uwLezC0SDlnR1CtJdeqySNhkDM27ogC+2evFjO
	jpvqA65RRmY6OwE2qZODQtmY6+E+udpN3YitDKNuHsMwYUo0Q6wOJESasCoaFs1Wuns+PeuufF0eI
	kt+9DMlG5Rap5cWEdJATqPcv9McYcuA/redEgDZwbaoORifFyoEIRnzOrp02qiyAlIAEzRQ02h/Ur
	IUvzrzMItDa8RdxxVY1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2f18-00000007WFc-0RBN;
	Wed, 18 Mar 2026 00:44:10 +0000
Received: from mail-dy1-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2f15-00000007WFF-3MWV
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 00:44:09 +0000
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2ba9c484e5eso7610796eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2026 17:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1773794646; x=1774399446; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z3klIIEcX92zdVI267329I5bjpI/sVO4ClpefsxUOMo=;
        b=N1vYlWvcoC2gacgy7ie/E3hFqS+CJ4Elr6aXYdY9mcSmEdaH50WgTHBluJ+YCWQUiE
         NkxYe9pZriiesJaOgLwJWiQpwaUfrx9Ui55hU5bCyZ/vW0KtGP0/nAaJTBml1Gp04Xvn
         AVvWfSOp7wnoJMB1HbWEE0BAafuZu3SHXGrFHNHqZmBkitqu7xVJIT5IRoYCquQdxuUf
         lEaIs35mEUJx69uC3PfUGUqgMgAptng9PNJMNn3pWt3BtN4KbPkm8hkM+vP3fzNQDdMb
         aidhsIS0o+lEe3eNxPQGCotCOkViRdB0JTI1FzYLlU7z2ZfPrRz4U6+gkLyl6zjBGU/f
         Eb9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773794646; x=1774399446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z3klIIEcX92zdVI267329I5bjpI/sVO4ClpefsxUOMo=;
        b=L4fWLcn9P+R4gyZL5XomwI5Je86S9IR1FMNygnWArTK52Tt5HEmcY7XCthJEmqX6K+
         QxvIF9ZgMoZgXO3R+N/ayN04fB+imLHIFONt4CNp0J3bBRZzp4RvR4T4xOpUpC5MZon2
         f0BzsQyKUwXixvkKVWj1ttwnG2lNpCm7Q1Vz6K+93ukl9P/BKxQ+U/RET8wVJeR5jFAJ
         JSA0/ALoH148EakjWmhSCE6pxvawoFlwO6vp8BRX1PIqHoS79CWXaia8q9tMRs14x4zv
         uhD1+ghnoBDpSmVu19L8rKAik3Ib4Y7N90xKmlVSfBlFSM6qDb+cM7ZTLhEQUVyGuN4n
         PcEA==
X-Forwarded-Encrypted: i=1; AJvYcCVVSzdQc3HW6J/EXUGCZ+BF39xcMIKMwkiF3KU84m62MrunO8n5ixtQON726OvVvZOH+VeoXEErVw/wtxLi4g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqmJclZei4s1l+uT/rDHGOu0f/EXmEqoa9MQggaQdJrAzqwJQ7
	56TPS3D4nC5J4TEy++t9ljuBmtDxEGKkuHCehQcAXqI1gCB1/5719c5oym52Kr778g==
X-Gm-Gg: ATEYQzyPOO2w/GQHM1ibPLdryjhAs8pQA3RhsgwgRurmz7bPAtFLwHeUNLZU4qcHL9r
	AUfE1TKVoerGmvqfMYL/x+WSdfdNBS8aL4LLR0368SNUagrer4R175GMjm0y9bfghigEyZ1e9QQ
	LshnBNYGRt4IfcxBkWUrs/E/N4Sl5lbmlO1XBzZgJPtp4wbpdVzU1zCrCQn/IycrChDz+84jpX+
	K/AZepkhawY+vire2C1dWThu1DLCgKBOujWzla8TcJ7yVpCwNcyTa4a4sjXxnTMaN743doYA6zy
	TCYjHDraAKjpfBa4cZGaJzLe61eavjK+1dGF5sBVoxHuYCMFh8BmRbparV7nxDSzQrY1vQdpjfF
	ftJhqh7q3nEAIA8a1QIAtvceB9CzwK0GcdKTKCaeq7Kn0xZFks3HMs9Ny6SXe2hqr/V6rXAJSHH
	tNii4cSWBFfxMDuALYxvSNzG5LhP+jsQvPHvErN+S/38iHNX9h5SYts7vBV2CCtNhXB806na88y
	GbBDOGWnngiVH8KNw==
X-Received: by 2002:a05:7300:ad2d:b0:2ba:6723:503d with SMTP id 5a478bee46e88-2c0e5193913mr637584eec.20.1773794646317;
        Tue, 17 Mar 2026 17:44:06 -0700 (PDT)
Received: from ?IPV6:2804:7f0:6980:fbfc:7d22:811:8e46:acbe? ([2804:7f0:6980:fbfc:7d22:811:8e46:acbe])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0e55ee672sm1972724eec.28.2026.03.17.17.44.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 17:44:05 -0700 (PDT)
Message-ID: <c8f0883b-6000-4439-a716-4436100ffc25@pardini.net>
Date: Tue, 17 Mar 2026 21:44:00 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] clk: rockchip: rk3588: add I2S MCLK output gate
 clocks
To: Daniele Briguglio <hello@superkali.me>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
References: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_174407_853576_4EE7BC79 
X-CRM114-Status: GOOD (  11.85  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTYvMDMvMjAyNiAxMDowNiwgRGFuaWVsZSBCcmlndWdsaW8gd3JvdGU6Cj4gT24gUkszNTg4
LCB0aGUgZm91ciBJMlMgbWFzdGVyIGNsb2NrIChNQ0xLKSBvdXRwdXRzIHRvIGV4dGVybmFsIElP
Cj4gcGlucyBhcmUgZ2F0ZWQgYnkgYml0cyBpbiBTWVNfR1JGIFNPQ19DT042IChvZmZzZXQgMHgw
MzE4KS4gVGhlc2UKPiBhcmUgc2V0LXRvLWRpc2FibGUgZ2F0ZXMgd2l0aCBoaXdvcmQgbWFzayBz
ZW1hbnRpY3MuCj4gCj4gVGhlIFRSTSBkb2N1bWVudHMgdGhlIHJlc2V0IHZhbHVlIG9mIHRoZXNl
IGJpdHMgYXMgMCAoZ2F0ZSBvcGVuKSwKPiBidXQgaW4gcHJhY3RpY2UgdGhlIFJvY2tjaGlwIGZp
cm13YXJlIChCTDMxKSBtYXkgc2V0IHRoZW0gZHVyaW5nCj4gZWFybHkgYm9vdCwgcHJldmVudGlu
ZyB0aGUgTUNMSyBzaWduYWwgZnJvbSByZWFjaGluZyBleHRlcm5hbCBhdWRpbwo+IGNvZGVjcy4g
VGhlIGtlcm5lbCBzaG91bGQgbWFuYWdlIHRoZXNlIGdhdGVzIGV4cGxpY2l0bHkgc28gdGhhdAo+
IGF1ZGlvIGZ1bmN0aW9uYWxpdHkgZG9lcyBub3QgZGVwZW5kIG9uIGJvb3Rsb2FkZXIgcmVnaXN0
ZXIgc3RhdGUuCgpIaSBEYW5pZWxlLAoKVGhpcyBzZXJpZXMgZml4ZXMgRVM4Mzg4IGF1ZGlvIG9u
IGEgYm9hcmQgKE1la290cm9uaWNzIFI1OFgtUHJvKSB3aGljaCAKSSd2ZSBub3QgInlldCIgc2Vu
dCB0byB0aGUgbGlzdCBkdWUgdG8gbGFjayBvZiB0aW1lIGJ1dCBhbHNvIGJlY2F1c2UgCmFuYWxv
ZyBhdWRpbyB3YXMgbm90IHdvcmtpbmcuCgpXaXRob3V0IHRoZXNlIHBhdGNoZXMsIHRoZSBpMnMw
XzhjaF9tY2xrb3V0X3RvX2lvIGdhdGUgcmVtYWlucyBjbG9zZWQKKGVuYWJsZV9jb3VudD0wIGlu
IHRoZSBjbGtfc3VtbWFyeSksIGFuZCB0aGUgY29kZWMgcmVjZWl2ZXMgbm8gbWFzdGVyCmNsb2Nr
LiBEQVBNIHJlcG9ydHMgYWxsIHdpZGdldHMgYXMgcG93ZXJlZCBvbiBhbmQgcGxheWJhY2sgc3Ry
ZWFtcyBydW4Kd2l0aG91dCBlcnJvcnMsIGJ1dCB0aGUgaGFyZHdhcmUgcHJvZHVjZXMgbm8gc291
bmQg4oCUIGEgcmF0aGVyCmZydXN0cmF0aW5nIGZhaWx1cmUgbW9kZSB0byBkZWJ1Zy4KCldpdGgg
dGhlIHNlcmllcyBhcHBsaWVkIGFuZCB0aGUgYm9hcmQgRFRTIHVwZGF0ZWQgdG8gcmVmZXJlbmNl
CkkyUzBfOENIX01DTEtPVVRfVE9fSU8gZnJvbSB0aGUgY29kZWMgbm9kZToKCiAgICAgZXM4Mzg4
OiBhdWRpby1jb2RlY0AxMCB7CiAgICAgICAgIGNvbXBhdGlibGUgPSAiZXZlcmVzdCxlczgzODgi
LCAiZXZlcmVzdCxlczgzMjgiOwogICAgICAgICByZWcgPSA8MHgxMD47CiAgICAgICAgIGNsb2Nr
cyA9IDwmY3J1IEkyUzBfOENIX01DTEtPVVRfVE9fSU8+OwogICAgICAgICBhc3NpZ25lZC1jbG9j
a3MgPSA8JmNydSBJMlMwXzhDSF9NQ0xLT1VUPjsKICAgICAgICAgYXNzaWduZWQtY2xvY2stcmF0
ZXMgPSA8MTIyODgwMDA+OwogICAgICAgICAuLi4KICAgICB9OwoKYXVkaW8gcGxheWJhY2sgdGhl
biB3b3JrcyBjb3JyZWN0bHksIHRlc3RlZCBvbiBoZWFkcGhvbmUgb3V0cHV0OyB0aHVzOgoKVGVz
dGVkLWJ5OiBSaWNhcmRvIFBhcmRpbmkgPHJpY2FyZG9AcGFyZGluaS5uZXQ+CgpUaGFua3MgYSBs
b3QhCgotLQpSZWdhcmRzLApSaWNhcmRvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
