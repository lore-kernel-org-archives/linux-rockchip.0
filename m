Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 434EFD32D9A
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 12:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jBjuKRrNGdtr3M2tNnJD5adF9yoclQd/GDPKk8f8Cc=; b=ekcadyqbxccqNh
	DJ2zLZOdU+B83N078OVj6nuIjaquvRNtMmi0gabF+J2Cd1YBYtGRlASJpccZURnQHBiJJyfTwUxWN
	EoNHxE3f9GA3kUMT8nze8cJRGMhPoF3/bayNpiV4CX3OJWPfKeUByEkGdnunt4EXGZAX4r65QSUHf
	xZdcNdUlibxXeLn0H7k9hrU1kdVrVb0kjH5i8x8SsiD2CCcsLcPkylHgCv/opJNIcxD3ubWmm3Cuz
	dqTL8T1FZt1n5Nu1t8kCN4x/cOywrg/YOZomyuOdsPpUJqUtJzxcG8xqXvkhUcqbA6Fygc66pVby5
	TGuNfbaSPrHuknXsYhOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAqLz-00000003SCr-0Tzg;
	Tue, 12 Nov 2024 12:50:43 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAqLw-00000003SBR-0KNx
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 12:50:41 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-539fe76e802so6262990e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2024 04:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1731415838; x=1732020638; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GeBVO2GdRfYXq00Svo2kHoFq/10dwtalChSI8IIjQwk=;
        b=a9999fQGLbAYA1nKNWCHD0/lNwMgFZ0V6qzHHR97Y548drGGccMaCUL9+UQjs4fGpE
         mES9sC5QPpwQ57Cg5/dR58+fgPgQhpIkTCRTiApaYMTJBF/48SBcsJhHDpDf+Pbl1GJy
         JN/MbeZOqGSUExnrB8PAUyKh24JYmVjLwMyoO8dw99eLF3OA0JrgLx10/EMq0X2obTRz
         014lG/PEBcAI/6WW0vzEu2AvCbwE8UsFg1bbWAoR1vO2bqKUFtTzWu8ImYR5m/CSUEDk
         c9XglEzUS0OrxtxcUZOSms3Yr9y05hRXBHoaEMOJ3LUrvi+q3lRTdMPNoJoFuhRygENT
         28CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731415838; x=1732020638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GeBVO2GdRfYXq00Svo2kHoFq/10dwtalChSI8IIjQwk=;
        b=ZxNHRGZfU/9012P7uvWgCkkTx7xky6qsfAq93nrzHSnnPt/2JGLX7pGuYjfh6SpNMU
         UtgHtcVEE61Bgvr9FEJj4Y+zpGw9uHrajQPSABA4wG5Yv0HbSOrbaJkwgheP437wmIgA
         zwmYqhQsndF2HQhrkWXAgdV6do/BoT0fJ6WFCKWDwVRvgIEGgYYJEAmbOU/BOOZL7Qxk
         vZBDRTdOALDE/EeMU2+tfFLjFy4gIDIr0Ownvjv+JmW3AGrl+OrCCLn4Ha4goCeLS4qG
         0YUfYDIxIPJQ+qNamtuaTswZ/wkuX857emtCoqItt2fl0VJOdzM142DFPMuneg64Ver2
         lB0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWdZyYY4qTMZWvlgBPSGv7een5TNTp88GOM/T2nu6EuUbGJkXxe1877tW7LrWqQ9BEENR2u858H/vX0S6Vjxw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+jcfGyNEYvQvJpkXqGSouy90xqfu7niBpvPOXVOYfrBb7fnC2
	DtdaHXef11ig+xbXbKnlW5Qrv8vP44qELYUx55PmboJsxKNoMAGqdWNMNwQ6Xj9HpNDeupoltma
	XUOxH6Kl8JQu6nm4bQysQhlA4MJTmgFXVopZq4A==
X-Google-Smtp-Source: AGHT+IHO77pCoCjWkW3UGcaVkG+6FA9QyXrg8cZvhES5N7tCaKkkDgEAed2uIgWOEd1zU7CLBorSuTYdULgmPsy61b0=
X-Received: by 2002:a05:651c:2109:b0:2fb:6110:c5cb with SMTP id
 38308e7fff4ca-2ff202ac51cmr71186881fa.34.1731415837857; Tue, 12 Nov 2024
 04:50:37 -0800 (PST)
