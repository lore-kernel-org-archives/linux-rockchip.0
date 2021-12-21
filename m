Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56CCEC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 15:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/LWg+HZpy2MbG1ORc5/bB3MNcmdMPKnNWDNzC3kB3Bc=; b=OOCY+RaaYY05J3jbS+CpN1k56j
	hDTD9xBBtTmsqOhF+txXErAdiGy9Z2z9MxetEevh6M9/m+9ey8gHF3TsOUf/D6Ao+qenOmqCln7HU
	nyiU3lli5WFNRQIULswC4vzBOz0e5nELpyckzuPGBDGyu0QXvh/VpVXv+ZqGVCwlKR8aYtOqpw6zc
	i0DJRKsBEhZSfuSakq+6GJ5LfKnIhG8UtQUU4mEwlPVXJjGRo1GGCT+14WS1liasO+GjD/TtSz+CQ
	rw8uIqu8FBHLHWKbFiZnZ0LtY5+lHSyckqCIIX1kFiwrPy1O3TEGMxzxB5CT6G9zRXYYiylKGAy5H
	pFFGZ00A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzhVK-007UJr-KH; Tue, 21 Dec 2021 15:56:42 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzhVI-007UI9-4a
 for linux-rockchip@lists.infradead.org; Tue, 21 Dec 2021 15:56:41 +0000
Received: by mail-lf1-x12d.google.com with SMTP id u13so23073354lff.12
 for <linux-rockchip@lists.infradead.org>; Tue, 21 Dec 2021 07:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RalMfMgmm4bE+mLMQy4sGVVWjCHlDXopwkwD5NVelf8=;
 b=VLl1YCl6USv0bxS6MkGksCaQGmN4vDXbADincTVtd0JSYiqGA+9HN55sTGz0DLEAPn
 7J+yXBZVsGf8rY4nm7YFSUEi3dCjlKFlZWqjyx+G0y0U2zSXMIM9+9u9bJoKJGA3a6NW
 pAayd/m6U8/g7mNTgevay7/YfjDojP/ScMnJDbzlhkdxjjiqgECiBGjAM4fF3s1Xq6MT
 3CaVrfeC58xJqyEszl0j5aEcKVmEsqXigTlyAEqAmC9ZB0Kfs+CT4Pkvu2GXm+0dIyXt
 itqe27aozDSlwLIoK7tDVPxNrVXT1FqtjaX+IpNbcsGvz5kYQlw9YsO3NUsUgKJ517XU
 MphA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RalMfMgmm4bE+mLMQy4sGVVWjCHlDXopwkwD5NVelf8=;
 b=wsiGYb5QfGUg7pGjRf/06m3nyg5THzgVun0lQjyTrlE+wr7nc5fTeoeUIYQTXqidg5
 jaVwm7OXFH9KYHCJpzA44ZQ6mj7nnKaKxEiD7RV6jCT2SOJu9drcE2IUL7WGIssOhTSu
 eQJZGgVSsgh73hBpWy5jXzkLdwCg+nTunPTk+sGNVy3wfv2y65JhZjMawdjCQuxv9m7S
 poIVNMXwWOgwRoAXYKSKhz9WCJsa08MLdDhI1ym1eyVvT4B5Y6YJTCXo4IYxTN+eaWEF
 A3TP3ihxbf0Y8+gmQqF3ewQ62WKDLZXxbEEeHdkIpPXydgYaWV51rXlW4MMvRh/MA2Uv
 XHAQ==
X-Gm-Message-State: AOAM533Fg4GiUgQQo10H/rnQ3Qrvq1O91rPtB8WfObIWQBlJk3n8ffWF
 LY06YKnCAo4jAdIqohNqVxm+2Jn8u/Q=
X-Google-Smtp-Source: ABdhPJz7fLFCGBuy61gb99wKVKgo0CIIMFH8e40g+6PLGobQlr8Q/9ZuMZna0ReWYAXfzjAqXvpTyw==
X-Received: by 2002:a05:6512:2398:: with SMTP id
 c24mr3674756lfv.194.1640102197484; 
 Tue, 21 Dec 2021 07:56:37 -0800 (PST)
