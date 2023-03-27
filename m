Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06276C76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 08:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnjloBMUHT7nRcdoAj8+KQj9oIKYTK0kjZCU01wWtSg=; b=anwZhflJ98nUmr
	wRXH5R+E48aYnSVCAqeJ34VkwwnAoR54D+/5OwQS8ViXJYKUMXGoO2j7J+oK1cm9vF+hL4YLTM6Td
	ED02so/qg8kg5aZegt9j5uIv7fPeQm9dSqyJiswl8dAoiSF0Z1VJvM5doQzjL4HNi5/SJAYRvhgYu
	NmyFAnVsUbu6X8SXxtvlr2M6NDLjdJEcRnuHCPjQ80sISS2UOmB1NL8bnrqVGVe6GsRSMhuTWc6gA
	aiPv8pTC1cRXYXjpfSfw6UdqZrY88C7J8mRJ6ScE5TC+/LrVxP6YMiHKxLAVfP8vu9m2vIXcyjVyp
	kOwVrVhpVogrrkwQZx/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgi1Z-00ACAk-0K;
	Mon, 27 Mar 2023 08:16:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgi1W-00AC9l-1X
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 08:16:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679904972;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5L/MlcCdU77VqwrBiYDytoM7SMIzclEsbA6ywseR62U=;
	b=hsPpO0wd+eA5kV4gXEho/sYRXkj5kBwTBKVH79dLzdcx64JqhFXnCW98jSVVgjO0MsMdDt
	Qw/hnPH64ThzBBh/MJdL2K5Vb3WyYVwQl4GQcftZ/hqKRKbBj4LIIE2053fmkk+B+onEfM
	yPyoR7WlgEgsWgEcJvzBmsPMCz4C9hk=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-371-ghFFhP4ZOuaL9KAlNxQAeg-1; Mon, 27 Mar 2023 04:16:11 -0400
X-MC-Unique: ghFFhP4ZOuaL9KAlNxQAeg-1
Received: by mail-wm1-f70.google.com with SMTP id bg13-20020a05600c3c8d00b003ed40f09355so4300356wmb.5
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 01:16:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904970;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqM4HxKTQa8CAlzTf6R5B7JwdVrZ3pTGuhEoPvMHOiA=;
        b=TDAtnuTfCW2LjzA4ETYnHNwxiuXpn8ZfZEqBQRrmLFWI2uOSlJDwbqVbiL5JbAgClM
         ZjRFg/SpeMb+NYdkV6JGI3GQtZCgHqe2rReUBkzoQ/bRlaMOk3zkhcZBaTJIh7wpnZFA
         v0wTpBI2fuaNdofrlE2UZt/xIJtVlkN7LDp/EFG25d1x+BDu45JPs6S576Qalyy+42P7
         ve9+4PgP+noW+0uHFrvBXtvUEY0ucqfL3A1AUC44Grb5unNq+c0I6SiRvqlVE7rNXIJL
         lS/GHZwBc7H0FkmrwVcrjBVyQKWEZZG9b8Kh6OZcN0//xnciIp9tYrwBGmZ4KfzZ9OxM
         Y77g==
X-Gm-Message-State: AO0yUKV0N1pzwxWChjVCD0NOCbhQ1Ix7Q9aVGbgmohjrMgZNHR2DynFI
	k5CEsFWMacA7gQ4n2Y8wBCsp2OXnMm7/GTsbMRidxiCvQzhSXjIRX5VeWBg3H3rsOUkzyKBX6uS
	D6mlNEgXb6X0TEiVgxGPYb21z9lHw0nQP
X-Received: by 2002:a1c:7318:0:b0:3ed:3cec:d2ec with SMTP id d24-20020a1c7318000000b003ed3cecd2ecmr9224584wmb.15.1679904969945;
        Mon, 27 Mar 2023 01:16:09 -0700 (PDT)
