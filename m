Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BD22C0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 21:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzbvYUQAhh4XgUKT9zplAhNsWR2kIwxQPCIhkaa1x4Y=; b=n2PMcapH3u2ak7
	IU4dyLQeVbJT9REDXQXt4FddK7Jk/Gzsnsggujua4NhfGhfu8Nd8WYkf3wbumxAnex2IeeqNDC3xh
	vEjaduwzZ9WZVrfc3Eb6s1e5LApKxyJXSOkVt5nsyftDu2tlqFNPH8//gFj9xY0AgKw/943lgZn4g
	AHFTuWnu/Um/MV0bqgrdkEJrIZ+IWY1xFK7tlV8n+4fuON2WbOkPdRmO2AjgbzWvRW1wPM/SfFegg
	cBNezdXKnNwSGoFNCfXE3tukgI4aVCK0HZVqxFJKD1ZEY+doNc74+YTjI+AuUA0tdaJHGhLn5G5Bd
	T/jZNUiDZTHFOeEfS4cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qW194-002Tx8-2V;
	Tue, 15 Aug 2023 21:00:06 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qW192-002Tv0-0X
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Aug 2023 21:00:05 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3fe2ba3e260so57039705e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Aug 2023 14:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692133199; x=1692737999;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JUh3d8Lt7h78kSmqim/NK0v26wjsQ9UPaRp1gHVVLo8=;
        b=tfxl1J+rEIE3RPV5s+HiYSSmR8o3fwI4rI7kmbxDGa1qQl7mFASsACCcBG4tmCBqlR
         9ysXL06I0IHZJix2RiiaetlvM8QBPcwn/WsEnPTvyPXtauzT2xeXvAV+zEmUUhOYeibD
         I8YpqAdiuPgxg6sePWl0vU8RSoCHfTWoaBHvkUSqCSAWzwH8JU4tqvv1Uso9rIaO+ZCs
         IcKLflToXoiJmS0DF1owHeFiY8bHFPE9a0FM+Lc4CCgLfWvarmy0LZCq9yAdFRFBAtw1
         4kWs28w0XrSurCux7MWrFxfpzhluB8LgqGLSgrZSk588Kc883RFYpw3f/exZtt4u6NNL
         LZ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692133199; x=1692737999;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JUh3d8Lt7h78kSmqim/NK0v26wjsQ9UPaRp1gHVVLo8=;
        b=MkcJy2q//J1qsUm2PrviZfCowOK5QehfPBvG0gSC5nrzFq7/kahhnA6CH1MuRblsHK
         uUNbYnTz51tn0ztgX5pafnGmHq1UEM1UuNmnR9JWQH3gT79vKV7aF8riTpHLQTesTjCM
         ZMH4cVIZvS8fXQbd3cvavfADbm/wfBajM3f8ynnFkrOPmskrb/NApgzE15j7Oe3XCo4t
         07fphNPVk6/4gx6lgzoMgJeQmw/TpIfAVVk+wwzCo3jJ/fNDlASox+wy/JGpL/oS/Tbd
         0n0FPvyWFN02e8h+s7zxj0jAZHHpGSNMWCEo62QeF/oTh5/AMCHfZP4UfnPyWUi9ctSI
         YA7w==
X-Gm-Message-State: AOJu0YzHU7VPqLQu4LMeRGhBhjb2eqR2CP+dxFm5WqT2VaJBzG1VSB6S
	BdBbGRkJgmsYfFz1s8MLXg6QPQ==
X-Google-Smtp-Source: AGHT+IHPR5ZgIquj78Pw6M82XZhDr7Qg0j9byeQ7z5RcXbozmJwaicWWbYDePNqCmEBEVYDTpuPHHQ==
X-Received: by 2002:a7b:ce94:0:b0:3fb:ff34:a846 with SMTP id q20-20020a7bce94000000b003fbff34a846mr10667435wmj.22.1692133199585;
        Tue, 15 Aug 2023 13:59:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id h14-20020a05600c260e00b003fa8dbb7b5dsm19027605wma.25.2023.08.15.13.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 13:59:59 -0700 (PDT)
Message-ID: <3efc0e28-3a5a-bfc7-57e3-e7e3d5ae1740@linaro.org>
Date: Tue, 15 Aug 2023 22:59:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
 <20230731103518.2906147-2-jagan@edgeble.ai>
 <20230731145129.mrrkb6tcuvlpmxan@pengutronix.de> <5533260.88bMQJbFj6@phil>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5533260.88bMQJbFj6@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_140004_205738_2F105168 
X-CRM114-Status: GOOD (  12.20  )
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

T24gMDkvMDgvMjAyMyAxNjowMiwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAz
MS4gSnVsaSAyMDIzLCAxNjo1MToyOSBDRVNUIHNjaHJpZWIgVXdlIEtsZWluZS1Lw7ZuaWc6Cj4+
IE9uIE1vbiwgSnVsIDMxLCAyMDIzIGF0IDA0OjA1OjA2UE0gKzA1MzAsIEphZ2FuIFRla2kgd3Jv
dGU6Cj4+PiBEb2N1bWVudCBwd20gY29tcGF0aWJsZSBmb3IgcnYxMTI2IHdoaWNoIGlzIGZhbGxi
YWNrIGNvbXBhdGlibGUKPj4+IG9mIHJrMzMyOC1wd20gZ3JvdXAuCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogSmFnYW4gVGVraSA8amFnYW5AZWRnZWJsZS5haT4KPj4KPj4gQWNrZWQtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4+Cj4+IFNob3Vs
ZCB0aGlzIGdvIGluIHZpYSB0aGUgcHdtIHRyZWUsIG9yIHRvZ2V0aGVyIHdpdGggdGhlIG90aGVy
IHBhdGNoZXMKPj4gdmlhIHJvY2tjaGlwPwo+IAo+IEkgaGF2ZSBubyBjbHVlLCBzYWRseS4gSSBf
Y2FuXyBwaWNrIGl0IHVwLCBidXQgSSBndWVzcyB0aGF0IHdvdWxkCj4gcmVxdWlyZSBhbiBBY2sg
ZnJvbSBUaGllcnJ5PyBPdGhlcndpc2UgSSBndWVzcyB3ZSdsbCBuZWVkIHRvIHdhaXQKPiBmb3Ig
aGltLgoKR2VuZXJhbCBwcmVmZXJlbmNlIGlzIHRoYXQgYmluZGluZyBnb2VzIHZpYSBzdWJzeXN0
ZW0gKHNvIFRoaWVycnkpLCBidXQKdGhlcmUgYXJlIG5vIGRyaXZlciBjaGFuZ2VzIGhlcmUgYW5k
IHlvdXIgRFRTIGJyYW5jaCB3b3VsZCBiZW5lZml0IGZyb20KaXQgKGxlc3MgZHRic19jaGVjayB3
YXJuaW5ncykuIFRoZXJlZm9yZSBJIHByb3Bvc2UgLSBqdXN0IGdyYWIgaXQgLQp1bmxlc3MgVGhp
ZXJyeSB3YW50cyBvdGhlciB3YXkuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
