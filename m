Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B8BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 May 2022 14:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7NmSnrc7d7ayFHzsu3A5fIMnwajjD6FuLGadjxU7gk=; b=x/EQ64PHE5FPh6
	ym4Uaekulv8BdPEa3nuH8ohBsY+HpBB3gNW+CCauTTJOe2ygmz2TEAq3buDW11HQpawBmczqtC5jD
	n48fbrLJM8TIZOo1ffItHOmyg3Zfdm05yNaGWyKzM2N4g8JZ5vY1kjT6qV2CdFP5eZLXEDUUTelRz
	Fm1LKWVkmjze36WqYTLKGkhn+vGQpM56TTc+lEEGBBnt5HzmIjMSeiNlCvJsgqwlKx13sBmExXT1B
	qhnq3JPUMdxiSjb+XHC5d95+JV84cvw7LIlLeQ1ZYzu0VYuzAOfZM5b5ML17UShLXTXTCMVqGMWZE
	Nq8Ao03itvtKzjNnK2mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnLK5-007NrV-Tf; Sat, 07 May 2022 14:22:17 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnLJu-007NpO-9T; Sat, 07 May 2022 14:22:07 +0000
Received: by mail-pl1-x62f.google.com with SMTP id p6so9446386plr.12;
 Sat, 07 May 2022 07:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=+bDRRJsf3sxhL7K6Xwk8ODyk2HCXEePcVNx/7zFAdus=;
 b=H4FWj5WmxUs89S2kegyV8I5mA3vlMjbj0ynPj/sKgKb3juR3lI1kLZawQK+7nacdCm
 IusXPg0GJxGlwfAC7sdpx6R2ifl6cdycNKIaZA6GhZ/vK1VFfxSq9ZnBZKmAeIHNEvEe
 erNDOYKVvR/jKAQjZQCAxGMfQdf6oPfz8wAvZnbC/zAVw4XiG/sJNWzJgVdP8LH8+gmJ
 afa4ctpuajrkC6673XAcCAWsAV4Ixp+Satx1xZ6XARVsjZxt3HhS9gRyY8cKuoF+wj13
 +MQIjwjPxNBIdQ52i22csiGo6K/GCQ9ETIqM6m/Od0FCC52Q+4h5zOiI3YaVAKBUWEsO
 QEiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=+bDRRJsf3sxhL7K6Xwk8ODyk2HCXEePcVNx/7zFAdus=;
 b=YMzU7C2c6bmXLGZ3MtOuMf8Nat01/r9wVyvyz9pd3SNfJ/oIFPLB0BJW2vjHlGpfbX
 RnHFdSl33Ku8aaceQDPzSk94XIjYi6MbcHRB3X2Qqy8TlFJQMdpvFqrVZI1q4Ay6SVFW
 YSCA738T8HAsiLTBsRo+mkhSfD+RV4umnqZliZVusaoFpwluQ6ukE8S0hGm19dSdBbbb
 ipOlN+lt0t/OcnpEz3uFLQRhP+eKsijUtublJsurPtkcZWeGWliNAjdxDueGaLxzkwpu
 A2jo77oR7iIV035zT/k3mO4lx5FLG6AvCm43QMUuUkShfOkOEf5AXYSOYFhUKFMEQbhI
 9BEg==
X-Gm-Message-State: AOAM530YAD8sCWSY/UjpFPXpDAgxdx0sZxgR3eWo9h+U9KdNSm29O96n
 UqlHsLs//t9Ni22a5TE4os8=
X-Google-Smtp-Source: ABdhPJyBwx+QyUvBHxmo3pa4xzm9Iu0rW7rJ2VjQ8ClzzGA78qBTPiOFAThBM3zN/4KOx377t/k7jw==
X-Received: by 2002:a17:90b:1651:b0:1dc:aec3:c17 with SMTP id
 il17-20020a17090b165100b001dcaec30c17mr9645489pjb.43.1651933324129; 
 Sat, 07 May 2022 07:22:04 -0700 (PDT)
Received: from [172.30.1.41] ([14.32.163.5]) by smtp.gmail.com with ESMTPSA id
 l186-20020a6391c3000000b003c14af505f8sm5212086pge.16.2022.05.07.07.22.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 May 2022 07:22:03 -0700 (PDT)
Message-ID: <6c6ec0db-111c-e48f-57ce-0e444a0d168e@gmail.com>
Date: Sat, 7 May 2022 23:21:59 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during
 transitions
