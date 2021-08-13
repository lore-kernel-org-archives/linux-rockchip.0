Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33BCC4320A
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 13:00:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68645610A5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 13:00:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 68645610A5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yqRrMOuR/uTt1Ke8Hn0g+uAR/Po/Amp5EZ1hWmWbBBU=; b=zMsCoEfwqFFfXXRKJuApjrUtCK
	9JiWlYSEbcTQmJuMbe0rQwgcg1IvXxJKS1vqS+HSU4b0gX1hNqVClRUNUsfZt60NXadXKyzOKhXlR
	4fob1Cl2gPnlg8g/qd9FjruLdLs8tLoCjGt8LbVeRbw/RaBRW0rbQDr5ihHhf6i1LPQVjTPjDmVf6
	aES0RsQx/SdR7BT8pwiaQ77HuvC4W1RF8U0fgiRnbtgrJ/CLEC2afWE3DaLCqPpvcv/6onbMdOGaF
	wilXe3AxVlVodLrL7rKke7AV25fnnnl31sny+Bmg5wC/BGtFd2IcYetBo8IgZ2SjCUuy48Q5tO68z
	vDgBqkXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEWnI-00Ce0a-8t; Fri, 13 Aug 2021 13:00:16 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEWn2-00CdyB-UG
 for linux-rockchip@lists.infradead.org; Fri, 13 Aug 2021 13:00:04 +0000
Received: by mail-wr1-x433.google.com with SMTP id x10so6886761wrt.8
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Aug 2021 05:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yWKsfWgIhI0TmkD3FRabzZ//m5kfIayjEK0ZDnGZ6s4=;
 b=vIiYx0IelsaG/hrBCtDoZCmZyUe/mlHr8BH0fKaGZM3o14thAa3ZlrYebLrAJ0g5ni
 xbJD1IBbD3teW6jFcV5OgGef0p1LQEsbQCllgubM1mcx92zL//6SC4gBf2Vzj7H6bZB5
 G6r17IuQ3k13GufWz2TZaAARc6BDPtu+I0DyoQlSTICvgyZRux7OsVHNkl+N/uKkbGXz
 nfoxVgfehCwh3Nvh5XDteKWiildlbn8HHLQTGQj9laGcRj930cLtOTxxtbmind4tBklZ
 4k+/Zc0FY3tZzKPfAdjSsWHdHNkZd9ZiyRejShV+qfb2CLp6nr7UNfqaTsA/yXEAD53M
 EOZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yWKsfWgIhI0TmkD3FRabzZ//m5kfIayjEK0ZDnGZ6s4=;
 b=Jg2mLMD/apeZvoIwCrI+Ev6BbcaF1nZegPK6WyCWrC1c1458K6tlQnkf7vFOKoJOnH
 2YMrjV0bvilyawHZXIJIG/c/byVOL4Eq3YuQTjmW+JTBDO7pmAuJm8sjFcZfj5fZN7Sc
 feDBYtGjIofqFXmHwSUCzAr8LC/3/IIlkosYcJwoMKCluxGIR8QSAJhn0v2n9OFkITOc
 bMVjBJuPpprXEhXW0WHyvtZ1f7FW3iaBir3EToZGXuNmoSG/xt5/H0qekGOiMNhCofWk
 K3kF7kWhxMiJuaKyo5aulX7wLBBrkSnz+F+JPCtQoyRcKrP98wU5yHUPGWVOHfyZsq55
 gLLA==
X-Gm-Message-State: AOAM533sbSjXHERwnXrr1nvJsayVu3x1qdUiIHlqMDpl6sTbiMXllsaZ
 EywytB+rsGINHgjxMJyHa3j0Bw==
X-Google-Smtp-Source: ABdhPJyAHwssiTSZDaXEbvthIbu5h/A1+8A8mHSYd+P9R0IN3SJmtcI6vcwtwthw/fozS7xGYfVVCg==
X-Received: by 2002:adf:ffd2:: with SMTP id x18mr265844wrs.184.1628859598288; 
 Fri, 13 Aug 2021 05:59:58 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5df3:d0eb:3945:640d?
 ([2a01:e34:ed2f:f020:5df3:d0eb:3945:640d])
 by smtp.googlemail.com with ESMTPSA id h12sm1361290wmm.29.2021.08.13.05.59.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Aug 2021 05:59:57 -0700 (PDT)
Subject: Re: [PATCH v3] arm64: dts: rockchip: add thermal fan control to
 rockpro64
To: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210730151727.729822-1-pgwipeout@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <ad6d8025-977c-9ff2-81ff-a417df48231c@linaro.org>
Date: Fri, 13 Aug 2021 14:59:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730151727.729822-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_060001_004559_32808CF5 
X-CRM114-Status: GOOD (  20.10  )
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

