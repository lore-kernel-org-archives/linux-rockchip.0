Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE60C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 23:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJYFLz0crnvraR+h8NEUaNxWoi1gFWyG/SgbI++5lSQ=; b=TBWv5jHBuI7Zcp
	nN1OEoIV7JgR17L38XHZtzFc3H/cu9z0mm25KiYJopNmp0ijY27UHsvdho0Ulvyv3Ljpva7PaZJx7
	VC8CjIAmKgrCeShb2Af00DyPhrL9TEIpqCaFezgtkuz3DPG7ogxvy5p+o8lo9Z2VGLIc8/3nQG66c
	aUDmn+xjPlq7e2JSU4EuU+d0kfKtWayDNWVloThQYCAAkDIgxOiDUkWbwaN1bKcgzIPaTr5X0FSjl
	g6S6l2HQRQycm+h/dtsB+IssDbbqW7VYvZ9L4rVWote7LFRxXh0wUOH6dQwCtCxRSFAsWCF0Mlkd9
	+BCl+ipImPCbspsDsxSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxFwB-0018Wr-TQ; Mon, 21 Nov 2022 23:10:51 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxFw0-0018Tg-Ht; Mon, 21 Nov 2022 23:10:42 +0000
Received: by mail-wm1-x330.google.com with SMTP id ja4-20020a05600c556400b003cf6e77f89cso209559wmb.0;
        Mon, 21 Nov 2022 15:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=utZ5LumivO+OC9wzfTv52noCJX/L2vcsR/WMsYswU8Y=;
        b=mEymlC0lSrr8gCvp9nv53tYGEyd6zdngNlqDzkQ5YB5egbSbYshqR2VZ5GzRo443jy
         inbcFMd405X2ZmZLtdDrxvwtOw04bc8eXkzbSDpQal5JVgTnt6qrqsyqhuW9uTAxTrY5
         jLgysul5z+Va11u8bJ2dbilxPk8BzgDrmPciTwDBQBIK5qTE0JzOoA/V7QDSu07wzVD+
         1fRUss0cl8VnQYaCLM5iYjuTUerJ5Pcd2b0NTnNNP/YMmupBo1fb9oN33+JSyUsDhfRE
         fG0INJ/va2nYWbnnUtQlltgxkBtFPvztjV0bwyLSjUlPbEl+zkxxlMLtt5R9g83h6Ocw
         ivfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=utZ5LumivO+OC9wzfTv52noCJX/L2vcsR/WMsYswU8Y=;
        b=dfnAebkhDtRrI+d0c5UacRpjttABXyz//uSsadLMOZ8mk1BJX2PRRxBmBLcwAyhdCj
         BnRpzjOX/1al4YpUiqsjDrxBpBhgy/ylMljKtZCj3cDCD+6+YyMD/5K5HUVXiNzMKY2x
         tJpnx3954YzfryYvZjAjb6YewEwLkCwAVdZz/eVhCA7JVR9pxAapcAYvvTJ+seC4Yj9Y
         vQOzHbORa56tKd2sVgeVyMhLRDMx8KpwcBXOKdsLt0/dCSyhWrH46stoOI8QA4JQc+QM
         OTYP4t3GYX4C6It/ysu719v5WA9SwRu7VHu3olP+FcUZhmgrkqq6Xblrzl0xgVn8AiRM
         sn5w==
X-Gm-Message-State: ANoB5pnuwIZCNVq8ucO/2wclBFBYsfo+ElBEL/gQi4adZgyi0bZBdpYr
	J4mnxN152LJp56EDCioZoJtIoNXCqNBrt+sgNzVSudTl
X-Google-Smtp-Source: AA0mqf59gd0PxuJuOoz6ctMvQVZdwYBU10xhRwhWwUUI/QKk0XjLP15zbnj62qrWGOvz+sImByXUEWtpM/2Scp2qvhU=
X-Received: by 2002:a7b:c5c9:0:b0:3cf:cfea:904c with SMTP id
 n9-20020a7bc5c9000000b003cfcfea904cmr3760801wmk.33.1669072237720; Mon, 21 Nov
 2022 15:10:37 -0800 (PST)
MIME-Version: 1.0
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <20221121164116.GE15565@pengutronix.de> <TY3P286MB261119C709225F2DED97CF81980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
In-Reply-To: <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 21 Nov 2022 18:10:25 -0500
Message-ID: <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Shengyu Qu <wiagn233@outlook.com>, Michael Tretter <m.tretter@pengutronix.de>, 
	devicetree@vger.kernel.org, heiko@sntech.de, jacob-chen@iotwrt.com, 
	kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	michael.riesch@wolfvision.net, robh+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_151040_626538_BFE271F2 
X-CRM114-Status: GOOD (  24.28  )
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

