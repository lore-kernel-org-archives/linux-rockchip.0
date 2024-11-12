Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43DC8D32D9A
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 12:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2eQig8lgADfUuLrvtr4c9hfMky/fop1xjdsk1nXars=; b=GXrmS5YOmnzXOf
	JggnAIK2ryneSB80O+LXzUrrgXJnubayT2ekrXpePjXOUZOYD/yTq2sPzLMdLQMFc7Uri35TFX5Ba
	+zgCvGOsVkl6MZ1U8LZ4T86cXg/OwzXiRBRldJ6oP69+2Tm7QkJ+JoTZo9c9Lvr2Ck9lruCLICoT+
	6DzUfoAZBgE+LRkMpXpUIxibRU/scFFTm8hdlem2nimHW0ZFjBQgZXQSwDZbNnSqT3j4GXtfunQ6S
	21bi/IP2vzIPNvQpg/9SIrJQ5mbVihp3j5373MlXZZ/ozCim7VJKCQoPVlhx0GuRQ28qiKwJGKIQD
	wLFjirQvtX/fTggXRCxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAqPX-00000003Slw-3DVq;
	Tue, 12 Nov 2024 12:54:23 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAqPB-00000003ShI-1ppx
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 12:54:11 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2fb3da341c9so48472051fa.2
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2024 04:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1731416039; x=1732020839; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M9hxsmKDBDKSSi/jW2NU++UBfd3Bt98xWitaVEtQSBs=;
        b=Yh3V88HxrUprXqId2YtJs6DBAMsxe0uCmTPDiGUanRTz3XvMoEkpyHVpbklDRM51D6
         0Bi87KkYT9zmJCbLZL/fRFaSvTQzfni8U3NN8vQyaVZ+dLXNuprWNGDAYS1ILp3LTDoe
         u4bVJtBvmG3rMWxQic3LkJuu6H4zQIRBpC/oy3oftt0TIVbQqfsAXSAbZgWQ9pEnp45h
         DejiMQ2J0oH/1OXXWYTHqb5KUC02h08Ff1XLcuu225iuZLq2FLUR0LjW/MT/BREPRHKo
         KIGqryC23T7TqaPO55FUjxBUPeXVDJDzax3v3iMG2+bWcOtR55NVCrmBJekXUxAyIAPZ
         flmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731416039; x=1732020839;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M9hxsmKDBDKSSi/jW2NU++UBfd3Bt98xWitaVEtQSBs=;
        b=RNZarGPLFoXDZ6mKxj+H1XkaJAi58XM0wkrHcccTkZkrCnfP8cv7IME/keAxduxGnv
         8p9g9loI4Ua0d0/qwkla9W8h1Y2qNfN/SU8KHcCIRxy29EZN1BnDr8HenuKSo5JNv7Cn
         zQtTLSIgFVIucc9wHr3uW1BPmAbZzMgeY9ldPocBIzg06/8H3i8Jfh0GnuJSnoVUnFXg
         qYTWvOfNbq8UTO5wPGeYPu9hFkiYWM1HjMTfWIgnv8BC+elpLGjK30RAtZqa+VwlWsSt
         KQiItCQpHub14Pi27CPEKBwbplWaireixbgAWLxeBCxzvwgmMmK6ZbFC+UgqnhjwEuyl
         uPtA==
X-Forwarded-Encrypted: i=1; AJvYcCXa0mvaYPJfJ7eclCrXx/lWLtmVsjGhoPJZF20uI8PbgcvmqHSzp0oI80Ajco+Yc9rthKe3SVj6I1EQZn8Y1A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEGYcg1jKQB0qLKxyLALrSJ0rztF5zHmEWufdbxMzq1KQawHj4
	EQJvbDbo+fmcEVOgmXeNfiia2fq9Xi0kXsoUC1SQUS+3w6bLq/L+2njdodYwUA8LbvCB8K3+qQ/
	ISK9ujeNbPaqcSemYGsYrmh17YX72BfHuui9t8g==
X-Google-Smtp-Source: AGHT+IGbmE0o5QthwRBQiRAF+JVGWtz10N60VDzpRavWFxo0o78BzJrNfw3tuJBFoTaZr9DjOr15SEHztRHupcY74Sg=
X-Received: by 2002:a05:651c:1542:b0:2f1:a30c:cd15 with SMTP id
 38308e7fff4ca-2ff202ad40fmr80832201fa.36.1731416039490; Tue, 12 Nov 2024
 04:53:59 -0800 (PST)
MIME-Version: 1.0
References: <20241112015408.3139996-1-ye.zhang@rock-chips.com>
 <20241112015408.3139996-5-ye.zhang@rock-chips.com> <CAMRc=MfTmpLSEUVTXSu8jf9tyTfQc=iG9NpovFem-qSDOCnagQ@mail.gmail.com>
 <ZzMwh2GMP-bE7aLO@smile.fi.intel.com> <CAMRc=MePqsQatxNy7p5c3sE4z8RepjjLeFgpppKgEctCU3jAUw@mail.gmail.com>
