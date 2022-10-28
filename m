Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66608FA373D
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 02:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQ34PhLijI+pNihfxeec8/MIzf+tPdX8WREtcSfptLk=; b=xgSgdZylQ475Pu
	u3ch8w3rqGHlkTBtXgEiUI0y/CPMf39uJWwG8jFUAvFhJJNCZWckVVDghNX6lwI8rMObl22Dg+6nH
	+Kzl1W2D192hC/CC7f4wvAAJ6J1cmSatfi/LEqMAuRtggia/wpLJrZdBeturTHu5xBYT5OPcQnZSO
	Re2UiTnTF+lEJ4OR2HXRnREYE8C0+83RdtoPTaCLf5C6S06v4iQisMVeO+SLXdHWqH+CyxYuLgcSL
	UyUsMkWZv/FYukpcnB0S7T3Jj4RW0JYEHzPAjDknArYGeF68q1aHq/N6znzJGlSZeJyiM5JAUJNmn
	15nGUTYiXF6eUlkLgysA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooElS-00FSaf-OS; Fri, 28 Oct 2022 02:06:30 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooElI-00FSYr-D5
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 02:06:21 +0000
Received: by mail-qt1-x832.google.com with SMTP id a24so2713613qto.10
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Oct 2022 19:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q1LMLjq5zpfIikLtv+miyJRP8UZATL8cTTo41bIU76g=;
        b=lH2F9fMGOBO7pc9d2vdcuEK19wvkTVdrsrj78FtX8hzwFEzXpDpJ5jzGrSOJFLMIHk
         Met1S0879lRdxrRo76LzKGeYmxvH+VOOLokQ0pxNqgDaw3u/j/aRGLboIxbf2KAzedkk
         th7y6QGpuKBKe3Hku5QoTBIemJorNktf1HTscs7lfyFWnsktePPxS8SSmHBHQuUo8m4t
         2xGERDBg0OMY5RbW410viCwicg4/GB+mG06R+8gixowT5bfwFh10dxAoLjc3CtCpjYTW
         v1t1j7zBlkAgXACVj9P8NcKKLzZQzmYFSYjxnW7MLXiwe2CMOBHcOGcYQ2ALfWGTQ8kG
         v/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q1LMLjq5zpfIikLtv+miyJRP8UZATL8cTTo41bIU76g=;
        b=m//OlRucckucpTSRjw/DVHIrDdKYD9XxAVZi1PLzi4AfP3J/Cyq8YSkQ4G2lltdtLj
         X8wb2biyxC85HMg83LJwovYpEFrl0ElXxdMW5OgA4MW6vEME/J8UTJbIR96fu5YH4RzL
         d9/Nsk+i/yDDWsGwl3EByVAHzvt3yiZsbcLJiSWWvneR3jfZaIQRW5BxS7y6rvbLpvkc
         G+SuHWXa4Xd61ZeYdJuHUOr6W72Ax2jzadU5q0MfMjDRL4aHjg64hJ1Cl6dGoP/nNI50
         /1yoY+fwrnnjvjUhFtqyGfG0ohYMNfdmL+0/T4BihS+gi7lRvRjuA8DxqDT/ZSWVVuEx
         NUIw==
X-Gm-Message-State: ACrzQf0z3db+ms71uhSAXDRIpwIt8qBdlDhtY0zNPtOXY2eI0/PZUsFK
	BTwxYB6hYdNc2j8ApVw2wqT7mA==
X-Google-Smtp-Source: AMsMyM4+JeXMGKJpNzhYtik1KMxwYxLCVnhkikb9ZUBnzm5aaGM9Cn7gp+7FSY+I73K5aQwb6iIguw==
X-Received: by 2002:ac8:7c46:0:b0:39c:fa92:a27a with SMTP id o6-20020ac87c46000000b0039cfa92a27amr42324109qtv.61.1666922776986;
        Thu, 27 Oct 2022 19:06:16 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id g23-20020ac84b77000000b003a4efd59754sm1741747qts.12.2022.10.27.19.06.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:06:16 -0700 (PDT)
Message-ID: <2c3ac59f-fc9e-a1eb-3778-a553ee833de2@linaro.org>
Date: Thu, 27 Oct 2022 22:06:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v10 00/33] crypto: rockchip: permit to pass self-tests
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Corentin LABBE <clabbe@baylibre.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
Cc: ardb@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220927075511.3147847-1-clabbe@baylibre.com>
 <Y1jkqiYjXT30/hk5@Red> <Y1kGdWyYPtcgQPtd@gondor.apana.org.au>
 <6031281.lOV4Wx5bFT@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6031281.lOV4Wx5bFT@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_190620_447617_0C84A4CD 
X-CRM114-Status: GOOD (  11.68  )
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

T24gMjYvMTAvMjAyMiAwNjoyNSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgSGVyYmVydCwK
PiAKPiBBbSBNaXR0d29jaCwgMjYuIE9rdG9iZXIgMjAyMiwgMTI6MDU6NDEgQ0VTVCBzY2hyaWVi
IEhlcmJlcnQgWHU6Cj4+IE9uIFdlZCwgT2N0IDI2LCAyMDIyIGF0IDA5OjQxOjMwQU0gKzAyMDAs
IENvcmVudGluIExBQkJFIHdyb3RlOgo+Pj4KPj4+IEhlcmJlcnQgYW55IHRob3VnaHQgPwo+Pgo+
PiBQbGVhc2UgbGV0IG1lIGtub3cgZXhhY3RseSB3aGljaCBwYXRjaGVzIHlvdSB3YW50IG1lIHRv
IGFwcGx5Lgo+IAo+IGl0IHdvdWxkIGJlIGdyZWF0IGlmIHlvdSBjb3VsZCBhcHBseToKPiAtIHBh
dGNoZXMgMDEgLSAyNQo+IC0gcGF0Y2hlcyAyOSAtIDMzCj4gCj4gVGhleSBhbGwgc3RhcnQgd2l0
aCBlaXRoZXIKPiAJImNyeXB0bzogcm9ja2NoaXA6IC4uLiIKPiBvcgo+IAkiZHQtYmluZGluZ3M6
IGNyeXB0bzogLi4uIgoKVGhlIHNlcmllcyBwcm9iYWJseSBzaG91bGQgYmUgc3BsaXQgaW4gc3Vj
aCBjYXNlICh3aXRoIGxpbmtzIHRvIGxvcmUpLApvdGhlcndpc2UgaXQgY3JlYXRlcyBpbXByZXNz
aW9uIG9mIHNvbWUgZGVwZW5kZW5jaWVzLiBCaW5kaW5ncyBhcmUgaW4KdGhlIG1pZGRsZSwgRFRT
IGFzIHdlbGwgKHdoaWNoIGlzIHVzdWFsbHkgc2lnbiBvZiBBQkkgYnJlYWspLgoKVGhlIGNsayBj
aGFuZ2UgYXQgdGhlIGVuZCBhbHNvIGRvZXMgbm90IGhlbHAuCgpCZXN0IHJlZ2FyZHMsCktyenlz
enRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