T24gTW9uLCBOb3YgMjEsIDIwMjIgYXQgMTI6MzQgUE0gRXplcXVpZWwgR2FyY2lhCjxlemVxdWll
bEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4gd3JvdGU6Cj4KPiBIaSBTaGVuZ3l1LCBNaWNoYWVsLAo+
Cj4gT24gTW9uLCBOb3YgMjEsIDIwMjIgYXQgMjoxMyBQTSBTaGVuZ3l1IFF1IDx3aWFnbjIzM0Bv
dXRsb29rLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGksCj4gPiBJIHJlbWVtYmVyIHNvbWVvbmUgc2Fp
ZCB0aGF0IHJnYTIgaGFzIG9ubHkgMzJiaXQgYWRkcmVzcyBzcGFjZSBidXQgbm90IGhhdmluZyBh
IG1tdSBvciBtbXUgbmVlZHMgdG8gYmUgY29uZmlndXJlZC4gQmV0dGVyIGFzayBieSB5b3Vyc2Vs
ZiBpbiBwaW5lNjQgZGlzY29yZCBzaW5jZSBJJ20gbm90IHN1cmUgYWJvdXQgdGhhdC4KPiA+Cj4g
PiBTaGVuZ3l1Cj4gPgo+ID4KPiA+IOS6jiAyMDIy5bm0MTHmnIgyMuaXpSBHTVQrMDg6MDAg5LiK
5Y2IMTI6NDE6MTYsIE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRlPiDl
hpnliLA6Cj4gPiA+SGksCj4gPiA+Cj4gPiA+T24gVHVlLCAyMiBOb3YgMjAyMiAwMDowMToyOCAr
MDgwMCwgU2hlbmd5dSBRdSB3cm90ZToKPiA+ID4+IFNvbWVvbmUgZnJvbSBwaW5lNjQgZGlzY29y
ZCBmb3VuZCB0aGF0IFJHQTIgZG9lc24ndCB3b3JrIHByb3Blcmx5IG9uIG92ZXIKPiA+ID4+Cj4g
PiA+PiA0R0IgbWVtb3J5IFJLMzU2OCBkZXZpY2VzLiBBcmUgeW91IHN1cmUgY3VycmVudCBkcml2
ZXIgd29ya3Mgbm93Pwo+ID4gPgo+ID4gPkkgYW0gYWJzb2x1dGVseSBzdXJlIHRoYXQgdGhlIGRy
aXZlciB3b3JrcyBvbiBhIDJHQiBST0NLM0EgYm9hcmQuCj4gPiA+VW5mb3J0dW5hdGVseSwgSSBk
b24ndCBoYXZlIGEgZGV2aWNlIHdpdGggNEdCIG9yIG1vcmUgbWVtb3J5IGFuZCBJIGNhbm5vdCB0
ZXN0Cj4gPiA+dGhlIGRyaXZlciB3aXRoIHN1Y2ggYSBkZXZpY2UuCj4gPiA+Cj4gPiA+QXMgdGhl
IGRvY3VtZW50YXRpb24gZm9yIHRoZSBSR0EyIGlzIHRoZSBzYW1lIGluIHRoZSBUUk0gb2YgdGhl
IHJrMzI4OCBhbmQKPiA+ID5yazM1NjgsIEkgd291bGQgZ3Vlc3MgdGhhdCB0aGUgZHJpdmVyIGRv
ZXNuJ3Qgd29yayBvbiBhIHJrMzI4OCB3aXRoIG1vcmUgdGhhbgo+ID4gPjRHQiAoaWYgdGhlcmUg
aXMgc3VjaCBhIHRoaW5nKSBlaXRoZXIgYW5kIHRoZSBkcml2ZXIgbmVlZHMgdG8gYmUgZml4ZWQg
Zm9yCj4gPiA+Ym90aCBTb0NzLgo+ID4gPgo+Cj4gSW4gYW55IGNhc2UsIGlmIHRoZXJlJ3Mgc29t
ZSBraW5kIG9mIGlzc3VlIGl0IG11c3QgYmUgaW4gdGhlIGRyaXZlciwKPiBhbmQgbm90IGluIHRo
ZSBkZXZpY2UgdHJlZSBiaW5kaW5nIChpLmUuIHRoaXMgcGF0Y2hzZXQpLgoKQW4gdW5mb3J0dW5h
dGUgbnVtYmVyIG9mIFJvY2tjaGlwIGRyaXZlcnMgYnJlYWsgb24gcmszNTZ4IGJvYXJkcyB3aXRo
Cm1vcmUgdGhhbiA0R0Igb2YgcmFtLiBJJ3ZlIGZvdW5kIHJlcXVlc3RpbmcgbWVtb3J5IGFsbG9j
YXRpb25zIHdpdGgKdGhlIEdGUF9ETUEgZmxhZyBzb2x2ZXMgdGhlIHByb2JsZW0sIGFzIHRoZSBr
ZXJuZWwgb25seSBhbGxvY2F0ZXMKMzJiaXQgYWRkcmVzc2VzIGZvciBETUEgb24gcmszNTZ4LiBU
aGlzIGlzIHNpbWlsYXIgdG8gdGhlIGJ1ZyB3aXRoIHRoZQpJVFMgTVNJIGFsbG9jYXRpb25zLgoK
Pgo+IFJlZ2FyZHMsCj4gRXplcXVpZWwKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
