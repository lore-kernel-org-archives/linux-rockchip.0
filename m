Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CE82C77B61
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Apr 2023 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJ7cNTjmtpfhzemkQWjwmW7ZJ88A1hblClaRQXi6lEk=; b=RKf8T4jH/VCrr1
	KyFOAqNLLdkwMVk5zYL2UCa/ppcbTplq3XjWrjvIv2QjoC/R4iOmjHpM1CH19BbP64NUiPFfE7ac/
	gbJzAfzZ67gXzfWnCF+fsE7BscevQxxuNUCg+RnKsT+RLj/suHTSxKdm2EqfHgWyMIvGA0B6FeyXN
	AZM0RyIUkXk7M4NQHF5wPsLhm4yZ2AnPH2zv/SwmLYSNU2/Upt2cevKOiuDidLu8J3n+jQRz91tJA
	dnp4UiUKQu/b1BbPb17xal3wtngWuy3N8rmi1YUwFr0bzQ5t+5L7jCIudbyZsShr5094qqiMEvcqy
	xHkrH1px9MQB8a+GZrEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prL3Z-001aJw-1S;
	Tue, 25 Apr 2023 15:58:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prL3T-001aIP-37;
	Tue, 25 Apr 2023 15:58:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2FD046283A;
	Tue, 25 Apr 2023 15:58:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 173C0C433A0;
	Tue, 25 Apr 2023 15:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682438290;
	bh=itrfj1uL7ULKhIO/qSGGwopdMhHtcuGv7fowY1MDPYk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=EgTh2lVlpMtQ5px5R+jV+EfXPM/vMd0vZZcesoDR/dZgys7DryqsRrWS2pdpS9uas
	 OYd9yTEmElOVrIZbn0OqVscAcdbafdiKbG9xGY95F+dXOVKPpAW5UFqkaPFQaikMgo
	 aWZCYgp15j+P/IiGD62g++flweL1qEmmRIyA46J9ZxdgcgQr67x7Q3TlACfNIAqEWA
	 ybnHZqICC3N6Bh2h/8vZ/QwOp/oM5lTZZiMl9J1LI5jXGxCqVcLQ5wSHavpOM+9lzJ
	 GcWe9oPB1zz3J6OXPcR6ftsIf9jN3vnmyzPm8qTrcAX6jvM8Z/Yhdc9tzdb3LHV6hX
	 cc5h5IH4H4Nww==
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-b8f510fecf4so8839268276.1;
        Tue, 25 Apr 2023 08:58:10 -0700 (PDT)
X-Gm-Message-State: AAQBX9fz2nGyqAUxkQ0hr9HgOL6ucWUEAxzqBJqR8q4f7JS6dguCMOZA
	ixgwdw78LvSf9N3RYeQl9M5ZJDpBPdmdK3YSzA==
X-Google-Smtp-Source: AKy350bpts/PPga3+dzd9vak+rbAaLdXpa4DHHS4UXvr1kLSlKfqR897O6l7AESMOVdvAuhJNuLkwu1gSc/085IiOR0=
X-Received: by 2002:a25:b097:0:b0:b97:f46:a2b8 with SMTP id
 f23-20020a25b097000000b00b970f46a2b8mr12284894ybj.17.1682438288965; Tue, 25
 Apr 2023 08:58:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
In-Reply-To: <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 25 Apr 2023 10:57:57 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
Message-ID: <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Geert Uytterhoeven <geert@linux-m68k.org>, Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc: Ansuel Smith <ansuelsmth@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-actions@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-omap@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@axis.com, linux-aspeed@lists.ozlabs.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, linux-oxnas@groups.io, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_085812_078159_8B3053D2 
X-CRM114-Status: GOOD (  17.76  )
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

