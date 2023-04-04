Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56350C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 14:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Um8Gx9261Ku0GgJUa72gL3oebth6dCWL8yHu33YH26o=; b=SvP8FYndL0Ac8h
	13ICYGFd1R7nk+wezAQgqEMdfVwgF0+PIkgVzU1kKeoqIPJCZqT7kJGgAg/dkecmTCXoziS8kfNqY
	ynQ4cfJW98FgIoahYg7sUygaa677sGIxx6XaWVqVwhRksLgZz4GUknvl8PjIySQwEyyvz4qDZhj+u
	Jl4R/oSCCwsns8Gqhxmc8hlU+D86vlJcv00zGnl27V8GgJJHXd1fNJ1NmCqI3UHcRBXg5d/A6iIDV
	2pmGPd3UQnahbh5GRmItHlt2Jpu2vXgGKuoJq30Yh8QQLQNyGHrm61hH29nt3PT8XJwVNi0QXmdcY
	ouRkOjqkGQIgiAoFeNSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhHY-001j20-2L;
	Tue, 04 Apr 2023 14:05:08 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhHR-001j02-3B
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 14:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680617101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4tDRlJffkZ7Otk80CQaA/ocrjy1ghKSYtOeGdmwcYMo=;
	b=RRsRP5qUuqYDYqSjJu8kOcE5LX4oK2WE2I8GmWeXH79lHcaiz6ZVRRp2rCOgBDc3pTaUs6
	XJvay3LLi/2Am6pRlf5PnKcBc8uk4HRxA4MqwJIgqeJi5ojSkE3eOHRVv8xPBvhbjAaKVD
	NE+DH0CNAedxYdXP+gDjpqzgOjIFKEY=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-650-nIswymXMO6KHXyJib-59BQ-1; Tue, 04 Apr 2023 10:04:59 -0400
X-MC-Unique: nIswymXMO6KHXyJib-59BQ-1
Received: by mail-wm1-f69.google.com with SMTP id n3-20020a05600c3b8300b003f048e0e09eso395524wms.1
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 07:04:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680617094;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZErceNZ2DBRx0FKsqFTrzqQZnarVosWtCgSLSqBSXc=;
        b=OKZXp/W1edM2rrIWGOwBDlfwKApER7BWyxAL86MMtVGIzSSaQn2kim4I4tfi/ZzB3s
         39/RGA1EZ8JEuiB2wPHl7bnG+VtteuTawccv07mOOZUbgFULij7FmyChT+MS2KHHL9R6
         ndeGs/GUw/+mQAgaV0gd+R3/LztYPhI6OAXbKU6uI1Dsf4dmcltyoJ+YStKVWyR0MM2w
         ZJHmVou6ebcnvZ0OATERDxsKb1y33qKqBBr0Oe3sl2NBcJUpedgsVOArleL2leEHKUY8
         bsx9tFFqOGBZtluAGD4HwOQapf9OerKOi/0dfUUEX8OGCCBkankdcxP53T2J8JomUWZg
         jDbQ==
X-Gm-Message-State: AAQBX9f6rNVfqLrjbWn3Quxj/v5RvKOqNEpnAoeZ2JEjzczn/17aFc5R
	vQupQlPz6T7imt+09lxPjugU3AcsrjCnScmgjF+9PXxqbLYBsrxBcxlBy8Buex8Y0uzVxQ4R/YJ
	7MOiszwnCtMup93XDsIxymCYSK+B5FOZT
X-Received: by 2002:adf:fc09:0:b0:2d7:1ec1:9e47 with SMTP id i9-20020adffc09000000b002d71ec19e47mr1715725wrr.19.1680617094536;
        Tue, 04 Apr 2023 07:04:54 -0700 (PDT)
