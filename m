Return-Path: <SRS0=/i9y=IC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FEB9C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Mar 2021 12:58:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA48664F2C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Mar 2021 12:58:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EA48664F2C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wqFOw6cZtxEEIG6oEnF+IV4/rDH/mfmricdmm2keb1o=; b=eLxDJQpz+2dNZoWEj2jGHDZ5k
	iAfE9yvilXL81E5pNP6TdDKmpBivTTtLbhhqzA3QJpxf1vdAYaEuCqm1RJOGifsiJKLHxgAuN2EJV
	gO9FOtMbnBntroheZC+IV3Iwvs1yJ6yxNEzYgwsdT1dMns9aJz+dLgMsIC0VFB8ovmsPEbpKE2xV9
	cosK+9DjrUytjLs04G2etMPudrizNiqZwrCbSSLCZn+ICLvexwp2mbWgCcQcUlNdysIWE88Um/Q6x
	6A54DEvNW9H7GWX2IX1l2FD8gHlK7a7U418neOfik+CH+G6/ccAXAt3Sm+sKRQLb57UqxUi0LI/la
	TI2bOy4nA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHnYu-008g3s-CF; Thu, 04 Mar 2021 12:58:40 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHnTE-008fXk-4o; Thu, 04 Mar 2021 12:52:51 +0000
Received: by mail-pj1-x102c.google.com with SMTP id e9so6502273pjs.2;
 Thu, 04 Mar 2021 04:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mMs0KXBWR+YueGQlJbv/e4cedmjQSUXhVkUKXhpAdMI=;
 b=aWd1FTezvqGJ/6se8MkarAgtd/7/Sr1RRy8WXevNQsQfoQFm+BEiFudNJF/AEmsV3w
 /rVJiNqRZj8JTLsTMAZMZXmgsMlfZYSGZghGplJOMDRXka5ubbErHviBuy1TyZe+6uWX
 px4/bMDu5p1stqd73/GYapoIJHVpIIOJ61N1DGvgAmoCITK9kNnVvqUdYeCXyg8noo4T
 bjrXMhr89XlI5/l4yyjmit6TTymGjo4jFRr0pIBhXL6MozuRxnRzB2m6LFF0ITzqtt/s
 ugiaosaxSJxweuj3Mtux76Q7Wm4LKQTsHqpLJjgTZ9FYI/YJeoY8vBqfC+UQj3fcft/W
 gK9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mMs0KXBWR+YueGQlJbv/e4cedmjQSUXhVkUKXhpAdMI=;
 b=NIxou3VL4/cOVcDaGiU8MDxsYT0phTqTWju1f+fsDpN181CmFKrBuAe11rRGroxdih
 jtZJ2cOSfONtDQAzVDxRQOS0Jeg9WdbWnYPioef+mJ1nw0h3Jzs8Tf2z9U0Mcs8PejEU
 AE/OqBvn0nS/nN2LqmuCLbOKIQDeK5beRkFvn3mcUw7i6FSkITiLoZGdG7h8TZsn58if
 /jZy3WssKFvS+G9wH/C91pnXeXmDe9/a3KS5hmdiUY7uytntEHKeHAOiQw8hdt/vBmhO
 RkTTz8je5o9L2DNKBt+iTanUQqtmqoM42UAH2tvVzmnBRpjk6f5RsMa3AtVieihha2TV
 Plow==
X-Gm-Message-State: AOAM531A3+n5nhp8B3/PIqL+DxbqJANkl0hp/WFY3DNmLnP7w0cBC6sS
 c5yiPr6vi8uzsVMi+hC2e1HsGv0J8J/ziclKEdo=
X-Google-Smtp-Source: ABdhPJyp4iaFUtNFKXjAtlVJECLk/aIzchITz/Yh9b1QeBFZu+N6Uza9NXnFye0XpLpVkacCMI77WdgZIPybjMJ1A5Q=
X-Received: by 2002:a17:90a:5601:: with SMTP id
 r1mr4325691pjf.236.1614862365193; 
 Thu, 04 Mar 2021 04:52:45 -0800 (PST)
MIME-Version: 1.0
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
 <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
 <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
In-Reply-To: <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 4 Mar 2021 06:52:34 -0600
Message-ID: <CAHCN7xKs0FtVYu1hs1kAUeaer_uJgpaATDeB0-3mayXUuCrpDg@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Sascha Hauer <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, 
 linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org, 
 kernel@collabora.com, Abel Vesa <abel.vesa@nxp.com>
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

