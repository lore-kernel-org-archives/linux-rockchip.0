Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97736C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Nov 2022 10:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4w9OYEDbfS7kmDvr0CPRDZvm6lpAflDXDCme0yCtzLQ=; b=Fne+f4rtKlbD5G
	DLQQMk7nLgzYjAuceZcqP7s4BRPPs/MZHaLHz0HANzVqtVSvVde9iOc2NU+2F71ghG9XWpXJZrc+B
	lkstJc6vxoGCeuXysjLgJX9N0N1ffZSX3KT6EqsqdWEEykbwtJRAGeBUhLNOxYtHR9P01NiJws++v
	yIFbuc1mQPvKZ32RB54xPXfy+NGHNuskhn/Fde5cJ3DhxZWCJDwR6mHZLkVdMe29NUzsuIgizb1j+
	84H/0HeeK/ktCRMMfUmiRQhz6GZGy3AV3ItHG7aal7zXBOEf/pTrLHxeVyMvwp1DX3cyg6H+uar2J
	OQMEG2UdSXWy5x70yfIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owhf6-003b2o-L1; Sun, 20 Nov 2022 10:34:56 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owhew-003app-3d
	for linux-rockchip@lists.infradead.org; Sun, 20 Nov 2022 10:34:47 +0000
Received: by mail-lf1-x12f.google.com with SMTP id p8so14882607lfu.11
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Nov 2022 02:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8D4BClPP9qrwATF1t4nCunXzUqHb8yDxaV0KlH+7vLs=;
        b=ngHAa6H5aYEfS3vMjANdUuM9RsJdWy9RmqP1HxGhiDlqZzHX3bMuK5JHG7yjhKHMU9
         41+DdKziUR4qZ0Jg2m6OxkucZzaC/z2rTF2766hh1O4sxASm9sHaaZup8FvZVV9IaHdc
         ObKMgReB3Ym325bcng3X/NNJXvSs4oJz9QymH9VVmZf0CeGfE+CqVop6efX552xJuiNN
         lV/XAtAsIcsyDwObFzlyrXidYxHA0If1H2ZiPZurHoTek8gXD+7wR2kvRQgb29vRj+jd
         WCcNeu9OJ7ehepkL3CUw+x+t4Ccka9BkJdI8Q/6HpFA3SohZd6OarmGaUZEnQU8lB4Ez
         x/gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8D4BClPP9qrwATF1t4nCunXzUqHb8yDxaV0KlH+7vLs=;
        b=g0WlyKhFfUqE42tUWDJxd02vPRnBJjliFMbP3RertIkzSfXSWI35IoHWUM1DtEvWrq
         OVIde35SKjqGXb11Q83/hS/+XDw7tF91ZZ8DsbcBHj+hDL66ssLcGhl+kLr+jqbJ8byf
         aVchkrBy81c81ToE9rtbCC25fHAvrpaf9JaCm0JDeflvBJcJEMOQpsb65FnNyApyne6e
         RHg7vHl+aH7me0Q4OZYWdKV7YVsVMIbSzMrbLNlcxcMIErUNbQOjevRtdWdWqEEreoQZ
         Tkh/1qtdUWfSfoBB/iOIBZItTu6QDoJCDWNQZ5Qs9ZuVwgANPqhkex5UqxM5BJrCNP8p
         M8jw==
X-Gm-Message-State: ANoB5pnIJ3J7RYUKfP+urSAxWy00vb9PfVNBV55pCqNFAdzUCDY61LmL
	KIbpXigcJZf6xIG+V9ipIJqU4w==
X-Google-Smtp-Source: AA0mqf7o759OuxPpc1jEao2vB98NHQHMxY3bsLWqPy3t+QLguIdEiBC/oMg307GKo5mtBXonCmHJYA==
X-Received: by 2002:a19:ca0b:0:b0:4b1:7972:627a with SMTP id a11-20020a19ca0b000000b004b17972627amr4266924lfg.101.1668940482960;
        Sun, 20 Nov 2022 02:34:42 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i5-20020a0565123e0500b004978e51b691sm1491759lfv.266.2022.11.20.02.34.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Nov 2022 02:34:42 -0800 (PST)
