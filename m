Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD7EC52D6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 09:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhounSIMppZpHTy9RQXLNRGZvzQ05kJWy7oMeKdOk+w=; b=0kad6poyW7P+xY
	DC4leVZ13MKfuFuNBpqi8YeiRF2Hv5FtzyAkHD8+BhWS3fRjrbR2sZ3i6BOc9JE6gfwlKAiBuSkt/
	o4ym4WSJGdYvoYhptS5GfumPcgau5Lmkw5Nz0lQZTRXWqdp3J/QHdtAaSlnQleIpr49i++8IGQt6T
	50XaAstEOiMNx8Y1ojRR4fRG2apPZcQVbFZ8QNhF5f3XLLf+Rc+NzHfCyHOiX9s7xSIbWCYuL+dGE
	MGkzVMAzFyvfGWlne9Xk2+DUrGplXuwiFfszfDLchwQz9vliIETpp0BRaHhXD6inxmkKqdj4Bx7Ea
	DYwsNd5VfeOlJbW14GKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghQ5-00000008DAB-1kx7;
	Wed, 21 Aug 2024 09:14:21 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghQ2-00000008D9i-1jwv
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 09:14:19 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a7a94478a4eso102721266b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Aug 2024 02:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724231656; x=1724836456; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=smV+vHon5WIyECbuzL4Cdda3JrOJJZ3T1S/f70Uj1I8=;
        b=SZ8SLo4udGdPmSiGPKKa3EZTb9eMg9pcDeXg9pGStajFqCYMbucomTQDMKHUVLntLj
         xQ9aGIVksQ6f1InVeDZLJ+FBN4CAW9sUbi8vlIocrjC8jl/vEKVL1ihBjx3WS7vGm+HH
         LWs5Lqq2oRhOJvurRR0o3Z6DiIkW2ZA9WYeEmZXq+OB+MJ0qjWSsEzt8T0M3FW8Rq7RK
         +1w3SJTlBzC62Kns2KqyTenJNMUoG5D502VS7NAwZWSkBYZNkFXMMKxsLgcI4Igr42Sy
         BWXTCFkjPlTNG16Kf0wPKMQgtm/dlOzad8+Ejg5EzFADsxo+OBmKRU/Cq41hQySZUAbP
         abaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724231656; x=1724836456;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=smV+vHon5WIyECbuzL4Cdda3JrOJJZ3T1S/f70Uj1I8=;
        b=Yowc3+dmBbyT2M+Ma4a1UMJj1TfQLWQwZetHQEyDXHYCRtP26x3MMXSON8XVlM2De0
         yfTPth7IcOjfwqbHScdFIT487cMkGNc8PY/bvwXVypIi1NOET4MR4jNo7slfMcaxDr+/
         6DMdenCpTxSDi0ynQ4yjQoRVnoXtRtcVv6Awm6xupy02fRPt8OwvvB0QOAo4GQzbTOJ+
         +g5H5wwneN3K8j+6th3C+EUa2ndoghU4MfUPnV85jGXyqQUh6GF12ijsBqiPSiWqCO7i
         m8rs0ui3CiB1wt+Na4oiTchDlbIg1+cGF5/VY9z8vbe8kAP9Wc5XIpFPTMqlVDUnFkpe
         oX/Q==
X-Gm-Message-State: AOJu0Yz9ppPQi3AiNzUBc9TMAgXGwH6EiJr8ol+5/BFC2xRtopiBQkuI
	EO9wEZoskGk4qqMWmKZ4BHwwRfBwS7CsaIsG+JmfJ8OcpPc0tGwZak0YUJhMb6yOY3Tot5pqBPq
	k
X-Google-Smtp-Source: AGHT+IGLax/L2RW4gZhzy0mZ5JevSwQvMZWF4dOeYdLaHpjvaGlP8cuhIJm7fGK7TKs4o46K4hLfSw==
X-Received: by 2002:a17:907:5ce:b0:a77:c051:36a9 with SMTP id a640c23a62f3a-a866ffc8d84mr181397566b.9.1724231655985;
        Wed, 21 Aug 2024 02:14:15 -0700 (PDT)
Received: from [192.168.200.25] (79.186.29.241.ipv4.supernova.orange.pl. [79.186.29.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83838c68e7sm872126366b.8.2024.08.21.02.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 02:14:15 -0700 (PDT)
Message-ID: <4d46d225-ac71-405f-a5a6-54933c71a010@linaro.org>
Date: Wed, 21 Aug 2024 11:14:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] arm64: dts: rockchip: enable USB 2.0 on NanoPC-T6
 LTS
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v2-1-e0138bb10042@linaro.org>
 <1975383.fIoEIV5pvu@diego>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <1975383.fIoEIV5pvu@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_021418_485357_B70B6ABA 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

T24gMjEuMDguMjAyNCAxMDo1OCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gs
IDIxLiBBdWd1c3QgMjAyNCwgMTA6MjU6MzAgQ0VTVCBzY2hyaWViIE1hcmNpbiBKdXN6a2lld2lj
ejoKPj4gRnJpZW5kbHlFTEVDIGludHJvZHVjZWQgbmV3IHZlcnNpb24gb2YgTmFub1BDLVQ2IFNC
Qy4KPiAKPiBJZiB0aGlzIGNoYW5nZSBpcyBzcGVjaWZpYyB0byB0aGUgbmV3ICJMVFMiIGJvYXJk
IHZhcmlhbnQsIHdoeSBpcyBpdCBpbgo+IHRoZSBtYWluIGJvYXJkIGR0cyBub3c/CgpJIGhhdmUg
bm90IHNlZW4gZmlybXdhcmUgYnVpbGRzIHdoaWNoIGhhbmRsZSAnaXMgaXQgTFRTIG9yIG5vdCcg
dmVyc2lvbiAKb2YgYm9hcmQuCgo+IEkuZS4gd2l0aCB0aGlzIGNoYW5nZSB5b3UgZW5hYmxlIGl0
IG9uIF9hbGxfIE5hbm9QQy1UNiBib2FyZHMsIGV2ZW4gdGhlCj4gb25lcyB3aXRob3V0IHRob3Nl
IGNvbXBvbmVudHM/CgpUaGUgbm9uLUxUUyB2ZXJzaW9uIGhhcyB1c2IyMF9ob3N0X3B3cmVuIGxp
bmUgbm90IGNvbm5lY3RlZC4gU28gZW5hYmxpbmcgCml0IGRvZXMgbm90IGFmZmVjdCB0aGUgYm9h
cmQuIFNpbWlsYXIgdG8gNGdfbHRlX3B3cmVuIGxpbmUgd2hpY2ggaXMgCnByZXNlbnQgb24gTmFu
b1BDLVQ2IG5vbi1MVFMgYW5kIG5vdCBjb25uZWN0ZWQgb24gTFRTIG9uZS4KCkxvb2tzIGxpa2Ug
dmVuZG9yIHRvb2sgY2FyZSB0byBrZWVwIGJvdGggdmVyc2lvbnMgb2YgYm9hcmQgdG8gd29yayB3
aXRoIApvbmUgRFQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