Content-Language: en-US
From: Chanwoo Choi <cwchoi00@gmail.com>
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-pm@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid>
 <8824147c-5512-a7a5-9e89-60b510111500@gmail.com> <3484357.R56niFO833@diego>
 <582e3645-b24e-356e-7f0f-0d37bb1e32e6@gmail.com>
In-Reply-To: <582e3645-b24e-356e-7f0f-0d37bb1e32e6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220507_072206_386807_0C291E36 
X-CRM114-Status: GOOD (  17.58  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjIuIDQuIDE0LiAwODoxMywgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IE9uIDIyLiA0LiAxNC4g
MDc6NDUsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBIaSwKPj4KPj4gQW0gRG9ubmVyc3RhZywg
MTQuIEFwcmlsIDIwMjIsIDAwOjE0OjQwIENFU1Qgc2NocmllYiBDaGFud29vIENob2k6Cj4+PiBP
biAyMi4gNC4gNi4gMTA6NDgsIEJyaWFuIE5vcnJpcyB3cm90ZToKPj4+PiBTZWUgdGhlIHByZXZp
b3VzIHBhdGNoICgic29jOiByb2NrY2hpcDogcG93ZXItZG9tYWluOiBNYW5hZ2UgcmVzb3VyY2UK
Pj4+PiBjb25mbGljdHMgd2l0aCBmaXJtd2FyZSIpIGZvciBhIHRob3JvdWdoIGV4cGxhbmF0aW9u
IG9mIHRoZSBjb25mbGljdHMuCj4+Pj4gV2hpbGUgQVJNIFRydXN0ZWQgRmlybXdhcmUgbWF5IGJl
IG1vZGlmeWluZyBtZW1vcnkgY29udHJvbGxlciBhbmQKPj4+PiBwb3dlci1kb21haW4gc3RhdGVz
LCB3ZSBuZWVkIHRvIGJsb2NrIHRoZSBrZXJuZWwncyBwb3dlci1kb21haW4gZHJpdmVyLgo+Pj4+
Cj4+Pj4gSWYgdGhlIHBvd2VyLWRvbWFpbiBkcml2ZXIgaXMgZGlzYWJsZWQsIHRoZXJlIGlzIG5v
IHJlc291cmNlIGNvbmZsaWN0Cj4+Pj4gYW5kIHRoaXMgYmVjb21lcyBhIG5vLW9wLgo+Pj4+Cj4+
Pj4gU2lnbmVkLW9mZi1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+
Cj4+Pj4gLS0tCj4+Pj4KPj4+PiDCoMKgIGRyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMgfCAx
MyArKysrKysrKysrKysrCj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygr
KQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMgCj4+
Pj4gYi9kcml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5jCj4+Pj4gaW5kZXggZTQ5NGQxNDk3ZDYw
Li5kYWZmNDA3MDI2MTUgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9k
bWMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMKPj4+PiBAQCAtMjEs
NiArMjEsNyBAQAo+Pj4+IMKgwqAgI2luY2x1ZGUgPGxpbnV4L3J3c2VtLmg+Cj4+Pj4gwqDCoCAj
aW5jbHVkZSA8bGludXgvc3VzcGVuZC5oPgo+Pj4+ICsjaW5jbHVkZSA8c29jL3JvY2tjaGlwL3Bt
X2RvbWFpbnMuaD4KPj4+PiDCoMKgICNpbmNsdWRlIDxzb2Mvcm9ja2NoaXAvcmszMzk5X2dyZi5o
Pgo+Pj4+IMKgwqAgI2luY2x1ZGUgPHNvYy9yb2NrY2hpcC9yb2NrY2hpcF9zaXAuaD4KPj4+PiBA
QCAtOTMsNiArOTQsMTYgQEAgc3RhdGljIGludCByazMzOTlfZG1jZnJlcV90YXJnZXQoc3RydWN0
IGRldmljZSAKPj4+PiAqZGV2LCB1bnNpZ25lZCBsb25nICpmcmVxLAo+Pj4+IMKgwqDCoMKgwqDC
oCBtdXRleF9sb2NrKCZkbWNmcmVxLT5sb2NrKTsKPj4+PiArwqDCoMKgIC8qCj4+Pj4gK8KgwqDC
oMKgICogRW5zdXJlIHBvd2VyLWRvbWFpbiB0cmFuc2l0aW9ucyBkb24ndCBpbnRlcmZlcmUgd2l0
aCBBUk0gCj4+Pj4gVHJ1c3RlZAo+Pj4+ICvCoMKgwqDCoCAqIEZpcm13YXJlIHBvd2VyLWRvbWFp
biBpZGxpbmcuCj4+Pj4gK8KgwqDCoMKgICovCj4+Pj4gK8KgwqDCoCBlcnIgPSByb2NrY2hpcF9w
bXVfYmxvY2soKTsKPj4+PiArwqDCoMKgIGlmIChlcnIpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAg
ZGV2X2VycihkZXYsICJGYWlsZWQgdG8gYmxvY2sgUE1VOiAlZFxuIiwgZXJyKTsKPj4+PiArwqDC
oMKgwqDCoMKgwqAgZ290byBvdXRfdW5sb2NrOwo+Pj4+ICvCoMKgwqAgfQo+Pj4+ICsKPj4+PiDC
oMKgwqDCoMKgwqAgLyoKPj4+PiDCoMKgwqDCoMKgwqDCoCAqIFNvbWUgaWRsZSBwYXJhbWV0ZXJz
IG1heSBiZSBiYXNlZCBvbiB0aGUgRERSIGNvbnRyb2xsZXIgCj4+Pj4gY2xvY2ssIHdoaWNoCj4+
Pj4gwqDCoMKgwqDCoMKgwqAgKiBpcyBoYWxmIG9mIHRoZSBERFIgZnJlcXVlbmN5Lgo+Pj4+IEBA
IC0xOTgsNiArMjA5LDggQEAgc3RhdGljIGludCByazMzOTlfZG1jZnJlcV90YXJnZXQoc3RydWN0
IGRldmljZSAKPj4+PiAqZGV2LCB1bnNpZ25lZCBsb25nICpmcmVxLAo+Pj4+IMKgwqDCoMKgwqDC
oCBkbWNmcmVxLT52b2x0ID0gdGFyZ2V0X3ZvbHQ7Cj4+Pj4gwqDCoCBvdXQ6Cj4+Pj4gK8KgwqDC
oCByb2NrY2hpcF9wbXVfdW5ibG9jaygpOwo+Pj4+ICtvdXRfdW5sb2NrOgo+Pj4+IMKgwqDCoMKg
wqDCoCBtdXRleF91bmxvY2soJmRtY2ZyZXEtPmxvY2spOwo+Pj4+IMKgwqDCoMKgwqDCoCByZXR1
cm4gZXJyOwo+Pj4+IMKgwqAgfQo+Pj4KPj4+IEFja2VkLWJ5OiBDaGFud29vIENob2kgPGN3MDAu
Y2hvaUBzYW1zdW5nLmNvbT4KPj4KPj4gc28gSSBndWVzcyB5b3UncmUgb2sgd2l0aCBtZSBwaWNr
aW5nIHVwIGJvdGggcGF0Y2hlcywgcmlnaHQ/Cj4+IFtKdXN0IG1ha2luZyBzdXJlIDotKSBdCj4g
Cj4gVGhpcyBwYXRjaCBoYXZlIHRoZSBkZXBlbmRlbmN5IG9mIGxhdGVzdCBkZXZmcmVxLW5leHQg
YnJhbmNoLgo+IFNvIHRoYXQgbmVlZCB0byBtYWtlIHRoZSBpbW11dGFibGUgYnJhbmNoIGJldHdl
ZW4gcm9ja2NoaXAgYW5kIGRldmZyZXEuCj4gCgpIaSBIZWlrbyBhbmQgQnJpYW4sCgpJcyB0aGVy
ZSBhbnkgb3RoZXIgcHJvZ3Jlc3M/CgpJTUhPLCBpZiByb2NrY2hpcCBtYWludGFpbmVyIHJlcGx5
IHRoZSBhY2tlZC1ieSBmcm9tIHBhdGNoMQphbmQgdGhlbiBhZ3JlZSB0aGVzZSBwYXRjaGVzIHRv
IGJlIGFwcGxpZWQgdG8gZGV2ZnJlcS5naXQsCkkgY2FuIHRha2UgdGhlbS4KCi0tIApCZXN0IFJl
Z2FyZHMsClNhbXN1bmcgRWxlY3Ryb25pY3MKQ2hhbndvbyBDaG9pCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
