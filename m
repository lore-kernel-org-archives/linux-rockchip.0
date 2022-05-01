Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCEE7C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 May 2022 11:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgt8v0VXa7n3PR0jvBdiPIwmKMLrYFl7aCNijzUBhy8=; b=I8jSvXq/9ZtOMV
	e7tZPi4njuPictY8NEjBW9QvvTowGXSfwVSaZvLoUiuybBQ7LGR5S0H1FR8sr4VNkjUYxeSKa9Lkv
	X1xpcyKiTtzFTCZ+PxU+7nP14ruGcd8tQnWBHeskGcbrS+L137h+nNaioabBXBU0Q8OwFS6zN6/qD
	tbTPgzfCg21fC9Zphs59/+orRg9jQC0U2MByya0R4Ua5XHBtyIE6wuIhIk5oFdaXewHg2mkL5O5ZU
	6U+b387SLZp4mnlnfWVuJhOaRIDVcRBdQGbjuNFSpyoNSsWO1Lt2RbTIsaMPugmz+eTrAUOP8jYMx
	2/3cDWTTPqqfHcHmRZ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nl83k-00G9yZ-VY; Sun, 01 May 2022 11:48:17 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nl83i-00G9y4-6l; Sun, 01 May 2022 11:48:15 +0000
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-2f16645872fso124117127b3.4; 
 Sun, 01 May 2022 04:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=X+TH5SKck4yWzLo1Cg2jnvVaiWnIEj/UD97CyPselfw=;
 b=G637iZTSMYRktzcyEfCLLTQr68TFiujVx0g9ZLDuLlYOXeolr+6zY3ANU9Tq31YJM1
 Dz0iXCcm1Zlq0KZJU8z/IcLcRMyWYK8IFL/QeVO5AgUw7rRrdKnPZhlR7gUkK81XQyJP
 4pr3FaNFM9kha/bKW9viy78IsH+Pj7NSfZ4TIlWkHRSHWGbsGLScKZc4zEiU1TCgkscs
 v90aMXuygSHGWaYB6CgQhetC8jPrw86TQd742sRciFIGcWBRymV9LSmBitistgGfF8GR
 Uh09K7dV+ri4UXHO2E3EzNLV0aJIJMLHvNIVemHxXbTtmSOjh2vEwLn7zJnrBkLrnzN4
 RzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=X+TH5SKck4yWzLo1Cg2jnvVaiWnIEj/UD97CyPselfw=;
 b=E7PJYiw8W3YxD4FUpzbx3ZrPxPwoM8yBrBwv4TB4DN7ajLZM0B59DPATQi8hhQq/tr
 bxOKvTC2hcd8Gg1SvYAC7zhn8LKqMvjP1fptuI3aWkOO7s2xVUAU+LPZiKB2mY5A54Gf
 yGJs/J3hsVdLcEt/RfKXEHb/8PGoDTgpVWUy7y5KScvXMQPZzPgKT60p/QSlXOjbZBYO
 RGCO5szVeAG1VhvbjTJtpWh2u3Gn2V0B3lg0TORgi2pLIyaLjLVbUmCArhV6Djf1YVOb
 SOTNbCvur8GxsvYzcwySq3uHEdVB5M9nVUVob3tZXwF3aouGwos6gtXdsqVbwocj2K45
 BPdQ==
X-Gm-Message-State: AOAM530STyUvSq+dyd8owWS1JyYXu+AI3JFuw7S/D1h8uG6H/Iq7+SUq
 bk1oq8J9PMRe5d9PWwC/Iitwsi9o1Sn6h2tiOaI=
X-Google-Smtp-Source: ABdhPJxZoImwLGMN7FRSlQjSFTWRKatK4sbrvghvFWalrL7rvR3wp5mPwRgbQ0mOHmDmbpvkJsD9MSXKViG2HPBp9bM=
X-Received: by 2002:a05:690c:89:b0:2d7:fb7d:db7 with SMTP id
 be9-20020a05690c008900b002d7fb7d0db7mr7787106ywb.219.1651405692862; Sun, 01
 May 2022 04:48:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
 <20220429115252.2360496-6-pgwipeout@gmail.com>
 <46548c93-4e6d-858c-8b79-03be9326c92a@gmail.com> <3428030.iIbC2pHGDl@diego>
