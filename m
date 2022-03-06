Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42722C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Mar 2022 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luqn4ADOCYoe5XWL5HitwBiAZoxzfadg90pBhjoZJV8=; b=pZkmCEkL38DgA/
	Gwmvrg+PdNrWM0c8kJ/aKc85H2hPj2cr+jOXPO7v+twBFWF7kJUSuC47AW2T0qxy8k1pbNSy4gboh
	ushzBaIadKkQc4MJ2C3ahZystEyKdUieboC0NQNLPzYJBPZZWy8/u4YUEbC0MUlPl8nhPryv+XH7f
	0y8dROORyBj4ZGHcjaw2NqoD4PDyhhtZaIIezoJ2oyIod2fxChDs4mreqK5/1DncPRtQ3Lreeq0pM
	71uL5tP12+/E4hbqW0JHOMSjPqvOHRELBgB1/g0YfYe9FyHLP33w70NWchSKZQRxPF3dccWLg5HRB
	W0v25tJoQMnJwdmhST3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQouX-00EYc2-8F; Sun, 06 Mar 2022 11:18:49 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQorW-00EXCw-MH
 for linux-rockchip@lists.infradead.org; Sun, 06 Mar 2022 11:15:44 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5805E3F613
 for <linux-rockchip@lists.infradead.org>; Sun,  6 Mar 2022 11:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646565341;
 bh=wyammkcETMVkrXCUYgMgwXTQvzjKUephDdK6rDf8ZyE=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=NH7RIc2F0YE2rJdbLxEsMFy2stcxWIapAC54U4o7HavrNrXU18FNa+okw3n+1CGP+
 6rSmc861ZWyMTdIqUs2Mvg3dYRhM0id13o3WMyDmi5I15AY+JZsMHWihy1OW8AXByt
 TVNpGXw5vV7SAOXJzL6NDrpffYgGhCfF50quVAjE7DJQ5eh0ApCFDHaWhtHn4GQ9zk
 XJGyRSQZsL5A58EaUzz97S33gctmKnvDYhW+6GFwIWoavFHqJRwLcB0FiRJf3qrC99
 vVdhh+XOYrK7XKB5NaBR67L8ytd1cl7MP7DF37jk5LN71t2P+TYwGEcn50+kIRIeCi
 mnw2euxyIwLMQ==
Received: by mail-ed1-f71.google.com with SMTP id
 i5-20020a056402054500b00415ce7443f4so5819168edx.12
 for <linux-rockchip@lists.infradead.org>; Sun, 06 Mar 2022 03:15:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=wyammkcETMVkrXCUYgMgwXTQvzjKUephDdK6rDf8ZyE=;
 b=hIok5jnMW06g2u5VN6myjJw+pUEjnMBzROyeAsdwz8tNwV9B8Z5bs4nLoHALN9BSWd
 D8KV0MkAECRQHiC3wn+zYqJRpFd87td0unzvGjY+9i0rYOXVS2qVayFDrY602gdogeoj
 RAA1QyQMaSGfmvpUdE7hiVThdDnyHkJ/6aJ1YsX6U/ItcytVXsxFl/tNKCkmIITh3/Vg
 CIM+BEUezJfZFzonjEOs9CBQlBw/srELeT6HKTNnDfihsb22SrYpwaj3nbZxSmWVHAM+
 L7wohBTM8/FFolklC118cSe0/5GsnMxC7sn8lw9cogMpkyZhPX26Ru/m0lhoeA78Am7b
 rwaw==
X-Gm-Message-State: AOAM531u1T8MZt1aL4+gNK9C2nlZUW89a91MCrVB0Ixo1pIc1KXTEhHU
 yum/qu2uUgvjKj+kKP7JWo1+fIh8ECpKsAitSNZ/lFNovFaWUZVc164UAzzn/mOFXpQ2e9WI+Ig
 LasIGdhhpDrGHqFPAx8drjUQU7Hm42SV/hHpoP80DvK498VIo9Q==
