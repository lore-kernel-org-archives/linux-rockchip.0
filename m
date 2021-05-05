Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83723C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 15:33:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F14C5610E9
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 15:33:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F14C5610E9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8r1l59ujvu/XquW+WelK72plP79gj7mQuMMvexm0PNE=; b=RLk/cJbhNhW7ZKqSi6gezCOwV
	GmNM+LJ6qNhyKlHTglvcWcj8w9KsAS83+2Vm7uYIx8wM6P3PCkG6FmvJlETz6DL1URSYD29K1P1fv
	0UTuysZUKlFv/WYH/9xjSHBdhdht3EYvL2WdWL2sMdOZ7Bdt6JRDjGKifR+VYq4tevmg0CUQ+xSXw
	n5EniyxflWHhczQvnfBlSf7L0Wr/NMisgl4PNnT+NJKfvG9qZ3OOCVGO3FruL/WMyGxHwe56wLs1I
	nAkVdZy/rWovgFLjeprnfqwJC36KBVxxTYc2aZV28qTgciJYOIZXNdPOG6+DyZu4KfpmQStrwm2qo
	pWEXwmVQQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leJWo-001ZT4-DV; Wed, 05 May 2021 15:33:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJWm-001ZSr-Kn
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 15:33:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=O6w0cG9YtDPDCbidOpCE3ksxspkqrocA0oYzTOOZmTY=; b=LKtJzHr7djmsORRV2Yhy9SiZv/
 xOs6q71Bcm9Fya0HTUWypcG9fJOCY2GNtGlYmqYumA2bX6cV8wpD5403FJgcPnDjs0DWowMv6j8TL
 OiOaY5W3yKJ23cDZVD42L7OyH8hg+y3JqzLGk19xbslI/sAGaXtcNsHUgvmedR0kVmUfcIJeEf7s/
 j7Ai74G4iOjV4fcCBxoUsZsd9UZTNUh8EKYDXIkqxvuLCpqYEzny8jwUSGXSSCZ+eWcznld0HnHlf
 bheKb06rfJN8WrLAbyGoP/87k/LzQB+5JuIlVgNzcWTX+78ewiZcJLYBV99Ia3ehd+pYHQ+X6Zy15
 c6MjUK+g==;
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJWj-004sZk-SC
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 15:33:31 +0000
Received: by mail-qt1-x82d.google.com with SMTP id o12so1464718qtx.8
 for <linux-rockchip@lists.infradead.org>; Wed, 05 May 2021 08:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=O6w0cG9YtDPDCbidOpCE3ksxspkqrocA0oYzTOOZmTY=;
 b=YQKbrBTtFj9MppoNVFsLxDdSZ/GmVwL/zzYHnJqJJ+CymA6PwkB1RXQU/zknmwLbOx
 nRuC+c3zVZagrt5JC1/dbTDziLPRnMg7fkfFoSsi9M0fP6X0Abrrd6/b+rh/HqznwT82
 AVGURakeDyDD3GwV+EAlU+XQLqbIfFHRztLt1XV19fmpF4hhWB0aFK3J7yhunE6E1FU6
 derUunuLRMB9p+K3jUD1ccJ5ibKnrOtLRqvme4dyVnPIeSxkHxC4iGnQaPUudJSovhEz
 DPKouVJD32Yk98btYA8W5kzdlIpnm+FtXJJLsnua4l8pxYbXL45ANgqX4SVaqy3RhWbz
 5v3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=O6w0cG9YtDPDCbidOpCE3ksxspkqrocA0oYzTOOZmTY=;
 b=V7fwvXfZSUGWCascT2WrcehMV47VZs8zeyYXxGoPYoQaGK9C1tLTBMz/kT5jeImD1M
 J+AjVNgP8F2afYb37cipVZC4iblXnhThCpo4V3kZy5VOZwmvgZGh2l2/rhpQeUeEy9nP
 oz5wpOwr2EiuE5Skvy8XZf7c6OEJ+I2AOBReYm9avKatxuhGxNH2whqrmgPgepRazVhT
 C2tPtRPGMzkrLLgIPxJtZgvN9rBcjmVhyX9uDCLCpk4iiBY5L5jHZH+64UhR+Vav8kcu
 lM1kQX68vPar8hJYL+MF3F09h4ePBwZlJ7cWRRfz54KW8L5ItU/DV83TJksr7oRqaVFq
 jHQA==
X-Gm-Message-State: AOAM530ia2AJtHUbCzJlpjH8pmZJKKAty2KVrPfmnWo+TCaAf+nTTer5
 XeXdU5LK52xc9Je5qF5vlNe6jw==
