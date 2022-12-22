Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79EECC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thEJr+bGhcBZgrcc0GprBstzN64MgYNZ+uHaM7MhOrY=; b=DjHtXCDK/wg7Hq
	GTD7UCYaBlRfu6UFqhwpajexIcdSU++uZTNVSU1Y2HDmGMrWMDPZIGlwQwutp3YY75kUOJ8Hf7tw2
	1Zubz8EmXnQKYfmiRCyVMvFQVaQ5X8SQfs9jGI3BexSBSjepQEe9dlFr98lduBQM6vXrIX3SjRRlS
	iB2CO19S0D9tAJ7gRtAhBecgq4igHr2EffbmT2todFRXIeEauPBJTt2MDlat5oKIrDLy53m+aP2mH
	5YDhYbueuuAdEAawUqUFwgFJVoxVK1vaf9udOmPiQfmcWqne3HCRNLo3oj1AxizqG5pRlW9cFBGMP
	41bXrG/2YNXKlJR/pUxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8M6x-00ChKz-6z; Thu, 22 Dec 2022 13:59:51 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8LYl-00CMeF-8b
	for linux-rockchip@lists.infradead.org; Thu, 22 Dec 2022 13:24:34 +0000
Received: by mail-lj1-x22e.google.com with SMTP id n6so1850325ljj.11
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Dec 2022 05:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yNFKcj1qpbmt/ipOHNu4Y7YMRQo6qwIPI6XtcYqqxxk=;
        b=h+4khsq2a+yHcK26zB7P+5KylxOjG9Hpm44ZDNteZ29sI9ZPAstX1ADFnbyLDJ1zFf
         WuoZLuEQkAwtUgBcQjLM5FsxSVGZ18DNUGMtyc0bP4UyQf8JjxCAE/uv7t66mr+Eeyiv
         wBMhWondgDZ/b08quadOY72zYaLdfRuEpBGDVpaxC7mKCT/O/5u7LnoG7KTqSLU/oUzN
         UjJ6HBTjK3ANi5+QEvavijJXInuUJA+PG8SlTCjKF6zAO1Q+NV6SvCKYvAUg8BYN/kil
         RQpiquKkN/+M40TFrHFu94o49M5gRvczN7SVuKM8JS97xLHnla4HRyw3y8JX4cxIg4it
         Z2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yNFKcj1qpbmt/ipOHNu4Y7YMRQo6qwIPI6XtcYqqxxk=;
        b=qFlju8T7xNkytSqY9LviCAUWjjZWF0NAU37uZ6ffeugKlu4TjhECde4DSiNcnYUKGA
         k8yr8MSa8goZ67m1jqC7ZEi66QmhZS8mlqHcJlbcB7FUPgULlluvibIbDCzEyVzM2k0H
         1oHxDt1jKrFm8qF8em7zXypX20ffqksujjW6u8hh8aMA3q+J1EC4VhPvUCvmmkSE1/Ck
         QTA+64W5Z6Nq54redBBp7VvdX/Jp4nrXqNtuknbCHN/sBAIrb4iqbcvUyEvhZ0iTQTQg
         BBx/D5KaQ1pXiGI9+P/zkZR1Liu+78czJNh14NY+uxBbRM7P4gdyXxiekVIijEOOqBZw
         aVxA==
X-Gm-Message-State: AFqh2kpX4MHUCtmIUbiVwplvMomsevLf4GbRoCtY3OGOKFyc3g1ranDL
	+Sk3oZJ+uyydMNOAPwol1RcxUI26IsbCzIV+OAfWlw==
X-Google-Smtp-Source: AMrXdXv1eTdWh0CylvfGguRVxWq3NHfKHqZBjTAlyC6Jdqa95eu4fD1BQxZQuAqdAgXlBAlSl3TUQ57MpVVZmWIIQIA=
X-Received: by 2002:a2e:9bcd:0:b0:27e:8a84:6c33 with SMTP id
 w13-20020a2e9bcd000000b0027e8a846c33mr486132ljj.404.1671715467262; Thu, 22
 Dec 2022 05:24:27 -0800 (PST)
