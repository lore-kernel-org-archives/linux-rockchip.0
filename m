Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81CA7C04A95
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzZ2CKdZwnbZrgo36QMM7hAE1x7tqGq12BO1k07oVZA=; b=q8QzMXV8v97WVq
	/XcJrxYuJ1fhjH7zJT2KtMZbE4hLJejGk6tLCruVKgMq4blancWLXsC61jvaU/ul8R4udPn226FeN
	MJgEtr+mHErXeaqGFxYNGSZaysxKyZTkZd6uLaRBKHRv2YMb4QnqSg1Cmg0JLUm2H5iJnOLW07287
	SgdldRfPp37jG9lsTGb565U2SfHMpqoThSh8q3kWnB+y0e1iGPy+fw1hnGSKChbbQDtc9yGN2liW4
	K0V1T2kGopf9UpJTcrdSr4KcvCw9eIdqUZ5AZ/iA4DA8pvHahWYH/lugL2goO37drMKW/xnlWF9we
	Yj7miEDeEjMW8sT6V5/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omCQY-00CLbZ-JD; Sat, 22 Oct 2022 11:12:30 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omCQV-00CLai-9j
	for linux-rockchip@lists.infradead.org; Sat, 22 Oct 2022 11:12:28 +0000
Received: by mail-ed1-x529.google.com with SMTP id r14so14766337edc.7
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Oct 2022 04:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XkHBPe8kKp/EBO1kgCVV44yINTVx9+9WMF/ZWQU88KM=;
        b=hrLNxiuD7rGcoYoDFEG4FYJ/zZHCXK1tR2mH+JEjkDCh6yA6QjUPp6hoaTbZGI5xwI
         S0wosoyTQLKJZteniGi1EOiIC27IGNkYXTMMocUfW5VMrtxE6dN2ItO5DXXhvN+8j9gS
         H5urh1Mh8cAZU6X0H7Qk0CFxWioOf6qULmay65o9qqInJjxwFtI0329CssSoNf7bvXdv
         DGSy76oaDRXXtkJwyDKOdxWyVIXAOFDJVOdPJ22X1EPpoTGyOKXh1e3dV1UNWIv8Av3y
         9bfLKPDbpgWhV2bwmi+1h8ozn/pGs6jcFMH+3dRFmi3u3yI4CgmQ3FpOjrQCXg9ARbEA
         1ilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XkHBPe8kKp/EBO1kgCVV44yINTVx9+9WMF/ZWQU88KM=;
        b=PUU3mCv0tbAEy8bf8rO2lGfpnIZJktIsP3NprjchafIquKB7OEt4zm+Y84c0Cc2Gef
         qNHRivva530IzRHlibfyZNsajzdKf/dJDMtbgR2h27JWuiaB6xhMqzijDGoJdl0PgK31
         r0wY5q0LRz/wlOWAV0AlYCPxs/tGGqbsUdN9hylxwE8/TXR4BOj4mGEQbkXCGAO/9zfa
         RYU9IKuF+TSV5csAyKU3PRLfR9tuZ6jXXlx3oXFf1Gw7m50SCN2rtV+KV5yXlmFgt7Gi
         rWVuqhNIkvLs+nIfurYOW2YJTvrdNRG7xrb8VFe2T3YA5iUJyKDqBUEkqDnb7YYnOvK0
         5Kbw==
X-Gm-Message-State: ACrzQf2rpgxOjfqIif+o1YgGNJnrGFdEdJZ/gKXdWFj21Iam0YS5mvKk
	m7a9qiND+Q1QIAGdNkfJ+DRHdQ==
X-Google-Smtp-Source: AMsMyM5sbHVdjq9chPJBv2v73OaTQ6ZtNtFRPn38AtlSsWcq8cx5eu0OlB4Dk1p4BQXHMJFueZyYOg==
X-Received: by 2002:a05:6402:1911:b0:45c:be41:a879 with SMTP id e17-20020a056402191100b0045cbe41a879mr21645066edz.322.1666437144931;
        Sat, 22 Oct 2022 04:12:24 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:25b:e73e:85eb:ae6e? ([2a05:6e02:1041:c10:25b:e73e:85eb:ae6e])
        by smtp.googlemail.com with ESMTPSA id hp21-20020a1709073e1500b0079800b8173asm3338667ejc.158.2022.10.22.04.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 04:12:24 -0700 (PDT)
Message-ID: <2b0fe8c2-674a-3b44-16aa-d3008b1271c3@linaro.org>
Date: Sat, 22 Oct 2022 13:12:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] thermal: rockchip: Support RK3588 SoC in the thermal
 driver
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>,
 kernel@collabora.com