X-Google-Smtp-Source: ABdhPJxhPUMuK8ha1j9GrZqzuSO7vV5fOOc6RgsQZm7A+tYOpJMWKo4YcFwkk9ghgDO7D11M6Zd0SA==
X-Received: by 2002:a05:622a:1014:: with SMTP id
 d20mr8092919qte.64.1620228807158; 
 Wed, 05 May 2021 08:33:27 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id t18sm13994897qkj.75.2021.05.05.08.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 08:33:26 -0700 (PDT)
Message-ID: <fbee67d620d456b5f2988b7f0ba28d5c6335ee6c.camel@ndufresne.ca>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: John Cox <jc@kynesim.co.uk>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
Cc: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org, 
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com,  kernel@pengutronix.de, linux-imx@nxp.com,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  devel@driverdev.osuosl.org,
 kernel@collabora.com, cphealy@gmail.com
Date: Wed, 05 May 2021 11:33:24 -0400
In-Reply-To: <6bd59glrp4fq3j3ngmbl5p4u7aethvrv34@4ax.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <6bd59glrp4fq3j3ngmbl5p4u7aethvrv34@4ax.com>
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_083329_996707_066C637D 
X-CRM114-Status: GOOD (  30.48  )
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

TGUgbWVyY3JlZGkgMDUgbWFpIDIwMjEgw6AgMTY6MTggKzAxMDAsIEpvaG4gQ294IGEgw6ljcml0
wqA6Cj4gPiBUaGUgSEVWQyBIQU5UUk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBv
ZiBiaXRzIHRvIHNraXAgYXQKPiA+IHRoZSBiZWdpbm5pbmcgb2YgdGhlIHNsaWNlIGhlYWRlci4K
PiA+IFRoYXQgaXMgYSBoYXJkd2FyZSBzcGVjaWZpYyByZXF1aXJlbWVudCBzbyBjcmVhdGUgYSBk
ZWRpY2F0ZWQgY29udHJvbAo+ID4gZm9yIHRoaXMgcHVycG9zZS4KPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+
Cj4gPiAtLS0KPiA+IC4uLi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdCAg
ICB8IDE5ICsrKysrKysrKysrKysrKysrKysKPiA+IC4uLi91c2Vyc3BhY2UtYXBpL21lZGlhL2Ry
aXZlcnMvaW5kZXgucnN0ICAgICB8ICAxICsKPiA+IGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5o
ICAgICAgICAgICAgICAgICAgICB8IDEzICsrKysrKysrKysrKysKPiA+IDMgZmlsZXMgY2hhbmdl
ZCwgMzMgaW5zZXJ0aW9ucygrKQo+ID4gY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
dXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QK
PiA+IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJz
dAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2Q5NzU0
YjRlMDA1Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4gPiBAQCAtMCwwICsxLDE5IEBACj4gPiAr
Li4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ICsKPiA+ICtIYW50cm8gdmlk
ZW8gZGVjb2RlciBkcml2ZXIKPiA+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+ICsK
PiA+ICtUaGUgSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyIGltcGxlbWVudHMgdGhlIGZvbGxv
d2luZyBkcml2ZXItc3BlY2lmaWMKPiA+IGNvbnRyb2xzOgo+ID4gKwo+ID4gK2BgVjRMMl9DSURf
SEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAgKGludGVnZXIpYGAKPiA+ICsgICAgU3BlY2lm
aWVzIHRvIEhhbnRybyBIRVZDIHZpZGVvIGRlY29kZXIgZHJpdmVyIHRoZSBudW1iZXIgb2YgZGF0
YSAoaW4KPiA+IGJpdHMpIHRvCj4gPiArICAgIHNraXAgaW4gdGhlIHNsaWNlIHNlZ21lbnQgaGVh
ZGVyLgo+ID4gKyAgICBJZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20g
c3ludGF4IGVsZW1lbnQKPiA+ICJwaWNfb3V0cHV0X2ZsYWciCj4gPiArICAgIHRvIGJlZm9yZSBz
eW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxfbXZwX2VuYWJsZWRfZmxhZyIuCj4gPiArICAg
IElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAicGljX291dHB1dF9mbGFnIgo+ID4g
KyAgICAoc2VwYXJhdGVfY29sb3VyX3BsYW5lX2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4gCj4g
V2hhdCBoYXBwZW5zIGlmIGl0IGlzIGEgZGVwZW5kYW50X3NsaWNlX3NlZ2VtZW50IG9yCj4gb3V0
cHV0X2ZsYWdfcHJlc2VudF9mbGFnPyAgVGhvc2UgZmxhZ3MgYXJlIGFsbCBkZXBlbmRhbnQgb24K
PiBkZXBlbmRhbnRfc2xpY2Vfc2VnZW1lbnQgYmVpbmcgZmFsc2UuICBJJ20gZ3Vlc3NpbmcgMCBi
dXQgaXQgbWF5YmUKPiBzaG91bGQgYmUgZG9jdW1lbnRlZC4KClplcm8gaW5kZWVkLgoKPiBMaWtl
d2lzZSBpZiBvdXRwdXRfZmxhZ19wcmVzZW50X2ZsYWcgaXMgZmFsc2UgcGljX291dHB1dF9mbGFn
IHdpbGwgbm90Cj4gYmUgY29kZWQsIHNvIG1heWJlIGV4cHJlc3MgaXQgYXMgImFmdGVyIHNsaWNl
X3R5cGUiIHJhdGhlciB0aGFuICJiZWZvcmUKPiBwaWNfb3V0cHV0X2ZsYWciPwoKU2hvdWxkIHdv
cmsgdG9vLgoKPiAKPiBSZWdhcmRzCj4gCj4gSm9obiBDb3gKPiAKPiA+ICsuLiBub3RlOjoKPiA+
ICsKPiA+ICsgICAgICAgIFRoaXMgY29udHJvbCBpcyBub3QgeWV0IHBhcnQgb2YgdGhlIHB1Ymxp
YyBrZXJuZWwgQVBJIGFuZAo+ID4gKyAgICAgICAgaXQgaXMgZXhwZWN0ZWQgdG8gY2hhbmdlLgo+
ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJz
L2luZGV4LnJzdAo+ID4gYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVy
cy9pbmRleC5yc3QKPiA+IGluZGV4IDFhOTAzOGY1ZjlmYS4uMTJlM2M1MTJkNzE4IDEwMDY0NAo+
ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgu
cnN0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9p
bmRleC5yc3QKPiA+IEBAIC0zMyw2ICszMyw3IEBAIEZvciBtb3JlIGRldGFpbHMgc2VlIHRoZSBm
aWxlIENPUFlJTkcgaW4gdGhlIHNvdXJjZQo+ID4gZGlzdHJpYnV0aW9uIG9mIExpbnV4Lgo+ID4g
Cj4gPiAJY2NzCj4gPiAJY3gyMzQxeC11YXBpCj4gPiArICAgICAgICBoYW50cm8KPiA+IAlpbXgt
dWFwaQo+ID4gCW1heDIxNzUKPiA+IAltZXllLXVhcGkKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L21lZGlhL2hldmMtY3RybHMuaCBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4gPiBpbmRl
eCA4ZTAxMDllZWE0NTQuLmI3MTNlZWVkMTkxNSAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvbWVk
aWEvaGV2Yy1jdHJscy5oCj4gPiArKysgYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+ID4g
QEAgLTIyNCw0ICsyMjQsMTcgQEAgc3RydWN0IHY0bDJfY3RybF9oZXZjX2RlY29kZV9wYXJhbXMg
ewo+ID4gCV9fdTY0CWZsYWdzOwo+ID4gfTsKPiA+IAo+ID4gKy8qICBNUEVHLWNsYXNzIGNvbnRy
b2wgSURzIHNwZWNpZmljIHRvIHRoZSBIYW50cm8gZHJpdmVyIGFzIGRlZmluZWQgYnkgVjRMMgo+
ID4gKi8KPiA+ICsjZGVmaW5lCj4gPiBWNEwyX0NJRF9DT0RFQ19IQU5UUk9fQkFTRQkJCQkoVjRM
Ml9DVFJMX0NMQVNTX0NPREVDIHwgMHgxMjAwKQo+ID4gKy8qCj4gPiArICogVjRMMl9DSURfSEFO
VFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAgLQo+ID4gKyAqIHRoZSBudW1iZXIgb2YgZGF0YSAo
aW4gYml0cykgdG8gc2tpcCBpbiB0aGUKPiA+ICsgKiBzbGljZSBzZWdtZW50IGhlYWRlci4KPiA+
ICsgKiBJZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVs
ZW1lbnQKPiA+ICJwaWNfb3V0cHV0X2ZsYWciCj4gPiArICogdG8gYmVmb3JlIHN5bnRheCBlbGVt
ZW50ICJzbGljZV90ZW1wb3JhbF9tdnBfZW5hYmxlZF9mbGFnIi4KPiA+ICsgKiBJZiBJRFIsIHRo
ZSBza2lwcGVkIGJpdHMgYXJlIGp1c3QgInBpY19vdXRwdXRfZmxhZyIKPiA+ICsgKiAoc2VwYXJh
dGVfY29sb3VyX3BsYW5lX2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4gPiArICovCj4gPiArI2Rl
ZmluZSBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElDRV9IRUFERVJfU0tJUAkoVjRMMl9DSURfQ09E
RUNfSEFOVFJPX0JBU0UKPiA+ICsgMCkKPiA+ICsKPiA+ICNlbmRpZgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
