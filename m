Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE8B2C41513
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 11:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pjf8iFGLpt851nLvpneoLxTWjfoOSP6cW7wYqEUV6w=; b=f/eQ+v72cJYszn
	8ZQ8iAaJaYfRO1GdZJw1mMZn7ZpFGuMQWsTDOPpK+AoEeW2R9Tc9nz/MUdsrYlBKQ0x6k/DT3xDaV
	7sJrN5EXJEMb0OZoAHqoEm3UoakxmjYMQqZIFgfoUrIktUX5ZUgFe2l8kQzk54HQVosijTlGVaTUs
	R6TZqissytIWSG3iF+88C+8VMedO2XWEBmzppbtpS7QJ2FGlDwCDSMGMN0gHFSnMxHKcaVfZPY0kR
	6Nm3Z+kezkOq0BMfXnyRkVpdxZhDr6EYwBKfy4LEfnfmSbH4eXsXRnacMeUQ0rwgyYFGjpHxxXD3p
	Q9xO8LJp6YsSErYJyFnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA6nu-000000064Dc-2MEh;
	Thu, 23 May 2024 11:40:14 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA6nm-0000000649d-0SzT
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 11:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1716464404;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=h1zk6+MI0C8qkZdbgMNFIizBbAyZu4SmcNmoYwYKURA=;
	b=I38O3ZCiJtJafiDKRtrAb99pwgBp6J+4m5x+YnS3yd3uwhUeE6p/klRwTIBo0rBobWwyWf
	6aloAL3Hx8tdFVSCdxs8h3jtbfi+rgns7MgOTdRH3cFHXwuKJTo6liJEptSQx7AhsGqWhI
	PthVzSOSKNIa4vcKnjGVo+XbT7QizJ0=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-436-99UWtYCSOeeQRJznf8shhw-1; Thu, 23 May 2024 07:40:02 -0400
X-MC-Unique: 99UWtYCSOeeQRJznf8shhw-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4200e5189a1so847385e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 04:40:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716464401; x=1717069201;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h1zk6+MI0C8qkZdbgMNFIizBbAyZu4SmcNmoYwYKURA=;
        b=GG3OQkyvVbq928yQ+hzRe6dY2wdlc6v9uboG5hnnrC+EIjKcdyViyfp4td73N2vQRi
         8e6L11zFf8MBB+0h57StqZhrMyLlXL+Wcfcp0Z2xq7EfxpcU6fFgM+kyzJuYku4rddwp
         RvdLT5Z8r8uDEatYwzcRHedqNgWYMuyHWYxqt+n4B0Cvc2k7XLJTuaCNwuL1bxuOwajP
         Z4IcVcX2UB3FHQw5Hetu/Ph/sAWfIgTKP5U7ffLmOYinXKaiUwKqoMsukQPTZgBDzoTD
         nAdHPmoutqUWWeBUwv4SenNZZT9t/dA0VLa0jl/w/bxOoc81lBUuMMb/xnR546b012LQ
         iPjw==
X-Forwarded-Encrypted: i=1; AJvYcCXy4HZ1qZeMwJOx9vQNNUyCnkFAJKj8qOs88hesD5fXZf5AuVDp9bRnQkRoN3XGvlyrEQ7RVsZsqUkwqF057GRhACDQ5jhW/iPknvY6la+UHKRB
X-Gm-Message-State: AOJu0YwkeFmzesO7TZ4hk6a0oDAvpVnR5gR1XeoFtlalKzzO68uvIAmX
	t63pzhDlC2btMWjPtz1Zjft2ARMi0PLYbw5E/YqdrUMD0rvUxF0VfVhzeGMRg/wMrKelD3Vd+MK
	JzxNzg3+q9y5mrlUbQDK8qn806uGCMEYaLnWD76ce0EP0YIGz+OH3YZ89/NAeCxdQVeM3lA==
X-Received: by 2002:a05:600c:1f93:b0:418:ef65:4b11 with SMTP id 5b1f17b1804b1-420fd364485mr37648375e9.2.1716464401259;
        Thu, 23 May 2024 04:40:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGeWr/2kAUv48OpDEB3HGmXWRLWpKjlA7BEP5RkJ8VQ80zrQnMEI+3Khb+2AhPBk2eUV40lQ==
X-Received: by 2002:a05:600c:1f93:b0:418:ef65:4b11 with SMTP id 5b1f17b1804b1-420fd364485mr37648165e9.2.1716464400842;
        Thu, 23 May 2024 04:40:00 -0700 (PDT)