MIME-Version: 1.0
References: <20241112015408.3139996-1-ye.zhang@rock-chips.com>
 <20241112015408.3139996-5-ye.zhang@rock-chips.com> <CAMRc=MfTmpLSEUVTXSu8jf9tyTfQc=iG9NpovFem-qSDOCnagQ@mail.gmail.com>
 <ZzMwh2GMP-bE7aLO@smile.fi.intel.com>
In-Reply-To: <ZzMwh2GMP-bE7aLO@smile.fi.intel.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 12 Nov 2024 13:50:26 +0100
Message-ID: <CAMRc=MePqsQatxNy7p5c3sE4z8RepjjLeFgpppKgEctCU3jAUw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20241112_045040_190042_07C56FF5 
X-CRM114-Status: GOOD (  17.45  )
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

T24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgMTE6NDDigK9BTSBBbmR5IFNoZXZjaGVua28KPGFuZHJp
eS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE5vdiAxMiwg
MjAyNCBhdCAwOTo0ODowNkFNICswMTAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4g
T24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgMjo1NOKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFNpbmNlIHRoZSBHUElPIGNhbiBvbmx5IGdl
bmVyYXRlIGludGVycnVwdHMgd2hlbiBpdHMgZGlyZWN0aW9uIGlzIHNldCB0bwo+ID4gPiBpbnB1
dCwgaXQgaXMgc2V0IHRvIGlucHV0IGJlZm9yZSByZXF1ZXN0aW5nIHRoZSBpbnRlcnJ1cHQgcmVz
b3VyY2VzLgo+Cj4gLi4uCj4KPiA+IFRoaXMgbG9va3MgbGlrZSBhIGZpeCB0byBtZSwgZG8geW91
IHdhbnQgaXQgc2VudCBmb3Igc3RhYmxlPyBJZiBzbywKPiA+IHBsZWFzZSBhZGQgdGhlIEZpeGVz
IHRhZyBhbmQgcHV0IGl0IGZpcnN0IGluIHRoZSBzZXJpZXMuCj4KPiBJbmRlcGVuZGVudGx5IG9u
IHRoZSByZXNvbHV0aW9uIG9uIHRoaXMsIGNhbiB0aGUgZmlyc3QgdGhyZWUgYmUgYXBwbGllZCB0
bwo+IGZvci1uZXh0PyBJIHRoaW5rIHRoZXkgYXJlIHZhbHVhYmxlIGZyb20gdGhlIGRvY3VtZW50
YXRpb24gcGVyc3BlY3RpdmUgYXMKPiBpdCBhZGRzIHRoZSBleHBsYW5hdGlvbiBvZiB0aGUgdmVy
c2lvbiByZWdpc3RlciBiaXQgZmllbGRzLgo+Cj4gVGhlIGxhc3Qgb25lIHNlZW1zIHRvIG1lIGlu
ZGVwZW5kZW50IChjb2RlIHdpc2UsIG1lYW5pbmcgbm8gcG90ZW50aWFsCj4gY29uZmxpY3RzKSB0
byB0aGUgcmVzdCBhbmQgbWF5IGJlIGFwcGxpZWQgdG8gZm9yLWN1cnJlbnQgbGF0ZXIgb24uCj4K
PiAtLQo+IFdpdGggQmVzdCBSZWdhcmRzLAo+IEFuZHkgU2hldmNoZW5rbwo+Cj4KClRoZXJlJ3Mg
YW5vdGhlciBpc3N1ZSBJIHNlZSB3aXRoIHRoaXMgcGF0Y2guIEl0IGVmZmVjdGl2ZWx5IGNoYW5n
ZXMKdGhlIHBpbidzIGRpcmVjdGlvbiBiZWhpbmQgdGhlIGJhY2sgb2YgdGhlIEdQSU9MSUIuIElm
IGEgR1BJTyBpcwpyZXF1ZXN0ZWQsIGl0cyBkaXJlY3Rpb24gc2V0IHRvIG91dHB1dCBhbmQgYW5v
dGhlciBvcnRob2dvbmFsIHVzZXIKcmVxdWVzdHMgdGhlIHNhbWUgcGluIGFzIGlucHV0LCB3ZSds
bCBuZXZlciB1cGRhdGUgdGhlIEZMQUdfSVNfT1VUCnZhbHVlIGFuZCBJIGRvbid0IHRoaW5rIGFu
eSBzdWJzZXF1ZW50IGJlaGF2aW9yIGNhbiBiZSBjb25zaWRlcmVkCmRlZmluZWQuCgpJIGFwcGxp
ZWQgdGhlIGZpcnN0IDMgcGF0Y2hlcyBhcyB0aGV5IGxvb2sgYWxyaWdodC4KCkJhcnQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
