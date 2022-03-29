Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91EB7C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 13:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4vIK7LeVB70Gby8whzXp9OcBrXQ5d2JGJSLlBhi8qY=; b=3qqjrZ8jH9bLPh
	O49R2M48VJBze84Vx0y4kbIQtd2OZaOxEMgweVhZg31RDsRa/dkEViTsFROKOKzUDOR4y66y6t0tV
	iahG1PH9mWjdAdMS9oYqJMx89yGoyDH0AH4J144oRhKiLPUevPn5AAfDW5FGlABFywK1X2GJUHiZr
	pVDlp0PD/K82sv45WHqWjdqrLH/qlELbNeKCGmyfe1nEwQSODvBFLW1A0nUrU7i+kxVsQWCK2qkUf
	924j6SnqJ4RhPq2zC31PDIKBAV2Ab53kSyBWmyeoG3+rYXbamYdWlEuIFdERtwh/IkKve8iGs6f3Z
	DvCR6ztt3FaSW8VVRoOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZC3W-00COFo-9a; Tue, 29 Mar 2022 13:38:42 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZC3U-00COEA-5G
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 13:38:41 +0000
Received: by mail-qk1-x729.google.com with SMTP id b189so13995351qkf.11
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 06:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :content-transfer-encoding:user-agent:mime-version;
 bh=Ol3Hp+YMfuySWgvy8mFMxAXv90sbOTJsuyiieSGKpH0=;
 b=uWtiNW8FCMmk0oKEj1lpvSj6VTxqSChA1CLjNhZgh4nNFksWEZJP3UhpiHRorzgYVS
 GDKURNQ2RSYUcE1e/4lLkzfcxqdQRRan2aowWp6Rn9zo897pbtFCxhAKAqyxn7ci8e4T
 AQhxJRFOLpBmd8WEdBUcGa6sJSWhPBQCcpHWmGTFlZYVstybbVayYQaMMh5GDO/AmjJq
 EGAihYlBDg3YTxi6gETdllsFzYUw8a60NGW1+hFpj7gD7EUaZIQd4FwP1xl8pGBWXXGF
 EsGq4yPW6ImAeQGFBiAV95QkDeQI8YZ7EZMTdnAJ7W8llq7qSib0w/U+dWwIFy9Sb295
 H9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:content-transfer-encoding:user-agent:mime-version;
 bh=Ol3Hp+YMfuySWgvy8mFMxAXv90sbOTJsuyiieSGKpH0=;
 b=MW45Bc/AyS86tHImCfIa2+71QkdAnNYDY4w5/D6uJu1Ao6bVJgDgnzMvEJ5bLZHJte
 wTZuAZ+DkYktkUlN7iO/5KftcTGPbcUvoko+yibNQsgwmtnPpjd2iWeV4wBZL8SBvYQF
 Tfnuj/eCiVaQWCsuGZjaHYlTD5nNqnSV9UHnkVXswfhUJWnUfil2BuivyQDlBCqHkThn
 TEaUwH/lbg1cCed25FxvEd25RLYbTxsQZ+NgOhzi5YDd7WaQ5WdsSJkcISzGVf3jn2MS
 3BQH0M0sjw5gn6UvMkK7HXDidc2d3WUqBXb27Yha4bQkT3l2sIBgx6Jv2/WpFCBORwIP
 dU3A==
X-Gm-Message-State: AOAM530RakJQi2Fahx4H9ijrnkcVRKqmtrKvE8l48PM/4fx/P2/4KROh
 mXgpNuxP6iheXX6EZato8YKmrQ==
X-Google-Smtp-Source: ABdhPJx2ys3r6Td+fhKB2RWe9KMZbIu2iD6bmzq/KiPUzkPdG2Oc2JFJ7L6ZgRrS826lRxgALCpzxw==
X-Received: by 2002:a05:620a:4311:b0:67e:8a0f:4cd5 with SMTP id
 u17-20020a05620a431100b0067e8a0f4cd5mr20367074qko.363.1648561118001; 
 Tue, 29 Mar 2022 06:38:38 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 g1-20020ae9e101000000b0067d4bfffc57sm9168660qkm.117.2022.03.29.06.38.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 06:38:37 -0700 (PDT)
