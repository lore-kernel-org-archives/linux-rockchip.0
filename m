Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 714EEC76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 09:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esg4I8au1EKz/ZVZoajTmmadYbAuTzfubHvdoljthgE=; b=YsYxXF//cFkcOK
	5DY/kx1Ns1y6J8BRjWjxhR5RawdT+Al1L7nC/3xEQTRuMUyLk7WA87YtO5d/0bfbssWORooifPzBj
	D/P7y0Ucdabj70iLQLi7qN6TWAWx1zLdhGbs9CYAQx98118OG7el+ZXMaFbvtSoC5p+Mq6yE+fe6b
	gdP0xjXKg/PzBKRsJoBjlawPsvMCd2L1vJDEf/uOn/YVz4FcLgqxSWnxCtrp91UnkXPo9z7EMBnoQ
	uvkrrvFzl0P6crLdpKBCN4xamtCrG7l7rnky0L1IS4EYRIvmQTO5XydofPK9a063by6HSSkZIO9tq
	wZMrtTIV9w+eu7L8b4jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjS8-00AX5w-2M;
	Mon, 27 Mar 2023 09:47:48 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.145.221.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjS5-00AX4i-21
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 09:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679910462;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UexsxBht+jxcQGbFpZtHQeoklM+LHfVAC+dy1h7cowM=;
	b=aVTHofJ9a5AXxr8bXg6F5ZWa/KnRqBkFXxnYJY7xfEi6eDFwXbXCP95onpLYooV/0ZvCP4
	TwXNpftaRhhNCAg9z1O9sTAl1103RSjBntSsquTvIug09S0TenA4aUswJaJkkyLkUzMyr+
	7yvDBv2JjgNo6UWkS3MSa63N09F7shE=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-2-XeXlLYrlOp6nMj4Yh7XaRg-1; Mon, 27 Mar 2023 05:47:38 -0400
X-MC-Unique: XeXlLYrlOp6nMj4Yh7XaRg-1
Received: by mail-wm1-f69.google.com with SMTP id bg32-20020a05600c3ca000b003ef6ff45106so851522wmb.4
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 02:47:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679910457;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UexsxBht+jxcQGbFpZtHQeoklM+LHfVAC+dy1h7cowM=;
        b=r3FpFwYZ99L0gQ90OmUfO1ImTQkwKcupONooR0Dq+GmAdqCaAHms0/ReUJ+8WEfqB2
         3ohwQcqRP+rfSe4ZxfRDw8ZxEUiJ+R3pFVSm/UU9vcUaLk+NkSyAq/tTsjk4aSXPBsU9
         KT8mCikYbU/exOCaFamYPer3odk1Zymetpl6I4n90iCx6Is832lJ/81bauYjPpMKqJt1
         N9IFqEnGR0kvQBGHyqEmO/QJ4VzTWs3gx357Btg81MdKBvzXHf9DJfBvHb3wDsVNtVyJ
         zY3DUomfCiD+/ludMGaO+KmqlmMZWCD62/FwW/sfsU0XYZi7xcmz8cQaPWgXfcVqajGA
         sOcg==
X-Gm-Message-State: AO0yUKUrABvDNLu4U0q+hPyAPfIK/xUg3Yb976aJ8DuN53JFNT2JtCBx
	SZKjF1WvFrN2sDLtIQcohp4iJpBkS62sZTOMo+n6NoHyvt04yOkb86pJh756cJ1pNMrXZPsSvAX
	g/64X2HkMgI7FJFOPFjur5MYG6xUPBFTu
X-Received: by 2002:a7b:ca4a:0:b0:3ed:d64f:ec30 with SMTP id m10-20020a7bca4a000000b003edd64fec30mr8803748wml.33.1679910457672;
        Mon, 27 Mar 2023 02:47:37 -0700 (PDT)
X-Google-Smtp-Source: AK7set+UMdm5OyaHT8e/wc2182TlZp7+1fqvjLjvg3Dk9zSSwByHNG77k78UMNffu150tQK9N3KGLQ==
X-Received: by 2002:a7b:ca4a:0:b0:3ed:d64f:ec30 with SMTP id m10-20020a7bca4a000000b003edd64fec30mr8803729wml.33.1679910457371;
        Mon, 27 Mar 2023 02:47:37 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g19-20020a05600c311300b003ee74c25f12sm8255428wmo.35.2023.03.27.02.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 02:47:37 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Jarrah <kernel@undef.tools>, Heiko =?utf-8?Q?St=C3=BCbner?=
 <heiko@sntech.de>,
 linux-kernel@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Peter Robinson
 <pbrobinson@gmail.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>, Kamil
 =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, Caleb Connolly
 <kc@postmarketos.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <40e61776-bcdd-25ac-286a-1ba0184dbd7e@undef.tools>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <e4f82c1e-621e-7e94-497d-8c579264f996@undef.tools>
 <8197476.T7Z3S40VBb@diego>
 <40e61776-bcdd-25ac-286a-1ba0184dbd7e@undef.tools>
