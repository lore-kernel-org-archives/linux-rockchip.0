Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED57D42B83
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 13:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FddPnLd2jd5Ppsd2JgIY55SPGndf+tSahK1GsIha8Vs=; b=v/AqpL9K8rj6dH
	Ci7XSVRmIVWSpIGae4dbjRSWKIC2Qzu66317smfBSzd8cwJS3j+JJaXqagBqx9vXiULeXXhfE0Ayx
	YfmiAFBLE7re7MSf3zTq0gfdPzzOHE7rjKpLkvCE8l7cf2TPmDUi6QLt52T2aMFt78eGk941pDXNa
	0bxfPzTzrL+JPxklYivJ/Ij6qZ7LUBv8NcjITPuo4hOSsr+jUZir7R3Jk/rc4ZNkKP2LtLBoyNpO8
	9yPC9NlqJq0+ql/CAVBPVa9tUxSdZIMtQxCKJa/QZSBLULnV9vChAgUJ7QzEowKptyHY70cEogSie
	S1NVMPhWaiMAbGfB0soQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tArJ3-00000003eg5-3YIh;
	Tue, 12 Nov 2024 13:51:45 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tArHC-00000003eJv-3wUa
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 13:49:52 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-539fe02c386so6370831e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2024 05:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1731419389; x=1732024189; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b/tz6t8emZ2B8dwA+ERmN9anAjhGd2BlkO2AWCSTy0A=;
        b=QUaBSE3O/c4yIkRvQC5gpkAd1sXyf44Mig8+9gGscRiIlihp+YDskQa9sc+ilMFOuY
         I4EDB82J6734o8VecpE6wR5ipdKRc2iPZud12q2JN6LpaHh51VnkN+JPeGuKwY5xeuJJ
         w7WSmNWHmYMG34cmSWtQ1dZRojWBmHyNX1eTOitk9zxrhAfc5UM03jZaIn3rSh+tHyo4
         cXdItKOm+NuYwj6Fd9Z6Arh8tJMXk3NE/hmIavbcbSA3Gxz3ddP/qPoCXEsDMCgWRMvO
         0OEfw+Blb8AeT3zgESrikfrwzjPkENxJ9HMvz5UnDjQl/+RJmWYjjL76x0I5z00Ach2S
         hBig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731419389; x=1732024189;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b/tz6t8emZ2B8dwA+ERmN9anAjhGd2BlkO2AWCSTy0A=;
        b=XNSI6UgU90D3W6mgyfFtYphYe+xCW1ZaOVJLRt+5h4tXWoz5CtWBaMBAKOu5JedSOf
         lVO37DsmSm8W2AWxUln2YTYkD1guit6GqIipshOW8tkl7qqUpctc2002js/Td6g1iOQv
         vO+dj4kviBdH3IzeItfYi9zzodAkbAYt3OUUcegNNUYj3G4j6rPaLHz/JoKFHfmDE5Fs
         eIMewMPJ1IxFJ2ACnPJtrQhfG+yI1Tt0EUUAPICVRAjVRogBRIMLIhdCG8iG+aOKfRW0
         W0s0H90Xqw8stp4feG7g2td1V5FXKILb4FlOn3ey0vXaTOA17868A9UZDnjk3Qm1Kkoq
         nefA==
X-Forwarded-Encrypted: i=1; AJvYcCWdRLfmxsdYaUVVzhknJ6Nj9jZVnVv/ypy//8Onc0lPRlJgekrDOZqcTaD83Oxjf9xMCzExcWPH0rOxevn6dg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzZqN9w8HV2rerJfQpuLmnCmdeVhO7/Bb72U647O6ymWp9bKWH0
	qDjpcUb8QhzYxxOdNr03KBeRyaamVtqak/JmxB7JMTexNmkc/CsJ9Y6WeHN1Mjr1vhToX1InJzP
	ZIJMmhukxbR/e3s1EY19bJRrqzcDYIw0s1r4Ytw==
X-Google-Smtp-Source: AGHT+IHWcY4HeLXrrsjlFeqF9hDRKyiwxqpUnrkcAstxBsqv/RvYFEsaSAglhvteVmoPlR9N2NfcmRsc49RXWORdTkQ=
X-Received: by 2002:a2e:a552:0:b0:2fe:e45a:4f6c with SMTP id
 38308e7fff4ca-2ff20963bd5mr52169231fa.6.1731419388773; Tue, 12 Nov 2024
 05:49:48 -0800 (PST)