Message-ID: <cb6a47f29c8ff3b6259d8f4b25da6a2d8b57bfba.camel@ndufresne.ca>
Subject: Re: [PATCH] staging: media: hantro: Fix typos
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sebastian Fricke <sebastian.fricke@collabora.com>, 
 linux-media@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:HANTRO VPU CODEC
 DRIVER" <linux-rockchip@lists.infradead.org>, "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>, open list <linux-kernel@vger.kernel.org>
Date: Tue, 29 Mar 2022 09:38:36 -0400
In-Reply-To: <20220326183603.66797-1-sebastian.fricke@collabora.com>
References: <20220326183603.66797-1-sebastian.fricke@collabora.com>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_063840_224078_E03ACA59 
X-CRM114-Status: GOOD (  15.34  )
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

VGhhbmtzIFNlYmFzdGlhbi4KCkxlIHNhbWVkaSAyNiBtYXJzIDIwMjIgw6AgMTk6MzYgKzAxMDAs
IFNlYmFzdGlhbiBGcmlja2UgYSDDqWNyaXTCoDoKPiBGaXggdHlwb3MgaW4gY29tbWVudHMgd2l0
aGluIHRoZSBIYW50cm8gZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBGcmlj
a2UgPHNlYmFzdGlhbi5mcmlja2VAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jIHwgMiArLQo+ICBk
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19oZXZjLmMgICAgICAgIHwgMiArLQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2Y19k
ZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMK
PiBpbmRleCBjNTI0YWY0MWJhZjUuLmMwNjQ1ZTMzNWZjOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2Y19kZWMuYwo+IEBAIC00MDYsNyAr
NDA2LDcgQEAgc3RhdGljIGludCBzZXRfcmVmKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gIAo+
ICAJc2V0X3JlZl9waWNfbGlzdChjdHgpOwo+ICAKPiAtCS8qIFdlIHdpbGwgb25seSBrZWVwIHRo
ZSByZWZlcmVuY2VzIHBpY3R1cmUgdGhhdCBhcmUgc3RpbGwgdXNlZCAqLwo+ICsJLyogV2Ugd2ls
bCBvbmx5IGtlZXAgdGhlIHJlZmVyZW5jZSBwaWN0dXJlcyB0aGF0IGFyZSBzdGlsbCB1c2VkICov
Cj4gIAljdHgtPmhldmNfZGVjLnJlZl9idWZzX3VzZWQgPSAwOwo+ICAKPiAgCS8qIFNldCB1cCBh
ZGRyZXNzZXMgb2YgRFBCIGJ1ZmZlcnMgKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9faGV2Yy5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm9faGV2Yy5jCj4gaW5kZXggYjQ5YTQxZDdhZTkxLi45YzM1MWY3ZmU2YmQgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faGV2Yy5jCj4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faGV2Yy5jCj4gQEAgLTU5LDcg
KzU5LDcgQEAgZG1hX2FkZHJfdCBoYW50cm9faGV2Y19nZXRfcmVmX2J1ZihzdHJ1Y3QgaGFudHJv
X2N0eCAqY3R4LAo+ICAJc3RydWN0IGhhbnRyb19oZXZjX2RlY19od19jdHggKmhldmNfZGVjID0g
JmN0eC0+aGV2Y19kZWM7Cj4gIAlpbnQgaTsKPiAgCj4gLQkvKiBGaW5kIHRoZSByZWZlcmVuY2Ug
YnVmZmVyIGluIGFscmVhZHkga25vdyBvbmVzICovCj4gKwkvKiBGaW5kIHRoZSByZWZlcmVuY2Ug
YnVmZmVyIGluIGFscmVhZHkga25vd24gb25lcyAqLwo+ICAJZm9yIChpID0gMDsgIGkgPCBOVU1f
UkVGX1BJQ1RVUkVTOyBpKyspIHsKPiAgCQlpZiAoaGV2Y19kZWMtPnJlZl9idWZzX3BvY1tpXSA9
PSBwb2MpIHsKPiAgCQkJaGV2Y19kZWMtPnJlZl9idWZzX3VzZWQgfD0gMSA8PCBpOwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