T24gMzAvMDcvMjAyMSAxNzoxNywgUGV0ZXIgR2VpcyB3cm90ZToKPiBUaGUgcm9ja3BybzY0IGhh
ZCBhIGZhbiBub2RlIHNpbmNlCj4gY29tbWl0IDU4ODJkNjVjMTY5MSAoImFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBBZGQgUFdNIGZhbiBmb3IgUm9ja1BybzY0IikKPiBob3dldmVyIGl0IHdhcyBuZXZl
ciB0aWVkIGludG8gdGhlIHRoZXJtYWwgZHJpdmVyIGZvciBhdXRvbWF0aWMgY29udHJvbC4KPiAK
PiBBZGQgdGhlIGxpbmtzIHRvIHRoZSB0aGVybWFsIG5vZGUgdG8gcGVybWl0IHRoZSBrZXJuZWwg
dG8gaGFuZGxlIHRoaXMKPiBhdXRvbWF0aWNhbGx5Lgo+IEJvcnJvd2VkIGZyb20gdGhlIChyazMz
OTkta2hhZGFzLWVkZ2UuZHRzaSkuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR2VpcyA8cGd3
aXBlb3V0QGdtYWlsLmNvbT4KPiAtLS0KPiAKPiBDaGFuZ2Vsb2c6Cj4gdjM6Cj4gUmVtb3ZlZCB0
aGUgZ3B1IG5vZGVzIHRvIHByZXZlbnQgaW4tZmlnaHRpbmcgKHRoYW5rcyBSb2JpbiEpCj4gCj4g
djI6Cj4gQWRqdXN0ZWQgZmFuIHNldHBvaW50cyBmb3IgbGVzcyBub2lzZQo+IAo+ICAuLi4vYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpICAgfCAyOSArKysrKysrKysrKysr
KysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiBpbmRl
eCA2YmZmOGRiN2QzM2UuLjgzZGI0Y2E2NzMzNCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4gQEAgLTY5LDYgKzY5LDcg
QEAgZGl5X2xlZDogbGVkLTEgewo+ICAKPiAgCWZhbjogcHdtLWZhbiB7Cj4gIAkJY29tcGF0aWJs
ZSA9ICJwd20tZmFuIjsKPiArCQljb29saW5nLWxldmVscyA9IDwwIDEwMCAxNTAgMjAwIDI1NT47
Cj4gIAkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gIAkJZmFuLXN1cHBseSA9IDwmdmNjMTJ2X2Rj
aW4+Owo+ICAJCXB3bXMgPSA8JnB3bTEgMCA1MDAwMCAwPjsKPiBAQCAtMjQ1LDYgKzI0NiwzNCBA
QCAmY3B1X2IxIHsKPiAgCWNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfYj47Cj4gIH07Cj4gIAo+ICsm
Y3B1X3RoZXJtYWwgewo+ICsJdHJpcHMgewo+ICsJCWNwdV93YXJtOiBjcHVfd2FybSB7Cj4gKwkJ
CXRlbXBlcmF0dXJlID0gPDU1MDAwPjsKPiArCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKPiArCQkJ
dHlwZSA9ICJhY3RpdmUiOwo+ICsJCX07Cj4gKwo+ICsJCWNwdV9ob3Q6IGNwdV9ob3Qgewo+ICsJ
CQl0ZW1wZXJhdHVyZSA9IDw2NTAwMD47Cj4gKwkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKwkJ
CXR5cGUgPSAiYWN0aXZlIjsKPiArCQl9Owo+ICsJfTsKPiArCgpXaHkgdHdvIHRyaXAgcG9pbnRz
ID8KCldoeSBub3Qgb25lIGZ1bmN0aW9uaW5nIHRlbXBlcmF0dXJlIGFuZCBubyBsb3dlciAvIHVw
cGVyIGxpbWl0cyBmb3IgdGhlCmNvb2xpbmcgbWFwcyA/CgoKPiArCWNvb2xpbmctbWFwcyB7Cj4g
KwkJbWFwMiB7Cj4gKwkJCXRyaXAgPSA8JmNwdV93YXJtPjsKPiArCQkJY29vbGluZy1kZXZpY2Ug
PSA8JmZhbiBUSEVSTUFMX05PX0xJTUlUIDE+Owo+ICsJCX07Cj4gKwo+ICsJCW1hcDMgewo+ICsJ
CQl0cmlwID0gPCZjcHVfaG90PjsKPiArCQkJY29vbGluZy1kZXZpY2UgPSA8JmZhbiAyIFRIRVJN
QUxfTk9fTElNSVQ+Owo+ICsJCX07Cj4gKwl9Owo+ICt9Owo+ICsKPiAgJmVtbWNfcGh5IHsKPiAg
CXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+
IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93
IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29r
IHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3
dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
