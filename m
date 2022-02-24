Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEFAEC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 10:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vvqx1eY/gqWrMADjto7TTSq6stwDqIK0i673ekcIlVc=; b=sNlHrXyvccHKc+
	xNEbEFlE/idrfbtNBw2v3R0qN2X3xPACa3nHx2VsSW9YRHSL1duL7UApjruzwaSPIzFWps/KcUvU2
	fKtwEYucIQgaYaCkONuE/f8A15Tt4SpfIqSMbs7Z6SAeu2iQuOer1m4gnj1wXdpITxYpACwMXZC6N
	fuyvb3gc9eYOySgXHPx8lwzTfI+gYnW0SksVAMbCrZztxpqeSLohQgZs/lXenKZPL+bm93W//RuWu
	nAOQ6/G4FOl9USA4Cod+r9XyIwujBwP1V5aTLu16BVK4GfUbk3VWsohLn4NT5E25gI+FGAiQPdyWJ
	eFM1ezbsV4b7F4lvY3hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNAxn-000Db6-H1; Thu, 24 Feb 2022 10:03:07 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNAxZ-000DWp-Q3
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 10:02:56 +0000
Received: by mail-wr1-x430.google.com with SMTP id j22so2072818wrb.13
 for <linux-rockchip@lists.infradead.org>; Thu, 24 Feb 2022 02:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=40TX6IOrMXHDsEdOBMZQbSaofRg2Iai14g2HKUHylIw=;
 b=nIFsjDJSyJvelTiW19Y2pdK/O4i+9yNv5cuL+tRpK/le1Nl6LXGbhGsl7YWZsZxHt/
 Sbye4mwANzSPldhUUvl/v6UIK+pKfB2gBq3RTFFyXP+cugEnDFb/IqE1kumtGqXuPMGc
 zXOfnip7wWySwA7Vlm1AEVyeylQFIq1j3nczruP8t/zJxGz9cdfGCRYORw/KIvYQcJd5
 nXfSgnkBHZxifyKDchIWU6ulF0plIhwCqpFU6BdDUTlqjRxbb0+4HenZTwjfPDWtQo9/
 xjHoGUL3yPFRRUfiYHAWh5n+a+GdX6CLtJmYF1U3KbiU1tqiWq3f1fSLdn5gd9Bw9PXX
 9ezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=40TX6IOrMXHDsEdOBMZQbSaofRg2Iai14g2HKUHylIw=;
 b=ApsWe4FuPLTQddIrQ1DiLtCyUu6WSuhd8GiAcHAIeies4Qv63TNrwiCa60D68niWwr
 Uqbi1pq4NJZRmVfGMDnwBLs+IfHEkuGK5B984YjI3qDakkRojpS6nSIJJOlA9YtgE5Ir
 vKKkGdXZGuQOv/YIbuOsKqt1xl0+DsZk0m/Ub3kkohvKMT7J0IHdTKz5mKpkaEtic30x
 OC18m2hOu+/fPMRcfHXMPM8wldGCTFT71wXEvu9dpeksPw12Yle+/ppO0NbkApMQRSW3
 aaxWdRT8S5C1ehM5r/TkJqwWOiigh5sk+pX/jWvcxmmhNiwGG6AMvC2IQ1k64/5Zp2WV
 HzUQ==
X-Gm-Message-State: AOAM531NvNORDG+GOE3CB896Cv9nrQBXctd8PD5wQDqyw4GiVMz/+vLk
 gBpu2XSr9igYliHg/nK2PK8fig==
X-Google-Smtp-Source: ABdhPJznPtWWQWN9tp5giTO0YPGHa54YOMlq33inQa44gWu66H4/BUMLLet4Alf7TttQUZm0TrpHWw==
X-Received: by 2002:a05:6000:178d:b0:1e8:310a:5a51 with SMTP id
 e13-20020a056000178d00b001e8310a5a51mr1599998wrg.642.1645696971765; 
 Thu, 24 Feb 2022 02:02:51 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88])
 by smtp.gmail.com with ESMTPSA id c5sm2650428wrr.54.2022.02.24.02.02.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 02:02:51 -0800 (PST)
