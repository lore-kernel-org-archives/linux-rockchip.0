Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAED6EB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 15:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XLXI9dd9unDkwuWUPMGRs+Jo+shw0OE2RQc7S3lsc8=; b=mEK6c8966oSSMF
	ZFihiDkca3b9Mzu6936GklnEdDlSUjm+EUjkTWj3Zzk5+xmE2bF2TkOjS42NBzHo3Ahh18rncGN9i
	0tbKjWAxpN/fd3/0l8itNIqdlDUPAjLOwEOI55gPTtNgYwUSHq2FeL1N1Sn14Ku1/AZ06MRtByflP
	y3Jf4GWQzwg/IEmNAJYQrE2oMrjQgmP0jHRpmApD44Ivdcr+2o3uVgKZ/q8W5Nu5ZYy1sxX0hB8Xj
	/ROJJjncQOEdnBavr+fN/9IjiLYy4JWoen7bnq/E7Le89hhHbyqAMizimBHDbeq8YOWd1zqAinYWF
	62CueeUupNANdRxAx6Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCMDb-0017mW-2j;
	Thu, 22 Jun 2023 15:27:31 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCMDX-0017lK-24;
	Thu, 22 Jun 2023 15:27:28 +0000
Received: from [IPV6:2a01:e0a:120:3210:7d72:676c:e745:a6ef] (unknown [IPv6:2a01:e0a:120:3210:7d72:676c:e745:a6ef])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9F2486606EDE;
	Thu, 22 Jun 2023 16:27:25 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687447646;
	bh=Yz+NRZOehOEU34hZagSNPjsgeqyatJPhUhG6wIg2Iio=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=V8Imr1qeQyMMtuQ6blSrhADA3yYPLUM83j3zTux9jWDQffVzlaZrPfjWcPSu8Hk3e
	 CjET/duybztDC6v97V7rZ+VUhyRSgRjOi9iIjQj5YQMFoiKN6MnVxQNlvAJy1MHQLH
	 n50qvwtAv2LD4c0FuoMOImVHMOMPZPnfWcGTU0rtmzhFQVdwdTEUjE93x7NkYKmBAV
	 9qZMTQKrDqEXE1dUmcVQqVHOVnpXADp4k8NwGkLsRg8ZpcITM/OPJAPhCjJWu9K/d6
	 XHkwcQZNRn0FF3f1bPBSQBshUdzZvevH7svbFJEKCEGB/xdZfPpm3K20Udcz5bQw4r
	 wXEDVkApYNnqw==
Message-ID: <6798cc82-d5dc-5603-7e7e-57ce09c09d24@collabora.com>
Date: Thu, 22 Jun 2023 17:27:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 08/11] media: verisilicon: postproc: Fix down scale
 test
Content-Language: en-US
To: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
 <20230622131349.144160-9-benjamin.gaignard@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20230622131349.144160-9-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_082727_820218_DC49661F 
X-CRM114-Status: GOOD (  15.03  )
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

CkxlIDIyLzA2LzIwMjMgw6AgMTU6MTMsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4g
RG8gbm90IGFsbG93IGRvd24gc2NhbGluZyBpZiB0aGUgc291cmNlIGJ1ZmZlciByZXNvbHV0aW9u
IGlzCj4gc21hbGxlciB0aGFuIGRlc3RpbmF0aW9uIG9uZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEJl
bmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+
ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYyB8
IDUgKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb19wb3N0cHJvYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fcG9zdHByb2MuYwo+IGluZGV4IGE2YjY3ZDBjYzY2Yy4uYTRmMmM1ZTg5MzJjIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rwcm9j
LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0
cHJvYy5jCj4gQEAgLTEwMyw3ICsxMDMsMTAgQEAgc3RhdGljIHZvaWQgaGFudHJvX3Bvc3Rwcm9j
X2cxX2VuYWJsZShzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+ICAgCj4gICBzdGF0aWMgaW50IGRv
d25fc2NhbGVfZmFjdG9yKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gICB7Cj4gLQlpZiAoY3R4
LT5zcmNfZm10LndpZHRoID09IGN0eC0+ZHN0X2ZtdC53aWR0aCkKPiArCWlmIChjdHgtPnNyY19m
bXQud2lkdGggPD0gY3R4LT5kc3RfZm10LndpZHRoKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWlm
IChjdHgtPnNyY19mbXQuaGVpZ2h0IDw9IGN0eC0+ZHN0X2ZtdC5oZWlnaHQpCgpPbmUgdGVzdCB3
aWxsIGJlIGVub3VnaC4KSSB3aWxsIGZpeCB0aGF0IGluIHY0LgoKQmVuamFtaW4KCj4gICAJCXJl
dHVybiAwOwo+ICAgCj4gICAJcmV0dXJuIERJVl9ST1VORF9DTE9TRVNUKGN0eC0+c3JjX2ZtdC53
aWR0aCwgY3R4LT5kc3RfZm10LndpZHRoKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