MIME-Version: 1.0
References: <20241112015408.3139996-1-ye.zhang@rock-chips.com>
 <20241112015408.3139996-5-ye.zhang@rock-chips.com> <CAMRc=MfTmpLSEUVTXSu8jf9tyTfQc=iG9NpovFem-qSDOCnagQ@mail.gmail.com>
 <ZzMwh2GMP-bE7aLO@smile.fi.intel.com> <CAMRc=MePqsQatxNy7p5c3sE4z8RepjjLeFgpppKgEctCU3jAUw@mail.gmail.com>
 <CAMRc=MdY1idv1o_nZFb1fKLpM5DHCPmEu5t5MMa_kV9csLgQWw@mail.gmail.com> <qwlya3kten7ugxzruohmbmmymjd6trz3rlbflirr3yym2vfe32@rapst33wknmd>
In-Reply-To: <qwlya3kten7ugxzruohmbmmymjd6trz3rlbflirr3yym2vfe32@rapst33wknmd>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 12 Nov 2024 14:49:37 +0100
Message-ID: <CAMRc=MfVPn1+TL1XRtPfdCrD-TEy5mG-vuPJFtFyx73+EioSxQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] gpio: rockchip: Set input direction when request irq
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Ye Zhang <ye.zhang@rock-chips.com>, 
	linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com, 
	tao.huang@rock-chips.com, finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_054951_006935_D0B5D3C7 
X-CRM114-Status: GOOD (  24.95  )
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

