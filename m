Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45F1AC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wz4Dmd+VnnQaP3OerYph1sVvV0y9x3oNOv5+ykxrJcw=; b=My+gl6A0VEZ1SO
	VJITpBQx9FolrZHYrdThxDfsNdXUh4K+hH0YtkxLFwC3rFIpZe8KtcUrG5CweghHYS6luQsonxjUF
	/PzRIqj4pyaIWiR9TN3u3wL9/yLXilK1/405Uzdn7kbcnAszHF+qeW0wcI5cLVcQuFBXx7qqXJJGI
	DtICeRnSHKo6jQaBJi0XkAz9KnU0ZKmvMA509woOhwXAZCOcs7eyREdHFBGP8Ksj3Pm8rOKsG0UZS
	4iYepPXE84JrIKJJZ06AsEt51q2FXB18HNFdhD8X8J7t4BJ/47B89hxU8IdabM9xqHVCEshVRbFG7
	5ChSUeeM+qD9TZX8hRUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcN1t-00CrMs-1o;
	Wed, 15 Mar 2023 09:02:41 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcN1q-00CrKM-2B
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 09:02:40 +0000
Received: by mail-pj1-x1034.google.com with SMTP id cn6so5467761pjb.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Mar 2023 02:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678870954;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8CEcDEmXoRVWl82ME6fHeckhCMMz/JzH8Qe2yY0Hg9w=;
        b=JVEmSIMaQANB8xk77I+aEsBYyJy8eUt9ONydenSb6zd28LvVN+c1ukvfhKyZtHk34C
         6aEfo27NkX9f9ZsbyOLMYI7uSenfECx59QVpnEzlF4rCTXD1dCpa4hxcZTrgWXoy57zI
         Wf/EZjtDyG93VU7YbbLoZG5PBS3l8VFaa0FSmGCePCy/Hztw4Cfu264NqNot3ETrAETA
         vNIgUVXYLCZfruN1qzjkSttec6SdFwts56hNPqZgcC5GMd37umrdrUI2XwRLAVzakSaI
         aibKpept9EuTe/ADkIXrBDyPThVdOAp11/kCVMvCFUfZWIgMj6x+nCxgm446W8UamVgs
         zYiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678870954;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8CEcDEmXoRVWl82ME6fHeckhCMMz/JzH8Qe2yY0Hg9w=;
        b=lBtKWaIBOVYH/Hj0Iw3l7o7GLqrBkTkvKiJhY/L9GwMVmv0VeHDvtfTh7ewPnuuXq2
         JzHJVvdcq1ngVNt/oFKKo3OGDHxswdawuc796Qbtk/YQrXdnpeVgsciPMw14/+RCtRGB
         8PovzcNDKB7OHWVV4RNjBK2jZqJhxChVakPOo/i2zr2oI11RWWGJSoxa0jDN45jmk4qi
         TY13yhMi5GIHgzwK2lhRWsPFDPsSw+LdvvnX7kSCEJntn1rQsiqUXbpmRIwjdwuURm3e
         iuEwnl+m14PLB2oTBktsRNMvYuT73ZFM9BEdkc2sa2WU7QPKJsHVDpZSy8EVXPTiVLPR
         LWkQ==
X-Gm-Message-State: AO0yUKXvCjaodfdj2+rX+x4RPnRar336qqaRSbrNmT33Rn5NTV/bF1t/
	PQfl2jUp/P0mmYqSKVfqAoC7gcfAWKlPd8diioA=
X-Google-Smtp-Source: AK7set/wrbW0WOs81wp7/aYaD0/sSyDQBhq/b/bFgLbMDJLvM9oaPVrZIgoGdl+L5ysV8rV433iVAg2AX2WW/cj0cfw=
X-Received: by 2002:a17:90b:3794:b0:23d:360:8771 with SMTP id
 mz20-20020a17090b379400b0023d03608771mr3435547pjb.9.1678870954142; Wed, 15
 Mar 2023 02:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230313154856.3691660-1-zyytlz.wz@163.com> <CAAEAJfAtwguO-EpbCLkdOBu96U9mD+mq4PxBLsLAVZLuhC6Mtw@mail.gmail.com>
