Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00A66C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 12:00:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7341C64EAE
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 12:00:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7341C64EAE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fIhQS3sjNM2/+oVP9wRjNs5tKc6kQr4fRyo81Pr0sBw=; b=Q0Ly9bTMqffhVihYXaLGLEc5b
	UjJi1laSa2NEM8Z4SXWjw2QevDct23a/MWJa5O4Z2nbqmE4EgTVdVmUUGd4EuGXQIiFPBvi7FaqEl
	bMwIMk7uI2FufwEj/AY3mjvQWraLYKaJCRMo40GsxsHqj6dvYmw3nDf9IAnwJ2OZseupOG4F/2Wsg
	5jjGkEZOIwa0zTjGcfEVtuLTNKY0pD4Sg596NZmCgdSwA5ElsMQJonnA4i/zxc66UYmm8d66cMf+8
	Zb8l3J0EWGwY2pMgFyOUsXfKehthadz/n5DdGlCo9gRgECIHho1FhgcZYebOkwxYlY3nD9V8WXPhn
	eU6AhGa5Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKJyu-009056-Gk; Thu, 11 Mar 2021 11:59:56 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKJy2-008zyC-14
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 11:59:08 +0000
Received: by mail-wr1-x431.google.com with SMTP id y16so1563372wrw.3
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 03:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sZHKANcfp4HNPSh4JPMPf2bq7tkkwGzMZt04c3NuqNM=;
 b=slLbTWW+VCiQjXJ0yTY3dZELEMPbF3D/++3Ly5kWq1OvjC25KtW+/hnON08Z7DLU0E
 f6ZRIJhgOPVk49Bl8C2BxCqXG79ROzFy3CnS7RjxVD61hr/tk+uRrSe/eZ2Up5hg6G+F
 EEmkshnsttUouBqiWmrehhJl3E8fFoSh1VMviSypCHWTown2HoXUfxJLttdwklR8FkyF
 w/4qs0fxAI2tEITnk19lYd9EKZ1vqs6J+1oWwsZW0uKRNFBm6C5JOcfRG1eY0Ta6cSO1
 XTYcB3WUISPfERpIlWT+sYSxeruvrA6vdrQHLy5c3jZkjD13ZSY2UybKVS4XMRG3Si4z
 j0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sZHKANcfp4HNPSh4JPMPf2bq7tkkwGzMZt04c3NuqNM=;
 b=QoyIbPYr60aAmX//Q41r4AQDdXVgipBSotka7t+3G05Q3N2iaLku5bIqGuuS2uYT+Z
 Kb3CnF7rlvSa4Ic0Zf9Geb50Y4khDMKYJl38agZTvqdXV2L1K8xuRM1PZW6MW8nhNT/4
 O0hnf59KOUHomd9+Tfj3OBN5rdWWd81SYKX9Hh+RDCb7PIdO+z0uFqMfcsy64+lFfITd
 ve0RFDaroa6VONIGrJMtIdFrSdM8zH8XaQBczRIAwqmAE430zQss3UXrVnqE39Te+Ecc
 qphokd7dNy7OMsth1IIZHN7xQJTXiWnSYdzFmcfZupbyNpZBuLiWZ0QVsI1SFnjMAM9k
 pmGg==
X-Gm-Message-State: AOAM533L8TzFGDR2fgkzxIxvafduNYscLptOdE7HifcFkyHEsOjymsNJ
 yiukBmzWAjx6Drx7+tT00v9ohg==
X-Google-Smtp-Source: ABdhPJyGW237VA0pOXRhgzw1B/QCI5NH543/K3au6kCa1Mi5BCUfrAiNV+sDspN6mup1sB4o/iEoIw==
X-Received: by 2002:adf:a406:: with SMTP id d6mr8435048wra.141.1615463940408; 
 Thu, 11 Mar 2021 03:59:00 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:84cf:7f4d:d470:dfd4?
 ([2a01:e34:ed2f:f020:84cf:7f4d:d470:dfd4])
 by smtp.googlemail.com with ESMTPSA id m10sm3455006wmh.13.2021.03.11.03.58.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Mar 2021 03:59:00 -0800 (PST)
