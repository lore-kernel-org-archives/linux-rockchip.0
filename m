Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37532C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rR+yV0b3VPA2tUoLIA0XRLSYeXvlxVIOj/W8syMhTWo=; b=PKBLcGdj4pnsCF
	Dj0seMKXRnpIsB6BHkG0fOt39B0lnZSDm1qpmU829JUjusWnHHffwbu9kYEWvwCdCKbW3bR4ONZI4
	k91f94EaYYooYsFr+8ce/c8FBNh6ywnKNHJslUzVGDnfcWiik2ZljnBu04yi3kpSnpcSRMCjqF8MG
	m3nKcQKAZvkMjc8Dm5MGaQeymYBnMw0tiJcSNb5cV4et7CC6yUEI4BemM+LpFlEj4CV0jkojA47hl
	txXOxi18NEGeSF+3KojryPfHJKM6A8HdJ+KEvfgCP4uJ5rypdWcx3z5mnIuFxQI/isqpmEIhahtuO
	y61MhBPkMZpgl5Sd377g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDEGF-00HORF-Hv; Thu, 27 Jan 2022 23:33:03 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDEG1-00HOKk-D7; Thu, 27 Jan 2022 23:32:50 +0000
Received: by mail-yb1-xb34.google.com with SMTP id c6so13474514ybk.3;
 Thu, 27 Jan 2022 15:32:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=45b55r8UrP19JXUlLW74FhqYl/0CdywuMW59aCYj888=;
 b=flncRfSPwRoAgqDR9OXU6u8IxKFDE5sMsLuqOng6ONrSAhCQEKo08oV6HPk8FYDthr
 9f0pU1HM9KHv1Il3dWqN1RCpfqD2WF/WEWC86K+0NuHgXbl2CKuCJ32D74Yr/w4luSmz
 +Kth0fcvEoCCWqcXYhCK1dLCN7T9y5aOnoHGYjEtTPTM+xD70/VvawKq/rPOO7bR57My
 ZNLsF9/l4SlDHgoVA38O5E2i5n0KK8+QEGfK8UtLaLpjtEbqmn9i3sJrpZImASTWmBBh
 lICci5Ql846yLCpsLrZz1mH0GqPaG3rmpRFNyDWV9WE7c3Ft2sUBl1+YxXDbZH0TGKIb
 t6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=45b55r8UrP19JXUlLW74FhqYl/0CdywuMW59aCYj888=;
 b=gXKZ32e6qnIIXGLerTxXYbO/KuV9SYNVM6m8umfawfww++NApAeRXxT5J8Swbv+PBu
 XA9COMNpfuIbhck0FIll3twu+zsacdM0VXPwOEdUGQXcXpsc8YvDgA3lQjbuJxOC2eyF
 pTQNdxb8VCkyaZAsqaQzNsPb329OZKzmAbotno6gNa4prieV4odG4paIiASJDigJWqBx
 9u+v3I68TDn0vXzLvNDN7IQ0oOw76m7Ww/9nftouTKupPNAA5h49Usi3bp2N/aCVSZwo
 clwkOhhlPDVavDewmMCGu0Q8RUs6XGFgF2sCRSZwaht/s7xtL2RHx5y8aolkPno7We4K
 2LOw==
X-Gm-Message-State: AOAM533oD4Vo/+fsF/d57WITSDhC5c8uQ3jZsTpIcRSMLuR/XeMHz08v
 +rR4p78q3mp75vINvzLSALui5H7QSX2I0Qhl7Qo=
X-Google-Smtp-Source: ABdhPJzw0vXppBjuNB3RMkeTHKdzaHn5o9WVCpp9aGE46D/kj99Jzrn/fB+HFG2Bllds+UXD7Yz1rLkpDvPrYyyERTc=
X-Received: by 2002:a25:d0cb:: with SMTP id h194mr9514813ybg.680.1643326368214; 
 Thu, 27 Jan 2022 15:32:48 -0800 (PST)
