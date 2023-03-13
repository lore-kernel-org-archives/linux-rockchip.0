Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BF5C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 18:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaow5S8OhSSl1OKJMmQaQiWenJ4P0dL40i6NYR6RcJU=; b=mBYJYr/4ftwCXj
	olVmiM7Vbx/9Vj9s+DwvpE4ktrzK3XJ1bJOaZMsXHdHLUABuzaPt/iaw/F5GtdKn5m5MEyz55GAtK
	C/j8EQ/XcT04qSwOz7w5Isu7nXFApDfvY/UvWFxqmNnepp9lN+KV4UETEcGnlsbpmA3vq0CXnwhC9
	p6LqNgJdadT2juPmcHI1jQzGXCvqQXBpmY5/z7NYZe8fRu2ALR/bIsbyI/nEX0g8b1ar39qScDkmw
	1+HMVYBPc6cMKc5v/eHQAHVBuXmTjr00qekTCgMJse/NHJA3nYOnBjrRj3Akt8BRFXL1YNmfgBATX
	dObb5fNjKLBh2iQ6eJsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbn5f-007KqJ-WB; Mon, 13 Mar 2023 18:40:12 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbn5O-007KhC-Qm
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 18:39:57 +0000
Received: by mail-ed1-x529.google.com with SMTP id da10so52673139edb.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 11:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678732787;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9zExCwPnErlKajEOP0iCBdbzhLSrwamo47isrOodA8E=;
        b=uIeD7q3LNKkRWYZ9x8e/DAt+K6iRlUftQBydBEx4UHpvBDJR0suSy6kKS6TldE9c34
         SmKeIpWFcWo2C4Q8oCZBpXd9MrPJICfDSlUXHnSWoW9QBQCzXO5kW1+Rc0/OzP7YdHjr
         YpKt/FL3vDjk59/IKcM3Hjl0tBFQXWnZfqUBKEkQplyCg9nu7co6+ODh1oOaxYAjiqhu
         oVN62b79jjOSFMcBGMCdjJVHqf4qucXnYktTu9HEOlEs5cv3IKf2DHByIFn2kf4CFeMG
         rqUkBqFdPK7U7r5Tw10fD7v2Zb+cJdcd3N7no0lHMaGkFh8m+9+A3aLpKVdabeeaNxqM
         ZFbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678732787;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9zExCwPnErlKajEOP0iCBdbzhLSrwamo47isrOodA8E=;
        b=GMxjBLP991LdF1hA5gohsa3N1POLuWZ6MpB6lwYkgEVtGkOfIYSv+TFmSptwjhOgjc
         WzBvUzDzex/vXSeV2uNN2xwo28BRsKNNoHEZL2Xjq4ZDql+6HLBp2KeUqOdx4uG9kD50
         6bc4WpkdmCl4lYLsuCgI+kY/dy7SK6ZVb004y/Ji0lxZ0YHbVR9K1Xmn/xic5ed0f2Wk
         SMaJJveNv4liLedx+yhEwaU8Hq8xVxOez5V0IybIT/WNpN8Ny4pMieg5ooSKs/auuk8n
         utITbNvwOhVHOBVXsyobVXZh6pxiL6+ZRZHiFq5vzsOND3rEWrlQtAYRlxu6EGjiGX0M
         FMmA==
X-Gm-Message-State: AO0yUKXKDlMs1cHfED8jTLhX7KmxICZ24NySKQ5a1tXTuXcjjecZ4btd
	6G2Rd0ffZVVO7yj/SR1YPuRNpQ==
X-Google-Smtp-Source: AK7set81xBbnSqYRHnX0F1ox3kM2TNm7ygVSDDdDqZIaM3C2UJ2RgnK9MzZ5m7B9CkB5dN74bv4LDw==
X-Received: by 2002:a17:906:178f:b0:878:72d0:2817 with SMTP id t15-20020a170906178f00b0087872d02817mr33528937eje.29.1678732787544;
        Mon, 13 Mar 2023 11:39:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:69db:4882:d071:27c4? ([2a02:810d:15c0:828:69db:4882:d071:27c4])
        by smtp.gmail.com with ESMTPSA id c37-20020a509fa8000000b004fb17f10326sm133916edf.10.2023.03.13.11.39.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 11:39:47 -0700 (PDT)
Message-ID: <08e98d1d-e79b-fe7e-0d59-827f72277fc5@linaro.org>
Date: Mon, 13 Mar 2023 19:39:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 01/16] spi: armada-3700: Drop of_match_ptr for ID table
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: Kamal Dasu <kdasu.kdev@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>,
 Andi Shyti <andi@etezian.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
 <7a65d775-cf07-4393-8b10-2cef4d5266ab@sirena.org.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7a65d775-cf07-4393-8b10-2cef4d5266ab@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_113954_974422_C85C3C6C 
X-CRM114-Status: GOOD (  13.52  )
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

T24gMTMvMDMvMjAyMyAxNDo1NSwgTWFyayBCcm93biB3cm90ZToKPiBPbiBGcmksIE1hciAxMCwg
MjAyMyBhdCAxMToyODo0MlBNICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBU
aGUgZHJpdmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUgc28gdGhlIHRhYmxlIHNo
b3VsZCBiZSBhbHdheXMKPj4gdXNlZCBhbmQgdGhlIG9mX21hdGNoX3B0ciBkb2VzIG5vdCBoYXZl
IGFueSBzZW5zZSAodGhpcyBhbHNvIGFsbG93cyBBQ1BJCj4+IG1hdGNoaW5nIHZpYSBQUlAwMDAx
LCBldmVuIHRob3VnaCBpdCBpcyBub3QgcmVsZXZhbnQgaGVyZSkuCj4+Cj4+ICAgZHJpdmVycy9z
cGkvc3BpLWFybWFkYS0zNzAwLmM6ODA3OjM0OiBlcnJvcjog4oCYYTM3MDBfc3BpX2R0X2lkc+KA
mSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+
IAo+IEl0IHdvdWxkIGJlIG11Y2ggYmV0dGVyIHRvIGZpeCBvZl9tYXRjaF9wdHIoKSBhbmQvb3Ig
dGhlIG1vZHVsZSBzdHVmZgo+IHRoYXQgYWxzbyByZWZlcmVuY2VzIHRoZSBtYXRjaCB0YWJsZSBo
ZXJlLgoKV2h5PyBUaGUgcmVjb21tZW5kYXRpb24gaXMgaW4gZ2VuZXJhbCBub3QgdG8gdXNlIG9m
X21hdGNoX3B0ciwgYmVjYXVzZQp0aGVyZSBhcmUgbGl0dGxlIGJlbmVmaXRzIGJ1dCBpdCBkaXNh
YmxlcyBtYXRjaGluZyB2aWEgUFJQMDAwMS4gSm9uYXRoYW4KaW4gcGFyYWxsZWwgdGhyZWFkIGV4
cGxpY2l0bHkgc2FpZCBvZl9tYXRjaF9wdHIgc2hvdWxkIGRpc2FwcGVhciBhbmQgaGUKaXMgbm90
IGFjY2VwdGluZyBhbnkgbmV3IGNvZGUgd2l0aCBpdC4gQW5kIGluIGdlbmVyYWwgaGUgaXMgcmln
aHQuCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzAzMTExODM1MzQuMWQwZGZkNjRA
amljMjMtaHVhd2VpLwoKYW5kIGVhcmxpZXI6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTQ0NGY1Zjg1
NGIzNQoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
