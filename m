Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6370C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 18:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UftmkcGv0dX/3euBJhzYtv3wOoe7BF/8msr/M/JH3Tw=; b=qHScn8dvc9o9rl
	TCWlsNnHkd8Yx+SrqS54eJFvzGnpJiUA7L4JP+g9iiFrWTh2MzguuO/gZsRGOoY/RNqhovITHsuuK
	3JUZhbqsjlBySb6tRJWlLDKgBQcQN75edQNsiYADPNZmSGt5ynUHItk7u2D7jFRJi1LVWf5JX0dRE
	S1MPoXCC4e+8uZa/rKtON1gaM7UyFU+j04IhfIz+WvxL3AgYvzRmMfd2PmcpB+B86pbEDZV/stwb/
	JsVMalUG4KxWPQ3gqkGRa+P6JwjY/k5qB6ILLLyUVULYVNJfhv3GJm2qNAFlyP6CQtC/4juw4J9EU
	I6icLq4mLYrgQE7oPOKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnlCo-00AoEV-BN; Sun, 08 May 2022 18:00:30 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnlCd-00AoC7-Ni; Sun, 08 May 2022 18:00:21 +0000
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-2ef5380669cso123694787b3.9; 
 Sun, 08 May 2022 11:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+njCfc3VDaggbjwDxdQjFEEmHvGRLPJb/PQlC1knYZ4=;
 b=JbmHMLbkqurs+zTb73d03fNNXr6ZITEAjgQkchJHaLLeV1DVKVzhzD7UEhKg3VPbKA
 ceuyEntVPt77r9m6WzOJF3pFpxN/Eo//hadGctVx1WKWC5WgAuaGaVN46Y5CEtHqjB/0
 KzNsW2kFmyMscNDk5aJSNTXnPNbR1G50K+LddsfxFSg/HLdp+VVOVfFpWKqcNkZyP8x0
 edntJZDQbSywzUBXiYyP84hCD5s3Ne7G8xqE6qEEsfx/C+AfM00vNkLw3DajxzRNlqJI
 wpnv9XfG3sJsW2Ziy+b1SoeDugyiubck9t1q1y0karRrgZHa0caNpEOzbIx/GA8Z0tdd
 WVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+njCfc3VDaggbjwDxdQjFEEmHvGRLPJb/PQlC1knYZ4=;
 b=SbPCm1rYoPcW7hKpIWMFlim2c0lUkdqCcUIeV/ssJsmfmKUby1+LLxB3o32ou/gIE6
 IDXwODY9DVsQEFqsLd0wIqvQ5yaPZAWhHJVkLlUGq0l8rlYsmRqIQlSl08blQORVcN3G
 C5cuyzBi2ijVnOF765q6a+/oZ22sDayVzoMuKb9NcslhM2iFARL6m1bgY5LpZx6cx3FL
 +D+J7xy5Lhr1iBTvjErZ80yZ1csc5/E7Qomel0GFgk5in/6lYN8mkAAGCz3+IDdBgn3W
 WDu/ZtGaRHtCY8apMpEQKKOXUX4GRGT4MYmru/asz/4S3Hklzagnwgm4RaSMi2/3Zbo7
 4K5Q==
X-Gm-Message-State: AOAM533f7N1rqMyYyNQktgGgsGBDJpbFWJpkNXPe3C7TY4vvH+z/MRQN
 qG+lrI37YRupl/tAnbN25eS10K3AuRNmMojQOjo=
X-Google-Smtp-Source: ABdhPJw6cIDfypX3SJ4uKoT1hkXtYscVELpETof/gkGzQRhiepnFiY8aYzYSXcHxPEDoaxJB1B18+S8SDTmmtaYjBHg=
X-Received: by 2002:a81:488b:0:b0:2f7:cc43:ae4c with SMTP id
 v133-20020a81488b000000b002f7cc43ae4cmr11119913ywa.414.1652032814263; Sun, 08
 May 2022 11:00:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
In-Reply-To: <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 8 May 2022 14:00:02 -0400
Message-ID: <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 dri-devel@lists.freedesktop.org, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_110019_799212_B908415D 
X-CRM114-Status: GOOD (  14.53  )
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

T24gU3VuLCBNYXkgOCwgMjAyMiBhdCAxOjM2IFBNIFBpb3RyIE9uaXN6Y3p1awo8cGlvdHIub25p
c3pjenVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBw
cnpleiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3IGRuaXUgMDguMDUuMjAyMiwg
byBnb2R6LiAxODo1MzoKPiA+Cj4gPj4KPiA+PiBJIHdhcyB0cnlpbmcgdG8gZG8gdGhpcyBpbiBk
dHMgaHR0cHM6Ly9wYXN0ZWJpbi5jb20vNjd3dTlRckggYnV0IGNlYyBpcyBzdGlsbCBub24tZnVu
Y3Rpb25hbAo+ID4+Cj4gPj4gTWF5YmUgWW91IGhhdmUgc29tZSBoaW50cy9wb2ludGVycyBoZXJl
Pwo+ID4KPiA+IEFkZCB0aGUgZm9sbG93aW5nIHRvIHRoZSBIRE1JIG5vZGU6Cj4gPiBhc3NpZ25l
ZC1jbG9ja3MgPSA8JmNydSBDTEtfSERNSV9DRUM+Owo+ID4gYXNzaWduZWQtY2xvY2stcmF0ZXMg
PSA8MzI3Njg+Owo+Cj4gSSB0aGluayBpIGhhdmUgdGhpcyBhbHJlYWR5IChwbHMgc2VlIEwyMzEv
TDIzMiBpbiBodHRwczovL3Bhc3RlYmluLmNvbS82N3d1OVFySCApCgpJIHNlZSB5b3UgaGF2ZSBo
ZG1pdHhtMV9jZWMgYXMgdGhlIGVuYWJsZWQgcGluLiBBcmUgeW91IGNlcnRhaW4gaXQncwp0aGUg
bTEgcGluIGFuZCBub3QgdGhlIG0wIHBpbj8KCj4KPiA+Cj4gPj4KPiA+PiBicgo+ID4+Cj4gPj4g
YnR3OiBteSBkdHMgZ2l2ZXMgbWUgd29ya2luZyB1c2IyIHBvcnQwL3BvcnQxIGFuZCB1c2IzIHBv
cnQwLiBidXQgdXNiMyBwb3J0MSBpcyBub24td29ya2luZwo+ID4+IG1heWJlIHlvdSBrbm93IHdo
YXQgaXMgbWlzc2luZz8KPiA+Cj4gPiBZb3UncmUgbWlzc2luZyAmdXNiMnBoeTBfb3RnLgo+Cj4g
TWF5YmUgaSBtaXNzIHNvbWV0aGluZyBidXQgYWRkaW5nOgo+Cj4gJnVzYjJwaHkwX290ZyB7Cj4g
ICAgICAgICBwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdXNiX2hvc3Q+Owo+ICAgICAgICAgc3RhdHVz
ID0gIm9rYXkiOwo+IH07Cj4KPiBicmVha3Mgd29ya2luZyB1c2IzIHBvcnQwCj4gKHNvIG5vbmUg
b2YgdXNiMyBwb3J0cyBhcmUgd29ya2luZykKClBsZWFzZSBwYXNzIGFsb25nIGEgZnVsbCBkbWVz
ZyBpbiB0aGlzIGNvbmZpZ3VyYXRpb24uCgo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
