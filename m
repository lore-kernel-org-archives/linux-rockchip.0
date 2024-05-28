Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837DCC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 12:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qrrzPG1opM6Yve6rwmP4EO3gI/cTQA53UExIQtJ3/g=; b=M2RG+f0Yoh58hx
	IcXgIflFeN+npa7yWKz+fQ14a0jsMHKX4rl/3W3unPIv/l6Hq0NC0/3HvcoBXCiGECJ/iaBmvZUs4
	zAhqp+tbACVovQccwC2/xfLn+evCGQ7ah2qGNiLfKQZ5fWYwjVjcGi69ESAE4sA1Mvk2mDbOlj1Iq
	sadaSms1JX2qxLtDCAL0svfzgpYa95YFMIX0ObRU/vHfBwJYfgNBPsdreW04tr+ZJrmL8JTaabec+
	X5RD0H1bn4HzzjigruGcLdWWKOYoCyc/3u4nWI+1Qb1TNNHEEVE5jpUMQqoAX5wcH6SdN9Cvv+lSg
	4sbE0jpn4ZSBZIVgFW7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvmw-00000000Xcs-34d8;
	Tue, 28 May 2024 12:18:46 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvmt-00000000Xax-0H3L;
	Tue, 28 May 2024 12:18:44 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2e95a74d51fso9886471fa.2;
        Tue, 28 May 2024 05:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716898720; x=1717503520; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jLL8Ft99cJVseIi4ayW8bS5YO6VTvNhFoRwZq32Fda8=;
        b=fbu6AS5cznAw6FwSnhdu3Uxx0HTOwt+DfKObrdF3wTKgVoLH3ItUV5ECv9yU+jWDlR
         5v4NCvKpYoOIm4Qe93UWSG40gT1k6h9gGMRgNEUHJ5pXP/G1yET6ieXVsqVRkt162F5H
         xCdD26pJokUVpt4Gg/u28wFUa1609GXPAKA4gf+Deb1biITdwCrlL2eSnv6X5nF4zmqQ
         P6UQ97dGeFyK1L0yid7rfhmAiw173OM4JZwQRpwzT7XnpLAzlUJII51O/iydaCcF86hF
         ZjlY7Zwd4qO1/tIxthwpU9SHkoXx5MXTVhHXOnmT7LCqRWWuxNXM+6PTmYIMnzzfs2IZ
         mNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716898720; x=1717503520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jLL8Ft99cJVseIi4ayW8bS5YO6VTvNhFoRwZq32Fda8=;
        b=MCnuZe2Q5ZdJ/FAWmD2dkIojqVXdmMFrklfx+EfM6qX1UguQp299RpY8YMWiKm7aX7
         C7fVajvd+EWJurveGVTn804+XhIsJGnTuiFXjMooxiVa/gT0xGL/tsLjFmS4Z397WcQR
         EL90ouLrmcELULtTm3ON3YxyXHBOcZ6h+b5wH/wOsc8Mc5z6XDpCrpaNzVomROjsjpeq
         NToe6o0KfWGcHTt9uzPtI7Wmsd04Y5WychSNpUxB4RIMWk5L8ljoHNy5rFCFfSe92e/s
         tqQGx9xaIldqa7gI6V8YRhUUoU+MgutZ2/S41P8LHZdbW8tfJdw0mmWFt4thtsJW/woU
         gUcw==
X-Forwarded-Encrypted: i=1; AJvYcCXtFUuEo8QhilJjI+c6NUAl5++QdmmjLiHvfi1xMVh/xly9GOx1XymhXv6JRI5/ApMU6Pj2/uTfnJWbHzOwM7U4TMZEXVthLhTj6Sjy0Ml/182KmMFPcloayLaVWrqzN0vj1M6ocI+6bT/1IEWsc0VngcWOXr6srhM=
X-Gm-Message-State: AOJu0YyaD+JBZ2dHid1BjaEJqGMOelvbck/tiR9CN7VIcGhN0R+oCzMt
	2VkD4rlRjiJhRCW+qQI9kAO7FtVEwBLsVtiO9PeMoEgN0dMGcypf
