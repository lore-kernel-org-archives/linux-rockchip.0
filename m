Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23DBAC98317
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 11:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uKA9YJEx5ys7rftLFqIeSeTYIbc+WwExMHueRekU5g=; b=UkbJ7+nMJZ+si+
	QCl3a07Cf4qcVvQ0p2ADanODXSiiE8clXRP5gE5gTpNdw8WWzrTi8zdhmc7XmTnl1kUZE07+dFEUh
	aXhmLsyoT96bV3oUogMdD4ngse+hKhLOJK08demYwXKhfclAbC7K1fXYATTVQHNC/kb1BKlSFBgDQ
	nLQyjlQ/jwLmwDKWy31d2rcttYrJeYYy4pcN+1gccx6SZvpmvHPUwPfp7ul73lVVXwt3EnD3dyogY
	YxQP7xngJpNOXIDZUbePhKoAsdMSeQ6X+qiQbXFkSibkt8I9mUCzuhxtgaJ1wvAM9xtVlLUWr2rC9
	+8U0O9NjlmRVMaJ1Te2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hNt-0000000ApS7-2lGj;
	Thu, 24 Sep 2026 11:13:01 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hNr-0000000ApRD-2kfl
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 11:13:00 +0000
Received: by mail-pj2-x11.google.com with SMTP id 98e67ed59e1d1-396ccb652d7so1348727a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 04:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790248379; x=1790853179; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xajPQk8GjdXK5kaUdC9KQJ19YcliIXFOaF4kzScKofU=;
        b=cNrcxY/SAqQ7XJg5ECEu/gyoC2zSvXs85CFF8tpk5yw+EomuiZUddGJVmVzZ4z+PeR
         Aw8UhDpKl5WhJwk0qMEVUvpWE1G+TJiXUDZEqI6Njrnc3poBUg4HRskHt20Rqp6g/zEs
         D651yb+jJhPx7w2mZ9Bnc04e2mvy1JQaGfhgx3xfH4yQa/J5aaLiZ0NxNRLdoqQWmQaU
         cYBuBNH7PbXPUTDJVy+kbp98LCWk7mtDxwvsQ0YmVQhc8DVdFm1QANZnDEIpnsYVzq10
         Sxfma6TPoES2HYRbdrgdIe8f1TqQWinkAVOSDQ/udNdKhADcStsT9RUx2RpCb6FQl79a
         4nzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790248379; x=1790853179;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xajPQk8GjdXK5kaUdC9KQJ19YcliIXFOaF4kzScKofU=;
        b=g/WLIXEGm99oUE8e4HLTRtW/X2JqF8ic8GrpHmxT4bIFqtUbebfMUM6KDvYg2WWTGq
         uVvnMFmTzKPCQ8rR55sXs7aznpIJnxqFY6hNlHoaQFztg0wOopWnxozQGy4fkW+KwxKZ
         XbqHOvvpSbWqKrSC7TcDqnnKrMgAaFy0jbibrweWvDNkw3uE+NdSHDGX9Yz/xbzANJXy
         +vO8S+rN1zhNonrydpTBiq+ynipF/rpnOT2mHOjddTIXPfSkSFI9cEn2fP4Vnl080Wf2
         pfYzpvoBTE9sW61zxfD11h2Vf/NLRrl4rie843fsQU1hL9YAO4qcuNJg1b7oMkkVhRkf
         ld4Q==
X-Forwarded-Encrypted: i=1; AKwUvBy3ceMCXbCvKHhvBydkBVMGX65l1G7U1ltVuKQyDcsOxOGmtS6WsrPkPNHCiL+Ln9FD9HFISzCZolEF23NG+A==@lists.infradead.org
X-Gm-Message-State: AFuF++n4IumGCY4t037fWf+0+yx/ousWAF5tcHlPwmlXWYx90hPUBEjh
	Oh49higSdlmKvfqFaMN9V1zu+BYbNNO6rWkFdob/p8RaPSJB11vbQjsf
X-Gm-Gg: AYBFou1uNHWYq8m7Xe5HsPc78/x6f3jn0KcDI0zgz5uu3Iq3hJu9HdFfr91IJaFFJu3
	pLKTwxaOFfvM42RubGy9HyOQH54MvsaMNqQT3z5Q1YICs296DUulFyO9ozTLsuSPHJFvH3qoNi2
	KDdQzyv0AAhiG/HlsOK7IauSKwzBXHByG+jxwP/pSwC+fzxmduvwciSKdFQUrDQdW4MA/t8wpuv
	NpqsmQZSigA/iQRJ4HT7zzNh3/NNzmDyKu75n7aLIbpGs8mjrDG9Fae+tj+D4fjJs2ok/DQRW0S
	tjdS8TA4wzzFcygzKA8DDvQ8D+U3Q/oiL9E0F0hcRkgxzUEcW9zjrf5p4p3w9QOaPDGQKGnYOO2
	ItofwcZbD0SQzklc77XJPJX7eZk70awGwm74l1EVevtVN1eSyMZqC+jLWYnjLFYZjn7ZCCLAAOP
	fiKzbQ6U15GcB/Gwj58tKeRQOBRmTJoCWtwPKQNPkljVMVtUcKAtaTj6D3satSYEW9XayPsmY26
	37DMuByAGMPxeJwAy+kYZYLxXYQHTXZyw==