Date: Thu, 24 Feb 2022 10:02:48 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Rob Herring <robh+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Douglas Anderson <dianders@chromium.org>,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: pwm: google,cros-ec: include generic
 pwm schema
Message-ID: <YhdXyBvAbdHzc4gH@google.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <20220214081916.162014-2-krzysztof.kozlowski@canonical.com>
 <YhX7UZSDaqNyD1rV@google.com> <3248917.W5uN0jUHDo@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3248917.W5uN0jUHDo@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_020253_874857_E0A7DD13 
X-CRM114-Status: GOOD (  18.85  )
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

T24gV2VkLCAyMyBGZWIgMjAyMiwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cgo+IEhpIExlZSwKPiAK
PiBBbSBNaXR0d29jaCwgMjMuIEZlYnJ1YXIgMjAyMiwgMTA6MTY6MDEgQ0VUIHNjaHJpZWIgTGVl
IEpvbmVzOgo+ID4gT24gTW9uLCAxNCBGZWIgMjAyMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPiA+IAo+ID4gPiBJbmNsdWRlIGdlbmVyaWMgcHdtLnlhbWwgc2NoZW1hLCB3aGljaCBlbmZv
cmNlcyBQV00gbm9kZSBuYW1pbmcuICBLZWVwCj4gPiA+IHRoZSBvbGQgbmFtZSBpbiBiaW5kaW5n
cyBhcyBkZXByZWNhdGVkLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBjYW5vbmljYWwuY29tPgo+ID4gPiAtLS0KPiA+
ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvZ29vZ2xlLGNyb3MtZWMu
eWFtbCAgICB8IDQgKysrKwo+ID4gCj4gPiBBY2tlZC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNA
bGluYXJvLm9yZz4KPiAKPiB3aGF0IGlzIHlvdXIgZXhwZWN0YXRpb24gcmVnYXJkaW5nIHRoaXMg
cGF0Y2g/Cj4gCj4gQXJlIHlvdSBwbGFubmluZyB0byBtZXJnZSBpdCBvciBhcmUgeW91IGV4cGVj
dGluZyB0aGlzIHRvIGdvIHRocm91Z2gKPiBzb21lIG90aGVyIHRyZWU/Cj4gCj4gVGhlIGJpbmRp
bmctY2hhbmdlIGhlcmUgaXMgYmFja3dhcmQtY29tYXB0aWJsZSBpbiB0aGF0IHRoZSBvbGQKPiBu
b2RlLW5hbWUgaXMgc3RpbGwgaW4gaXQsIG9ubHkgbWFya2VkIGFzIGRlcHJlY2F0ZWQsIHNvIGlu
IHRoZW9yeQo+IHRoaXMgcGF0Y2ggc2hvdWxkIGJlIGFibGUgdG8gYmUgYXBwbGllZCBvbiBpdHMg
b3duIHdpdGhvdXQKPiBjYXVzaW5nIGRlZmVjdHMuCgpJbiBhbiBpZGVhbCB3b3JsZCwgaXQgd291
bGQgYmUgYnJva2VuIHVwIGFuZCBJIHdvdWxkIHRha2UgdGhlIE1GRApwYXJ0LiAgIElzIHRoYXQg
cG9zc2libGUgb3IgYXJlIHRoZXJlIGRlcGVuZGVuY2llcz8KCk9yLCB3b3JzZSBzdGlsbCwgZG9l
cyB0aGUgd2hvbGUgc2V0IG5lZWQgdG8gYmUgYXBwbGllZCBhdCBvbmNlPwoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQpQcmluY2lwYWwgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2Vydmlj
ZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxv
dyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
