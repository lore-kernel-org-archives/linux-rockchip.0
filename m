Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A6A2C4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 17:25:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D285760FEA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 17:25:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D285760FEA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1owmJKJk8q7dnzn21m+cL3ipjbf2lrbkX4IfQXoKSpo=; b=UdubfJE3tIfzs3
	haPJQSyZGT84uT3Wt0OGMhT/vRoc/8a1QefPXlZ31OCnYCGsN/MF1KqTKT2MhH2aSRPA1ux0isfPx
	3SogX+T3yxLBxG5H/BPQ8XpGpcGfo0I1wVvu8nqXgP28e+URbbauyWLG3rQeVPNODYGkEMjZSsGCk
	h8cWY3NvKXnvDJGLv3X/474Zr3tXiPRVNsMJnyPyDmFX0TOjF2YkzQaZPKs7wJglMn+80c/ZRGWgJ
	CV0onktAxap9YExVSxHFd93lgvliKHEWEQf5tCQ/SaEtR9AkfrdOX5J1C8ALsmHBgWODGu2CE8IzM
	FA9DZ+uRSmZzHD0S0IPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw6cd-00BO5J-6H; Wed, 23 Jun 2021 17:25:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw6cb-00BO4o-CO
 for linux-rockchip@lists.infradead.org; Wed, 23 Jun 2021 17:25:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A2EC4611AD
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Jun 2021 17:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624469103;
 bh=gMr8rP8mpEjt0aMd757QeA4/5w7wCXBuZHVv1HwKJsg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sgZ6WZIpTQ3xU6g2vc7GhGWmHmMhzRdu4ASC2l5OiKkN1eCDlavveJGXPiq0oYV2y
 wHyWa7+N6wkt733IMm2qwSjAxc8Q10ui9LWVtnVtwdAg7ZoV6nrLiT8l+CyxOshfvW
 HM08p0KVB8plU8KdFfH8E3FZ69aE/GMn/IDXy2oh+nM/GOI423eofKI6ZTs9QSWXrS
 lPd45kbbDPhq26NX9M5NTmmBQH3UmNtaAw/qu7Aw3TfH6cRU9skA+28rV8iByoXgs9
 JkMpDm6etsGsl/WG5vAnWLSfig6Gz/u7LzwPXBdmg5ncF7MeN0edT8Nj+Z6wYrEnRO
 FY9tFapVf3K/w==
Received: by mail-ej1-f49.google.com with SMTP id bu12so5282846ejb.0
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Jun 2021 10:25:03 -0700 (PDT)
X-Gm-Message-State: AOAM532SpXzCm0anw79X/dOgd9XQgOa1USs38r3tfaLlQz0avH2oLtUX
 Puq/eBV7zq1xh2a19Mzf6zN62pFl8c9BOJu/xQ==
X-Google-Smtp-Source: ABdhPJwXCkmvazE4I3k9S3m14D1cgGGUjG95hpd/rUr6ig/CFZ9myqLecGZuMjtpTnCWl8sT7HSAkacqxEHWfy+lDuo=
X-Received: by 2002:a17:906:82cf:: with SMTP id
 a15mr1136868ejy.359.1624469102187; 
 Wed, 23 Jun 2021 10:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210618062449.1067106-1-jay.xu@rock-chips.com>
 <20210618062449.1067106-5-jay.xu@rock-chips.com> <5359180.zXnORWrf4K@diego>