Subject: Re: [RESEND PATCH v5 2/4] arm64: dts: rk3399: Add dfi and dmc nodes.
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Lin Huang <hl@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Chen-Yu Tsai <wens@csie.org>, Jacob Chen <jacob2.chen@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Robin Murphy
 <robin.murphy@arm.com>, Boris Brezillon <boris.brezillon@collabora.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20210308233858.24741-1-daniel.lezcano@linaro.org>
 <20210308233858.24741-2-daniel.lezcano@linaro.org>
 <9c36893a-6ca8-dade-e203-890a4071bf50@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <5f66f43e-8b50-39f2-f326-07a9378c0909@linaro.org>
Date: Thu, 11 Mar 2021 12:58:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9c36893a-6ca8-dade-e203-890a4071bf50@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_115902_709127_D147DFEC 
X-CRM114-Status: GOOD (  22.30  )
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

T24gMDkvMDMvMjAyMSAxMjo0MiwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+IEhpIERhbmllbCwKPiAK
PiBTb21lIGNvbW1lbnRzLiBIYXZlIGEgbG9vayBpZiBpdCdzIHVzZWZ1bCBvciB0aGF0IHlvdSBk
aXNhZ3JlZSB3aXRoLgo+IAo+IE5ldyBub2RlcyBzaG91bGQgYmUgdmVyaWZpYWJsZSBpZiBwb3Nz
aWJsZS4KPiBFc3BlY2lhbGx5IHdpdGggc28gbWFueSBwcm9wZXJ0aWVzLgo+IENvdWxkIHlvdSBj
b252ZXJ0IHJvY2tjaGlwLWRmaS50eHQgYW5kIHJrMzM5OV9kbWMudHh0IHRvIHlhbWwgaW5zdGVh
ZCBvZgo+IGNoYW5naW5nIG9sZCB0eHQgZG9jdW1lbnRzPwo+IEFkZCByb2NrY2hpcC1kZmkueWFt
bCBhbmQgcmszMzk5X2RtYy55YW1sIGJlZm9yZSB0aGlzIHBhdGNoIGluIHZlcnNpb24gNi4KCkkg
ZG9uJ3QgaGF2ZSBhIGxvdCBvZiBiYW5kd2lkdGggdG8gZG8gaXQgYnV0IEkgd2lsbCBnaXZlIGEg
dHJ5LgoKVGhhbmtzIGZvciByZXZpZXdpbmcKCiAgLS0gRGFuaWVsCgo+IE5vZGVzIGFuZCBwcm9w
ZXJ0aWVzIGhhdmUgYSBzb3J0IG9yZGVyLiBQbGVhc2UgZml4Lgo+IFNvbWUgZ29lcyBmb3IgW1JF
U0VORCBQQVRDSCB2NSAzLzRdLgo+IAo+IChUaGlzIGlzIGEgZ2VuZXJpYyBkdHNpLiBIb3cgYWJv
dXQgY29vbGluZyBhbmQgZG1jID8/KQo+IAo+IC0tLS0KPiBIZWlrbyBydWxlczoKPiAKPiBjb21w
YXRpYmxlCj4gcmVnCj4gaW50ZXJydXB0cwo+IFthbHBoYWJldGljYWxdCj4gc3RhdHVzIFtpZiBu
ZWVkZWRdCj4gCj4gLS0tLQo+IE15IGluY29tcGxldGUgbGlzdDoKPiAKPiBGb3Igbm9kZXM6Cj4g
SWYgZXhpc3RzIG9uIHRvcDogbW9kZWwsIGNvbXBhdGlibGUgYW5kIGNob3Nlbi4KPiBTb3J0IHRo
aW5ncyB3aXRob3V0IHJlZyBhbHBoYWJldGljYWwgZmlyc3QsCj4gdGhlbiBzb3J0IHRoZSByZXN0
IGJ5IHJlZyBhZGRyZXNzLgo+IAo+IEluc2lkZSBub2RlczoKPiBJZiBleGlzdHMgb24gdG9wOiBj
b21wYXRpYmxlLCByZWcgYW5kIGludGVycnVwdHMuCj4gSW4gYWxwaGFiZXRpY2FsIG9yZGVyIHRo
ZSByZXF1aXJlZCBwcm9wZXJ0aWVzLgo+IFRoZW4gaW4gYWxwaGFiZXRpY2FsIG9yZGVyIHRoZSBv
dGhlciBwcm9wZXJ0aWVzLgo+IEFuZCBhcyBsYXN0IHRoaW5ncyB0aGF0IHN0YXJ0IHdpdGggJyMn
IGluIGFscGhhYmV0aWNhbCBvcmRlci4KPiBBZGQgc3RhdHVzIGJlbG93IGFsbCBvdGhlciBwcm9w
ZXJ0aWVzIGZvciBzb2MgaW50ZXJuYWwgY29tcG9uZW50cyB3aXRoCj4gYW55IGJvYXJkLXNwZWNp
Zmljcy4KPiBLZWVwIGFuIGVtcHR5IGxpbmUgYmV0d2VlbiBwcm9wZXJ0aWVzIGFuZCBub2Rlcy4K
PiAKPiBFeGNlcHRpb25zOgo+IFNvcnQgcGluY3RybC0wIGFib3ZlIHBpbmN0cmwtbmFtZXMsIHNv
IGl0IHN0YXlzIGluIGxpbmUgd2l0aCBjbG9jay1uYW1lcwo+IGFuZCBkbWEtbmFtZXMuCj4gU29y
dCBzaW1wbGUtYXVkaW8tY2FyZCxuYW1lIGFib3ZlIG90aGVyIHNpbXBsZS1hdWRpby1jYXJkIHBy
b3BlcnRpZXMuCj4gU29ydCByZWd1bGF0b3ItbmFtZSBhYm92ZSBvdGhlciByZWd1bGF0b3IgcHJv
cGVydGllcy4KPiBTb3J0IHJlZ3VsYXRvci1taW4tbWljcm92b2x0IGFib3ZlIHJlZ3VsYXRvci1t
YXgtbWljcm92b2x0Lgo+IAo+IE9uIDMvOS8yMSAxMjozOCBBTSwgRGFuaWVsIExlemNhbm8gd3Jv
dGU6Cj4+IEZyb206IExpbiBIdWFuZyA8aGxAcm9jay1jaGlwcy5jb20+Cj4+Cj4+IFRoZXNlIGFy
ZSByZXF1aXJlZCB0byBzdXBwb3J0IEREUiBEVkZTIG9uIHJrMzM5OSBwbGF0Zm9ybS4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNv
bT4KPj4gU2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBvcnRheUBjb2xsYWJvcmEu
Y29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGlu
YXJvLm9yZz4KPj4gLS0tCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5k
dHNpIHwgMTkgKysrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2Vy
dGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+
IGluZGV4IGVkYmJmMzVmZTE5ZS4uNmYyM2Q5OTIzNmZlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPj4gQEAgLTE5MzcsNiArMTkzNywyNSBAQAo+PiAg
CQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiAgCX07Cj4+ICAKPj4gKwlkZmk6IGRmaUBmZjYzMDAw
MCB7Cj4+ICsJCXJlZyA9IDwweDAwIDB4ZmY2MzAwMDAgMHgwMCAweDQwMDA+Owo+PiArCQljb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1kZmkiOwo+PiArCQlyb2NrY2hpcCxwbXUgPSA8JnBt
dWdyZj47Cj4+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMzEgSVJRX1RZUEVfTEVWRUxfSElH
SCAwPjsKPj4gKwkJY2xvY2tzID0gPCZjcnUgUENMS19ERFJfTU9OPjsKPj4gKwkJY2xvY2stbmFt
ZXMgPSAicGNsa19kZHJfbW9uIjsKPj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4gKwl9Owo+
PiArCj4+ICsJZG1jOiBkbWMgewo+PiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1k
bWMiOwo+PiArCQlyb2NrY2hpcCxwbXUgPSA8JnBtdWdyZj47Cj4+ICsJCWRldmZyZXEtZXZlbnRz
ID0gPCZkZmk+Owo+PiArCQljbG9ja3MgPSA8JmNydSBTQ0xLX0REUkM+Owo+PiArCQljbG9jay1u
YW1lcyA9ICJkbWNfY2xrIjsKPj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4gKwl9Owo+PiAr
Cj4+ICAJcGluY3RybDogcGluY3RybCB7Cj4+ICAJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
Mzk5LXBpbmN0cmwiOwo+PiAgCQlyb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4+Cj4gCgoKLS0gCjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