MIME-Version: 1.0
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <CAAEAJfBP_D65kjHbwYP+LWfWKfzFtHtWo+3bDcbdO8tPtBurUA@mail.gmail.com>
 <20221219215431.GB26315@pengutronix.de> <939ce9a0f7f73c0b9f0cf5590f2d8b02e0825fa5.camel@ndufresne.ca>
 <20221221220127.GE26315@pengutronix.de>
In-Reply-To: <20221221220127.GE26315@pengutronix.de>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 22 Dec 2022 10:24:14 -0300
Message-ID: <CAAEAJfAMogQzU_etD2m8vOrkQJxd3jKuFtVU9mewzCsDP-GEQQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/9] AV1 stateless decoder for RK3588
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Daniel Almeida <daniel.almeida@collabora.com>, nicolas.dufresne@collabora.co.uk, 
	linux-media <linux-media@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_052431_670111_FC19DD7C 
X-CRM114-Status: GOOD (  44.21  )
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

SGkgTmljb2xhcywgTWljaGFlbCwKCigrQW5kcnplaikKCkVsIG1pw6ksIDIxIGRpYy4gMjAyMiAx
OTowMSwgTWljaGFlbCBHcnplc2NoaWsgPG1nckBwZW5ndXRyb25peC5kZT4gZXNjcmliacOzOgo+
Cj4gT24gVHVlLCBEZWMgMjAsIDIwMjIgYXQgMTI6MDA6MDFQTSAtMDUwMCwgTmljb2xhcyBEdWZy
ZXNuZSB3cm90ZToKPiA+TGUgbHVuZGkgMTkgZMOpY2VtYnJlIDIwMjIgw6AgMjI6NTQgKzAxMDAs
IE1pY2hhZWwgR3J6ZXNjaGlrIGEgw6ljcml0IDoKPiA+PiBIaSBCZW5qYW1pbiwKPiA+PiBIaSBF
emVxdWllbCwKPiA+Pgo+ID4+IE9uIE1vbiwgRGVjIDE5LCAyMDIyIGF0IDA2OjA3OjM4UE0gLTAz
MDAsIEV6ZXF1aWVsIEdhcmNpYSB3cm90ZToKPiA+PiA+IE9uIE1vbiwgRGVjIDE5LCAyMDIyIGF0
IDEyOjU2IFBNIEJlbmphbWluIEdhaWduYXJkCj4gPj4gPiA8YmVuamFtaW4uZ2FpZ25hcmRAY29s
bGFib3JhLmNvbT4gd3JvdGU6Cj4gPj4gPiA+Cj4gPj4gPiA+IFRoaXMgc2VyaWVzIGltcGxlbWVu
dCBBVjEgc3RhdGVsZXNzIGRlY29kZXIgZm9yIFJLMzU4OCBTb0MuCj4gPj4gPiA+IFRoZSBoYXJ3
YXJlIHN1cHBvcnQgOCBhbmQgMTAgYml0cyBiaXRzdHJlYW1zIHVwIHRvIDc2ODB4NDMyMC4KPiA+
PiA+ID4gQVYxIGZlYXR1cmUgbGlrZSBmaWxtIGdyYWluIG9yIHNjYWxpbmcgYXJlIGRvbmUgYnkg
dGhlIHBvc3Rwcm9jZXNzb3IuCj4gPj4gPiA+IFRoZSBkcml2ZXIgY2FuIHByb2R1Y2UgTlYxMl80
TDQgYW5kIE5WMTIgcGl4ZWwgZm9ybWF0cy4KPiA+PiA+ID4gQSBuYXRpdmUgMTBiaXRzIE5WMTJf
NEw0IGZvcm1hdCBpcyBwb3NzaWJsZSBidXQgbmVlZCBtb3JlIGludmVzdGlnYXRpb24KPiA+PiA+
ID4gdG8gYmUgY29tcGxldGx5IGRvY3VtZW50ZWQgYW5kIGVuYWJsZWQuCj4gPj4gPiA+Cj4gPj4g
PiA+IEl0IGlzIGJhc2VkIG9uIERhbmllbCdzICJbUkZDLHYzXSBtZWRpYTogQWRkIEFWMSB1QVBJ
IiBbMV0gcGF0Y2hlcyBhbmQKPiA+PiA+ID4gU2ViYXN0aWFuJ3MgZGV2aWNlLXRyZWUgcGF0Y2hl
cyBmb3IgUkszNTg4Lgo+ID4+ID4gPgo+ID4+ID4KPiA+PiA+IEkgdGhvdWdodCB0aGUgQVYxIGRl
Y29kZXIgaW4gUkszNTg4IHdhcyByZWFsbHkgYSBzZXBhcmF0ZSBoYXJkd2FyZQo+ID4+ID4gZnJv
bSB0aGUgSGFudHJvIEcxL0cyLgo+ID4+ID4KPiA+PiA+IFNob3VsZG4ndCB0aGlzIG5lZWQgYSBu
ZXcgZHJpdmVyIGZvciB0aGlzIG5ldyBoYXJkd2FyZT8KPiA+Pgo+ID4+IEp1c3QganVtcGluZyBp
bnRvIHRoaXMgZGlzY3Vzc2lvbiBhcyBJIGFtIGN1cnJlbnRseSB3b3JraW5nIG9uIHRoZSBya3Zl
bmMgZHJpdmVyLgo+ID4+Cj4gPj4gSW4gbXkgY2FzZSBJIGFtIGV4dGVuZGluZyB0aGUgcmt2ZGVj
IGRyaXZlciB0byBiZWNvbWUgbW9yZSBnZW5lcmljIGZvcgo+ID4+IG90aGVyIHJvY2tjaGlwIHNw
ZWNpZmljIGVuYy9kZWNvZGVycy4KPiA+Pgo+ID4+IE15IGZpcnN0IGNoYW5nZSBsb29rcyBsaWtl
IHRoaXM6Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvTWFrZWZp
bGUgICAgICAgICAgICAgIHwgICA0ICstCj4gPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3Zk
ZWMvcmt2ZGVjLWgyNjQuYyAgICAgICAgIHwgMTAwICsrKystLS0tLQo+ID4+ICBkcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy12cDkuYyAgICAgICAgICB8IDE0MiArKysrKystLS0t
LS0tCj4gPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMve3JrdmRlYy5jID0+IHJrdnB1
LmN9IHwgNTEwICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiA+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy97cmt2ZGVjLmggPT4gcmt2cHUuaH0g
fCAgNjYgKysrLS0tCj4gPj4gLS0tCj4gPj4KPiA+PiBXaGlsZSB3b3JraW5nIG9uIG90aGVyIHBh
cnRzIG9mIHRoZSBlbmNvZGVyIEkgZm91bmQgbWFueSBwbGFjZXMgaW4gdGhlCj4gPj4gcmt2ZGVj
IGRyaXZlciAoZS5nLiB2NGwyIGFuZCB2YjIgY2FsbGJhY2tzKSB0aGF0IGxvb2tlZCBmYW1pbGlh
ciB0byB0aGUgaGFudHJvCj4gPj4gZnVuY3Rpb25zIGJ1dCB3aGVyZSBsaW1pdGVkIHRvIHRoZSBk
ZWNvZGVyIGNhc2UuCj4gPj4KPiA+PiBJIHRoaW5rIHRoZXJlIGFyZSB0d28gb3B0aW9ucyBmb3Ig
dGhlIGF2MSBjb2RlYy4KPiA+Pgo+ID4+IDEpIElmIHRoZSB2cHU5ODEgaXMgYSBkcml2ZXIgdGhh
dCBoYXMgbm90aGluZyB0byBkbyB3aXRoIHZlcmlzaWxpY29uIGJ1dAo+ID4+IHdvcmtzIHdpdGgg
dGhpcyBkcml2ZXIgZnJhbWV3b3JrLCB0aGVuIHdlIHNob3VsZCBpbnRlZ3JhdGUgdmVwdTk4MSBp
bnRvIGl0Cj4gPj4gYnV0IGNvbnNpZGVyIHJlbmFtZSB0aGUgdmVyaXNpbGljb24gdW5yZWxhdGVk
IHBhcnRzIHRvIHNvbWV0aGluZyBnZW5lcmljLgo+ID4KPiA+SSd2ZSByYWlzZWQgaW4gbXkgcmV2
aWV3IHRoZSB0aGUgbmFtaW5nIGlzIHN1Yi1vcHRpbWFsLiBUaGlzIGlzIGFuIHVubW9kaWZpZWQK
PiA+VkM5MDAwRCBBVjEgZGVjb2Rlci4gTm8gb3RoZXIgY29kZWNzIGhhdmUgYmVlbiBpbmNsdWRl
ZCBpbiB0aGUgcGFja2FnZSwgZXZlbgo+ID50aG91Z2ggVkM5MDAwRCBjb3JlcyBjYW4gc3VwcG9y
dCBtb3JlLgo+ID4KPiA+U3RhdGluZyB0aGlzIGRyaXZlciBoYXZlIG5vIHBsYWNlIGhlcmUgc2Vl
bXMgYSBiaXQgc3RyYW5nZSB0byBtZSwgYnV0IHdpdGgKPiA+cHJvcGVyIGFyZ3VtZW50cywgbWF5
YmUgd2UgY2FuIG1ha2UgYSBjYXNlIGFuZCBzdGFydCBhIFZDOTAwMEQgZGVkaWNhdGVkIGRyaXZl
cgo+ID4odGhhdCB3aWxsIGJlIGEgbG90IG9mIGNvcHkgcGFzdGUsIFZDOTAwMEQgcG9zdCBwcm9j
ZXNzb3Igbm90YWJseSBpcyBpZGVudGljYWwKPiA+dG8gVkM4MDAwIHBvc3QgcHJvY2Vzc29yLCBi
dXQgb25lIGNvdWxkIGFyZ3VlIHdlIHNob3VsZCBtYWtlIGEgVkNYMDAwIGRyaXZlciA/Cj4gPgo+
ID4+Cj4gPj4gMikgTW92ZSB0aGUgdmVwdTk4MSBhdjEgZHJpdmVyIGludG8gdGhlIHJrdmRlYyBp
bnN0ZWFkLgo+ID4KPiA+VGhhdCBtYWtlIG5vIHNlbnNlLCBpdHMgbm90IGEgUm9ja2NoaXAgSFcg
ZGVzaWduLCBhbmQgd2lsbCBsaWtlbHkgc3RhcnQKPiA+YXBwZWFyaW5nIG9uIG5vbi1SSyBTb0Mg
aW4gdGhlIGZ1dHVyZS4KPgo+IFN1cmUuIEkgZGlkIG5vdCBrbm93IHRoYXQgaXQgYWN0dWFsbHkg
aXMgYW4gVkM5MDAwLgo+Cj4gPj4gSWYgMSkgaXMgdGhlIHdheSB0byBnbywgd2UgY2FuIGV2ZW4g
dGhpbmsgb2YgbW92aW5nIHRoZSBzdGFnaW5nIGNvZGUgcGFydHMgZnJvbQo+ID4+IHJrdmRlYyB0
byB0aGUgdmVyaXNpbGljb24gY29kZS4gTGlrZXdpc2UgdG8gdGhlIHZlcHU5ODEtYXYxLgo+ID4K
PiA+QWdhaW4sIEkgdGhpbmsgdXNpbmcgUksgbmFtaW5nIGlzIHVuZm9ydHVuYXRlIGNob2ljZS4g
VGhpcyBBVjEgZGVjb2RlciBpcyBqdXN0Cj4gPmxpa2UgdGhlIEcxL0gxIGNvbWJvIHlvdSB3aWxs
IGZpbmQgb24gUkszMjg4LiBBbmQgdGhhdCBzYW1lIGNvbWJvIGlzIGZvdW5kIG9uCj4gPm1hbnkg
b2xkZXIgU29DIChhY3R1YWxseSBldmVuIG5ld2VyIFNvQyB1biB0aGUgVkM4MDAwTmFubyBicmFu
ZCkuCj4gPgo+ID5MaWtlIGFsbCBnZW5lcmF0aW9uIG9mIEhhbnRybyBjaGlwcywgdGhlcmUgaXMg
YW4gb3B0aW9uYWwgZGVwZW5kZW5jeSB0aGF0IGNhbgo+ID5leGlzdCBiZXR3ZWVuIGVuY29kZXIg
YW5kIGRlY29kZXJzLiBUaGUgcXVlc3Rpb24gaXMgaWYgdGhpcyByZXF1aXJlcyBhIHNpbmdsZQo+
ID5kcml2ZXIgdG8gbWFpbnRhaW4gYSB2YWxpZCBzdGF0ZSBvciBub3QuIFNvIGZhciwgaXQgc2Vl
bXMgZGV2cyBoYXZlIGFzc3VtZSB0aGF0Cj4gPmlzIGl0IG5lZWRlZC4KPiA+Cj4gPnAucy4gZnVu
IGZhY3QsIG9uIG1vc3QgSFcsIHRoZSBkZWNvZGVyIHJhdGUgaXMgY3V0IGluIGhhbGYgd2l0aCBy
dW5uaW5nCj4gPmNvbmN1cnJlbnRseSB3aXRoIHRoZSBlbmNvZGVyCj4gPgo+ID4+Cj4gPj4gSSBj
b3VsZCBhbHNvIGtlZXAgb24gaW50ZWdyYXRpbmcgdGhlIHJrdmVuYyBvbiB0aGF0IGJhc2UgaW5z
dGVhZC4KPiA+Cj4gPkRvIHlvdSBrbm93IGlmIHRoZXJlIGlzIGFueSBpbnRlcmFjdGlvbiBiZXR3
ZWVuIHRoZSBlbmNvZGVyIGFuZCBkZWNvZGVyID8gU2hhcmVkCj4gPnJlZ2lzdGVycywgc2hhcmVk
IGludGVybmFsIGNhY2hlID8gVGhhdCdzIGJhc2ljYWxseSB3aGF0IGRpZmZlcmVudGlhdGUgSGFu
dHJvCj4gPmhlcmUuIEFsc28sIGJlIGF3YXJlIHRoYXQgc29tZSBmb2xrcyBhcmUgY29uc2lkZXJp
bmcgc3RhcnRpbmcgb24gUktWREVDMiBkcml2ZXIsCj4gPmFyZSB5b3UgbG9va2luZyBhdCBSSzMy
LzMzIHNlcmllcyA/IG9yIG1vcmUgUkszNSA/Cj4KPiBJIGRvbid0IGtub3cgb2YgYW55IGxpbWl0
YXRpb25zIG9yIGludGVyYWN0aW9ucyBiZXR3ZWVuIHRoZSBlbmNvZGVyIGFuZAo+IGRlY29kZXIu
CgpJIGJlbGlldmUgd2Ugc2hvdWxkIGV4cGxvcmUgc2VwYXJhdGUgZHJpdmVycywgYW5kIGlmIHRo
ZXJlIGlzIGFueSBpbnRlcmFjdGlvbiwKdHJ5IHRvIG1vZGVsIHRoZSBzaGFyZWQgcGllY2UgdGhy
b3VnaCBhIHNoYXJlZCBibG9jayBpbiB0aGUgZGV2aWNlIHRyZWUuCgpJbiBtb3N0IGNhc2VzLCB0
aGUgZGVjb2RlciBhbmQgZW5jb2RlciBhcmUgc2VwYXJhdGUgYmxvY2tzLgpBbHNvLCB0aGUgVjRM
MiBzdGF0ZWxlc3MgZGVjb2RlciBpbnRlcmZhY2UgY292ZXJzIG9ubHkgZGVjb2RpbmcuCgpTdXBw
b3J0aW5nIGJvdGggaW4gdGhlIHNhbWUgZHJpdmVyIGhhcyBiZWVuIHBhaW5mdWwsIGVzcGVjaWFs
bHkKdGhlIFY0TDIgbmVnb3RpYXRpb24sIGlzIGhhcmQgdG8gc3VwcG9ydCBmb3IgYm90aCBlbmNv
ZGVycyBhbmQgZGVjb2RlcnMsCmFuZCBoYXMgbGVkIHRvIG1hbnkgYnVncyAoYW5kIGV2ZW4gd29y
c2UsIHJlZ3Jlc3Npb25zKSBpbiB0aGUgZHJpdmVycy4KClRoYW5rcywKRXplcXVpZWwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
