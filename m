Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A41CC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 11:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDpaGUl69Z5OrqkKHjyHxg3aBRoIGd2LxxzGHOvQfWk=; b=z0m1bx2gvV2Oc6
	LT2xbR6jU21SSvdRawBIWjZ5s5npa46/BLEB8MjSeT0im6gMVuvETQ9nRwitWlqGtJAl6NBeVDsS/
	BTKYfbNIOVvjqU8ut9SwL1bil92JHsIb5itf2N8qasIoiW34nt74Kb5Q00rl0Yk0LeCrBHqUdFML9
	w5UaOzE6NJQ8M/ZD28maOdwFDXiboVojOPiB6blrYU4eorpyH6q8S2QhC8odWoPDuZbemokbiQoRp
	8jP0VZJIrjyW0AOb9jiheC/jA9KUDpY4NHv+6j/29e1Ee7ooLpPpnRPpAlXclSafErHAByv7LDOl5
	W4EtDaiCeH1eR21mTrGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdZl-005f0t-2e;
	Fri, 22 Dec 2023 11:20:21 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdZi-005f0K-2S
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 11:20:20 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50e62c1245eso1568901e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Dec 2023 03:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703244015; x=1703848815; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i5uVTkXtm83hlqghyHb7Nby+5GoZnWVVQ1jSMNSxmqM=;
        b=COE2qliaDFa0CtK4UoDBtBT4qWKl5LwjitI5IqLvplVsurcVIiXm+nT95a5FQFqDLh
         dJAr2+lVJZUV5UHHBoBSW16GcS4sPa5WGVyfjp1+FnicvlKGcTYuSA6HPhFZ9Wz1Pvi3
         VlIJsKhF++c9prbb2Ao7ioTAQT0jRCnucozZRnCcpJha0yYWnNq+x3VoS9cZUBYVHnWe
         SinB0l94owmNCFVhQwmkfMdIGgvwsFBrZ0xGcrQwOWCL62vXS6Q08js4UaaSIzcHXUol
         nNpsWVHqrETBQw4UXVEodt4GbkmHaSLt+oye0+qJpvFQSaZ/oa427VqJr+pKw63/uJZs
         1QbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703244015; x=1703848815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i5uVTkXtm83hlqghyHb7Nby+5GoZnWVVQ1jSMNSxmqM=;
        b=sh/ZYuOmkxqfnG6oGWQ0t3BSZRo388HA2I/xw6ZHwX1+KRoRgwesQ2HnJkiAbf0ZF5
         Y08nFrbib43+bzOIlstFkMZXBQ7m07fz304m0mvCpMWdgIsA97BzIsXHHPL4sdL99ZwF
         fmfKpS1BxdfY5TRniJZsxGy/O10Ax+3n2QBLSjIkxgF9AvseJzE165vQ2ekLCVrcBqaT
         suFNo4VcsROGywpJGt7Jbz9rnfoRa/F0CUZAV19ZvFx8sKJNY2TdJ1/9rRIARLCDx6py
         NakXpb6uQC+z5wknQNWU+lAtkz5xuzpSADuVe1Fg4ccidNAOnXY1wMdguqC/84s2XG57
         K/5w==
X-Gm-Message-State: AOJu0YzVUhkN65bmxMHJk87TXOMJ3SaaCfdsqgKRl+GaViHsJjftkT6+
	ZgDtbekGsSbVijLsJ5PTDeDk7oXbOcE5hzPLHP9t6cZeQdM=
X-Google-Smtp-Source: AGHT+IEi/HhYQ50GOG0RtxZsAzgETL45BSniWD/co7T1WZL9/3F3PBjyi7yo0IazEBn83k7ZznHpF8sF9W6Ktt/EPvs=
X-Received: by 2002:a19:6516:0:b0:50e:53bc:3f9b with SMTP id
 z22-20020a196516000000b0050e53bc3f9bmr519912lfb.113.1703244015275; Fri, 22
 Dec 2023 03:20:15 -0800 (PST)
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org> <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org> <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
 <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org> <CABEcMwXdD06KoODi4Sx7Q6oaNZ7CEUcNLiysVyqQSQq-7zYoqA@mail.gmail.com>
 <01d17a353a1fd8e8f9d19abce3f89393@manjaro.org>
