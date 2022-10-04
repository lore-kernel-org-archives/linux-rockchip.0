Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6044C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 14:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZV123iIpv4hE3fR3RQqqD/FmusAqTO30VPSZeE+6Mec=; b=eBuG73o/G+ZGL3
	eNoQvUH061JCvCCihdTkSf/5DR971+nuUmx35PMyFmYRCi7qhex+e5H8q2es9wedcU3M7xXbpiV7W
	QSldmxGjMH3UDSxUvVP99Q4kmbAdNhSQf7PE33/dCsMDXRgilqUJ3eVtTAxVUt0c5lr4jHjSGvKp7
	+AHDUK6ZBLPxTxmCV/eYnZrzENQhAb0ELxAOKlUmoIOPOr2klmdhnVFB5UyDMyADugzcQTJys4pVP
	tWXrSs4YvDs0YvbVmA0zPqblFiTiDIWMxrlePTKFrGK6oUsijfk+lJIw1axnmpHeHEpt91wJSaM9F
	6gUt+abC1Xj/GadFA1iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiil-009uVy-TF; Tue, 04 Oct 2022 14:16:31 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiib-009uTS-D5; Tue, 04 Oct 2022 14:16:22 +0000
Received: by mail-qt1-x82a.google.com with SMTP id g23so8188277qtu.2;
        Tue, 04 Oct 2022 07:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=0rcb/XYS0+1jVNuI0ke6JUw1K8jrLDic/BJeGiPZcZU=;
        b=Nb7AI8mIaXlDNuelDXhYbWsYeJW32CZ+i/wiXTNn2c5oOjNpGs9iCsAaV2oeWHwLIT
         SDI6UXxNq5F9hvPVXZIqCPA9azMPNmoer5JQ5BhBw4lENgT56h+sZEIZNqjh6V1h4G9P
         Ft+ermQqHufrq0bVKGiDCOYL2ihepTdkQS6JX3I65oJce1DBr8c8tEMELpx20tRGxDBJ
         ldHNm+6KFzizt7EXMaYITIzrfazRilx9TqCnd0eY4Oh+JcbS6OWWef15tjWub3CYFipn
         gHq+13ZNjH9JZWLaR18FnOdwPz3LzXnxEM/ljM4t7s7CEoVf1H5zT3bHpcrTtJZHCd+Z
         b4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=0rcb/XYS0+1jVNuI0ke6JUw1K8jrLDic/BJeGiPZcZU=;
        b=vvRST2ao4TbRBZntmQCPLI+M6zd6xRaFfEfL+/Y1vQNBfBTUr9NB0TgUpzIPssrFtK
         R2eYG8qdDjAA3vsnL7zU4WAPQPATpVG399ZfknObP6drNfuRrQy5c1CSPpYqzhzZ7iQX
         X0BDeNowz3kXG9nfB24umzAjlPVzls1TwhKg+yGo4l2IGTJ1hEowrlJ+iAwb73qIY0bi
         HonlAZiV16K/KAVhvrPVt4NniZenRdj1AFTf0l7Bp5pLbA5GDmlflCVtYa7psVzieXDR
         xg1BpqXeeaD4JLxHhIWSl6pakRMeX1zLDo/+VhPzJlxzwple6ZEqUbDKTSBT1aL+eyuy
         YwIw==
X-Gm-Message-State: ACrzQf0rEYjba5Ds7HcfQgEyeAWfYZr6A81uEaI0v4aiBIOOlkhTpfFK
	GdPkxaCNT27FQzR7L4M2S8Mj76noRyMgwduJc9s=
X-Google-Smtp-Source: AMsMyM7UckMfyKNGnzy+FEk+jo3I5YUg5GAscnC6pYd5O5nRkl4Y+yNDu4Z3ZKmu9xtWbxFSZ31qA6hiyWKGgNZp+s8=
X-Received: by 2002:ac8:5e07:0:b0:35c:e7fd:1e94 with SMTP id
 h7-20020ac85e07000000b0035ce7fd1e94mr20055258qtx.384.1664892979300; Tue, 04
 Oct 2022 07:16:19 -0700 (PDT)
MIME-Version: 1.0
References: <20221004134909.1692021-1-nuno.sa@analog.com> <20221004134909.1692021-16-nuno.sa@analog.com>
In-Reply-To: <20221004134909.1692021-16-nuno.sa@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 4 Oct 2022 17:15:43 +0300
Message-ID: <CAHp75VdiAzOUNMB3wD5og-uZi1W_7UWkqV6+s7jCxpaBs1VWRQ@mail.gmail.com>
Subject: Re: [PATCH v2 15/16] iio: health: max30102: do not use internal
 iio_dev lock
To: =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc: linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Neil Armstrong <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, 
	Hans de Goede <hdegoede@redhat.com>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam <festevam@gmail.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Alexandru Ardelean <aardelean@deviqon.com>, 
	Florian Boor <florian.boor@kernelconcepts.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Chen-Yu Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Kevin Hilman <khilman@baylibre.com>, Jonathan Cameron <jic23@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_071621_471579_270CA7E9 