In-Reply-To: <CAMRc=MePqsQatxNy7p5c3sE4z8RepjjLeFgpppKgEctCU3jAUw@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 12 Nov 2024 13:53:48 +0100
Message-ID: <CAMRc=MdY1idv1o_nZFb1fKLpM5DHCPmEu5t5MMa_kV9csLgQWw@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] gpio: rockchip: Set input direction when request irq
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Ye Zhang <ye.zhang@rock-chips.com>, linus.walleij@linaro.org, heiko@sntech.de, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_045401_501882_CCD8A15D 
X-CRM114-Status: GOOD (  20.19  )
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

T24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgMTo1MOKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJy
Z2xAYmdkZXYucGw+IHdyb3RlOgo+Cj4gT24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgMTE6NDDigK9B
TSBBbmR5IFNoZXZjaGVua28KPiA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPiB3
cm90ZToKPiA+Cj4gPiBPbiBUdWUsIE5vdiAxMiwgMjAyNCBhdCAwOTo0ODowNkFNICswMTAwLCBC
YXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gPiBPbiBUdWUsIE5vdiAxMiwgMjAyNCBhdCAy
OjU04oCvQU0gWWUgWmhhbmcgPHllLnpoYW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+ID4g
Pgo+ID4gPiA+IFNpbmNlIHRoZSBHUElPIGNhbiBvbmx5IGdlbmVyYXRlIGludGVycnVwdHMgd2hl
biBpdHMgZGlyZWN0aW9uIGlzIHNldCB0bwo+ID4gPiA+IGlucHV0LCBpdCBpcyBzZXQgdG8gaW5w
dXQgYmVmb3JlIHJlcXVlc3RpbmcgdGhlIGludGVycnVwdCByZXNvdXJjZXMuCj4gPgo+ID4gLi4u
Cj4gPgo+ID4gPiBUaGlzIGxvb2tzIGxpa2UgYSBmaXggdG8gbWUsIGRvIHlvdSB3YW50IGl0IHNl
bnQgZm9yIHN0YWJsZT8gSWYgc28sCj4gPiA+IHBsZWFzZSBhZGQgdGhlIEZpeGVzIHRhZyBhbmQg
cHV0IGl0IGZpcnN0IGluIHRoZSBzZXJpZXMuCj4gPgo+ID4gSW5kZXBlbmRlbnRseSBvbiB0aGUg
cmVzb2x1dGlvbiBvbiB0aGlzLCBjYW4gdGhlIGZpcnN0IHRocmVlIGJlIGFwcGxpZWQgdG8KPiA+
IGZvci1uZXh0PyBJIHRoaW5rIHRoZXkgYXJlIHZhbHVhYmxlIGZyb20gdGhlIGRvY3VtZW50YXRp
b24gcGVyc3BlY3RpdmUgYXMKPiA+IGl0IGFkZHMgdGhlIGV4cGxhbmF0aW9uIG9mIHRoZSB2ZXJz
aW9uIHJlZ2lzdGVyIGJpdCBmaWVsZHMuCj4gPgo+ID4gVGhlIGxhc3Qgb25lIHNlZW1zIHRvIG1l
IGluZGVwZW5kZW50IChjb2RlIHdpc2UsIG1lYW5pbmcgbm8gcG90ZW50aWFsCj4gPiBjb25mbGlj
dHMpIHRvIHRoZSByZXN0IGFuZCBtYXkgYmUgYXBwbGllZCB0byBmb3ItY3VycmVudCBsYXRlciBv
bi4KPiA+Cj4gPiAtLQo+ID4gV2l0aCBCZXN0IFJlZ2FyZHMsCj4gPiBBbmR5IFNoZXZjaGVua28K
PiA+Cj4gPgo+Cj4gVGhlcmUncyBhbm90aGVyIGlzc3VlIEkgc2VlIHdpdGggdGhpcyBwYXRjaC4g
SXQgZWZmZWN0aXZlbHkgY2hhbmdlcwo+IHRoZSBwaW4ncyBkaXJlY3Rpb24gYmVoaW5kIHRoZSBi
YWNrIG9mIHRoZSBHUElPTElCLiBJZiBhIEdQSU8gaXMKPiByZXF1ZXN0ZWQsIGl0cyBkaXJlY3Rp
b24gc2V0IHRvIG91dHB1dCBhbmQgYW5vdGhlciBvcnRob2dvbmFsIHVzZXIKPiByZXF1ZXN0cyB0
aGUgc2FtZSBwaW4gYXMgaW5wdXQsIHdlJ2xsIG5ldmVyIHVwZGF0ZSB0aGUgRkxBR19JU19PVVQK
CkkgbWVhbnQgdG8gc2F5ICJzYW1lIHBpbiBhcyBpbnRlcnJ1cHQiLiBTb3JyeSBmb3IgdGhlIG5v
aXNlLgoKQmFydAoKPiB2YWx1ZSBhbmQgSSBkb24ndCB0aGluayBhbnkgc3Vic2VxdWVudCBiZWhh
dmlvciBjYW4gYmUgY29uc2lkZXJlZAo+IGRlZmluZWQuCj4KPiBJIGFwcGxpZWQgdGhlIGZpcnN0
IDMgcGF0Y2hlcyBhcyB0aGV5IGxvb2sgYWxyaWdodC4KPgo+IEJhcnQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