T24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgMjoyM+KAr1BNIFNlYmFzdGlhbiBSZWljaGVsCjxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gVHVlLCBO
b3YgMTIsIDIwMjQgYXQgMDE6NTM6NDhQTSArMDEwMCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90
ZToKPiA+IE9uIFR1ZSwgTm92IDEyLCAyMDI0IGF0IDE6NTDigK9QTSBCYXJ0b3N6IEdvbGFzemV3
c2tpIDxicmdsQGJnZGV2LnBsPiB3cm90ZToKPiA+ID4gT24gVHVlLCBOb3YgMTIsIDIwMjQgYXQg
MTE6NDDigK9BTSBBbmR5IFNoZXZjaGVua28KPiA+ID4gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgMDk6NDg6
MDZBTSArMDEwMCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiA+ID4gPiA+IE9uIFR1ZSwg
Tm92IDEyLCAyMDI0IGF0IDI6NTTigK9BTSBZZSBaaGFuZyA8eWUuemhhbmdAcm9jay1jaGlwcy5j
b20+IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBTaW5jZSB0aGUgR1BJTyBjYW4gb25s
eSBnZW5lcmF0ZSBpbnRlcnJ1cHRzIHdoZW4gaXRzIGRpcmVjdGlvbiBpcyBzZXQgdG8KPiA+ID4g
PiA+ID4gaW5wdXQsIGl0IGlzIHNldCB0byBpbnB1dCBiZWZvcmUgcmVxdWVzdGluZyB0aGUgaW50
ZXJydXB0IHJlc291cmNlcy4KPiA+ID4gPgo+ID4gPiA+IC4uLgo+ID4gPiA+Cj4gPiA+ID4gPiBU
aGlzIGxvb2tzIGxpa2UgYSBmaXggdG8gbWUsIGRvIHlvdSB3YW50IGl0IHNlbnQgZm9yIHN0YWJs
ZT8gSWYgc28sCj4gPiA+ID4gPiBwbGVhc2UgYWRkIHRoZSBGaXhlcyB0YWcgYW5kIHB1dCBpdCBm
aXJzdCBpbiB0aGUgc2VyaWVzLgo+ID4gPiA+Cj4gPiA+ID4gSW5kZXBlbmRlbnRseSBvbiB0aGUg
cmVzb2x1dGlvbiBvbiB0aGlzLCBjYW4gdGhlIGZpcnN0IHRocmVlIGJlIGFwcGxpZWQgdG8KPiA+
ID4gPiBmb3ItbmV4dD8gSSB0aGluayB0aGV5IGFyZSB2YWx1YWJsZSBmcm9tIHRoZSBkb2N1bWVu
dGF0aW9uIHBlcnNwZWN0aXZlIGFzCj4gPiA+ID4gaXQgYWRkcyB0aGUgZXhwbGFuYXRpb24gb2Yg
dGhlIHZlcnNpb24gcmVnaXN0ZXIgYml0IGZpZWxkcy4KPiA+ID4gPgo+ID4gPiA+IFRoZSBsYXN0
IG9uZSBzZWVtcyB0byBtZSBpbmRlcGVuZGVudCAoY29kZSB3aXNlLCBtZWFuaW5nIG5vIHBvdGVu
dGlhbAo+ID4gPiA+IGNvbmZsaWN0cykgdG8gdGhlIHJlc3QgYW5kIG1heSBiZSBhcHBsaWVkIHRv
IGZvci1jdXJyZW50IGxhdGVyIG9uLgo+ID4gPiA+Cj4gPiA+ID4gLS0KPiA+ID4gPiBXaXRoIEJl
c3QgUmVnYXJkcywKPiA+ID4gPiBBbmR5IFNoZXZjaGVua28KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+
Cj4gPiA+IFRoZXJlJ3MgYW5vdGhlciBpc3N1ZSBJIHNlZSB3aXRoIHRoaXMgcGF0Y2guIEl0IGVm
ZmVjdGl2ZWx5IGNoYW5nZXMKPiA+ID4gdGhlIHBpbidzIGRpcmVjdGlvbiBiZWhpbmQgdGhlIGJh
Y2sgb2YgdGhlIEdQSU9MSUIuIElmIGEgR1BJTyBpcwo+ID4gPiByZXF1ZXN0ZWQsIGl0cyBkaXJl
Y3Rpb24gc2V0IHRvIG91dHB1dCBhbmQgYW5vdGhlciBvcnRob2dvbmFsIHVzZXIKPiA+ID4gcmVx
dWVzdHMgdGhlIHNhbWUgcGluIGFzIGlucHV0LCB3ZSdsbCBuZXZlciB1cGRhdGUgdGhlIEZMQUdf
SVNfT1VUCj4gPgo+ID4gSSBtZWFudCB0byBzYXkgInNhbWUgcGluIGFzIGludGVycnVwdCIuIFNv
cnJ5IGZvciB0aGUgbm9pc2UuCj4KPiBHUElPIG91dHB1dCBhbmQgaW50ZXJydXB0IGF0IHRoZSBz
YW1lIHRpbWUgbG9va3MgbGlrZSBhIG1pc2NvbmZpZ3VyYXRpb24KPiB0byBtZS4gTWF5YmUgY2hl
Y2sgZm9yIHRoYXQgc2l0dWF0aW9uIGFuZCByZXR1cm4gLUVCVVNZPwo+CgpPZiBjb3Vyc2UgaXQg
aXMuIFRoYXQncyB3aHkgd2UgY2hlY2sgZm9yIGl0IGluCmdwaW9kX2RpcmVjdGlvbl9vdXRwdXQo
KSBhbmQgaW4gZ3Bpb2NoaXBfbG9ja19hc19pcnEoKTogcmVmdXNlIHRvIHNldApkaXJlY3Rpb24g
dG8gb3V0cHV0IGlmIHRoZSBHUElPIGlzIHVzZWQgYXMgaW50ZXJydXB0IGFuZCByZWZ1c2UgdG8g
dXNlCml0IGFzIGludGVycnVwdCBpZiBkaXJlY3Rpb24gYWxyZWFkeSBpcyBvdXRwdXQgcmVzcGVj
dGl2ZWx5LgoKVGhpcyBwYXRjaCBob3dldmVyIHByb3Bvc2VzIHRvIHNldCB0aGUgZGlyZWN0aW9u
IHRvIGlucHV0IGltcGxpY2l0bHkKd2hpY2ggaXMgd3JvbmcuIFRoZSB1bmRlcmx5aW5nIGdwaW9j
aGlwX3JlcXJlc19pcnEoKSB3aWxsIGNoZWNrIHRoZQpjdXJyZW50IGRpcmVjdGlvbiBhbmQgcmV0
dXJuIC1FSU8gaWYgaXQncyBvdXRwdXQuCgpCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