MIME-Version: 1.0
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
 <07281029-0efd-0a74-0d96-92e3dcf5bbb7@gmail.com>
 <CAMdYzYrKq==Bs0aonrJBC+W2c4nQ8cUn2dn_Se4WDaRCkT6SYg@mail.gmail.com>
 <3859424.JUeRptVaKW@diego>
In-Reply-To: <3859424.JUeRptVaKW@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 27 Jan 2022 18:32:36 -0500
Message-ID: <CAMdYzYoQkR805xCyPstf2nrnzymVB3Ff4_cQAz_qsbokz8DG2w@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Quartz64-A sdmmc1 node
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_153249_470380_52F5D134 
X-CRM114-Status: GOOD (  19.97  )
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

T24gVGh1LCBKYW4gMjcsIDIwMjIgYXQgNToxNSBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEFtIERvbm5lcnN0YWcsIDI3LiBKYW51YXIgMjAyMiwgMTA6NTU6
MTMgQ0VUIHNjaHJpZWIgUGV0ZXIgR2VpczoKPiA+IE9uIFRodSwgSmFuIDI3LCAyMDIyIGF0IDE6
MTggQU0gSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+
Cj4gPiA+Cj4gPiA+IE9uIDEvMjcvMjIgMDI6MDAsIFBldGVyIEdlaXMgd3JvdGU6Cj4gPiA+ID4g
VGhlIHNkbW1jMSBub2RlIG9uIFF1YXJ0ejY0LUEgc3VwcG9ydHMgdGhlIG9wdGlvbmFsIHdpZmkg
bW9kdWxlIGZyb20KPiA+ID4gPiBQaW5lNjQuCj4gPiA+ID4gQWRkIHRoZSBzZG1tYzEgbm9kZSBh
bmQgcmVxdWlzaXRlIHNkaW9fcHdyc2VxIHRvIGVuYWJsZSB3aWZpIHN1cHBvcnQgb24KPiA+ID4g
PiB0aGUgUXVhcnR6NjQtQS4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdl
aXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjYtcXVhcnR6NjQtYS5kdHMgICB8IDQ1ICsrKysrKysrKysrKysrKysr
KysKPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4g
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFy
dHo2NC1hLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0
LWEuZHRzCj4gPiA+ID4gaW5kZXggMzNjMmMxOGNhYWE5Li4xZDczYWM2NTU3YzUgMTAwNjQ0Cj4g
PiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcXVhcnR6NjQt
YS5kdHMKPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1x
dWFydHo2NC1hLmR0cwo+ID4gPiA+IEBAIC05MSw2ICs5MSwxOCBAQCBzaW1wbGUtYXVkaW8tY2Fy
ZCxjb2RlYyB7Cj4gPiA+ID4gICAgICAgICAgICAgICB9Owo+ID4gPiA+ICAgICAgIH07Cj4gPiA+
ID4KPiA+ID4gPiArICAgICBzZGlvX3B3cnNlcTogc2Rpby1wd3JzZXEgewo+ID4gPgo+ID4gPiA+
ICsgICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPgo+ID4gPiBXaGVuIGEgbm9kZSBp
cyBub3QgcHJldmlvdXNseSBkaXNhYmxlZCwgdGhlbiB0aGVyZSdzIG5vIG5lZWQgZm9yICJva2F5
Ii4KPiA+Cj4gPiBUaGFua3MsIHRoaXMgaXMgaGVyZSBpbiBjYXNlIGFuIGVuZCB1c2VyIHdhbnRz
IHRvIGVhc2lseSBoYWNrIHRoZQo+ID4gYm9hcmQgdG8gdXNlIHRoaXMgZm9yIG90aGVyIHB1cnBv
c2VzLgo+Cj4gYnV0IHBsZWFzZSBkcm9wIGl0IGhlcmUgYXMgd2VsbC4KPgo+IEEgdXNlciAiaGFj
a2luZyIgYSBkZXZpY2V0cmVlIHNob3VsZCBiZSBhYmxlIHRvIGFsc28ganVzdCBfYWRkXwo+IGEg
c3RhdHVzICJkaXNhYmxlZCIgOi0pIC4KClVuZGVyc3Rvb2QsIHdpbGwgZG8uClRoYW5rcyEKCj4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
