Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B8E9C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 00:40:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A8059610D1
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 00:40:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A8059610D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W15EpIrjNiQ+IODReFIUgRGkWbe/Dpv9/sQVlCI0Xsk=; b=OCfJRl0vSuI0LhGgIoED8d6eA
	iz7m3ny5AT8enHeB6m9Iy0PARsrQJD71vDu/aPnNQceuqnvtU1BzbKWVcZMpwyKYR+LsKtawHarop
	lxi2dS6OfNx4FvL/0ku79cCBosv+dEeykbGzg38BkAUw4Dt6D2TMF3nkH9B0fKJOkhZeLGM6DH7PP
	0ilERKGK0P3aKcXRMSMe1w5uxmsCiHzzaii0ZmKA8APpfig8L8HyZKk/sZ32fraWiNT8Cg8vgiYRg
	iHbbvsMqRlGS7RoZs/4aEjcQFZPnCKixOVCNchGoRuIjFElJ6kjRo3LbnjKURBx+oAcirBRJa9Hfc
	xdKa/CRhQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVO9K-003gdr-G3; Sun, 11 Apr 2021 00:40:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVO9J-003gdi-1p
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 00:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-ID:Content-Description;
 bh=aQ4imPeb8LkKgogfYUYZGMfysUqKjzsT0Kcm98j0lTg=; b=NRMzDFTG065AAiR9M5oCXnFGTE
 Eoe67YXsjBaMMineimPQn91GnXkWiJRHxh8kIUs3HoMUoDEa+kJ6kTI+2AyOZDDivuls4AXpkNdcn
 bvfuWFKVg/Omw2641p7QeSGeiD6E7Exr28dn8GVNaiTS0Q6ZTb8aDEBLdGsDb3kY9bb/sW/kbPz0P
 9J2hFBQ65JW0zZ4EP+41XKrmkA1HQIbWYeEgi+yYei1Ponb5bY7TskiImcZRQd549Ra4Q5jR5f/sk
 MkP/eCcjg4pEX3FVIUKts3kmNwl8MDfaLrGnfvwEsV/xxK84yMVwZPilPtOSeu+h66YrZeui4uuF8
 W8QGkuxg==;
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVO9E-005K1z-Uh
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 00:40:23 +0000
Received: by mail-lf1-x131.google.com with SMTP id x13so5422435lfr.2
 for <linux-rockchip@lists.infradead.org>; Sat, 10 Apr 2021 17:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=aQ4imPeb8LkKgogfYUYZGMfysUqKjzsT0Kcm98j0lTg=;
 b=FDryXP02IE4Xwr5skCVG0m3xDPu3JbrAblSM1HYHG3EZeSI1pVKB71kpqFhgqNhriw
 OG73KZUxSKamCjYh4L2k5/eJOi9sJeDxVWsFbNmwBLoo7GnSe1/JPBQEY95v1FXK2ufW
 r0DZXFTNn3p2MKn6tQuGL903xCpr8N6+ro2ttf6cXAqdm1rJYf1u+0ssUHmdOUP6HeGz
 fatdZH4xVOz5Yi4Il2R+LOr6tP5nf8BdVoGw5RXZ6yf2NvSSAm4GdrFCyES8rhrNnlVf
 B7oyZVY6q1IU5A8SXJzfSnexXGg/uQ1Hes1uJkC9+qiiMJwMEd4uW9IYeU5bgpzlIyQf
 zw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=aQ4imPeb8LkKgogfYUYZGMfysUqKjzsT0Kcm98j0lTg=;
 b=fwB1/KFyg+PwsdE+BDbN+LDHEpiLIeBtGBpKvFpTPM2Qseq2ysdkFI0/lSC/JKDeuk
 JScprB3dsqYis76rntLownrM/+dvl+GSeVH/p//pPjh/8nAGlVYjhp14Ie0yh7+9r/Mz
 lPjrrW1NEw1vQT/5drybXk4H0vCuhWdTQmeYg2FLlUGttc3jx6MrmcxIXdPJU0LW+XHB
 zXOEtJbMdCNv2fsFJ+hy8Sh0hfHf/B3lSB7p2dQlvVAb88r7X7kUkNi3E9+TlURENcyD
 VxVfJ0woJ635MlsrQZwlAJtjUnVBQHErkOF4yaNPGyriAPByqgBrEt+YHGtESEJN0mIu
 Pf/g==
X-Gm-Message-State: AOAM530gPYjiLGJN2l6FOcs9FaurRwLQMANNnEGx9qoJoYZLQyontGGO
 QkU9LN8N8yZsnS0wPvdA+GQAv0SxBkVffRKKVMKWIQ==
X-Google-Smtp-Source: ABdhPJyonjbgz3cNePFZ3aMbBhlfzK+wSNCe/ktJyjH0DVxvj1LFxJcGiCKtb8to5oVTh387qHTEDCW7pWtJcj+DKOM=
X-Received: by 2002:a19:4f0e:: with SMTP id d14mr3158191lfb.649.1618101618346; 
 Sat, 10 Apr 2021 17:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <CACRpkdYYpgFWH9pVOT=o7unWXRqVeHtvsJgbByNGZ170CZ_FXA@mail.gmail.com>
 <CAMdYzYqk3k0UqCyFwB+W1tKKKTg39Mx0Vdsrj+eeC58nARaumQ@mail.gmail.com>
 <3262311.AJdgDx1Vlc@diego>
