Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2773DC6FA69
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 17:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KOoiieSC2hTccPazwz9jc8KtScst9GB5WIm5I3at2k=; b=oy3AwVXkun4vKY
	F1Q7ciBWUy55MEIH6oTy9Igt9yrCkBimdCWC1h7RT+o7Ry4cTfbEpuc7v2bZRUQcwF0gA+jK1c0a6
	0N/2v8pp3Iq+NI2r3CEqDI4zstaYdTPoNHxSfNXk5rL6yX3kj0oIdEf6eo4L+mJ/sc2KleDY9FKXu
	8br+IwTcD0sN75Fqm5wKqj2EHdMLQMQz3sgwcHz/Qitm0ArOc7kJfBd31rhtxSR7UQcFKmhlZQg6w
	4lOcZJOdUD+GnbAuJJWDxdS83xQYIp3McW4tcjriOxQxJQ0ZCRAqs8vf1HXvWSaD9TNmX252PxHeS
	bXUqYLAwsJ6VNouhvO8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSi97-00By7a-83; Mon, 29 Aug 2022 17:01:57 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSi8v-00By4x-UM
	for linux-rockchip@lists.infradead.org; Mon, 29 Aug 2022 17:01:47 +0000
Received: by mail-ed1-x52a.google.com with SMTP id t5so10938927edc.11
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Aug 2022 10:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc;
        bh=bTARlCeOibrBAZlTV6Fk9ACuYXQ1cVcNl7i+g8mazqU=;
        b=hVzqRNsdQaTATFlTRZEAUtegZzrniojbBze7lC0I1DCFGyj6BkyQ5+0ggqZhq7zSSU
         6zy7RkbawwAYK000WcoS4z9DbiDoTtUzmOPxwjv5oeD3bBDK4xrd2tMZamPQsOvGfnNa
         UpB9OXBiQo3k2aWxOmoOL5iUfv0LCkTMr3iyb59yIqgyN01+zKEJu1xTJsbfHqDZK05h
         X+jAloKUs5wfYSVw8Q7s4Ql2Snaj6uXlu/EJ7yoJfmF1RPB/1UlQynzfsSmZU7vLktoD
         c+/Dmzo7x0JhxUkbT1OAsiGFb9etA7VWwcvKSzGLX+vse77NW3ypLtFoJCpKrJrXQB2r
         PrPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc;
        bh=bTARlCeOibrBAZlTV6Fk9ACuYXQ1cVcNl7i+g8mazqU=;
        b=BYJNhk8LymDUqdFK3oJhfcrexZ01NKIjddVsCjyma6dfxYLsJuTA0fnBJZbzxTqbAo
         v0b1o+scPcDG5B8PbTPuE0wbR9SBF180kquwqiY32vp6Ya9mnL32h8oqAAwvAeXcXxO1
         lH0Nd2rMDHANGlI2XUmNynoZkdZ+krflEezvbFmZBLicozB58EmTGZO34zwcLUhhaJCM
         54/0DnBVw2O8acIsGqj6qnHjVIY6V4ADbb7wXkuNzlI4jx+Mwb1Hm9C3Og3awWis3Mjq
         7M4xL2HzOtReLaTrCq0JswjCMdjYDJI8dFPZLvtmkGIf3Yl7p1N9RZLqKjBQMWacXenH
         oatA==
X-Gm-Message-State: ACgBeo2zYYCE96CRaw576F9pp1mqp9NMpo99mLt0oLEA/i1H9/jRGcst
	xGHMkAAEXf+rhqFzLFW5p4iSnQ==
X-Google-Smtp-Source: AA6agR4R+kKRn6AXknM8I0Gcw14CKYwx4jBXyZeW4PcPSqKr5gZ/66Zs3WorLAtQqLsDEX0N1uLleg==
X-Received: by 2002:a05:6402:138f:b0:43d:8ed5:c841 with SMTP id b15-20020a056402138f00b0043d8ed5c841mr17596592edv.27.1661792500845;
        Mon, 29 Aug 2022 10:01:40 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id gl10-20020a170906e0ca00b0073dbfd33a8dsm4697277ejb.21.2022.08.29.10.01.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Aug 2022 10:01:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <YwzerCnjvTKsEyIi@sirena.org.uk>