References: <20221021174721.92468-1-sebastian.reichel@collabora.com>
 <20221021174721.92468-2-sebastian.reichel@collabora.com>
 <2aafa6cc-a7de-0b7a-571f-04593ad53787@linaro.org>
 <7276280.TLKafQO6qx@archbook>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <7276280.TLKafQO6qx@archbook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_041227_397670_D39F191C 
X-CRM114-Status: GOOD (  17.38  )
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

T24gMjIvMTAvMjAyMiAxMDo0MywgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgoKWyAuLi4gXQoK
Pj4gV2hhdCBpcyBUT1AgYW5kIENFTlRFUiA/Cj4+Cj4+IFRoZXJlIGFyZSA0IEJpZ3Mgb24gdGhp
cyBwbGF0Zm9ybSBidXQgdHdvIHNlbnNvcnMgPwo+IAo+IEFzIGZhciBhcyBJIGtub3csIHRoZSBm
b3VyIGJpZyBjb3JlcyBpbiB0aGUgU29DIGFyZSBhcnJhbmdlZCBpbiB0d28KPiBjbHVzdGVycyBv
ZiB0d28gY29yZXMgZWFjaCwgc28gb25lIHRlbXBlcmF0dXJlIHNlbnNvciBmb3IgZWFjaAo+IGNs
dXN0ZXIuIEFzIGZhciBhcyBJIGNhbiB0ZWxsIGVhY2ggQ1BVIGluIGEgY2x1c3RlciBzaGFyZXMg
aXRzIHZvbHRhZ2UKPiB3aXRoIGl0cyBwYXJ0bmVyIENQVSBjb3JlIGluIGl0cyBjbHVzdGVyLgoK
T2ssIEkgZm91bmQgc29tZSBtb3JlIGRldGFpbHMgb24gdGhlIGRhdGFzaGVldCwgcGFnZSA3LTgu
CgpTbyBpdCBpcyBhIGJpZyAiQ2x1c3RlciIgd2l0aCB0aGUgNCBCaWcgY29yZXMuIFRoZXkgc2hh
cmUgdGhlIHNhbWUgY2FjaGUuCgpUaGVyZSBpcyBvbmUgcG93ZXIgZG9tYWluIHBlciBjb3JlIChj
cHVpZGxlKQoKVGhlcmUgYXJlIHR3byBwZXJmb3JtYW5jZSBkb21haW5zIChjcHVmcmVxIHggMikK
ClNvIGl0IG1ha2VzIHNlbnNlIHRvIGhhdmUgb25lIHNlbnNvciBwZXIgcGVyZm9ybWFuY2UgZG9t
YWluIHRvIG1pdGlnYXRlIAp0aGUgdGVtcGVyYXR1cmUuCgo+IElmIHlvdSBoYXZlIGFjY2VzcyB0
byB0aGUgVFJNLCBpdCBjb250YWlucyB0aGUgZm9sbG93aW5nIGxpbmUgaW4KPiBwYXJ0IDEgb24g
cGFnZSAxMzcyOgoKVW5mb3J0dW5hdGVseSBubywgSSBkb24ndCBoYXZlIGFjY2VzcyB0byB0aGUg
VFJNLiBCdXQgSSdsbCBiZSBoYXBweSBpZiBJIApjYW4gOykKCj4gCVN1cHBvcnQgdG8gNyBjaGFu
bmVsIFRTLUFEQyAobmVhciBjaGlwIGNlbnRlciwgQTc2XzAvMSwgQTc2XzIvMywKPiAJRFNVIGFu
ZCBBNTVfMC8xLzIvMywgUERfQ0VOVEVSLCBOUFUsIEdQVSkKPiAKPiBJIGFzc3VtZSBvbmUgb2Yg
IlRPUCIgYW5kICJDRU5URVIiIGlzICJuZWFyIGNoaXAgY2VudGVyIiwgdGhlIG90aGVyIGlzCj4g
UERfQ0VOVEVSLCB3aGF0ZXZlciB0aGF0IG1lYW5zIChQRCA9IHBvd2VyIGRvbWFpbiBtYXliZT8p
CgpZZXMgY2VydGFpbmx5LgoKSSB0YWtlIHRoZSBvcHBvcnR1bml0eSB0byBsZXQgeW91IGtub3cg
dGhlcmUgaXMgYSBuZXcgdG9vbCBpbiB0aGUgbGludXggCnRvb2xzIGRpcmVjdG9yeSBjYWxsZWQg
J3RoZXJtb21ldGVyJy4gWW91IGNhbiBjYXB0dXJlIHRoZSB0ZW1wZXJhdHVyZSAKYW5kIHVzZSB0
aGUgZGF0YSB0byBjcmVhdGUgZ3JhcGhpY3MuCgo+IEkgYWdyZWUgdGhlc2UgY291bGQgYmUgbmFt
ZWQgbW9yZSBkZXNjcmlwdGl2ZWx5Lgo+IAoKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+
IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93
IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29r
IHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3
dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