T24gV2VkLCBNYXIgMywgMjAyMSBhdCA1OjI0IFBNIFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gT24gV2VkLCAyMDIxLTAzLTAzIGF0IDE2OjIwICswMTAw
LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+IExlIDAzLzAzLzIwMjEgw6AgMTU6MTcsIFBo
aWxpcHAgWmFiZWwgYSDDqWNyaXQgOgo+ID4gPiBIaSBCZW5qYW1pbiwKPiA+ID4KPiA+ID4gT24g
TW9uLCAyMDIxLTAzLTAxIGF0IDE2OjE3ICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToK
PiA+ID4gPiBUaGUgdHdvIFZQVXMgaW5zaWRlIElNWDhNUSBzaGFyZSB0aGUgc2FtZSBjb250cm9s
IGJsb2NrIHdoaWNoIGNhbiBiZSBzZWUKPiA+ID4gPiBhcyBhIHJlc2V0IGhhcmR3YXJlIGJsb2Nr
Lgo+ID4gPiBUaGlzIGlzbid0IGEgcmVzZXQgY29udHJvbGxlciB0aG91Z2guIFRoZSBjb250cm9s
IGJsb2NrIGFsc28gY29udGFpbnMKPiA+ID4gY2xvY2sgZ2F0ZXMgb2Ygc29tZSBzb3J0IGFuZCBh
IGZpbHRlciByZWdpc3RlciBmb3IgdGhlIGZlYXR1cmVzZXQgZnVzZXMuCj4gPiA+IFRob3NlIHNo
b3VsZG4ndCBiZSBtYW5pcHVsYXRlZCB2aWEgdGhlIHJlc2V0IEFQSS4KClRoaXMgZHJpdmVyIGlz
IHZlcnkgc2ltaWxhciB0byBzZXZlcmFsIG90aGVyIHBhdGNoZXMgZm9yIGNsa19ibGsKY29udHJv
bCBbMV0gd2hpY2ggY29udGFpbiBib3RoIHJlc2V0cyBhbmQgY2xvY2stZW5hYmxlcyBvbiB0aGUK
aS5NWDhNUCwgaS5NWDhNTSBhbmQgaS5NWDhNTi4gIEluIHRob3NlIGNhc2VzLCB0aGVyZSBhcmUg
c29tZSBzcGVjaWZpYwpwb3dlciBkb21haW4gY29udHJvbHMgdGhhdCBhcmUgbmVlZGVkLCBidXQg
SSB3b25kZXIgaWYgdGhlIGFwcHJvYWNoIHRvCmNyZWF0aW5nIHJlc2V0cyBhbmQgY2xvY2sgZW5h
YmxlcyBjb3VsZCBiZSB1c2VkIGluIGEgc2ltaWxhciB3YXkgaWYKdGhlIElNWDhNUSBkb2Vzbid0
IGhhdmUgdGhlIHNhbWUgcXVpcmtzLiAgSW4gdGhlIGNhc2Ugb2YgdGhlIGkuTVg4TQpNaW5pLCBJ
IHRoaW5rIGl0IGhhcyB0aGUgc2FtZSBWUFUuCgpbMV0gLSBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3Byb2plY3QvbGludXgtY2xrL3BhdGNoLzE1OTk1NjA2OTEtMzc2My0xMi1naXQtc2Vu
ZC1lbWFpbC1hYmVsLnZlc2FAbnhwLmNvbS8KCmFkYW0KPiA+Cj4gPiBUaGV5IGFyZSBhbGwgcGFy
dCBvZiB0aGUgY29udHJvbCBibG9jayBhbmQgb2YgdGhlIHJlc2V0IHByb2Nlc3MgZm9yIHRoaXMK
PiA+IGhhcmR3YXJlIHRoYXQgd2h5IEkgcHV0IHRoZW0gaGVyZS4gSSBndWVzcyBpdCBpcyBib3Jk
ZXIgbGluZSA6LSkKPgo+IEknbSBwdXNoaW5nIGJhY2sgdG8ga2VlcCB0aGUgcmVzZXQgY29udHJv
bCBmcmFtZXdvcmsgZm9jdXNlZCBvbgo+IGNvbnRyb2xsaW5nIHJlc2V0IGxpbmVzLiBFdmVyeSBz
aWRlIGVmZmVjdCAoc3VjaCBhcyB0aGUgYXN5bW1ldHJpYyBjbG9jawo+IHVuZ2F0aW5nKSBpbiBh
IHJhbmRvbSBkcml2ZXIgbWFrZXMgaXQgaGFyZGVyIHRvIHJlYXNvbiBhYm91dCBiZWhhdmlvdXIK
PiBhdCB0aGUgQVBJIGxldmVsLCBhbmQgdG8gcmV2aWV3IHBhdGNoZXMgZm9yIGhhcmR3YXJlIEkg
YW0gbm90IGZhbWlsaWFyCj4gd2l0aC4KPgo+ID4gPiA+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8g
YWRkIHRoZSBzZWNvbmQgVlBVIChmb3IgSEVDViBkZWNvZGluZykgaXQgd2lsbCBiZQo+ID4gPiA+
IG1vcmUgaGFuZHkgaWYgdGhlIGJvdGggVlBVIGRyaXZlcnMgaW5zdGFuY2UgZG9uJ3QgaGF2ZSB0
byBzaGFyZSB0aGUKPiA+ID4gPiBjb250cm9sIGJsb2NrIHJlZ2lzdGVycy4gVGhpcyBsZWFkIHRv
IGltcGxlbWVudCBpdCBhcyBhbiBpbmRlcGVuZCByZXNldAo+ID4gPiA+IGRyaXZlciBhbmQgdG8g
Y2hhbmdlIHRoZSBWUFUgZHJpdmVyIHRvIHVzZSBpdC4KPiA+ID4gV2h5IG5vdCBzd2l0Y2ggdG8g
YSBzeXNjb24gcmVnbWFwIGZvciB0aGUgY29udHJvbCBibG9jaz8gVGhhdCBzaG91bGQKPiA+ID4g
YWxzbyBhbGxvdyB0byBrZWVwIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IHdpdGggdGhlIG9sZCBi
aW5kaW5nIHdpdGgKPiA+ID4gbWluaW1hbCBlZmZvcnQuCj4gPgo+ID4gSSB3aWxsIGdpdmUgYSB0
cnkgaW4gdGhpcyBkaXJlY3Rpb24uCj4KPiBUaGFuayB5b3UuCj4KPiA+ID4gPiBQbGVhc2Ugbm90
ZSB0aGF0IHRoaXMgc2VyaWVzIGJyZWFrIHRoZSBjb21wYXRpYmlsaXR5IGJldHdlZW4gdGhlIERU
QiBhbmQKPiA+ID4gPiBrZXJuZWwuIFRoaXMgYnJlYWsgaXMgbGltaXRlZCB0byBJTVg4TVEgU29D
IGFuZCBpcyBkb25lIHdoZW4gdGhlIGRyaXZlcgo+ID4gPiA+IGlzIHN0aWxsIGluIHN0YWdpbmcg
ZGlyZWN0b3J5Lgo+ID4gPiBJIGtub3cgaW4gdGhpcyBjYXNlIHdlIGFyZSBwcmV0dHkgc3VyZSB0
aGVyZSBhcmUgbm8gdXNlcnMgb2YgdGhpcwo+ID4gPiBiaW5kaW5nIGV4Y2VwdCBmb3IgYSBzdGFn
aW5nIGRyaXZlciwgYnV0IGl0IHdvdWxkIHN0aWxsIGJlIG5pY2UgdG8ga2VlcAo+ID4gPiBzdXBw
b3J0IGZvciB0aGUgZGVwcmVjYXRlZCBiaW5kaW5nLCB0byBhdm9pZCB0aGUgcmVxdWlyZW1lbnQg
b2YgdXBkYXRpbmcKPiA+ID4ga2VybmVsIGFuZCBEVCBpbiBsb2NrLXN0ZXAuCj4gPgo+ID4gSWYg
SSB3YW50IHRvIHVzZSBhIHN5c2NvbiAob3IgYSByZXNldCkgdGhlIGRyaXZlciBtdXN0IG5vdCBp
b3JlbWFwIHRoZSAiY3RybCIKPiA+IHJlZ2lzdGVycy4gSXQgbWVhbnMgdGhhdCAiY3RybCIgaGFz
IHRvIGJlIHJlbW92ZWQgZnJvbSB0aGUgZHJpdmVyIHJlcXVlc3RlZAo+ID4gcmVnLW5hbWVzIChp
bXg4bXFfcmVnX25hbWVzW10pLiBEb2luZyB0aGF0IGJyZWFrIHRoZSBrZXJuZWwvRFQgY29tcGF0
aWJpbGl0eS4KPiA+IFNvbWVob3cgc3lzY29uIGFuZCAiY3RybCIgYXJlIGV4Y2x1c2l2ZS4KPgo+
IFRoZSB3YXkgdGhlIGRyaXZlciBpcyBzZXQgdXAgY3VycmVudGx5LCB5ZXMuIFlvdSBjb3VsZCBh
ZGQgYSBiaXQgb2YKPiBwbGF0Zm9ybSBzcGVjaWZpYyBwcm9iZSBjb2RlLCB0aG91Z2gsIHRoYXQg
d291bGQgc2V0IHVwIHRoZSByZWdtYXAKPiBlaXRoZXIgYnkgY2FsbGluZwo+ICAgICAgICAgc3lz
Y29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpOwo+IGZvciB0aGUgbmV3IGJpbmRpbmcsIG9y
LCBpZiB0aGUgcGhhbmRsZSBpcyBub3QgYXZhaWxhYmxlLCBmYWxsIGJhY2sgdG8KPiAgICAgICAg
IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUoLi4uLCAiY3RybCIpOwo+ICAgICAgICAgZGV2
bV9pb3JlbWFwX3Jlc291cmNlKCk7Cj4gICAgICAgICBkZXZtX3JlZ21hcF9pbml0X21taW8oKTsK
PiBmb3IgdGhlIG9sZCBiaW5kaW5nLgo+IFRoZSBhY3R1YWwgY29kZWMgLnJlc2V0IGFuZCB2YXJp
YW50IC5ydW50aW1lX3Jlc3VtZSBvcHMgY291bGQgYmUKPiBpZGVudGljYWwgdGhlbi4KPgo+IHJl
Z2FyZHMKPiBQaGlsaXBwCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
