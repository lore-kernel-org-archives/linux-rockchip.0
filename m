Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79992C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jul 2022 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/gYEE/L5IpyWkOHwb59SlkmWN1Yx9bka3fXk3nGcqw=; b=Toomf/RenFu2bz
	5jmsBlzAmXzL3yc2RAiJaWHTHbDjON6gzlJ3JjlGhhOhXuwBPcvYjE0YCO6s6iaoMq0t9+a1eCvCI
	nVbeGzPM1lufn2vob2KZ4gnPk0LthpkIWlzCmjOyIY85yKyLjb6IwPq7YFWgu6rrbai2OnJgRk8rb
	94OkHvfGolsNwQLoz877lJzL60BFXkaCvZ1cg3S9L8lkkpTuegolY+FYMiv3Zrp0BUPqorE+IeFk5
	vRLWyqJT1gfOd+d/Xhim+oQyDtW4wGcQWEzPMIl+EvAVsj9Vm/Wv+mDQWIg92xMlDJS5GddC30xJ1
	6JTi809OAg7Z6+aATAQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oD2m9-006dPq-GW; Sun, 17 Jul 2022 11:49:29 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oD2m6-006dNl-Vo
	for linux-rockchip@lists.infradead.org; Sun, 17 Jul 2022 11:49:28 +0000
Received: by mail-ed1-x52a.google.com with SMTP id e15so11860453edj.2
        for <linux-rockchip@lists.infradead.org>; Sun, 17 Jul 2022 04:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=SC4Y9bQ5Mv3/wN6+CzaaZu23YdaRhhafcPtQU+MEiaw=;
        b=AgL9bPDO5bHJE2njG5yxdz+bkwVKdHy4FLDnj0NHavCS0Y2RlWaur1CNKXD5QZIgJE
         yerieaFIbY6jno2f1xE/Z4WqutyJVwAvZh2hc/uRUmZVHOaGeNYHuQ1mq8sp43iavUtF
         TA42IyhGe0Sn+enezgOLFDAI7KL5WZlZ54H6td8AmTNZCIGRit95xpOLnrOyNVqo5mgf
         Wc0su6Hm9hCy0yu/S4MJUBdah8eGdmqqkg4KHFGNkggHILhQaPV8RhGfIFDXI69kEYyx
         3Ti2gkO+97DYiyChZfmxp0EIIrmcOMr4CgReXHQc5WtaYhHH7439fjv+IPcb89uKboSY
         CaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=SC4Y9bQ5Mv3/wN6+CzaaZu23YdaRhhafcPtQU+MEiaw=;
        b=7cIoZkKgkyAs4Z9WFUGshFNryb921s+z2oZdn778Q8wsORlwL2xlbpqD5KO2Cv4GNP
         w5TougHfkrWzOlTCuii2uij9Q9ban2JPnXZlUdgmV9OGwh7bFxLAVduvRnUTfosnXj1X
         jxZvTLl0B+tvXYeymi2bt5n9vyN7OUJPlYOMJAlM8aQgRjP5c64x7wNJRZI6EmLbiuut
         j2cqus5DQ4aedr4yvHQ8pDGT9ljmMPrJt73Orwnyb9cbI15WSXJFAIB1sSkkBb3TNn19
         lzxUG0+vg59hQmJSLP2T2NGoJWebs5xbxS0X9/I1RIbiOvvZjGQISv5xdryy0Mmr+G+O
         8VYg==
X-Gm-Message-State: AJIora9bi3HGU87ylhpc9HNVn/ONr0Mtpuh61ofLmaC5N1apTdT0R1oq
	LMbb53jsE1zT30GibyTXIGoMcQ==
