Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142BC2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 15:57:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B6296135C
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 15:57:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B6296135C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GDuGWZazBeoXAv6XBVsQIBt/7qaqVbHkUby6MisKutY=; b=MY2xxGtNIltyrtebc5ChGg0XRK
	ZTPQQ73iQGII097VlzJpI1W4VfjD5xUnhcktzvAifa/zPlDvQnwu5hw0MvSqibCu9kmbV/1A2XAMn
	UPdbLUteKQds4nZJ/6KOJVoEI9GRfIrWrdk5TEGKxr2aB1vvaMtyZOT2tJuQAnCCtJVONtPDRtHrC
	qGp2nErUzFwvpuDPQFty4VW7sDi3okSF+yn+/Iettc61FBXJ+4p/EQMW3h13HSG7senLGnf91Tu7p
	clTKDGe5m3nQRLTHJN5k2OH0ItZE+F8aqGSvS3x5t3Jdn1czH950frKcp8D8NepDdJD5U4PodeAdp
	sudVsthA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmerq-00Glrf-9N; Fri, 28 May 2021 15:57:46 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmern-00Glpc-FI
 for linux-rockchip@lists.infradead.org; Fri, 28 May 2021 15:57:45 +0000
Received: by mail-wm1-x336.google.com with SMTP id r13so1903191wmq.1
 for <linux-rockchip@lists.infradead.org>; Fri, 28 May 2021 08:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7pmaZyXtM4AylBjc9qEm89kM4k0ziUNZ9Q5i42rDzWM=;
 b=fvi8pmHmARJkZGgKCqyDKLScFBrSY0l3kaR5OLzc6H+XzE6JnomEzjb4Lc1jf/E4jc
 UM0nI3C7KwptyQC655UoSunBZG9gbrk0YGE4mzIBphHqOZYZseRPTO8uukKA0STHYKZY
 mvDgNIIOuJbY7q8Fc3ehl0aIF/Dp6weMxHqunHxo7cH6p1MAaq86Sf3hisazalWXyvey
 8Bi4lkqy9Lg7Un+OyaNY2M3W7J3Fl0WhL5TkMM9eP11cn8QCO9amdroYt3KuaRHds5WN
 GSG7wMsXg+UofiVLRRHB8lZWV3HSuEf2/sBtEfm3nvEfYNicHifihx5zby7a9zM7SsUo
 9CTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7pmaZyXtM4AylBjc9qEm89kM4k0ziUNZ9Q5i42rDzWM=;
 b=kmTSqRMuyStPvtzk1FpBbpklaspDhgiIBwjvdiMj10hp6MHsJS0OpH5YpdOocaK89E
 wZV7/XR3wC7/JIaMGAZ/xHDOBSG98DhkMhILwHoUiBRjRWdUBak/crF6rHNMBZB6mhNV
 0VdhlUoljJ9ECz487Q+Ubpq7iUsQmzdQpjPAl1JECzpt5KCxicON+uvi3d8lo0lmwZEN
 CDNj2f+wpYQe3OLxrcsSJq4bJ4G68Qgjz0Gh48Z6Pae4a/h1OBSxlpxk4Yquh8KbqBDc
 aialJgkJvp9O+qmKGb1/Tm4j8cSfGhSQRXdJUs76zvRHVQ5uzcpjThoky721KJKCtTrb
 fIyw==
X-Gm-Message-State: AOAM5301NXy4bkzYJ0SX1kspfoT46GTkpL642ArhlQfr3ML+KVnErdea
 wvXVi7TrmubzNk5FS7fBe+DZXegsqbzgAA==
X-Google-Smtp-Source: ABdhPJxMTLIJocRenHHTPeek/Fl6d7thRubV729bcfU9aTOyb22v3Hh7R4kffL2OGh/WjkyXRhQ8mg==
X-Received: by 2002:a7b:c18d:: with SMTP id y13mr11619016wmi.91.1622217460940; 
 Fri, 28 May 2021 08:57:40 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:1d23:2234:5254:8179?
 ([2a01:e34:ed2f:f020:1d23:2234:5254:8179])
 by smtp.googlemail.com with ESMTPSA id c6sm7492788wrt.20.2021.05.28.08.57.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 May 2021 08:57:40 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert rockchip, rk-timer.txt
 to YAML
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com
References: <20210506111136.3941-1-ezequiel@collabora.com>
 <20210506111136.3941-4-ezequiel@collabora.com> <15819722.JCcGWNJJiE@diego>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <398f8cd1-59cb-369f-0356-85cc1a64bb28@linaro.org>
Date: Fri, 28 May 2021 17:57:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <15819722.JCcGWNJJiE@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_085743_603752_3807D4BE 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

T24gMjgvMDUvMjAyMSAxNzo1NiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgRGFuaWVsLAo+
IAo+IEFtIERvbm5lcnN0YWcsIDYuIE1haSAyMDIxLCAxMzoxMTozNiBDRVNUIHNjaHJpZWIgRXpl
cXVpZWwgR2FyY2lhOgo+PiBDb252ZXJ0IFJvY2tjaGlwIFRpbWVyIGR0LWJpbmRpbmdzIHRvIFlB
TUwuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFi
b3JhLmNvbT4KPiAKPiBjYW4geW91IGFwcGx5IHRoaXMgcGF0Y2ggdG8gdGhlIHRpbWVyLXRyZWU/
CgpZZXMKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3
LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNv
bS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1i
bG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
