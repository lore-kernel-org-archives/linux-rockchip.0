Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98BBDC00140
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 11:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjYAP74H82X+AAXm4RNGJnMegPxa5xBBZqHUi5+0A9c=; b=JQosofUv6qyV3x
	bu7+xcBqjXwgEf0zTZNi5Cnr+N1v0TClGPnph5rVdOGM6izfoe3IhXMBuDSxWnOfObjZZ+dHhBUn+
	8i1QY8dvH5Y1cHqPg/ckk0qTY4fj+Mz/Qe5b2R/wc7KiCJwGGogSl4AeWoQ32vZgnJdUBLOQr42Wr
	16a7dokOm8yMHd+jXWld+8N3W8kT/jDAAsQXly4m2o54AWZ3cVv0/eje57sibt1CoBph7TyuUPkcS
	7YDezASWpBTouOXEv4X4ist3Xzx3f+4sb/+/DankRCw8bOGc0PuBdu9JwqjwzRhQv8PlGVsGjGtgA
	7+e3pH5fUR/oaBYmcG2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL19U-00DHVh-QI; Mon, 08 Aug 2022 11:42:32 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL19R-00DHSP-U7
	for linux-rockchip@lists.infradead.org; Mon, 08 Aug 2022 11:42:31 +0000
Received: by mail-lf1-x129.google.com with SMTP id f20so12216711lfc.10
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Aug 2022 04:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=pL87Fqs9PTMJ304pFnGS1YWG0FPpYwtTQJEDWykJS1Y=;
        b=hsC2y+8dl47fq/cyB5jqNdU+9t5zOkxnPhby5pK5ozIpOHz+vbhw8qEGoCKQ+ukChK
         AdcXQFjnSZWDHmf5JqFjmd/wWvx9zeSY0qWc7LwvYhHO8B5f7dM1sXMDz56q3m2EMnj/
         YPqxuihQZMbpJZbqAh+xJ077M/zyM67hcjjzvVJM1sqi1nSrnBf1CKAukDInEM1/ywDy
         qMkEjz4aUbWQiKJ3plo73b0100VDwKvCNh2Mwl0/HX7vpg0v0vcoottO+FK4Hygdyxkr
         cnytxlUKjEalMUKguRxakNA/XhmQirbAZXC+aa9gQforfnp7QLLElbPWuuc5egnpA/HT
         Ir0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pL87Fqs9PTMJ304pFnGS1YWG0FPpYwtTQJEDWykJS1Y=;
        b=3dhAfAU6kRhdXspF/MPcdwQRpO8vw7sO+dFy/OydQuOJUcjb7jSdqFzcd1Z0ybcg7l
         A/mEjHJ+6DvFeZCPXdPaY3LIoRaryRvBgw1AFDftywM6/WwDzGzqp2TSaIalCyturuoD
         Ysvj0dntAtDE1QJqvWzWXRPNcSk9kDvUts5aMV+eA6QBmVyIs6aMziHY00JhlxBuCnQN
         DqyFDiR3+CKNV2oNT7jFYQPzlHeLfPKhDTsRmPvVdddGnDtL2I6gPgI6+/E7r4SoC47f
         92b/mE4Xj5V1YudvjnLYVGSEOwByOIWMLaL7AyS9/d4+CWS+OMCkL8jdY6zhiBXA8QiE
         E6SA==
X-Gm-Message-State: ACgBeo1xAN7r5is+tAYflRvRnhuPsfaf2xO7HclBKcp9BPBwDuCeSJRm
	8GtZfTxsuwqlRRrHG0uPbKWCwQ==
X-Google-Smtp-Source: AA6agR7uQY9shl0hp2+z5QHs2BFUW0aA/OjGjkksM04+e/jE05tULLxoVs/bZclB54fR84ZQE3wJ/Q==
X-Received: by 2002:a05:6512:2622:b0:481:5b17:58e7 with SMTP id bt34-20020a056512262200b004815b1758e7mr6154823lfb.600.1659958944435;
        Mon, 08 Aug 2022 04:42:24 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id h28-20020ac24d3c000000b0048b18700dddsm1401868lfk.106.2022.08.08.04.42.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Aug 2022 04:42:23 -0700 (PDT)
Message-ID: <727e15b9-cc6a-5117-2c8f-3e78e9992565@linaro.org>
Date: Mon, 8 Aug 2022 14:42:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Content-Language: en-US
To: =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megi@xff.cz>,
 Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, martijn@brixit.nl,
 ayufan@ayufan.eu, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
 <20220805234411.303055-4-tom@tom-fitzhenry.me.uk>
 <6461a695-171a-b160-5406-b8ac31c5ba0e@linaro.org>
 <20220808111225.pslgct22eltiakiv@core>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220808111225.pslgct22eltiakiv@core>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_044230_043078_EE5B0A55 
X-CRM114-Status: GOOD (  11.32  )
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

T24gMDgvMDgvMjAyMiAxNDoxMiwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gSGVsbG8sCj4gCj4g
T24gTW9uLCBBdWcgMDgsIDIwMjIgYXQgMDk6MzU6NTVBTSArMDMwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPj4gT24gMDYvMDgvMjAyMiAwMTo0NCwgVG9tIEZpdHpoZW5yeSB3cm90ZToK
Pj4KPj4gWy4uLl0KPj4KPj4+ICsKPj4+ICsJLyogUG93ZXIgdHJlZSAqLwo+Pj4gKwkvKiBSb290
IHBvd2VyIHNvdXJjZSAqLwo+Pj4gKwl2Y2Nfc3lzaW46IHZjYy1zeXNpbiB7Cj4+Cj4+IHJlZ3Vs
YXRvci12Y2Mtc3lzaW4KPiAKPiBJbnRlcmVzdGluZ2x5LCBtb3N0IERUUyBmaWxlcyBpbiByb2Nr
Y2hpcC8gdXNlIGEgLXJlZ3VsYXRvcgo+IHN1ZmZpeCBhbmQgbm9uZSB1c2UgcmVndWxhdG9yLSBw
cmVmaXguIEFuZCB0aGlzIGlzIGluY29uc2lzdGVudAo+IGFjcm9zcyB0aGUgbGFyZ2VyIERUUyB0
cmVlLCBiZWNhdXNlIG91dHNpZGUgb2Ygcm9ja2NoaXAvIG1vc3QKPiBEVFMgdXNlIGEgcHJlZml4
Lgo+IAo+IENoZWNrZWQgYnkgZ3JlcCAtUiAncmVndWxhdG9yLip7JyB8IGdyZXAgLXYgc3RhdGUt
bWUKCkNhbiBiZSBhIHN1ZmZpeC4gSnVzdCBwaWNrIG9uZSBwYXR0ZXJuLgoKQmVzdCByZWdhcmRz
LApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