X-Google-Smtp-Source: AGHT+IGc0NnrB9tTNcE2A4QQn3xBsUhlCFH1lh48wmiR1tIpieoZLdQlD0imMwEebqbi4mFbk8xh6w==
X-Received: by 2002:a05:651c:1030:b0:2e9:8c0a:746a with SMTP id 38308e7fff4ca-2e98c0a7a92mr6741881fa.52.1716898719317;
        Tue, 28 May 2024 05:18:39 -0700 (PDT)
Received: from [10.20.30.169] ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdcc963sm22551431fa.86.2024.05.28.05.18.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:18:39 -0700 (PDT)
Message-ID: <a54be779-9728-4ac4-9b85-8cf6787f491d@gmail.com>
Date: Tue, 28 May 2024 17:18:35 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] pinctrl: rockchip: update rk3308 iomux routes
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Jianqun Xu
 <jay.xu@rock-chips.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dmitry Yashin <dmt.yashin@gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
 <20240515121634.23945-2-dmt.yashin@gmail.com>
 <CACRpkdYO_zr=OEZCv8LKtw+fNOwJ906ZVKyPhbbyA=9gP5XQgg@mail.gmail.com>
 <1770701.X513TT2pbd@diego>
Content-Language: en-US
From: Dmitry Yashin <dmt.yashin@gmail.com>
In-Reply-To: <1770701.X513TT2pbd@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_051843_129008_C770633F 
X-CRM114-Status: GOOD (  13.01  )
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

SGkgSGVpa28sCgpPbiA1LzI4LzI0IDQ6NTIgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhp
IExpbnVzLAo+Cj4gQW0gRGllbnN0YWcsIDI4LiBNYWkgMjAyNCwgMTM6Mjk6MTIgQ0VTVCBzY2hy
aWViIExpbnVzIFdhbGxlaWo6Cj4+IE9uIFdlZCwgTWF5IDE1LCAyMDI0IGF0IDI6MTfigK9QTSBE
bWl0cnkgWWFzaGluIDxkbXQueWFzaGluQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+PiBTb21lIG9m
IHRoZSByazMzMDggaW9tdXggcm91dGVzIGluIHJrMzMwOF9tdXhfcm91dGVfZGF0YSBiZWxvbmcg
dG8KPj4+IHRoZSByazMzMDhiIFNvQy4gUmVtb3ZlIHRoZW0gYW5kIGNvcnJlY3QgaTJjMyByb3V0
ZXMuCj4+Pgo+Pj4gRml4ZXM6IDc4MjVhZWI3YjIwOCAoInBpbmN0cmw6IHJvY2tjaGlwOiBhZGQg
cmszMzA4IFNvQyBzdXBwb3J0IikKPj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBZYXNoaW4gPGRt
dC55YXNoaW5AZ21haWwuY29tPgo+PiBXaGlsZSB5b3UgZ3V5cyBhcmUgdGhpbmtpbmcgYWJvdXQg
dGhlIFJLMzMwOEIgc3VwcG9ydCwgaXMgdGhpcyBmaXgKPj4gc29tZXRoaW5nIEkgY2FuIGp1c3Qg
YXBwbHk/Cj4gSSdkIHRoaW5rIHNvLiBJJ3ZlIGRldGFpbGVkIHN0dWZmIGluIG15IFJldmlldyBt
YWlsIEkganVzdCBzZW50Lgo+IEJvdGggdGhlIHNvYyBpdHNlbGYgYW5kIGFsc28gdGhlIGFmZmVj
dGVkIHBpbiBmdW5jdGlvbnMgYXJlIG5pY2hlCj4gZW5vdWdoIHRoYXQgdGhpcyBzaG91bGQgbm90
IGNhdXNlIGJyZWFrYWdlLgo+Cj4KPiBIZWlrbwo+Cj4KPgoKU2hvdWxkIGkganVzdCBkcm9wIDEv
MyBmcm9tIFYyIHRoZW4/CgpUaGFua3MgZXZlcnlvbmUgZm9yIHRoZSBmZWVkYmFjayBvbiB0aGlz
IHNlcmllcy4gSSdsbCBwcmVwYXJlIFYyIGJhc2VkCm9uIHJ1bnRpbWUgY2hpcCBkZXRlY3Rpb24g
d2l0aCB1c2Ugb2YgR1JGX0NISVBfSUQuCgotLSAKVGhhbmtzLApEbWl0cnkKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