In-Reply-To: <3262311.AJdgDx1Vlc@diego>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 11 Apr 2021 02:40:07 +0200
Message-ID: <CACRpkdZeZuHe9kFywrdQxcNMfAcBCJVAhJjfyD6ahLinT0hvmg@mail.gmail.com>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Jianqun Xu <jay.xu@rock-chips.com>, Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_174021_022384_95BB7066 
X-CRM114-Status: GOOD (  19.69  )
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

T24gU2F0LCBBcHIgMTAsIDIwMjEgYXQgMTE6MTAgUE0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4gQW0gU2Ftc3RhZywgMTAuIEFwcmlsIDIwMjEsIDIwOjMwOjUyIENF
U1Qgc2NocmllYiBQZXRlciBHZWlzOgo+ID4gR29vZCBBZnRlcm5vb24sCj4gPgo+ID4gSSdtIGN1
cnJlbnRseSB3b3JraW5nIG9uIHRoZSByazM1NjYgZWFybHkgYnJpbmd1cCBzdXBwb3J0IGluIG1h
aW5saW5lCj4gPiBhbmQgZW5jb3VudGVyZWQgYW4gaXNzdWUgd2l0aCB0aGlzIHBhdGNoIHNldC4K
PiA+IFVuZm9ydHVuYXRlbHkgaW4gdGhlIHJrMzU2OC9yazM1NjYgdGhlIGdwaW8gcmVnaXN0ZXJz
IHN3aXRjaGVkIHRvIHRoZQo+ID4gKDE2IGJpdHMgd3JpdGUgZW5hYmxlIC8gMTYgYml0cyBjb25m
aWcpIHJlZ2lzdGVyIGZvcm1hdCB0aGF0IG90aGVyCj4gPiByb2NrY2hpcCByZWdpc3RlcnMgdXNl
Lgo+ID4gVGhpcyBkaWZmZXJzIGZyb20gcHJldmlvdXMgY2hpcHMgd2hlcmUgYWxsIDMyIGJpdHMg
d2VyZSB1c2VkIGZvciBncGlvCj4gPiBjb25maWd1cmF0aW9uLgo+ID4gVGhlIHBhdGNoIGZhaWxz
IHRvIGFjY291bnQgZm9yIHRoaXMsIHdoaWNoIGNhdXNlcyBhbGwgZ3Bpb3MgdG8gZmFpbCB0byBm
dW5jdGlvbi4KPiA+Cj4gPiBGb3IgY2xhcml0eSwgdGhpcyBvbmx5IGFmZmVjdHMgR1BJT19TV1BP
UlRfRFIgYW5kIEdQSU9fU1dQT1JUX0REUi4KPiA+Cj4gPiBJJ20gY3VycmVudGx5IHdvcmtpbmcg
b24gYSBwYXRjaCB0byBmaXggdGhpcyBpc3N1ZSwgYnV0IEkga25vdyB0aGF0Cj4gPiB5b3UgYXJl
IHBsYW5uaW5nIG9uIGJyZWFraW5nIG91dCB0aGUgZ3BpbyBmdW5jdGlvbnMgaW50byBhIHNlcGFy
YXRlCj4gPiBkcml2ZXIgYW5kIHdhbnRlZCB0byBtYWtlIHlvdSBhd2FyZSBvZiB0aGlzIGltbWVk
aWF0ZWx5Lgo+Cj4ganVzdCBwb2ludGluZyB0byBKaWFucXVuJ3Mgc2VyaWVzIHByb3ZpZGluZyB0
aGUgZ3BpbyBjb250cm9sbGVyIHN1cHBvcnQ6Cj4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzIwMjEwMzI0MDY0NzA0Ljk1MDEwNC0xLWpheS54dUByb2NrLWNoaXBzLmNvbQo+Cj4gd2hpY2gg
aW50cm9kdWNlcyB0aGUgbmVjZXNzYXJ5IHdyaXRlbWFzay1oYW5kbGluZyBidXQgc2VlbXMgdG8g
bmVlZCBhbgo+IHVwZGF0ZSwganVkZ2luZyBieSBFemVxdWllbCdzIHJlcGx5IHRvIGl0LgoKRG9l
cyB0aGlzIG1lYW4gdGhhdCBpZiB3ZSBnZXQgYSBzcGVlZHkgYW5kIG5pY2UgbG9va2luZyByZXNw
aW4gb2YgdGhlCkdQSU8gc2VyaWVzIHdlIHByb2JhYmx5IGdvdCB0aGlzIHByb2JsZW0gY292ZXJl
ZD8KClRoZSBtZXJnZSB3aW5kb3cgaXMgZ2V0dGluZyBjbG9zZSBidXQgaXQgd291bGQgYmUgbmlj
ZSB0byBnZXQgdGhpcyBpbi4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