In-Reply-To: <5359180.zXnORWrf4K@diego>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 23 Jun 2021 11:24:50 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK+TJ8H2pmjZUohJ4Shsx7goYHNvR5zWiPN4c2G+P3kiA@mail.gmail.com>
Message-ID: <CAL_JsqK+TJ8H2pmjZUohJ4Shsx7goYHNvR5zWiPN4c2G+P3kiA@mail.gmail.com>
Subject: Re: [PATCH 4/9] dt-bindings: gpio: change items restriction of clock
 for rockchip,gpio-bank
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kever Yang <kever.yang@rock-chips.com>, Liang Chen <cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_102505_483929_D6E4AB12 
X-CRM114-Status: GOOD (  15.89  )
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

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgNzowMiBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEhpIEpheSwKPgo+IEFtIEZyZWl0YWcsIDE4LiBKdW5pIDIwMjEs
IDA4OjI0OjQ0IENFU1Qgc2NocmllYiBKaWFucXVuIFh1Ogo+ID4gRnJvbTogTGlhbmcgQ2hlbiA8
Y2xAcm9jay1jaGlwcy5jb20+Cj4gPgo+ID4gVGhlIGNsb2NrIHByb3BlcnR5IG5lZWQgMiBpdGVt
cyBvbiBzb21lIHJvY2tjaGlwIGNoaXBzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IExpYW5nIENo
ZW4gPGNsQHJvY2stY2hpcHMuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsueWFtbCAgICAgICAgIHwgNSArKysrLQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAs
Z3Bpby1iYW5rLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9y
b2NrY2hpcCxncGlvLWJhbmsueWFtbAo+ID4gaW5kZXggZDk5M2UwMDJjZWJlLi4wZDYyYzI4ZmI1
OGQgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bp
by9yb2NrY2hpcCxncGlvLWJhbmsueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAsZ3Bpby1iYW5rLnlhbWwKPiA+IEBAIC0yMiw3ICsy
MiwxMCBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgICBtYXhJdGVtczogMQo+ID4KPiA+ICAgIGNsb2Nr
czoKPiA+IC0gICAgbWF4SXRlbXM6IDEKPiA+ICsgICAgbWluSXRlbXM6IDEKPiA+ICsgICAgaXRl
bXM6Cj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogQVBCIGludGVyZmFjZSBjbG9jayBzb3VyY2UK
PiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBHUElPIGRlYm91bmNlIHJlZmVyZW5jZSBjbG9jayBz
b3VyY2UKPgo+IGFzIHNhaWQgaW4gYSBwcmV2aW91cyBtYWlsLCBwbGVhc2UgYWRhcHQgdGhpcyB0
byB1c2UgY2xvY2stbmFtZXMgZm9yIHRoZQo+IHR3byBjbG9jayB2YXJpYW50LiBNYXliZSBzb21l
dGhpbmcgbGlrZQo+Cj4gY2xvY2tzOgo+ICAgbWluSXRlbXM6IDEKPiAgIG1heEl0ZW1zOiAyCgpX
aGlsZSB0aGlzIGlzIGZpbmUsIHRoZSB2ZXJzaW9uIGFib3ZlIHdpdGggZGVzY3JpcHRpb25zIGlz
IGJldHRlci4KCj4gY2xvY2stbmFtZXM6Cj4gICBtaW5JdGVtczogMQo+ICAgbWF4SXRlbXM6IDIK
CkRvbid0IG5lZWQgbWF4SXRlbXMgaGVyZS4gSW1wbGllZCBieSAnaXRlbXMnIGxlbmd0aC4KCj4g
ICBpdGVtczoKPiAgICAgLSBjb25zdDogYXBiX3BjbGsKPiAgICAgLSBjb25zdDogZGVib3VuY2UK
Pgo+IGlmOgo+ICAgIHByb3BlcnRpZXM6Cj4gICAgICBjbG9ja3M6Cj4gICAgICAgIGl0ZW1zOgo+
ICAgICAgICAgIGNvbnN0OiAyCgpUaGlzIHNheXMgY2xvY2tzIG11c3QgaGF2ZSB2YWx1ZXMgb2Yg
Mi4gWW91IHdhbnQgdGhpczoKCmNsb2NrczoKICBtaW5JdGVtczogMgoKTm90ZSB0aGF0IGlzIGNv
bmRpdGlvbiB3aWxsIGFsc28gYmUgdHJ1ZSBpZiAnY2xvY2tzJyBpcyBub3QgcHJlc2VudC4gSQph
c3N1bWUgaXQncyByZXF1aXJlZCBlbHNld2hlcmUuCgo+IHRoZW46Cj4gICAgcmVxdWlyZWQ6Cj4g
ICAgIC0gY2xvY2stbmFtZXMKPgo+IFtub3QgeWV0IHN1cmUgaWYgdGhhdCB3b3Jrc10KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