In-Reply-To: <01d17a353a1fd8e8f9d19abce3f89393@manjaro.org>
From: Hugh Cole-Baker <sigmaris@gmail.com>
Date: Fri, 22 Dec 2023 11:20:04 +0000
Message-ID: <CAAXNxMSo0pk0283h7Ti5FydXBkrfcte-mgD64xGPqXqjXXFRmw@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_032018_799653_31EFE2DB 
X-CRM114-Status: GOOD (  32.69  )
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
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCAyMiBEZWMgMjAyMyBhdCAwMDo1NCwgRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFy
by5vcmc+IHdyb3RlOgo+Cj4gT24gMjAyMy0xMi0yMSAxMToxMSwgU2hhbnR1ciBSYXRob3JlIHdy
b3RlOgo+ID4gT24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMjozNeKAr1BNIERyYWdhbiBTaW1pYyA8
ZHNpbWljQG1hbmphcm8ub3JnPgo+ID4gd3JvdGU6Cj4gPj4gT24gMjAyMy0xMi0xNCAxNToyNCwg
U2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+ID4+ID4gT24gU3VuLCBEZWMgMTAsIDIwMjMgYXQgMTI6
MDjigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KPiA+PiA+IHdyb3RlOgo+
ID4+ID4+IE9uIDIwMjMtMTItMTAgMDE6MDMsIFNoYW50dXIgUmF0aG9yZSB3cm90ZToKPiA+PiA+
PiA+IE9uIFNhdCwgRGVjIDksIDIwMjMgYXQgMTE6NDPigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1p
Y0BtYW5qYXJvLm9yZz4KPiA+PiA+PiA+IHdyb3RlOgo+ID4+ID4+ID4+IE9uIDIwMjMtMTItMTAg
MDA6MzUsIFNoYW50dXIgUmF0aG9yZSB3cm90ZToKPiA+PiA+PiA+PiA+IFVTQiBwb3J0IHJlZ3Vs
YXRvcnMgc2hvdWxkIGJlIGNvbnRyb2xsZWQgYnkgUEhZcwo+ID4+ID4+ID4+ID4gc28gd2UgcmVt
b3ZlIGFsd2F5cy1vbiBwcm9wZXJ0eSBhbmQgbGV0IFBIWXMgbWFuYWdlIHRoZQo+ID4+ID4+ID4+
ID4gcmVndWxhdG9yLgo+ID4+ID4+ID4+ID4KPiA+PiA+PiA+PiA+IFR5cGVjIHBvcnQgaGFzIG1p
c2NvbmZ1Z3JlZCBwaHktc3VwcGx5IGFuZCBub3cgdGhhdCB3ZSBhcmUKPiA+PiA+PiA+PiA+IHJl
bW92aW5nIHJlZ3VsYXRvci1hbHdheXMtb24sIHdlIG5lZWQgdG8gZml4IHRoZSBwaHktc3VwcGx5
Cj4gPj4gPj4gPj4gPiBzbyB0aGUgUEhZcyBhcmUgYWJsZSB0byB0dXJuIHBvd2VyIHRvIHR5cGUt
YyBwb3J0Lgo+ID4+ID4+ID4+ID4KPiA+PiA+PiA+PiA+IFNpZ25lZC1vZmYtYnk6IFNoYW50dXIg
UmF0aG9yZSA8aUBzaGFudHVyLmNvbT4KPiA+PiA+PiA+PiA+IC0tLQo+ID4+ID4+ID4+ID4gKyBk
ZXZpY2V0cmVlCj4gPj4gPj4gPj4gPgo+ID4+ID4+ID4+ID4gQWZ0ZXIgdGhpcyBwYXRjaCB0aGUg
cG9ydHMgd2VyZSBjb25maXJtZWQgdG8gcG93ZXIgdXAgYW5kIGRvd24KPiA+PiA+PiA+PiA+IGlu
IHUtYm9vdCB3aGVuIGRvaW5nIHVzYiBzdGFydCBhbmQgdXNiIHN0b3AuCj4gPj4gPj4gPj4gPiBB
dCBib290IHRoZSByZWd1bGF0b3JzIHdlcmUgb2ZmLCB0aGUgZGV2aWNlcyBjb25uZWN0ZWQgd2Vy
ZW4ndAo+ID4+ID4+ID4+ID4gcG93ZXJlZCB1cCwgb24gdXNiIHN0YXJ0IHRoZSBQSFlzIGFyZSBh
YmxlIHRvIHBvd2VyIG9uIHRoZSBwb3J0cwo+ID4+ID4+ID4+ID4gYW5kIG9uIHVzYiBzdG9wIHRo
ZXkgd2VyZSBwb3dlcmVkIGRvd24uCj4gPj4gPj4gPj4gPgo+ID4+ID4+ID4+ID4gQXQgdGhlIGJv
b3QsIHRoZSBwb3J0cyB3ZXJlIHBvd2VyZWQgZG93biB3aGljaCB3YXMgYWdhaW4gcG93ZXJlZAo+
ID4+ID4+ID4+ID4gdXAgYnkgTGludXgga2VybmVsIHdoZW4gYm9vdGluZyB1cC4KPiA+PiA+PiA+
PiA+Cj4gPj4gPj4gPj4gPgo+ID4+ID4+ID4+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvY2twcm82NC5kdHNpIHwgNCArLS0tCj4gPj4gPj4gPj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+ID4+ID4+ID4+ID4KPiA+PiA+
PiA+PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1y
b2NrcHJvNjQuZHRzaQo+ID4+ID4+ID4+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+ID4+ID4+ID4+ID4gaW5kZXggYmNhMmI1MGUwYS4uYmQy
ODI0YWE0OCAxMDA2NDQKPiA+PiA+PiA+PiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4gPj4gPj4gPj4gPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+ID4+ID4+ID4+ID4gQEAg
LTE5Miw3ICsxOTIsNiBAQCB2Y2M1djBfaG9zdDogdmNjNXYwLWhvc3QtcmVndWxhdG9yIHsKPiA+
PiA+PiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+PiA+
PiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2M1djBfaG9zdF9lbj47Cj4gPj4g
Pj4gPj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9ob3N0IjsKPiA+
PiA+PiA+PiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+PiA+PiA+PiA+
ICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3VzYj47Cj4gPj4gPj4gPj4gPiAg
ICAgICB9Owo+ID4+ID4+ID4+ID4KPiA+PiA+PiA+PiA+IEBAIC0yMDMsNyArMjAyLDYgQEAgdmNj
NXYwX3R5cGVjOiB2Y2M1djAtdHlwZWMtcmVndWxhdG9yIHsKPiA+PiA+PiA+PiA+ICAgICAgICAg
ICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+PiA+PiA+PiA+ICAgICAgICAgICAg
ICAgcGluY3RybC0wID0gPCZ2Y2M1djBfdHlwZWNfZW4+Owo+ID4+ID4+ID4+ID4gICAgICAgICAg
ICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfdHlwZWMiOwo+ID4+ID4+ID4+ID4gLSAgICAg
ICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4+ID4+ID4+ID4gICAgICAgICAgICAgICB2
aW4tc3VwcGx5ID0gPCZ2Y2M1djBfdXNiPjsKPiA+PiA+PiA+PiA+ICAgICAgIH07Cj4gPj4gPj4g
Pj4gPgo+ID4+ID4+ID4+ID4gQEAgLTg2Myw3ICs4NjEsNyBAQCB1MnBoeTBfb3RnOiBvdGctcG9y
dCB7Cj4gPj4gPj4gPj4gPiAgICAgICB9Owo+ID4+ID4+ID4+ID4KPiA+PiA+PiA+PiA+ICAgICAg
IHUycGh5MF9ob3N0OiBob3N0LXBvcnQgewo+ID4+ID4+ID4+ID4gLSAgICAgICAgICAgICBwaHkt
c3VwcGx5ID0gPCZ2Y2M1djBfaG9zdD47Cj4gPj4gPj4gPj4gPiArICAgICAgICAgICAgIHBoeS1z
dXBwbHkgPSA8JnZjYzV2MF90eXBlYz47Cj4gPj4gPj4gPj4gPiAgICAgICAgICAgICAgIHN0YXR1
cyA9ICJva2F5IjsKPiA+PiA+PiA+PiA+ICAgICAgIH07Cj4gPj4gPj4gPj4gPiAgfTsKPiA+PiA+
PiA+Pgo+ID4+ID4+ID4+IFF1aXRlIGZyYW5rbHksIHNvbWV0aGluZyBkb2Vzbid0IGZlZWwgcmln
aHQgdGhlcmUuICBXb3VsZCB5b3UgbWluZCwKPiA+PiA+PiA+PiBwbGVhc2UsIHRvIHBsYWNlIHRo
aXMgcGF0Y2ggb24gaG9sZCB1bnRpbCBuZXh0IHdlZWsgb3Igc28sIGF0IHdoaWNoCj4gPj4gPj4g
Pj4gcG9pbnQgSSBzaG91bGQgaGF2ZSBlbm91Z2ggdGltZSB0byBnbyB0aHJvdWdoIHRoZSBSb2Nr
UHJvNjQgc2NoZW1hdGljCj4gPj4gPj4gPj4gdGhvcm91Z2hseSBvbmNlIGFnYWluLCBhbmQgdGVz
dCB0aGUgcGF0Y2ggaW4gZGV0YWlsPwo+ID4+ID4+ID4KPiA+PiA+PiA+IFN1cmUsIG5vIHdvcnJp
ZXMuCj4gPj4gPj4KPiA+PiA+PiBHcmVhdCwgdGhhbmtzLgo+ID4+ID4+Cj4gPj4gPj4gPiBXb3Vs
ZCB5b3UgbWluZCBsZXR0aW5nIG1lIGtub3cgd2hpY2ggcGFydCBkb2Vzbid0IGZlZWwgcmlnaHQg
dG8geW91Pwo+ID4+ID4+Cj4gPj4gPj4gU3VyZSwgaXQgd2FzIGFib3V0IHRoZSBsYXN0IGNoYW5n
ZSBpbiB0aGUgcGF0Y2guCj4gPj4gPgo+ID4+ID4gVGhlIFR5cGVDIHBvcnQgVkJVUyBpcyBWQlVT
X1RZUEVDIG9uIFBhZ2UgMjAgb2YgMzMgbWFya2VkIGZvcgo+ID4+ID4gVkJVU19bMS00XSBpbiBz
Y2hlbWF0aWMgaGVyZSAtIFswXQo+ID4+ID4KPiA+PiA+IFswXSAtIGh0dHBzOi8vZmlsZXMucGlu
ZTY0Lm9yZy9kb2Mvcm9ja3BybzY0L3JvY2twcm82NF92MjEtU0NILnBkZgo+ID4+Cj4gPj4gSSBz
ZWUsIHRoYW5rcywgYW5kIEkgYWxyZWFkeSB3ZW50IG9uY2UgYWdhaW4gdGhyb3VnaCB0aGUgUm9j
a1BybzY0Cj4gPj4gc2NoZW1hdGljLCBidXQgb25seSBicmllZmx5LiAgSSBuZWVkIHRvIGRvIHRo
YXQgYWdhaW4sIGJ1dCBpbiBkZXRhaWwsCj4gPj4gYW5kIGNvbXBhcmUgaXQgdGhvcm91Z2hseSB3
aXRoIHRoZSBkdHMoaSkuCj4gPgo+ID4gUGluZy4KPgo+IFBvbmcuIDopICBJIGhhdmVuJ3QgZm9n
b3R0ZW4gYWJvdXQgdGhpcywgYnV0IEkgc2ltcGx5IGhhdmVuJ3QgaGFkIGVub3VnaAo+IHRpbWUg
eWV0LCBhbmQgSSByZWFsbHkgd2FudCB0byBoYXZlIHRoaXMgY2hlY2tlZCBhbmQgY2xlYW5lZCB1
cC4gIEknbQo+IHNvcnJ5IGZvciB0aGUgZGVsYXkuCgpJIGhhZCBhIGxvb2sgb3ZlciB0aGUgc2No
ZW1hdGljIChTaGVldCAxMSwgMTkgYW5kIDIwKSwgYW5kIGl0IHNob3dzIHRoZSBVU0IyLjAKUEhZ
MCBiZWluZyB1c2VkIGZvciBib3RoIHRoZSBUeXBlQyBwb3J0IGFuZCBvbmUgb2YgdGhlIFVTQjIu
MCBUeXBlQSBwb3J0cy4KVkJVUyBmb3IgdGhlIFR5cGVDIHBvcnQgaXMgVkJVU19UWVBFQywgVkJV
UyBmb3IgdGhlIFR5cGVBIHBvcnQgaXMgVkNDNVYwX0hPU1QwLgoKU28gSSB0aGluayB0aGUgdmNj
NXYwX2hvc3Qgc3VwcGx5IHNob3VsZCBiZSBsZWZ0IGFzLWlzIG9uIHRoZSBob3N0LXBvcnQgbm9k
ZSwKYW5kIHRoZSBwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdHlwZWM+IHNob3VsZCBiZSBhZGRlZCB0
byB0aGUgb3RnLXBvcnQgbm9kZSBhCmZldyBsaW5lcyBhYm92ZSwgaW5zdGVhZC4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