Received: from [192.168.2.145] (46-138-43-24.dynamic.spd-mgts.ru.
 [46.138.43.24])
 by smtp.googlemail.com with ESMTPSA id w10sm1882066lfu.173.2021.12.21.07.56.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Dec 2021 07:56:37 -0800 (PST)
Subject: Re: [PATCH v3] mfd: rk808: add reboot support to rk808.c
To: Peter Geis <pgwipeout@gmail.com>, Lee Jones <lee.jones@linaro.org>
Cc: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org
References: <20211220170624.1009898-1-pgwipeout@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c4ad88c5-42bd-9116-2934-135c49781ce8@gmail.com>
Date: Tue, 21 Dec 2021 18:56:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211220170624.1009898-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_075640_217508_DF8EC33A 
X-CRM114-Status: GOOD (  19.92  )
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

MjAuMTIuMjAyMSAyMDowNiwgUGV0ZXIgR2VpcyDQv9C40YjQtdGCOgo+IFRoaXMgYWRkcyByZWJv
b3Qgc3VwcG9ydCB0byB0aGUgcms4MDggcG1pYyBkcml2ZXIgYW5kIGVuYWJsZXMgaXQgZm9yCj4g
dGhlIHJrODA5IGFuZCByazgxNyBkZXZpY2VzLgo+IFRoaXMgb25seSBlbmFibGVzIGlmIHRoZSBy
b2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlciBmbGFnIGlzIHNldC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IFJldmlld2VkLWJ5
OiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4gLS0tCj4gVGhpcyBwYXRjaCB3
YXMgY3JlYXRlZCB0byBhZGRyZXNzIGlzc3VlcyB3aXRoIHBzY2ktcmVzZXQgb24gcmszNTZ4Cj4g
Y2hpcHMuIFVudGlsIHRoZSByazM1Nnggc2VyaWVzIEFURiBvcGVuIHNvdXJjZSBjb2RlIGlzIHJl
bGVhc2VkIHNvIHdlCj4gY2FuIGZpeCB0aGUgaXNzdWUgYXQgdGhlIHNvdXJjZSwgdGhpcyBpcyB0
aGUgb25seSB3YXkgdG8gZW5zdXJlIHJlbGlhYmxlCj4gcmVzZXR0aW5nIG9uIGRldmljZXMgdXNp
bmcgdGhlc2UgY2hpcHMuCj4gCj4gQWZ0ZXIgdGVzdGluZyB0aGUgcms4MDggKHRoYW5rcyBSb2Jp
biEpLCBpdCB3YXMgZm91bmQgREVWX09GRl9SU1QgZG9lcwo+IG5vdCByZXNldCB0aGUgUE1JQyB0
byBhIHBvd2VyIG9uIHN0YXRlLiBTaW5jZSB0aGUgcms4MDUgYW5kIHJrODE4IG1hdGNoCj4gdGhp
cyByZWdpc3RlciBsYXlvdXQsIEknbSByZW1vdmluZyBzdXBwb3J0IGZvciBhbGwgdGhyZWUgaW4g
dGhlIHYyLgo+IEl0IG1heSBiZSBwb3NzaWJsZSB0byBhZGQgc3VwcG9ydCB0byB0aGVtIHVzaW5n
IGFuIFJUQyB3YWtldXAsIGJ1dCB0aGF0Cj4gaGFzIG5vdCBiZWVuIGV4cGxvcmVkIGFuZCBpcyBv
dXRzaWRlIHRoZSBzY29wZSBvZiB0aGlzIHBhdGNoLgo+IAo+IENoYW5nZWxvZzoKPiBWNDoKPiAt
IHJlb3JkZXIgcms4MDhfcmVzdGFydF9ub3RpZnkgKFRoYW5rcyBEbWl0cnkpCj4gLSBkcm9wIG9m
X3Byb3BlcnR5X3JlYWRfYm9vbCBiZWZvcmUgdW5yZWdpc3RlciAoR29vZCBjYXRjaCBGcmFuaykK
Ck1pZ2h0IGJlIGJldHRlciB0byByZXNlbmQgaXQgd2l0aCB2NCBpbiB0aGUgY29tbWl0IHRpdGxl
LCB0byBhdm9pZApjb25mdXNpb24uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