X-Received: by 2002:a17:906:37c3:b0:6cf:8ece:e8e7 with SMTP id
 o3-20020a17090637c300b006cf8ecee8e7mr5592044ejc.690.1646565340977; 
 Sun, 06 Mar 2022 03:15:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyhbRMr/4T2U3uNL1LtOd9tdA3aZRpYQJJ6IbPVRuKfFwgRhJ732IjpYPYwbnyUEsPTo33edA==
X-Received: by 2002:a17:906:37c3:b0:6cf:8ece:e8e7 with SMTP id
 o3-20020a17090637c300b006cf8ecee8e7mr5592032ejc.690.1646565340776; 
 Sun, 06 Mar 2022 03:15:40 -0800 (PST)
Received: from [192.168.0.140] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 5-20020a508e45000000b003fe03798eafsm4839466edx.32.2022.03.06.03.15.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Mar 2022 03:15:40 -0800 (PST)
Message-ID: <18f4dc19-b8a4-015e-48c8-923326cc7932@canonical.com>
Date: Sun, 6 Mar 2022 12:15:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Aw: Re: Re: [PATCH v5 1/5] dt-bindings: ata: ahci-platform:
 Convert DT bindings to yaml
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-2-linux@fw-web.de>
 <a2839b00-d195-131f-b2a7-d2f030a5bd95@canonical.com>
 <trinity-9ef9e0d3-e70c-45d9-bdd8-e43d1c89a8c9-1646560070497@3c-app-gmx-bs46>
 <b8553651-3cd0-845c-efbf-d2341d5506b3@canonical.com>
 <trinity-d42352e1-d778-40dd-9464-90a145653f74-1646563315484@3c-app-gmx-bs46>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <trinity-d42352e1-d778-40dd-9464-90a145653f74-1646563315484@3c-app-gmx-bs46>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_031542_934017_EA94253C 
X-CRM114-Status: GOOD (  19.31  )
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