Date: Mon, 27 Mar 2023 11:47:36 +0200
Message-ID: <878rfittjb.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_024745_734490_8D43903F 
X-CRM114-Status: GOOD (  12.34  )
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

SmFycmFoIDxrZXJuZWxAdW5kZWYudG9vbHM+IHdyaXRlczoKCj4gT24gMy8yNy8yMyAyMDoxMSwg
SGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+IEFtIE1vbnRhZywgMjcuIE3DpHJ6IDIwMjMsIDA5OjU1
OjE1IENFU1Qgc2NocmllYiBKYXJyYWg6Cj4+PiBIaSBKYXZpZXIsCj4+Pgo+Pj4gT24gMy8yNy8y
MyAxODo0MSwgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIHdyb3RlOgo+Pj4+IEZyb206IE9uZHJl
aiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+Pj4+Cj4+Pj4gVGhlIHBob25lJ3MgZGlzcGxheSBpcyB1
c2luZyBhIEhhbm5zdGFyIExDRCBwYW5lbC4gU3VwcG9ydCBpdCBieSBhZGRpbmcgYQo+Pj4+IHBh
bmVsIERUIG5vZGUgYW5kIGFsbCBuZWVkZWQgbm9kZXMgKGJhY2tsaWdodCwgTUlQSSBEU0ksIHJl
Z3VsYXRvcnMsIGV0YykuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxt
ZWdpQHhmZi5jej4KPj4+PiBDby1kZXZlbG9wZWQtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5A
YnJpeGl0Lm5sPgo+Pj4+IENvLWRldmVsb3BlZC1ieTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFu
QGF5dWZhbi5ldT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMg
PGphdmllcm1AcmVkaGF0LmNvbT4KPj4+PiAtLS0KPj4+Pgo+Pj4+IENoYW5nZXMgaW4gdjI6Cj4+
Pj4gLSBEcm9wIHRvdWNoc2NyZWVuIG5vZGUgYmVjYXVzZSB1c2VkIHRoZSB3cm9uZyBjb21wYXRp
YmxlIChPbmRyZWogSmlybWFuKS4KPj4+Cj4+PiBBbnkgcmVhc29uIG5vdCB0byBpbmNsdWRlIHRo
aXMgd2l0aCB0aGUgY29ycmVjdCBjb21wYXRpYmxlIHN0cmluZz8gSXQncwo+Pj4gYmVlbiBhdmFp
bGFibGUgc2luY2UKPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIyMDgxMzA0Mzgy
MS45OTgxLTEta2VybmVsQHVuZGVmLnRvb2xzLy4KPj4+IFN3YXBwaW5nIG91dCBndDkxN3MgZm9y
IGd0MTE1OCBpbiB0aGUgbm9kZSBmcm9tIHlvdXIgcHJldmlvdXMgcGF0Y2gKPj4+IHNob3VsZCBi
ZSBlbm91Z2guCj4+IEp1c3Qgd29uZGVyaW5nIGlmIEknbSBibGluZCwgSmF2aWVyJ3MgcGF0Y2gg
ZG9lc24ndCBjb250YWluIGFueSB0b3VjaHNjcmVlbgo+PiBjb250cm9sbGVyIChoYXZlbid0IGZv
dW5kIG5laXRoZXIgZ3Q5KiBvciBndDExKiBtZW50aW9uZWQgdGhlcmUpLCBzbwo+PiBJJ20gaW5j
bGluZWQgdG8gZ28gd2l0aCB0aGUgInRvdWNoc2NyZWVuIGNhbiBiZSBhZGRlZCBsYXRlciIgdGhp
bmcuCj4KPgo+IEkgd2FzIGp1c3QgY29tbWVudGluZyBvbiB0aGUgIkNoYW5nZXMgaW4gdjIiIHNl
Y3Rpb24uIHYxIGhhZCBhIAo+IHRvdWNoc2NyZWVuIG5vZGUgaW4gaXQgKGFzc3VtaW5nIEkgZm91
bmQgdGhlIHJpZ2h0IHYxKS4KPgo+Cj4gQWxsIGdvb2QsIEkgY2FuIGZvbGxvdyB1cCB3aXRoIGEg
cGF0Y2ggZm9yIHRoZSB0b3VjaHNjcmVlbi4KPgoKVGhhdCB3b3VsZCBiZSBncmVhdCwgdGhhbmtz
IEphcnJhaCEKCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29y
ZSBQbGF0Zm9ybXMKUmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