Date: Mon, 29 Aug 2022 19:01:38 +0200
Cc: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>,
 wens@kernel.org
Message-Id: <479AFACA-866E-4B3B-B0C2-ABA83591DA56@kohlschutter.com>
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
 <20220825212842.7176-1-christian@kohlschutter.com>
 <YwzerCnjvTKsEyIi@sirena.org.uk>
To: Mark Brown <broonie@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_100145_997915_D8C1A6A0 
X-CRM114-Status: GOOD (  15.19  )
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

PiBPbiAyOS4gQXVnIDIwMjIsIGF0IDE3OjQzLCBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5v
cmc+IHdyb3RlOgo+IAo+IE9uIFRodSwgQXVnIDI1LCAyMDIyIGF0IDA5OjI4OjQyUE0gKzAwMDAs
IENocmlzdGlhbiBLb2hsc2Now7x0dGVyIHdyb3RlOgo+PiBQcmV2aW91c2x5LCBhbiB1bnJlc29s
dmVkIHJlZ3VsYXRvciBzdXBwbHkgcmVmZXJlbmNlIHVwb24gY2FsbGluZwo+PiByZWd1bGF0b3Jf
cmVnaXN0ZXIgb24gYW4gYWx3YXlzLW9uIG9yIGJvb3Qtb24gcmVndWxhdG9yIGNhdXNlZAo+PiBz
ZXRfbWFjaGluZV9jb25zdHJhaW50cyB0byBiZSBjYWxsZWQgdHdpY2UuCj4gCj4gUGxlYXNlIGRv
IG5vdCBzdWJtaXQgbmV3IHZlcnNpb25zIG9mIGFscmVhZHkgYXBwbGllZCBwYXRjaGVzLCBwbGVh
c2UKPiBzdWJtaXQgaW5jcmVtZW50YWwgdXBkYXRlcyB0byB0aGUgZXhpc3RpbmcgY29kZS4gIE1v
ZGlmeWluZyBleGlzdGluZwo+IGNvbW1pdHMgY3JlYXRlcyBwcm9ibGVtcyBmb3Igb3RoZXIgdXNl
cnMgYnVpbGRpbmcgb24gdG9wIG9mIHRob3NlCj4gY29tbWl0cyBzbyBpdCdzIGJlc3QgcHJhY3Rp
Y2UgdG8gb25seSBjaGFuZ2UgcHViaXNoZWQgZ2l0IGNvbW1pdHMgaWYKPiBhYnNvbHV0ZWx5IGVz
c2VudGlhbC4KPiAKPiBQbGVhc2UgZG9uJ3Qgc2VuZCBuZXcgcGF0Y2hlcyBpbiByZXBseSB0byBv
bGQgcGF0Y2hlcyBvciBzZXJpZXNlcywgdGhpcwo+IG1ha2VzIGl0IGhhcmRlciBmb3IgYm90aCBw
ZW9wbGUgYW5kIHRvb2xzIHRvIHVuZGVyc3RhbmQgd2hhdCBpcyBnb2luZwo+IG9uIC0gaXQgY2Fu
IGJ1cnkgdGhpbmdzIGluIG1haWxib3hlcyBhbmQgbWFrZSBpdCBkaWZmaWN1bHQgdG8ga2VlcCB0
cmFjawo+IG9mIHdoYXQgY3VycmVudCBwYXRjaGVzIGFyZSwgYm90aCBmb3IgdGhlIG5ldyBwYXRj
aGVzIGFuZCB0aGUgb2xkIG9uZXMuCgpNeSBhcG9sb2dpZXMsIEkgd2Fzbid0IGF3YXJlIHRoYXQn
cyBub3QgdGhlIHByZWZlcnJlZCB3YXkgZm9yd2FyZC4KCkZvbGxvd2luZyB1cCB3aXRoICJyZWd1
bGF0b3I6IGNvcmU6IEZpeCByZWd1bGF0b3Igc3VwcGx5IHJlZ2lzdHJhdGlvbiB3aXRoIHN5c2Zz
Iiwgc2VlCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIyMDgyOTE2NTU0My4yNDg1Ni0x
LWNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29tLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