T24gMDYvMDMvMjAyMiAxMTo0MSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKPj4gR2VzZW5kZXQ6
IFNvbm50YWcsIDA2LiBNw6RyeiAyMDIyIHVtIDExOjI3IFVocgo+PiBWb246ICJLcnp5c3p0b2Yg
S296bG93c2tpIiA8a3J6eXN6dG9mLmtvemxvd3NraUBjYW5vbmljYWwuY29tPgo+Pj4gICAgIGFk
ZCBjb21wYXRpYmxlcyB1c2VkIHRvZ2V0aGVyIHdpdGggZ2VuZXJpYy1haGNpCj4+PiAgICAgICAt
IG1hcnZlbGwsYmVybGluMi1haGNpCj4+Cj4+IFRoaXMgaXMgZmluZSwganVzdCBtZW50aW9uIGl0
IGluIGNvbW1pdCBtc2cuCj4+Cj4+PiAgICAgICAtIHFjb20sYXBxODA2NC1haGNpCj4+PiAgICAg
ICAtIHFjb20saXBxODA2eC1haGNpCj4+Cj4+IFRoZXNlIHlvdSBuZWVkIHRvIGNvbnN1bHQgd2l0
aCBxY29tLXNhdGEudHh0LiBUaGlzIGNvdWxkIGJlIGEgZm9sbG93aW5nCj4+IGNvbW1pdCB3aGlj
aCB3aWxsIGludGVncmF0ZSBxY29tLXNhdGEudHh0IGFuZCByZW1vdmUgaXQuCj4gCj4gdGhpcyBk
ZXBlbmRzIG9uIFJvYnMgb3BpbmlvbgoKVGhlbiBtYXliZSBwcmVjaXNlIHRoZSBxdWVzdGlvbiBm
b3IgUm9iLi4uCgo+IAo+PiBFaXRoZXIgeW91IGhhdmUKPj4gYmluZGluZyBkb2N1bWVudCBmb3Ig
YWxsIGRldmljZXMgb3IgeW91IGNyZWF0ZSBhIGNvbW1vbiBwYXJ0LCBsaWtlIGZvciBVRlM6Cj4+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmljZXRyZWUvMjAyMjAyMjIxNDU4NTQu
MzU4NjQ2LTEta3J6eXN6dG9mLmtvemxvd3NraUBjYW5vbmljYWwuY29tLwo+PiBodHRwczovL2dp
dGh1Yi5jb20va3J6ay9saW51eC9jb21taXRzL24vZHQtYmluZGluZ3MtdWZzLXYyCj4+Cj4+IFRo
ZSBjaG9pY2UgZGVwZW5kcyBtb3JlIG9yIGxlc3Mgb24gY29tcGxleGl0eSBvZiBiaW5kaW5ncywg
SU9XLCBob3cgYmlnCj4+IGFuZCBjb21wbGljYXRlZCBiaW5kaW5ncyB3b3VsZCBiZSBpZiB5b3Ug
Y29tYmluZSBldmVyeXRoaW5nIHRvIG9uZSBZQU1MLgo+Pgo+PiBJbiB0aGUgY2FzZSBvZiBVRlMs
IHRoZSBkZXZpY2VzIGRpZmZlciAtIGJ5IGNsb2NrcywgcmVzZXRzLCBwaHlzIGFuZAo+PiBzb21l
dGltZXMgc3VwcGxpZXMuIFRoZXJlZm9yZSBpdCBlYXNpZXIgdG8gaGF2ZSBvbmUgY29tbW9uIHNo
YXJlZCBwYXJ0Cj4+IGFuZCBzZXZlcmFsIGRldmljZSBiaW5kaW5ncy4KPj4KPj4gQUhDSSBsb29r
cyBtb3JlIGNvbnNpc3RlbnQgLSBleGNlcHQgdGhhdCBRdWFsY29tbSAtIHNvIG1heWJlIGJldHRl
ciB0bwo+PiBoYXZlIG9uZSBkb2N1bWVudC4KPj4KPj4+ICAgICBpbmNyZWFzZSByZWctY291bnQg
dG8gMiAodXNlZCBpbiBvbWFwNS1sNC5kdHNpKQo+Pj4gICAgIGluY3JlYXNlIGNsb2NrLWNvdW50
IHRvIDUgKHVzZWQgaW4gcWNvbS1hcHE4MDY0LmR0c2kpCj4+Cj4+IFRoaXMgd291bGQgbmVlZCBh
bGxPZitpZi4KPiAKPiBpZiBpIGdldCBvayBmcm9tIHJvYiBpIGFkZCBvbmx5IHRoZSBiZXJsaW4t
Y29tcGF0aWJsZSBhbmQgc2tpcCB0aGUgcWNvbStyZWcvY2xvY2stY2hhbmdlIGluIHRoZSBmaXJz
dCBhcHBsaWVkIHZlcnNpb24uIEFkZGluZyB0aGUgYWxsT2YvaWYgKGFuZCBtYWtpbmcgaXQgcmln
aHQpIHdpbGwgb25seSBkZWxheSB0aGUgc2F0YS1iaW5kaW5nL2R0cy1jaGFuZ2UuCgpJIGRvbid0
IGdldCB3aGF0IGlzIHRoZSBwcm9ibGVtIHdpdGggZGVsYXlpbmcgdGhpcyBwYXRjaCBmb3IgdGhl
IHRpbWUKbmVlZGVkIHRvIG1ha2UgdGhlIGJpbmRpbmdzIGNvcnJlY3Q/IEVzcGVjaWFsbHkgdGhh
dCBhbHRlcm5hdGl2ZSBpcyB0bwphZGQgYmluZGluZ3MgZG9jdW1lbnQgd2hpY2ggc29vbiB3aWxs
IG5lZWQgdG8gYmUgbW9kaWZpZWQsIGUuZy4gc3BsaXQKaW50byBjb21tb24gcGFydC4gSXMgdGhl
cmUgYSBwYXJ0aWN1bGFyIGh1cnJ5IHdpdGggdGhlc2UgYmluZGluZ3MKY29udmVyc2lvbj8KCgpC
ZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