X-Received: by 2002:a17:90b:314e:b0:39e:5ade:f9de with SMTP id 98e67ed59e1d1-3a098b431dbmr1903170a91.26.1790248378423;
        Thu, 24 Sep 2026 04:12:58 -0700 (PDT)
Received: from arch.localdomain (123202092053.ctinets.com. [123.202.92.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a0974ec5dfsm4399478a91.3.2026.09.24.04.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 04:12:58 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: damon.ding@rock-chips.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	jernej.skrabec@gmail.com,
	jerrysteve1101@gmail.com,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	luca.ceresoli@bootlin.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	simona@ffwll.ch,
	tzimmermann@suse.de
Subject: Re: [PATCH RSEND] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Thu, 24 Sep 2026 19:12:49 +0800
Message-ID: <20260924111251.936444-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <a0754d11-d88b-4dda-972f-7c696a037bc2@rock-chips.com>
References: <a0754d11-d88b-4dda-972f-7c696a037bc2@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_041259_698221_EA0DB794 
X-CRM114-Status: GOOD (  30.42  )
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

PiBPbiA5LzI0LzIwMjYgMTE6MjQgQU0sIERhbW9uIERpbmcgd3JvdGU6Cj4gPiBIaSBKdW4sCj4g
PiAKPiA+IE9uIDkvMjQvMjAyNiAxMDowNCBBTSwgSnVuIFlhbiB3cm90ZToKPiA+PiBUaGUgRFAg
UEhZIGlzIG9wdGlvbmFsOiB0aGUgUm9ja2NoaXAgUkszMzk5IGVEUCBjb250cm9sbGVyICh1c2Vk
IGFzIHRoZQo+ID4+IGludGVybmFsIGVEUCBwb3J0KSBoYXMgbm8gc2VwYXJhdGUgUEhZIGRldmlj
ZSBhbmQgcmVsaWVzIG9uIGl0cyBidWlsdC1pbgo+ID4+IFBIWSwgd2hpY2ggaXMgcHJvZ3JhbW1l
ZCBkaXJlY3RseSB0aHJvdWdoIHRoZSBHUkYgcmVnaXN0ZXJzLCBzbyBpdHMgRFQKPiA+PiBub2Rl
IGNhcnJpZXMgbm8gInBoeXMiLyJwaHktbmFtZXMiIHByb3BlcnR5Lgo+ID4+Cj4gPj4gUmVxdWVz
dGluZyB0aGUgUEhZIHdpdGggZGV2bV9waHlfZ2V0KCkgdGhlcmVmb3JlIHJldHVybnMgLUVOT0RF
ViAob3IKPiA+PiAtRU5PU1lTIHdoZW4gQ09ORklHX0dFTkVSSUNfUEhZIGlzIGRpc2FibGVkKSBh
bmQgdGhlIGRyaXZlciBsb2dzIGEKPiA+PiBtaXNsZWFkaW5nICJubyBEUCBwaHkgY29uZmlndXJl
ZCIgZXJyb3IgYXQgcHJvYmUgdGltZSBiZWZvcmUgZmFsbGluZyBiYWNrCj4gPj4gdG8gYSBOVUxM
IHBoeS4KPiA+Pgo+ID4+IFVzZSBkZXZtX3BoeV9vcHRpb25hbF9nZXQoKSBpbnN0ZWFkLCB3aGlj
aCByZXR1cm5zIE5VTEwgd2hlbiB0aGUgUEhZIGlzCj4gPj4gYWJzZW50IGFuZCBvdGhlcndpc2Ug
YmVoYXZlcyBpZGVudGljYWxseSwgYW5kIGRyb3AgdGhlIG1hbnVhbCAtRU5PREVWLwo+ID4+IC1F
Tk9TWVMgaGFuZGxpbmcuIFRoaXMgYWxzbyByZW1vdmVzIHRoZSBzcHVyaW91cyBlcnJvciBtZXNz
YWdlLgo+ID4+Cj4gPj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpkZWVwc2Vlay12NC1mbGFzaAo+ID4+
IFNpZ25lZC1vZmYtYnk6IEp1biBZYW4gPGplcnJ5c3RldmUxMTAxQGdtYWlsLmNvbT4KPiA+PiAt
LS0KPiA+PiDCoCAuLi4vZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5j
IHwgMTggKysrLS0tLS0tLS0tLS0tLS0tCj4gPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgYi8gCj4gPj4gZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiA+PiBpbmRleCAx
OGU3NmQxZTc4ZTEuLjI4ZWI2NjhkM2UzZiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+ID4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4gPj4gQEAgLTE0Mjcs
MjEgKzE0MjcsOSBAQCBhbmFsb2dpeF9kcF9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCAKPiA+PiBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgKnBsYXRfZGF0YSkKPiA+PiDCoMKgwqDCoMKg
IGlmIChyZXQpCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKHJldCk7Cj4g
Pj4gLcKgwqDCoCBkcC0+cGh5ID0gZGV2bV9waHlfZ2V0KGRwLT5kZXYsICJkcCIpOwo+ID4+IC3C
oMKgwqAgaWYgKElTX0VSUihkcC0+cGh5KSkgewo+ID4+IC3CoMKgwqDCoMKgwqDCoCBkZXZfZXJy
KGRwLT5kZXYsICJubyBEUCBwaHkgY29uZmlndXJlZFxuIik7Cj4gPj4gLcKgwqDCoMKgwqDCoMKg
IHJldCA9IFBUUl9FUlIoZHAtPnBoeSk7Cj4gPj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXQpIHsK
PiA+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKgo+ID4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKiBwaHkgaXRzZWxmIGlzIG5vdCBlbmFibGVkLCBzbyB3ZSBjYW4gbW92ZSBmb3J3YXJk
Cj4gPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGFzc2lnbmluZyBOVUxMIHRvIHBoeSBw
b2ludGVyLgo+ID4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAocmV0ID09IC1FTk9TWVMgfHwgcmV0ID09IC1FTk9ERVYpCj4gPj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcC0+cGh5ID0gTlVMTDsKPiA+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCj4gPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gRVJSX1BUUihyZXQpOwo+ID4+IC3CoMKgwqDCoMKgwqDCoCB9Cj4gPj4gLcKg
wqDCoCB9Cj4gPiAKPiA+IEl0IHNob3VsZCBiZSBiZXR0ZXIgdG8gYWRkIHNvbWUgY29tbWVudHMg
aGVyZToKPiA+IAo+ID4gLyoKPiA+ICDCoCogRXh5bm9zNS9SSzMyODgvUkszMzk5IHVzZSBBbmFs
b2dpeCBEUCBjb250cm9sbGVyIGJ1aWx0LWluIFBIWSwKPiA+ICDCoCogbm8gc2VwYXJhdGUgUEhZ
IGNvbmZpZ3VyYXRpb24gaXMgbmVlZGVkLgo+ID4gIMKgKi8KPiAKPiBXZWxsLCBJIHRoaW5rIGl0
IHNob3VsZCBiZSBmaXhlZCB0bzoKPiAKPiAvKgo+ICAgKiBSSzMyODgvUkszMzk5IHVzZSBBbmFs
b2dpeCBEUCBjb250cm9sbGVyIGJ1aWx0LWluIFBIWSwKPiAgICogbm8gZXh0cmEgUEhZIGNvbmZp
Z3VyYXRpb24gaXMgcmVxdWlyZWQuCj4gICAqLwo+IAo+IFRoZSBFeHlub3M1eHh4IGNhc2UgbWF5
IGJlIG1vcmUgY29tcGxleC4KPiAKClRoYW5rcyBmb3IgdGhlIHJldmlldy4gSSB3aWxsIGFkZCB0
aGUgY29tbWVudHMgaW4gdGhlIHBhdGNoIGFuZCBzZW5kIHYyIHNvb24uCgo+ID4gCj4gPj4gK8Kg
wqDCoCBkcC0+cGh5ID0gZGV2bV9waHlfb3B0aW9uYWxfZ2V0KGRwLT5kZXYsICJkcCIpOwo+ID4+
ICvCoMKgwqAgaWYgKElTX0VSUihkcC0+cGh5KSkKPiA+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IEVSUl9DQVNUKGRwLT5waHkpOwo+ID4+IMKgwqDCoMKgwqAgZHAtPmNsb2NrID0gZGV2bV9jbGtf
Z2V0KCZwZGV2LT5kZXYsICJkcCIpOwo+ID4+IMKgwqDCoMKgwqAgaWYgKElTX0VSUihkcC0+Y2xv
Y2spKSB7Cj4gPiAKPiA+IFdpdGggdGhlIGNvbW1lbnQgYWRkZWQ6Cj4gPiBSZXZpZXdlZC1ieTog
RGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPiA+IAo+ID4gQmVzdCByZWdh
cmRzLAo+ID4gRGFtb24KPiA+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