X-Google-Smtp-Source: AKy350bmb/j86HhrdUZOSB15NgWupYfuoc4o4OBboeqxVhv/UUP+fcR0c9Jfb1BYe3+wZ+kJnkgM0w==
X-Received: by 2002:adf:fc09:0:b0:2d7:1ec1:9e47 with SMTP id i9-20020adffc09000000b002d71ec19e47mr1715695wrr.19.1680617094228;
        Tue, 04 Apr 2023 07:04:54 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id r10-20020a056000014a00b002d2f0e23acbsm12366518wrx.12.2023.04.04.07.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 07:04:53 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, Heiko =?utf-8?Q?St=C3=BC?=
 =?utf-8?Q?bner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam
 <martijn@brixit.nl>, Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry
 <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <20230404123646.5iiznbhnyoama5pp@core>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego> <20230404123646.5iiznbhnyoama5pp@core>
Date: Tue, 04 Apr 2023 16:04:53 +0200
Message-ID: <87r0szd9q2.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_070502_124303_9AC6D25F 
X-CRM114-Status: GOOD (  24.81  )
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

T25kxZllaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PiB3cml0ZXM6Cgo+IE9uIFR1ZSwgQXByIDA0LCAy
MDIzIGF0IDA5OjUxOjExQU0gKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBIaSwKPj4g
Cj4+IEFtIE1vbnRhZywgMy4gQXByaWwgMjAyMywgMTk6NTk6MzcgQ0VTVCBzY2hyaWViIEphdmll
ciBNYXJ0aW5leiBDYW5pbGxhczoKPj4gPiBUaGlzIGJhdWQgcmF0ZSBpcyBzZXQgZm9yIHRoZSBk
ZXZpY2UgYnkgbWFpbmxpbmUgdS1ib290IGFuZCBpcyBhbHNvIHdoYXQKPj4gPiBpcyBzZXQgaW4g
dGhlIFBpbmVib29rIFBybyBEZXZpY2UgVHJlZSwgd2hpY2ggaXMgYSBkZXZpY2Ugc2ltaWxhciB0
byB0aGUKPj4gPiBQaW5lUGhvbmUgUHJvIGJ1dCB3aXRoIGEgZGlmZmVyZW50IGZvcm0gZmFjdG9y
Lgo+PiA+IAo+PiA+IE90aGVyd2lzZSwgdGhlIGJhdWQgcmF0ZSBvZiB0aGUgZmlybXdhcmUgYW5k
IExpbnV4IGRvbid0IG1hdGNoIGJ5IGRlZmF1bHQKPj4gPiBhbmQgYSAnY29uc29sZT10dHlTMiwx
NTAwMDAwbjgnIGtlcm5lbCBjb21tYW5kIGxpbmUgcGFyYW1ldGVyIGlzIHJlcXVpcmVkCj4+ID4g
dG8gaGF2ZSBwcm9wZXIgb3V0cHV0IGZvciBib3RoLgo+PiAKPj4gVGhlIGludGVyZXN0aW5nIHF1
ZXN0aW9uIGlzIGFsd2F5cyBpZiB0aGlzIHdpbGwgYnJlYWsgc29tZW9uZSBlbHNlJ3Mgc2V0dXAu
Cj4+IEkndmUgbmV2ZXIgcmVhbGx5IHVuZGVyc3Rvb2QgdGhlIHN0cmFuZ2Ugc2V0dGluZyBvZiAx
LjVNQnBzLCBidXQgb24gdGhlCj4+IG90aGVyIGhhbmQgaXQgX2lzXyBhIHJlYWxpdHkgb24gbW9z
dCBib2FyZHMuCj4KPiBOb3JtYWwgdXNlcnMgb2YgdGhlIHBob25lIHByb2JhYmx5IHJ1biB3aXRo
IFVBUlQgY29uc29sZSBkaXNhYmxlZCwgYmVjYXVzZQo+IFVBUlQgaXMgbXV4ZWQgd2l0aCBhdWRp
byBqYWNrIG91dHB1dCBhbmQgdG8gZW5hYmxlIGl0IHRoZXkgaGF2ZSB0byBhZGQKPiBjb25zb2xl
PXR0eVMyIHRvIHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lIGFuZCBmbGlwIGEgcGh5c2ljYWwgc3dp
dGNoIGluc2lkZQo+IHRoZSBwaG9uZS4KPgo+IEZvcnR1bmF0ZWx5LCBub3Qgc2VwY2lmeWluZyBz
dGRvdXQtcGF0aCBiYXVkIHJhdGUgaW4gdGhlIG9wdGlvbnMgcGFydAo+IG9mIHRoZSBzdHJpbmcs
IHdpbGwgbWFrZSB0aGUgc2VyaWFsIGRyaXZlciBwcm9iZSBmb3IgdGhlIGJhdWQgcmF0ZSBmcm9t
Cj4gdGhlIHByZXZpb3VzIGJvb3Qgc3RhZ2UgYW5kIG1ha2UgdGhlIHVzZXIgaGFwcHkgYnkga2Vl
cGluZyB3aGF0ZXZlciB3YXMKPiBhbHJlYWR5IHNldCBpbiB0aGUgYm9vdGxvYWRlci4KPgoKQXMg
bWVudGlvbmVkIGluIHRoZSBmaXJzdCBlbWFpbCBvZiB0aGlzIHRocmVhZCwgSSB0cmllZCB0aGF0
IGJ1dCBpdCBkaWRuJ3QKd29yayBmb3IgbWUuIEVpdGhlciB1c2luZyBzdGRvdXQtcGF0aCA9ICJz
ZXJpYWwyIjsgb3Igc3Rkb3V0LXBhdGggPSAmdWFydDI7CmdpdmVzIG1lIG5vIHNlcmlhbCBvdXRw
dXQgd2l0aCBjb25zb2xlPXR0eVMyLCBJIG5lZWRlZCB0byBzcGVjaWZ5IHRoZSBiYXVkCnJhdGUg
ZXhwbGljaXRseSAoaS5lOiBjb25zb2xlPXR0eVMyLDE1MDAwMDBuOCkuCgo+ICAgaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL3R0eS9zZXJpYWwv
ODI1MC84MjUwX3BvcnQuYyNMMzQ5Ngo+CgpJcyB0aGF0IGhlbHBlciByZWFsbHkgdXNlZCBieSB0
aGUgc2VyaWFsIGRyaXZlciBpbiB0aGUgUGluZVBob25lIFBybz8KKGRyaXZlcnMvdHR5L3Nlcmlh
bC84MjUwLzgyNTBfZHcuYyksIEkgd2FzIG1lYW5pbmcgdG8gZGlnIHdoeSBqdXN0IHR0eVMyCndh
cyBub3Qgd29ya2luZyBidXQgZGVjaWRlZCB0aGF0IGNvdWxkIGJlIGEgZm9sbG93LXVwIHBhdGNo
LgoKU2luY2UgY2hhZ2luZyB0byAxLjUgTUJwcyBzZWVtZWQgdG8gaGF2ZSBtZXJpdHMgb24gaXRz
IG93biwgZGVjaWRlZCB0bwpwb3N0IHRoaXMgcGF0Y2ggYW55d2F5cyBpbiB0aGUgbWVhbnRpbWUu
Cgo+IFNvIHdlIGNhbiBtYWtlIHRoZSBrZXJuZWwganVzdCBrZWVwIHRoZSBiYXVkcmF0ZSBzZXR1
cCBmcm9tIHRoZSBwcmV2aW91cwo+IGJvb3Qgc3RhZ2UgYnk6Cj4KPiAJc3Rkb3V0LXBhdGggPSAi
c2VyaWFsMiI7Cj4KCkRpZCBpdCB3b3JrIGZvciB5b3U/IE1heWJlIEknbSBkb2luZyBzb21ldGhp
bmcgc2lsbHkgYnV0IGFzIG1lbnRpb25lZCBpdApkaWRuJ3Qgd29yayBmb3IgbWUgd2l0aCB1cHN0
cmVhbSB1LWJvb3QuCgo+IHJlZ2FyZHMsCj4gCW8uCj4KCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZp
ZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhhdAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