X-Google-Smtp-Source: AGRyM1ssMaPPSAOo/F08JYKHQwJBKwm9/osf98Fy44RqnhD/F0ZVubn9Z7A5aDc39dIwZwY2xuQfwg==
X-Received: by 2002:a05:6402:270b:b0:43a:d89e:8c2d with SMTP id y11-20020a056402270b00b0043ad89e8c2dmr30993250edd.413.1658058565125;
        Sun, 17 Jul 2022 04:49:25 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id qx21-20020a170906fcd500b0072abb95c9f4sm4252027ejb.193.2022.07.17.04.49.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Jul 2022 04:49:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH] regulator: core: Fix off-on-delay-us for
 always-on/boot-on regulators
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <2B145293-BAAE-40AE-B408-FCFC4A80E46D@kohlschutter.com>
Date: Sun, 17 Jul 2022 13:49:23 +0200
Cc: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <96D772F2-16D8-49BD-A438-A827B69DB670@kohlschutter.com>
References: <E25D6465-6475-42B4-90EB-3D2C3CAF3B20@kohlschuetter.com>
 <2B145293-BAAE-40AE-B408-FCFC4A80E46D@kohlschutter.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220717_044927_049420_37178B44 
X-CRM114-Status: GOOD (  18.79  )
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

K0NDIG1tYy9yb2NrY2hpcCBmb2xrcwoKPiBBbSAxNy4wNy4yMDIyIHVtIDEzOjM5IHNjaHJpZWIg
Q2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgPGNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29tPjoKPiAK
PiBUaGlzIGlzIF9zb21ld2hhdF8gcmVsYXRlZCB0byAiW1BBVENIXSByZWd1bGF0b3I6IGNvcmU6
IEZpeCBvZmYtb24tZGVsYXktdXMgZm9yIGFsd2F5cy1vbi9ib290LW9uIHJlZ3VsYXRvcnMiCj4g
VGhhdCBvdGhlciBwYXRjaCBpcyB0aGUgcmlnaHQgc29sdXRpb24gZm9yIG15IHNwZWNpZmljIHBy
b2JsZW0sIGFuZCBubyBmdXJ0aGVyIGZpeGVzIGFyZSBuZWNlc3NhcnkuCj4gCj4gVGhpcyBjaGFu
Z2UgZml4ZXMgYW4gYXR0ZW1wdGVkICJiYW5kYWdlIiBzb2x1dGlvbiAoYWRkaW5nIGFuICJvZmYt
b24tZGVsYXktdXMiKSB0aGF0IHdlIGhhZCBpbml0aWFsbHkgdHJpZWQgdG8gbm8gYXZhaWwuCj4g
V2hpbGUgdGhlIGNsZWFudXAgbm90IG9ubHkgcmVkdWNlcyBjb21wbGV4aXR5LCBpdCBtYXkgYWxz
byBwcmV2ZW50IGZ1dHVyZSBjb2RlIGNoYW5nZXMgcmVpbnRyb2R1Y2luZyB0aGUgbm9uLWRlbGF5
ZWQgY3ljbGluZyBhZnRlciByZWdpc3RyYXRpb24uCj4gCj4gZnJvbSBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2k6Cj4gdmNjM3YwX3NkOiB2Y2MzdjAtc2Qg
ewo+ICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gICAgICAgIGVuYWJs
ZS1hY3RpdmUtaGlnaDsKPiAgICAgICAgZ3BpbyA9IDwmZ3BpbzAgUktfUEExIEdQSU9fQUNUSVZF
X0hJR0g+Owo+ICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAgICAgICBwaW5j
dHJsLTAgPSA8JnNkbW1jMF9wd3JfaD47Cj4gICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247IC8v
IHByZXZlbnRzIHNldHRpbmcgbGFzdF9vZmYgdXBvbiByZWdpc3RyYXRpb24KPiAgICAgICAgb2Zm
LW9uLWRlbGF5LXVzID0gPDUwMDAwMD47IC8vIHdvdWxkIG5vdCBiZSBob25vcmVkIHVwb24gcmVn
dWxhdG9yX3JlZ2lzdGVyCj4gICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAw
MDA+Owo+ICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsKPiAgICAg
ICAgcmVndWxhdG9yLW5hbWUgPSAidmNjM3YwX3NkIjsKPiAgICAgICAgdmluLXN1cHBseSA9IDwm
dmNjM3YzX3N5cz47Cj4gfTsKPiAKPj4gQW0gMTcuMDcuMjAyMiB1bSAxMzozMCBzY2hyaWViIENo
cmlzdGlhbiBLb2hsc2NodWV0dGVyIDxjaHJpc3RpYW5Aa29obHNjaHVldHRlci5jb20+Ogo+PiAK
Pj4gUmVndWxhdG9ycyBtYXJrZWQgd2l0aCAicmVndWxhdG9yLWFsd2F5cy1vbiIgb3IgInJlZ3Vs
YXRvci1ib290LW9uIgo+PiBhcyB3ZWxsIGFzIGFuICJvZmYtb24tZGVsYXktdXMiLCBtYXkgcnVu
IGludG8gY3ljbGluZyBpc3N1ZXMgdGhhdCBhcmUKPj4gaGFyZCB0byBkZXRlY3QuCj4+IAo+PiBU
aGlzIGlzIGNhdXNlZCBieSB0aGUgImxhc3Rfb2ZmIiBzdGF0ZSBub3QgYmVpbmcgaW5pdGlhbGl6
ZWQgaW4gdGhpcwo+PiBjYXNlLgo+PiAKPj4gRml4IHRoZSAibGFzdF9vZmYiIGluaXRpYWxpemF0
aW9uIGJ5IHNldHRpbmcgaXQgdG8gdGhlIGN1cnJlbnQga2VybmVsCj4+IHRpbWUgdXBvbiBpbml0
aWFsaXphdGlvbiwgcmVnYXJkbGVzcyBvZiBhbHdheXNfb24vYm9vdF9vbiBzdGF0ZS4KPj4gCj4+
IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLb2hsc2Now7x0dGVyIDxjaHJpc3RpYW5Aa29obHNj
aHV0dGVyLmNvbT4KPj4gLS0tCj4+IGRyaXZlcnMvcmVndWxhdG9yL2NvcmUuYyB8IDUgKysrLS0K
Pj4gMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4gCj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMgYi9kcml2ZXJzL3JlZ3VsYXRv
ci9jb3JlLmMKPj4gaW5kZXggYzRkODQ0ZmZhZDdhLi40OGVkMzNhZDQ4YzggMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwo+PiArKysgYi9kcml2ZXJzL3JlZ3VsYXRvci9j
b3JlLmMKPj4gQEAgLTE1MjIsNiArMTUyMiw5IEBAIHN0YXRpYyBpbnQgc2V0X21hY2hpbmVfY29u
c3RyYWludHMoc3RydWN0IHJlZ3VsYXRvcl9kZXYgKnJkZXYpCj4+IAkJfQo+PiAJfQo+PiAKPj4g
KwlpZiAocmRldi0+ZGVzYy0+b2ZmX29uX2RlbGF5KQo+PiArCQlyZGV2LT5sYXN0X29mZiA9IGt0
aW1lX2dldCgpOwo+PiArCj4+IAkvKiBJZiB0aGUgY29uc3RyYWludHMgc2F5IHRoZSByZWd1bGF0
b3Igc2hvdWxkIGJlIG9uIGF0IHRoaXMgcG9pbnQKPj4gCSAqIGFuZCB3ZSBoYXZlIGNvbnRyb2wg
dGhlbiBtYWtlIHN1cmUgaXQgaXMgZW5hYmxlZC4KPj4gCSAqLwo+PiBAQCAtMTU0OSw4ICsxNTUy
LDYgQEAgc3RhdGljIGludCBzZXRfbWFjaGluZV9jb25zdHJhaW50cyhzdHJ1Y3QgcmVndWxhdG9y
X2RldiAqcmRldikKPj4gCj4+IAkJaWYgKHJkZXYtPmNvbnN0cmFpbnRzLT5hbHdheXNfb24pCj4+
IAkJCXJkZXYtPnVzZV9jb3VudCsrOwo+PiAtCX0gZWxzZSBpZiAocmRldi0+ZGVzYy0+b2ZmX29u
X2RlbGF5KSB7Cj4+IC0JCXJkZXYtPmxhc3Rfb2ZmID0ga3RpbWVfZ2V0KCk7Cj4+IAl9Cj4+IAo+
PiAJcHJpbnRfY29uc3RyYWludHMocmRldik7Cj4+IC0tIAo+PiAyLjM2LjEKPj4gCj4+IAo+IAo+
IAo+IAo+IC0tIAo+IERyLiBDaHJpc3RpYW4gS29obHNjaMO8dHRlcgo+IAo+IAo+IAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