Received: from gerbillo.redhat.com ([2a0d:3341:b094:ab10:29ae:cdc:4db4:a22a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100fa4079sm22976825e9.32.2024.05.23.04.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 04:40:00 -0700 (PDT)
Message-ID: <da5658565bc28f1d9d7cc49bf31dce7e77b7982d.camel@redhat.com>
Subject: Re: [PATCH 01/13] dt-bindings: net: rockchip-dwmac: Fix
 rockchip,rk3308-gmac compatible
From: Paolo Abeni <pabeni@redhat.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Alexandre
 Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>,  Jose Abreu <joabreu@synopsys.com>, Tobias
 Schramm <t.schramm@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org
Date: Thu, 23 May 2024 13:39:58 +0200
In-Reply-To: <2389630.NG923GbCHz@diego>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
	 <20240521211029.1236094-2-jonas@kwiboo.se> <2389630.NG923GbCHz@diego>
Autocrypt: addr=pabeni@redhat.com; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_044006_276237_19B61D9E 
X-CRM114-Status: GOOD (  16.23  )
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

T24gVHVlLCAyMDI0LTA1LTIxIGF0IDIzOjM0ICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBEaWVuc3RhZywgMjEuIE1haSAyMDI0LCAyMzoxMDowNCBDRVNUIHNjaHJpZWIgSm9uYXMg
S2FybG1hbjoKPiA+IFNjaGVtYSB2YWxpZGF0aW9uIHVzaW5nIHJvY2tjaGlwLHJrMzMwOC1nbWFj
IGNvbXBhdGlibGUgZmFpbHMgd2l0aDoKPiA+IAo+ID4gICBldGhlcm5ldEBmZjRlMDAwMDogY29t
cGF0aWJsZTogWydyb2NrY2hpcCxyazMzMDgtZ21hYyddIGRvZXMgbm90IGNvbnRhaW4gaXRlbXMg
bWF0Y2hpbmcgdGhlIGdpdmVuIHNjaGVtYQo+ID4gICAgICAgICBmcm9tIHNjaGVtYSAkaWQ6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sIwo+ID4g
ICBldGhlcm5ldEBmZjRlMDAwMDogVW5ldmFsdWF0ZWQgcHJvcGVydGllcyBhcmUgbm90IGFsbG93
ZWQgKCdpbnRlcnJ1cHQtbmFtZXMnLCAnaW50ZXJydXB0cycsICdwaHktbW9kZScsCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAncmVnJywgJ3Jlc2V0LW5hbWVzJywgJ3Jlc2V0cycsICdzbnBzLHJl
c2V0LWFjdGl2ZS1sb3cnLCAnc25wcyxyZXNldC1kZWxheXMtdXMnLAo+ID4gICAgICAgICAgICAg
ICAgICAgICAgJ3NucHMscmVzZXQtZ3Bpbycgd2VyZSB1bmV4cGVjdGVkKQo+ID4gICAgICAgICBm
cm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25ldC9yb2NrY2hp
cC1kd21hYy55YW1sIwo+ID4gCj4gPiBBZGQgcm9ja2NoaXAscmszMzA4LWdtYWMgdG8gc25wcyxk
d21hYy55YW1sIHRvIGZpeCBEVCBzY2hlbWEgdmFsaWRhdGlvbi4KPiA+IAo+ID4gRml4ZXM6IDJj
YzhjOTEwZjUxNSAoImR0LWJpbmRpbmdzOiBuZXQ6IHJvY2tjaGlwLWR3bWFjOiBhZGQgcmszMzA4
IGdtYWMgY29tcGF0aWJsZSIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25h
c0Brd2lib28uc2U+Cj4gCj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+Cj4gCj4gSSdtIG5vdCBzdXJlIGhvdyB0aGUgbmV0d29yayB0cmVlIHdvcmtzIHRoZXNl
IGRheXMsIGJ1dCB0aGlzIHBhdGNoIGlzIHRoZQo+IG9ubHkgb25lIHRoYXQgc2hvdWxkIGdvIHRo
cm91Z2ggdGhlIG5ldHdvcmsgdHJlZS4KCkl0IGxvb2tzIGxpa2UgdGhlIHJlc3Qgb2YgdGhlIHNl
cmllcyBoYXMgbm8gZGVwZW5kZW5jeSBhbmQgd2lsbCBiZQptZXJnZWQKdmlhIG90aGVyIHRyZWVz
LgoKSWYgc28sIEkgdGhpbmsgaXQgd291bGQgYmUgY2xlYW5lciBpZiB5b3UgY291bGQgc3VibWl0
IHRoaXMgcGF0Y2gKaW5kaXZpZHVhbGx5IHRvIHRoZSBuZXQgdHJlZSwgaW5jbHVkaW5nIHRoZSB0
YXJnZXQgdHJlZSAnbmV0JyBpbnRvIHRoZQpzdWJqLsKgCgpUaGF0IHdpbGwgdHJpZ2dlciBzdWNj
ZXNzZnVsbHkgb3VyIENJIC0gdGhhdCBjdXJyZW50bHkgZG9lcyBsaXR0bGUgZm9yCkRUIGNoYW5n
ZXMgYnV0IHN0aWxsIG1vcmUgdGhlbiBub3RoaW5nIGFuZCB0aGluZ3MgY291bGQgaW1wcm92ZSBp
biB0aGUKZnV0dXJlLgoKVGhhbmtzLAoKUGFvbG8KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