In-Reply-To: <CAAEAJfAtwguO-EpbCLkdOBu96U9mD+mq4PxBLsLAVZLuhC6Mtw@mail.gmail.com>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Wed, 15 Mar 2023 17:02:22 +0800
Message-ID: <CAJedcCxn7nOVJMJ2U9Q-PL9M2cnKgJ_YqN801zfLyz-7TeFh1Q@mail.gmail.com>
Subject: Re: [PATCH v4] media: hantro: fix use after free bug in hantro_remove
 due to race condition
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Zheng Wang <zyytlz.wz@163.com>, p.zabel@pengutronix.de, mchehab@kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 1395428693sheep@gmail.com, 
	alex000young@gmail.com, hverkuil@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_020238_720496_F75C2CC8 
X-CRM114-Status: GOOD (  27.31  )
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

RXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4g5LqOMjAyM+W5
tDPmnIgxNOaXpeWRqOS6jCAyMDowNeWGmemBk++8mgo+Cj4gSGkgWmhlbmcsIEhhbnMsCj4KPiBP
biBNb24sIE1hciAxMywgMjAyMyBhdCAxMjo0OeKAr1BNIFpoZW5nIFdhbmcgPHp5eXRsei53ekAx
NjMuY29tPiB3cm90ZToKPiA+Cj4gPiBJbiBoYW50cm9fcHJvYmUsIHZwdS0+d2F0Y2hkb2dfd29y
ayBpcyBib3VuZCB3aXRoCj4gPiBoYW50cm9fd2F0Y2hkb2cuIFRoZW4gaGFudHJvX2VuZF9wcmVw
YXJlX3J1biBtYXkKPiA+IGJlIGNhbGxlZCB0byBzdGFydCB0aGUgd29yay4KPiA+Cj4gPiBJZiB3
ZSBjbG9zZSB0aGUgZmlsZSBvciByZW1vdmUgdGhlIG1vZHVsZSB3aGljaCB3aWxsCj4gPiBjYWxs
IGhhbnRyb19yZWxlYXNlIGFuZCBoYW50cm9fcmVtb3ZlIHRvIG1ha2UgY2xlYW51cCwKPiA+IHRo
ZXJlIG1heSBiZSBhbiB1bmZpbmlzaGVkIHdvcmsuIFRoZSBwb3NzaWJsZSBzZXF1ZW5jZQo+ID4g
aXMgYXMgZm9sbG93cywgd2hpY2ggd2lsbCBjYXVzZSBhIHR5cGljYWwgVUFGIGJ1Zy4KPiA+Cj4g
PiBUaGUgc2FtZSB0aGluZyB3aWxsIGhhcHBlbiBpbiBoYW50cm9fcmVsZWFzZSwgYW5kIHVzZQo+
ID4gY3R4IGFmdGVyIGZyZWVpbmcgaXQuCj4gPgo+ID4gRml4IGl0IGJ5IGNhbmNlbGluZyB0aGUg
d29yayBiZWZvcmUgY2xlYW51cCBpbiBoYW50cm9fcmVsZWFzZS4KPiA+Cj4gPiBDUFUwICAgICAg
ICAgICAgICAgICAgQ1BVMQo+ID4KPiA+ICAgICAgICAgICAgICAgICAgICAgfGhhbnRyb193YXRj
aGRvZwo+ID4gaGFudHJvX3JlbW92ZSAgICAgfAo+ID4gICB2NGwyX20ybV9yZWxlYXNlICB8Cj4g
PiAgICAga2ZyZWUobTJtX2Rldik7IHwKPiA+ICAgICAgICAgICAgICAgICAgICAgfAo+ID4gICAg
ICAgICAgICAgICAgICAgICB8IHY0bDJfbTJtX2dldF9jdXJyX3ByaXYKPiA+ICAgICAgICAgICAg
ICAgICAgICAgfCAgIG0ybV9kZXYtPmN1cnJfY3R4IC8vdXNlCj4gPgo+ID4gU2lnbmVkLW9mZi1i
eTogWmhlbmcgV2FuZyA8enl5dGx6Lnd6QDE2My5jb20+Cj4gPiBGaXhlczogOTMyYTkzMTdhYzQ5
ICgibWVkaWE6IGhhbnRybzogQWRkIGhlbHBlcnMgdG8gcHJlcGFyZS9maW5pc2ggYSBydW4iKQo+
Cj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCj4KPiBHaXZlIG1lIGEgZmV3IGRheXMgdG8gdGFrZSBh
IGNsb3NlciBsb29rLgo+CgpUaGFua3MgZm9yIHlvdXIgcmVwbHkuIEhvcGUgeW91IGhhdmUgYSBu
aWNlIGRheSA6KQoKQmVzdCByZWdhcmRzLApaaGVuZwoKPiBUaGFua3MsCj4gRXplcXVpZWwKPgo+
ID4gLS0tCj4gPiB2NDoKPiA+IC0gYWRkIEZpeGVzIGxhYmVsIHRvIGhlbHAgd2l0aCB0aGUgZml4
Cj4gPgo+ID4gdjM6Cj4gPiAtIHVzZSBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMgaW5zdGVhZCBv
ZiBjYW5jZWxfZGVsYXllZF93b3JrIGFuZCBhZGQgaXQgdG8KPiA+IGhhbnRyb19yZWxlYXNlIHN1
Z2dlc3RlZCBieSBIYW5zIFZlcmt1aWwKPiA+Cj4gPiB2MjoKPiA+IC0gbW92ZSB0aGUgY2FuY2Vs
LXdvcmstcmVsYXRlZCBjb2RlIHRvIGhhbnRyb19yZW1vdmUgc3VnZ2VzdGVkIGJ5IEhhbnMgVmVy
a3VpbAo+ID4gLS0tCj4gPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fZHJ2LmMgfCAyICsrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b19kcnYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
Cj4gPiBpbmRleCBiMGFlZWRhZTdiNjUuLjg2YTRjMGZhOGM3ZCAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gPiArKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+ID4gQEAgLTU5
Nyw2ICs1OTcsNyBAQCBzdGF0aWMgaW50IGhhbnRyb19yZWxlYXNlKHN0cnVjdCBmaWxlICpmaWxw
KQo+ID4gICAgICAgICBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4ID0KPiA+ICAgICAgICAgICAgICAg
ICBjb250YWluZXJfb2YoZmlscC0+cHJpdmF0ZV9kYXRhLCBzdHJ1Y3QgaGFudHJvX2N0eCwgZmgp
Owo+ID4KPiA+ICsgICAgICAgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZjdHgtPmRldi0+d2F0
Y2hkb2dfd29yayk7Cj4gPiAgICAgICAgIC8qCj4gPiAgICAgICAgICAqIE5vIG5lZWQgZm9yIGV4
dHJhIGxvY2tpbmcgYmVjYXVzZSB0aGlzIHdhcyB0aGUgbGFzdCByZWZlcmVuY2UKPiA+ICAgICAg
ICAgICogdG8gdGhpcyBmaWxlLgo+ID4gQEAgLTEwOTksNiArMTEwMCw3IEBAIHN0YXRpYyBpbnQg
aGFudHJvX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4KPiA+ICAgICAg
ICAgdjRsMl9pbmZvKCZ2cHUtPnY0bDJfZGV2LCAiUmVtb3ZpbmcgJXNcbiIsIHBkZXYtPm5hbWUp
Owo+ID4KPiA+ICsgICAgICAgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZ2cHUtPndhdGNoZG9n
X3dvcmspOwo+ID4gICAgICAgICBtZWRpYV9kZXZpY2VfdW5yZWdpc3RlcigmdnB1LT5tZGV2KTsK
PiA+ICAgICAgICAgaGFudHJvX3JlbW92ZV9kZWNfZnVuYyh2cHUpOwo+ID4gICAgICAgICBoYW50
cm9fcmVtb3ZlX2VuY19mdW5jKHZwdSk7Cj4gPiAtLQo+ID4gMi4yNS4xCj4gPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