X-CRM114-Status: GOOD (  18.62  )
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

T24gVHVlLCBPY3QgNCwgMjAyMiBhdCA0OjQ5IFBNIE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5j
b20+IHdyb3RlOgo+Cj4gVGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmljZSBkb2VzIG5vdCBx
dWl0ZSBmaXQgaW4gdGhlCj4gaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpIHR5cGljYWwg
dXNhZ2UuIEluIHRoaXMgY2FzZSwgd2Ugd2FudCB0bwo+IGtub3cgaWYgd2UgYXJlIGluIGJ1ZmZl
cmVkIG1vZGUgb3Igbm90IHRvIGtub3cgaWYgdGhlIGRldmljZSBpcyBwb3dlcmVkCj4gKGJ1ZmZl
ciBtb2RlKSBvciBub3QuIEFuZCBkZXBlbmRpbmcgb24gdGhhdCBtYXgzMDEwMl9nZXRfdGVtcCgp
IHdpbGwKPiBwb3dlciBvbiB0aGUgZGV2aWNlIGlmIG5lZWRlZC4gSGVuY2UsIGluIG9yZGVyIHRv
IGtlZXAgdGhlIHNhbWUKPiBmdW5jdGlvbmFsaXR5LCB3ZSB0cnkgdG86Cj4KPiAxLiBDbGFpbSBC
dWZmZXJlZCBtb2RlOwo+IDI6IElmIDEpIHN1Y2NlZWRzIGNhbGwgbWF4MzAxMDJfZ2V0X3RlbXAo
KSB3aXRob3V0IHBvd2VyaW5nIG9uIHRoZQo+ICAgIGRldmljZTsKPiAzOiBSZWxlYXNlIEJ1ZmZl
cmVkIG1vZGU7Cj4gNDogSWYgMSkgZmFpbHMsIENsYWltIERpcmVjdCBtb2RlOwo+IDU6IElmIDQp
IHN1Y2NlZWRzIGNhbGwgbWF4MzAxMDJfZ2V0X3RlbXAoKSB3aXRoIHBvd2VyaW5nIG9uIHRoZSBk
ZXZpY2U7Cj4gNjogUmVsZWFzZSBEaXJlY3QgbW9kZTsKPiA3OiBJZiA0KSBmYWlscywgZ290byB0
byAxKSBhbmQgdHJ5IGFnYWluLgo+Cj4gVGhpcyBkYW5jZSBiZXR3ZWVuIGJ1ZmZlcmVkIGFuZCBk
aXJlY3QgbW9kZSBpcyBub3QgcGFydGljdWxhcmx5IHByZXR0eQo+IChhcyB3ZWxsIGFzIHRoZSBs
b29wIGludHJvZHVjZWQgYnkgdGhlIGdvdG8gc3RhdGVtZW50KSBidXQgaXQgZG9lcyBhbGxvdwo+
IHVzIHRvIGdldCByaWQgb2YgdGhlIG1sb2NrIHVzYWdlIHdoaWxlIGtlZXBpbmcgdGhlIHNhbWUg
YmVoYXZpb3IuCgouLi4KCj4gKyAgICAgICAgICAgICAgIGlmIChpaW9fZGV2aWNlX2NsYWltX2J1
ZmZlcl9tb2RlKGluZGlvX2RldikpIHsKCldoeSBpcyByZXQgbm90IHVzZWQgaGVyZT8KCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgLyoKPiArICAgICAgICAgICAgICAgICAgICAgICAgKiBUaGlz
IG9uZSBpcyBhICpiaXQqIGhhY2t5LiBJZiB3ZSBjYW5ub3QgY2xhaW0gYnVmZmVyCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICogbW9kZSwgdGhlbiB0cnkgZGlyZWN0IG1vZGUgc28gdGhhdCB3
ZSBtYWtlIHN1cmUKPiArICAgICAgICAgICAgICAgICAgICAgICAgKiB0aGluZ3MgY2Fubm90IGNv
bmN1cnJlbnRseSBjaGFuZ2UuIEFuZCB3ZSBqdXN0IGtlZXAKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgKiB0cnlpbmcgdW50aWwgd2UgZ2V0IG9uZSBvZiB0aGUgbW9kZXMuLi4KPiArICAgICAg
ICAgICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoaWlvX2Rl
dmljZV9jbGFpbV9kaXJlY3RfbW9kZShpbmRpb19kZXYpKQoKLi4uYW5kIGhlcmU/Cgo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgZ290byBhbnlfbW9kZV9yZXRyeTsKCj4gKyAgICAg
ICAgICAgICAgIH0gZWxzZSB7Cgo+ICsgICAgICAgICAgICAgICB9CgpJLm8udy4gd2hhdCBlcnJv
ciBjb2RlIHdpbGwgYmUgdmlzaWJsZSB0byB0aGUgY2FsbGVyIGFuZCB3aHkuCgotLSAKV2l0aCBC
ZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