T24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMjoyOOKAr0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+Cj4gSGkgUm9iLAo+Cj4gT24gVHVlLCBBcHIgMjUs
IDIwMjMgYXQgMTI6MTbigK9BTSBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPiB3cm90
ZToKPiA+IEkgaGF2ZSBhIHNjcmlwdFsxXSB0aGF0IGRvZXMgdGhlIGNvbnZlcnNpb24gd3JpdHRl
biB0aGUgbGFzdCB0aW1lIHRoaXMKPiA+IGNhbWUgdXAuIEp1c3QgaGF2ZSB0byBhZ3JlZSBvbiBk
aXJlY3RvcnkgbmFtZXMuIEkgdGhpbmsgdGhlIGVhc2llc3QKPiA+IHdvdWxkIGJlIGZvciBBcm5k
L09sb2YgdG8gcnVuIGl0IGF0IHRoZSBlbmQgb2YgYSBtZXJnZSB3aW5kb3cgYmVmb3JlCj4gPiBy
YzEuCj4KPiAiZW1ldjIiIGFuZCAic2g3IiBhcmUgbWlzc2luZyBmb3IgcmVuZXNhcy4KCk5vIGRv
dWJ0IGl0J3MgYmVlbiBiaXRyb3R0aW5nIChvciBJIG1heSBoYXZlIG1pc3NlZCBzb21lKS4KCj4g
RG9lcyB5b3VyIHNjcmlwdCBhbHNvIGNhdGVyIGZvciAuZHRzIGZpbGVzIG5vdCBtYXRjaGluZyBh
bnkgcGF0dGVybiwKPiBidXQgaW5jbHVkaW5nIGEgLmR0c2kgZmlsZSB0aGF0IGRvZXMgbWF0Y2gg
YSBwYXR0ZXJuPwoKSSBhc3N1bWUgSSBidWlsdCBldmVyeXRoaW5nIGFmdGVyIG1vdmluZywgYnV0
IG1heWJlIG5vdC4uLgoKVGhhdCdzIGFsbCBqdXN0ICJkZXRhaWxzIi4gRmlyc3QsIHdlIG5lZWQg
YWdyZWVtZW50IG9uIGEpIG1vdmluZwp0aGluZ3MgdG8gc3ViZGlycyBhbmQgYikgZG9pbmcgaXQg
MS1ieS0xIG9yIGFsbCBhdCBvbmNlLiBTbyBmYXIgd2UndmUKYmVlbiBzdHVjayBvbiBhKSBmb3Ig
YmVpbmcgJ3RvbyBtdWNoIGNodXJuJy4KCk9uZSBuaWNlIHRoaW5nIHdpdGggc3ViZGlycyBpcyAn
bWFrZSBDSEVDS19EVEJTPXkKYXJjaC9hcm0vYm9vdC9kdHMvZm9vLycgY2FuIGJ1aWxkIGV2ZXJ5
dGhpbmcgZm9yIGEgcGxhdGZvcm0gZmFtaWx5CndpdGhvdXQgaGF2aW5nIHRvIG1lc3Mgd2l0aCB0
aGUga2NvbmZpZy4gTWF5YmUgbW9zdCBmb2xrcyBkb24ndCBjYXJlLApidXQgSSBkby4gTXkgQ0kg
am9iIHJ1bm5pbmcgc2NoZW1hIGNoZWNrcyBsb29rcyBsaWtlIHRoaXMgdG8gZGVhbCB3aXRoCmdy
b3VwaW5nIHRoZSBhcm0gZHRzIGZpbGVzICh0aGlzIGxpc3QgaXMgcHJvYmFibHkgb3V0IG9mIGRh
dGUgdG9vLCBidXQKbGVzcyBzbyk6CgogICAgICAgIGlmIFsgIiRBUkNIIiA9ICJhcm0iIF07IHRo
ZW4KICAgICAgICAgICAgVkVORE9SX0xJU1Q9ImFscGhhc2NhbGUgYWxwaW5lIGFydHBlYyBhc3Bl
ZWQgYXhtIGJjbSBjeDkKKGVjeHxoaWdoYmFuaykgXAogICAgICAgICAgICAgIGVmbSBlcDcgaW14
MSBpbXgyMyBpbXgyOCBpbXgyNyBpbXg1IGlteDYgaW14NyBscyB2ZiBxY29tIFwKICAgICAgICAg
ICAgICAoYW0zfGFtNHxhbTV8ZHJhfGtleXN0b25lfG9tYXB8Y29tcHVsYWJ8bG9naWNwZHxlbHBp
ZGF8bW90b3JvbGEtY3BjYXB8ZGF8ZG0pClwKICAgICAgICAgICAgICBuc3BpcmUgYXJtYWRhIGRv
dmUga2lya3dvb2Qgb3Jpb24gbXZlYnUgbW1wMiBiZXJsaW4gcHhhCihhcm0tfGludGVnfG1wc3x2
ZSkgXAogICAgICAgICAgICAgIChhdDkxfHNhbWF8dXNiX3x0bnlffG1wYTE2MDB8YW5pbWVvX2lw
fGFrcy1jZHV8ZXRoZXJudXQ1fGV2ay1wcm8zfHBtOWc0NXxnZTg2KQpcCiAgICAgICAgICAgICAg
ZXh5bm9zIHMzYyBzNXAgZ2VtaW5pIChoaXNpfGhpM3xoaXApIG10IG1lc29uIG1veGEgbnV2bwps
cGMgb3dsIG94OCBcCiAgICAgICAgICAgICAgKHI3fHI4fHI5fGVtZXYyfHNoNzNhfGdyLXxpd2cp
IChya3xydjExKSBzb2NmcGdhIHN0bQooc3RpfHN0LXBpbikgc3RlIFwKICAgICAgICAgICAgICBz
cGVhciAoc3VufGF4cCkgdGVncmEgdW5pcGggKHZ0ODUwMHx3bTgpIHhlbiB6eW5xIgogICAgICAg
IGVsc2UKICAgICAgICAgICAgVkVORE9SX0xJU1Q9JChscyBhcmNoLyRBUkNIL2Jvb3QvZHRzLyB8
IHhhcmdzKQogICAgICAgIGZpCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