Message-ID: <7ab50a13-9711-2d77-ff47-ad4c2d9b4faf@linaro.org>
Date: Sun, 20 Nov 2022 11:34:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP
 example
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
 Dafna Hirschfeld <dafna@fastmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
 <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
 <Y3kLZ6nQ1VzN+2eu@pendragon.ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3kLZ6nQ1VzN+2eu@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221120_023446_157417_CB6D75A4 
X-CRM114-Status: GOOD (  18.30  )
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

T24gMTkvMTEvMjAyMiAxNzo1OSwgTGF1cmVudCBQaW5jaGFydCB3cm90ZToKPiBIaSBLcnp5c3p0
b2YsCj4gCj4gT24gRnJpLCBOb3YgMTgsIDIwMjIgYXQgMDI6MDY6MTRQTSArMDEwMCwgS3J6eXN6
dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMTgvMTEvMjAyMiAxMDozOSwgUGF1bCBFbGRlciB3
cm90ZToKPj4+IEZyb206IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNv
bmJvYXJkLmNvbT4KPj4+Cj4+PiBBZGQgYW4gZXhhbXBsZSB0byB0aGUgcm9ja2NoaXAtaXNwMSBE
VCBiaW5kaW5nIHRoYXQgc2hvd2Nhc2VzIHVzYWdlIG9mCj4+PiB0aGUgcGFyYWxsZWwgaW5wdXQg
b2YgdGhlIElTUCwgY29ubmVjdGVkIHRvIHRoZSBDU0ktMiByZWNlaXZlciBpbnRlcm5hbAo+Pj4g
dG8gdGhlIGkuTVg4TVAuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTGF1cmVudCBQaW5jaGFydCA8
bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+Pgo+PiBNaXNzaW5nIFNvQi4KPj4K
Pj4+IC0tLQo+Pj4gIC4uLi9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1pc3AxLnlhbWwgICAgICAg
ICB8IDcyICsrKysrKysrKysrKysrKysrKysKPj4+ICAxIGZpbGUgY2hhbmdlZCwgNzIgaW5zZXJ0
aW9ucygrKQo+Pj4KPj4KPj4gSSBkb24ndCBrbm93IHdoYXQgZG8geW91IGRlbW9uc3RyYXRlIHRo
ZXJlLi4uIHVzYWdlIG9mIGVuZHBvaW50cz8gVGhhdCdzCj4+IHRoZSBvbmx5IGRpZmZlcmVuY2Uu
IFN1Y2ggdXNhZ2UgaXMgdGhlIHNhbWUgZXZlcnl3aGVyZSwgbm90aGluZyBzcGVjaWZpYwo+PiB0
byB0aGlzIGV4YW1wbGUuIFlvdSBhbHJlYWR5IGhhdmUgdHdvIGV4YW1wbGVzLCBzbyBJIGRvbid0
IHRoaW5rIHRoaXMKPj4gYnJpbmdzIGFueXRoaW5nIG1vcmUuCj4gCj4gVGhlIGkuTVg4TVAgaXMg
dGhlIG9ubHkgU29DIGludGVncmF0aW5nIHRoaXMgSVNQIChhbmQgc3VwcG9ydGVkIGluCj4gbWFp
bmxpbmXDoCB0aGF0IGhhcyBhbiBleHRlcm5hbCBDU0ktMiByZWNlaXZlciwgYXMgb3Bwb3NlZCB0
byB1c2luZyB0aGUKPiBDU0ktMiByZWNlaXZlciBmcm9tIHRoZSBJU1AuIFRoaXMgcGF0Y2ggdGhp
cyBzaG93Y2FzZXMgdGhlIERUCj4gaW50ZWdyYXRpb24gZm9yIHRoYXQgdXNlIGNhc2UuIElmIHlv
dSB0aGluayBpdCdzIG5vdCB3b3J0aCBpdCwgSSdtIGZpbmUKPiBkcm9wcGluZyBpdC4KClRoZSBw
dXJwb3NlIG9mIGV4YW1wbGVzIGFyZSBub3QgdG8gZGVtb25zdHJhdGUgdGhlIFNvQywgYnV0IG9u
bHkgdGhpcwpnaXZlbiBiaW5kaW5nLgo+IAoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