In-Reply-To: <3428030.iIbC2pHGDl@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 1 May 2022 07:48:02 -0400
Message-ID: <CAMdYzYpStDyKxrWgeMyQNs6tGzzVKCbVR_8JZck8Q_0NVU6jxQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: add Pine64 Quartz64-B device
 tree
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_044814_301919_E5B187A4 
X-CRM114-Status: GOOD (  25.04  )
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

T24gU3VuLCBNYXkgMSwgMjAyMiBhdCA3OjMxIEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+Cj4gQW0gU29ubnRhZywgMS4gTWFpIDIwMjIsIDA5OjA2OjMzIENFU1Qg
c2NocmllYiBKb2hhbiBKb25rZXI6Cj4gPgo+ID4gT24gNC8yOS8yMiAxMzo1MiwgUGV0ZXIgR2Vp
cyB3cm90ZToKPiA+ID4gQWRkIGEgZGV2aWNlIHRyZWUgZm9yIHRoZSBQaW5lNjQgUXVhcnR6NjQg
TW9kZWwgQiBzaW5nbGUgYm9hcmQgY29tcHV0ZXIuCj4gPiA+IFRoaXMgYm9hcmQgb3VwdXRzIGRl
YnVnIG9uIHVhcnQyIGFuZCBzdXBwb3J0cyB0aGUgZm9sbG93aW5nIGNvbXBvbmVudHM6Cj4gPiA+
IEdpZ2FiaXQgRXRoZXJuZXQKPiA+ID4gVVNCMiB4MiAob25lIHBvcnQgb3RnIGNhcGFibGUpCj4g
PiA+IFVTQjMKPiA+ID4gUENJZS9TQVRBIE0yCj4gPiA+IEhETUkKPiA+ID4gRFNJIChSUGkgY29t
cGF0aWJsZSBwaW5vdXQpCj4gPiA+IENTSSAoUlBpIGNvbXBhdGlibGUgcGlub3V0KQo+ID4gPiBB
L0IvRy9OIFdpRmkKPiA+ID4gQmx1ZXRvb3RoCj4gPiA+IFNETU1DCj4gPiA+IGVNTUMKPiA+ID4g
U1BJIEZsYXNoCj4gPiA+IFBJLTQwIGNvbXBhdGlibGUgcGluIGhlYWRlcgo+ID4gPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+ID4gPiAtLS0K
PiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAg
MSArCj4gPiA+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWIuZHRzICAg
fCA2MTUgKysrKysrKysrKysrKysrKysrCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDYxNiBpbnNl
cnRpb25zKCspCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjYtcXVhcnR6NjQtYi5kdHMKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL01ha2VmaWxlCj4gPiA+IGluZGV4IDRhZTlmMzU0MzRiOC4uMjUyZWU0N2I4YTFk
IDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxl
Cj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ID4g
QEAgLTU5LDUgKzU5LDYgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OXBy
by1yb2NrLXBpLW4xMC5kdGIKPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSBy
azM1NjYtcGluZW5vdGUtdjEuMS5kdGIKPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQ
KSArPSByazM1NjYtcGluZW5vdGUtdjEuMi5kdGIKPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1NjYtcXVhcnR6NjQtYS5kdGIKPiA+ID4gK2R0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazM1NjYtcXVhcnR6NjQtYi5kdGIKPiA+ID4gIGR0Yi0kKENPTkZJR19B
UkNIX1JPQ0tDSElQKSArPSByazM1NjgtZXZiMS12MTAuZHRiCj4gPiA+ICBkdGItJChDT05GSUdf
QVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWJwaS1yMi1wcm8uZHRiCj4gPiA+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1iLmR0cyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWIuZHRzCj4gPiA+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMTg0YWI3ZTFkMTc4
Cj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjYtcXVhcnR6NjQtYi5kdHMKPiA+ID4gQEAgLTAsMCArMSw2MTUgQEAKPiA+ID4g
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ID4gPiArLyoK
PiA+ID4gKyAqCj4gPiA+ICsgKi8KPiA+ID4gKwo+ID4gPiArL2R0cy12MS87Cj4gPiA+ICsKPiA+
ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiA+ID4gKyNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLmg+Cj4gPiA+ICsjaW5jbHVkZSAicmszNTY2LmR0
c2kiCj4gPiA+ICsKPiA+ID4gKy8gewo+ID4gPiArICAgbW9kZWwgPSAiUGluZTY0IFJLMzU2NiBR
dWFydHo2NC1CIEJvYXJkIjsKPiA+ID4gKyAgIGNvbXBhdGlibGUgPSAicGluZTY0LHF1YXJ0ejY0
LWIiLCAicm9ja2NoaXAscmszNTY2IjsKPiA+ID4gKwo+ID4KPiA+IFsuLl0KPiA+Cj4gPiA+ICsK
PiA+ID4gKyZtZGlvMSB7Cj4gPgo+ID4gPiArICAgcmdtaWlfcGh5MTogZXRoZXJuZXQtcGh5QDAg
ewo+ID4gPiArICAgICAgICAgICBjb21wYXRpYmxlID0gImV0aGVybmV0LXBoeS1pZWVlODAyLjMt
YzIyIjsKPiA+ID4gKyAgICAgICAgICAgcmVnID0gPDB4MT47Cj4gPgo+ID4gSGksCj4gPgo+ID4g
VGhlIHJlZyB2YWx1ZSBkb2Vzbid0IG1hdGNoIHRoZSBub2RlIG5hbWUuCj4gPiBPdGhlciAyIGJv
YXJkcyB1c2UgInJlZyA9IDwwPiIgd2l0aCBsYWJlbCAicmdtaWlfcGh5MSIuCj4gPiBDb3VsZCB5
b3UgY2hlY2s/Cj4KPiBJIGRvIGhhdmUgYW4gb2xkZXIgUXVhcnR6LUIgaW4gbXkgYm9hcmRmYXJt
IGFuZCBpbiB0aGF0IG9sZGVyCj4gZGV2aWNldHJlZSB0aGUgcGh5LXJlZyBhbHNvIGlzICIwIiBp
bnN0ZWFkIG9mIHRoZSAiMSIgdXNlZCBoZXJlLgo+Cj4gSXMgdGhhdCBhIGhhcmR3YXJlLWNoYW5n
ZT8KClRoZSBldGhlcm5ldCBtYWludGFpbmVycyBwcmV2aW91c2x5IGJyb3VnaHQgdXAgdGhhdCAw
eDAgaXMgdGhlCmJyb2FkY2FzdCBhZGRyZXNzIGZvciB0aGUgbWRpby1idXMuIFRoZXkgcmVxdWVz
dGVkIHdlIHB1dCB0aGUgYWN0dWFsCmJ1cyBpZCBvZiB0aGUgcGh5IGV2ZW4gb24gc2luZ2xlIHBo
eSBidXNzZXMuIFRoaXMgaXMgdGhlIGZpcnN0IG9uZQpJJ3ZlIGNvbmZpcm1lZCB0aGUgYnVzIGFk
ZHJlc3Mgb24uCgpUaG91Z2ggSSByZWFsaXplZCBldGhlcm5ldC1waHlAMCBzaG91bGQgYmUgZXRo
ZXJuZXQtcGh5QDEgc2luY2UgeW91Cm1lbnRpb25lZCB0aGlzLiBTdHJhbmdlIGR0YnMtY2hlY2sg
ZG9lc24ndCBjYXRjaCB0aGlzLCB3b3VsZCB5b3UgZml4Cml0IGluIGxpbmUgSGVpa28gb3IgZG8g
eW91IHdhbnQgYW5vdGhlciByZXZpc2lvbj8KCj4KPiBUaGFua3MKPiBIZWlrbwo+Cj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
