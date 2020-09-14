Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41BDFC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 00:02:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4059C20771
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 00:02:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RvtNB9/I"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4059C20771
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=R3kJEqZeKD2dn+h3upbbwgZVdOpDsyeEJT1OGSb+q74=; b=RvtNB9/IAOm9oG0rpvjcZ2nFu
	JBAzHDKNVgsXa1kfM2Jm9X+BIKnzkKERO1sSJkMT9VDPTbKI4RiLD5wl1VRwdVrL2BIun77uVC3mA
	D2yop2wWBwak55JZozmu9wit/eeDEcMQXLIk3DOCLM1UHyqPRF96j425kTg2oXi2oTCLt+YuRWrnh
	JWMiNi84TzZvmpw6mEnjCoqPB85hJ/7FHngwyrCjXw8BBNmrCa8Gat2hbXZGjaeqQYZ1qO676fcVs
	PV30QuOQvk2sXKQZbI3so9HS6X90aCuqLyvML5j9Q3SjXYr3XVXatJWR5cefbEwgEPS7/Pm8vRdVX
	bjBGJDcLg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHbwd-0008U4-TP; Mon, 14 Sep 2020 00:02:07 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHbwa-0008T1-Vy
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 00:02:06 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 1AC6741B;
 Mon, 14 Sep 2020 08:01:55 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from jay-pc (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11450T140716430829312S1600041714397143_; 
 Mon, 14 Sep 2020 08:01:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <272906d6db144c2d61e36b49a4a75f65>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Date: Mon, 14 Sep 2020 08:01:54 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Heiko Stuebner" <heiko@sntech.de>, 
 linus.walleij <linus.walleij@linaro.org>
Subject: Re: Re: [PATCH 0/2] pinctrl: rockchip: codingstyle for
 pinctrl-rockchip
References: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>, 
 <20200117081358.5772-1-jay.xu@rock-chips.com>, 
 <CACRpkdYGJsK4Ek8pDCeNMWt41dd2s--Lkxewh4Po4E-45UdwMg@mail.gmail.com>, 
 <1646119.L9t6MPyLfv@diego>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.156[cn]
Mime-Version: 1.0
Message-ID: <2020091408015432151663@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200913_200205_270462_DF8B0F00 
X-CRM114-Status: GOOD (  12.43  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>,
 =?utf-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>,
 =?utf-8?B?5ZC06L6+6LaF?= <david.wu@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28gJiBXYWxsZWlqCgo+SGkgTGludXMsCj4KPkFtIFNhbXN0YWcsIDEyLiBTZXB0ZW1i
ZXIgMjAyMCwgMTM6Mjc6NDQgQ0VTVCBzY2hyaWViIExpbnVzIFdhbGxlaWo6Cj4+IEppYW5xdW4s
IEhlaWtvLAo+Pgo+PiBPbiBGcmksIEphbiAxNywgMjAyMCBhdCA5OjE0IEFNIEppYW5xdW4gWHUg
PGpheS54dUByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+ID4gRG8gY29kaW5nc3R5bGUgZm9y
IHBpbmN0cmwtcm9ja2NoaXAgYnkgc3BsaXRpbmcgZHJpdmVyIGJ5IFNvQyB0eXBlcy4KPj4gPgo+
PiA+IENvbnZlbmllbnR5IGZvciByZXZpZXdpbmcsIHRoZSBmaXJzdCBwYXRjaCBvbmx5IG1vdmlu
Zwo+PiA+IHBpbmN0cmwtcm9ja2NoaXAuYyBmcm9tIGRyaXZlci9waW5jdHJsIHRvIGRyaXZlci9w
aW5jdHJsL3JvY2tjaGlwLyAuCj4+ID4KPj4gPiBKaWFucXVuIFh1ICgyKToKPj4gPsKgwqAgcGlu
Y3RybDogcm9ja2NoaXA6IG5ldyByb2NrY2hpcCBkaXIgZm9yIHBpbmN0cmwtcm9ja2NoaXAKPj4g
PsKgwqAgcGluY3RybDogcm9ja2NoaXA6IHNwbGl0IHJvY2tjaGlwIHBpbmN0cmwgZHJpdmVyIGJ5
IFNvQyB0eXBlCj4+Cj4+IFdoeSB3ZXJlIHRoZXNlIHBhdGNoZXMgbmV2ZXIgYXBwbGllZD8gSXMg
aXQgbXkgZmF1bHQ/Cj4KPkl0J3Mgbm90IHlvdXIgZmF1bHQgOi0pCj4KPj4gSSBkb24ndCBldmVu
IGhhdmUgcGF0Y2ggMi8yIGluIG15IG1haWxib3gsIHBvc3NpYmx5IGl0IHdhcwo+PiB0b28gYmln
IQo+Pgo+PiBIZWlrbyBpZiB5b3UncmUgT0sgd2l0aCB0aGlzIGNoYW5nZSBjYW4gSmlhbnF1biBq
dXN0IHNlbmQgYQo+PiByZWJhc2VkIHZlcnNpb24/Cj4KPldlIGFncmVlZCB0byBzcGxpdCBpdCBp
bnRvIHNtYWxsZXIgY2h1bmtzIHdoaWNoIEkgdGhpbmsgaXMgdGhlIDEzLXBhdGNoCj5zZXJpZXMg
eW91IG1lbnRpb25lZCBlbHNld2hlcmUgdG9kYXkuIEJ1dCBJIGd1ZXNzIHRoYXQgZmVsbCB0aHJv
dWdoCj50aGUgY3JhY2tzIGluIG15IHJldmlldyA6LSggLgo+Cj5TbyBJIGd1ZXNzIHdlIHNob3Vs
ZCBkbyB0aGUgY3VycmVudCBHS0kgdGhpbmd5IGZpcnN0IHRvIGdldCB0aGF0Cj5tb2R1bGUgYnVp
bGQgYW5kIGFmdGVyIHRoYXQgbWF5YmUgSmlhbnF1biBjYW4gZmluZCB0aGUgdGltZSB0byByZWJh
c2UKPnRoZSBwZXItc29jIHNwbGl0IG9uIHRvcCBvZiB0aGF0Lgo+IApPa2F5LCBJIHBsYW4gdG8g
ZG8gc3BsaXQgd29yayBhZ2FpbiBhZnRlciB0aGUgR0tJIHRoaW5neSwgTXkgcGxhbiBpbmNsdWRp
bmcKCjEuIGFwcGxpZCBwYXRjaGVzIGFib3V0IGdwaW8gcG9wdWxhdGUgYXMgcGxhdGZvcm0gZGV2
aWNlLCBmb3IgR0tJCjIuIGFwcGxpZCBwYXRjaGVzIGFib3V0IHNlcGVyYXRpbmcgZ3BpbyBwbGF0
Zm9ybSBkcml2ZXIsIGNvZGVzIG91dG9mIHBpbmN0cmwgZHJpdmVyCjMuIGFwcGxpZCBwYXRjaGVz
IGFib3V0IHNlcGVyYXRpbmcgcGluY3RybCBkcml2ZXIgYnkgc29jIGNvZGVzIGFuZCBjb21tb24g
Y29kZXMsIGxhcmdlIHBhdGNoZXMKCkZvciBub3cgSSB3aWxsIHNlbmQgbmV3IHZlcmlzb24gdG8g
ZG8gc3RlcCAxLCB0aGFuayB5b3UKPgo+SGVpa28KPgo+Cj4KPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