X-Google-Smtp-Source: AK7set8ZUoTXxMxtwd0sU6jQR8jMhRDwPLktCNTgCwqGs+AGnExW7nkz8pp+TofqXoPOE6jQzeNX9w==
X-Received: by 2002:a1c:7318:0:b0:3ed:3cec:d2ec with SMTP id d24-20020a1c7318000000b003ed3cecd2ecmr9224554wmb.15.1679904969577;
        Mon, 27 Mar 2023 01:16:09 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id t14-20020a05600c198e00b003ef66c89af0sm7017891wmq.0.2023.03.27.01.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 01:16:09 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Jarrah <kernel@undef.tools>, linux-kernel@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Peter Robinson
 <pbrobinson@gmail.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>, Kamil
 =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, Caleb Connolly
 <kc@postmarketos.org>, Heiko
 Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Tom
 Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <e4f82c1e-621e-7e94-497d-8c579264f996@undef.tools>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <e4f82c1e-621e-7e94-497d-8c579264f996@undef.tools>
Date: Mon, 27 Mar 2023 10:16:08 +0200
Message-ID: <87edpatxrr.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_011614_608059_5242362A 
X-CRM114-Status: GOOD (  13.33  )
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

SmFycmFoIDxrZXJuZWxAdW5kZWYudG9vbHM+IHdyaXRlczoKCj4gSGkgSmF2aWVyLAo+Cj4gT24g
My8yNy8yMyAxODo0MSwgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIHdyb3RlOgo+PiBGcm9tOiBP
bmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPj4KPj4gVGhlIHBob25lJ3MgZGlzcGxheSBpcyB1
c2luZyBhIEhhbm5zdGFyIExDRCBwYW5lbC4gU3VwcG9ydCBpdCBieSBhZGRpbmcgYQo+PiBwYW5l
bCBEVCBub2RlIGFuZCBhbGwgbmVlZGVkIG5vZGVzIChiYWNrbGlnaHQsIE1JUEkgRFNJLCByZWd1
bGF0b3JzLCBldGMpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhm
Zi5jej4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5u
bD4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVk
aGF0LmNvbT4KPj4gLS0tCj4+Cj4+IENoYW5nZXMgaW4gdjI6Cj4+IC0gRHJvcCB0b3VjaHNjcmVl
biBub2RlIGJlY2F1c2UgdXNlZCB0aGUgd3JvbmcgY29tcGF0aWJsZSAoT25kcmVqIEppcm1hbiku
Cj4KPgo+IEFueSByZWFzb24gbm90IHRvIGluY2x1ZGUgdGhpcyB3aXRoIHRoZSBjb3JyZWN0IGNv
bXBhdGlibGUgc3RyaW5nPyBJdCdzIAo+IGJlZW4gYXZhaWxhYmxlIHNpbmNlIAo+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC8yMDIyMDgxMzA0MzgyMS45OTgxLTEta2VybmVsQHVuZGVmLnRv
b2xzLy4gCj4gU3dhcHBpbmcgb3V0IGd0OTE3cyBmb3IgZ3QxMTU4IGluIHRoZSBub2RlIGZyb20g
eW91ciBwcmV2aW91cyBwYXRjaCAKPiBzaG91bGQgYmUgZW5vdWdoLgo+CgpZZXMsIGJ1dCBJIGRp
ZG4ndCBrbm93IHRoYXQgdGhlIGRyaXZlciBhbHJlYWR5IGhhZCB0aGUgY29tcGF0aWJsZSBzdHJp
bmcKc28gSSBqdXN0IGRyb3BwZWQgaXQgZm9yIG5vdyBhbmQgd2FzIG1lYW5pbmcgdG8gdGFrZSBh
IGxvb2sgdG8gdGhhdCBsYXRlci4KCkFkZGluZyB0aGUgdG91Y2hzY3JlZW4gbm9kZSBjYW4gYmUg
ZG9uZSBhcyBhIGZvbGxvdy11cCB0aG91Z2ggaW4gYW5vdGhlcgpwYXRjaC4KCi0tIApCZXN0IHJl
Z2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhhdAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
