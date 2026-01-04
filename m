Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECC88C2A074
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jan 2026 11:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rP2F+JiUT6KVbPg41AGsBhKllLUBLhq9TH612A5VYdA=; b=ftgJ7f28ntQ60j
	wE0H398tARSubU+p4K6cDfAZcxD/CLE43djodakpmnSRtjgcxEA656jWwbkIk/VR0vfpfpyJLUer/
	ieaIMKpVmVVidxDgRjR94axPlAQ7XLFGa0ggHetp2lVRMRskEcxY/O1H3YlMiPGPjWNe4jJgiK5JA
	YzrbrJbACuunYv6fnC1NrOb2y5y0mQ+6WJO0L0nwzMVUU8bjkHGmTQBjaOdYa0C3uMWxuu/A/20gn
	/BgXzOIqcXymG7blF/eejANEXMDhDyBQnCpakz0XZazld1IC4hW0xjSv//txQDtENVrA8zbSrqniC
	wzMEpOYN9guwzTpkxo1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMXh-0000000ACTq-0SFb;
	Sun, 04 Jan 2026 11:45:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMXd-0000000ACSd-1Yky
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Jan 2026 11:45:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A4B143E95
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 11:44:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BE77C4AF0B
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 11:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767527099;
	bh=UJmd/RUuc8kvXGdj1yLXTt0tcEL4280vqD8fV3f882w=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Cg7UMARt7QUJwPWBD9T+bOjhUn6d/+c+hNn0FR+uMbWvqrb7/n9MLts7caS49DJkF
	 OQah1x368eMjg5W21HTv1Ef9+DHSCbLVYph3jX6D5lkWKi5qT4fdSbErocHRthZJz4
	 X06hftKfXtkkAz3/BIX0Ageje0ZQh6EmSGQ8FL9SCO2gSJo6eayH+9jHUK5fyOPE3/
	 JQk1DnogBQ8uEQB2oUv0I32CBnpuwQw/+JBp3+sZmIrKbQRVJjNIdCT8AIGiNVMlnH
	 7Mj/NT/NQEk6FHxkB2CTf5aXKmCrSNgaHwOjhqUdwlJak51zZDPkT77xXzn3LLYT20
	 lgdyEfkCD4AcQ==
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-78fb5764382so100329957b3.0
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Jan 2026 03:44:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXNR4S6jZnxP8FJHJa4hopYludViAscNIEgK10PPztRKcF65kYxryMndpRfc1Xa6Q/aQQc0NrgZk/iAFuMYNA==@lists.infradead.org
X-Gm-Message-State: AOJu0YySd/eF1SqmxnadW3pZZuPHKB/lnbt7UKukFWsa9dnjl05RSb7y
	TDxu3UvQfSG/ITk9jFVRPbnk90ZdWheKdLVv0g7S1lOPzuT7lUwriTWJX9++LCanseXdSnDK6cx
	JFOKLnBb/SO2w2goxPxfmFXAtM+lYGZg=
X-Google-Smtp-Source: AGHT+IEg3DaZt0YbBBc1tGezgqWn4TsJbUX2OEwOcSIQLrbHB84o22MN0yY/1FtAcAVCX+iV8p02b8Dygwa19reZFf0=
X-Received: by 2002:a53:b163:0:b0:640:d174:3839 with SMTP id
 956f58d0204a3-6466a8a66d9mr27719698d50.36.1767527098556; Sun, 04 Jan 2026
 03:44:58 -0800 (PST)
MIME-Version: 1.0
References: <20251216112053.1927852-1-ye.zhang@rock-chips.com>
 <20251216112053.1927852-7-ye.zhang@rock-chips.com> <CAD++jLntu4LY=VHOMSXeLKXOBD9MTNziv47B0qkDjxUa1xAsng@mail.gmail.com>
 <85032ae4-4d82-4884-aa7c-b69fee76d509@rock-chips.com>
In-Reply-To: <85032ae4-4d82-4884-aa7c-b69fee76d509@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 4 Jan 2026 12:44:47 +0100
X-Gmail-Original-Message-ID: <CAD++jLnH2vLNxTLj8Lw8RnOHxfitwi3G_8WCBtu+_=XL3ryH_w@mail.gmail.com>
X-Gm-Features: AQt7F2rYL5D4zs_GjxYPSmiyYP8LYXnbe2QAtqp2dHlaiukECPzoU61iv3jhlis
Message-ID: <CAD++jLnH2vLNxTLj8Lw8RnOHxfitwi3G_8WCBtu+_=XL3ryH_w@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: pinctrl: rockchip: Add RMIO
 controller binding
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260104_034501_456512_5874C2E0 
X-CRM114-Status: GOOD (  17.50  )
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

T24gU2F0LCBEZWMgMjcsIDIwMjUgYXQgMzo0NuKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cgo+IEkgdW5kZXJzdGFuZCB5b3VyIHByZWZlcmVuY2UgZm9yIHN0
YW5kYXJkIGJpbmRpbmdzLiAgSG93ZXZlciwgdGhlcmUgaXMgYQo+IHNwZWNpZmljIGNvbnN0cmFp
bnQgaGVyZTogdGhlIFJNSU8gYWN0cyBhcyBhIHNlY29uZGFyeSBsYXllciBvZiBtdXhpbmcsCj4g
c2l0dGluZyBiZWhpbmQgdGhlIHByaW1hcnkgSU9NVVggY29udHJvbGxlci4KPgo+IFRoZSBleGlz
dGluZyBSb2NrY2hpcCBwaW5jdHJsIGJpbmRpbmcgdXNlcyB0aGUgdmVuZG9yLXNwZWNpZmljCj4g
cm9ja2NoaXAscGlucyBwcm9wZXJ0eSBmb3IgdGhlIHByaW1hcnkgSU9NVVggY29uZmlndXJhdGlv
bi4gIElmIEkgd2VyZQo+IHRvIHVzZSB0aGUgc3RhbmRhcmQgcGlubXV4IHByb3BlcnR5IGZvciBS
TUlPLCB0aGUgbm9kZSB3b3VsZCBjb250YWluCj4gbWl4ZWQgYmluZGluZ3MgbGlrZSB0aGlzOgo+
Cj4gbm9kZSB7Cj4gICAgICAvKiBQcmltYXJ5IElPTVVYIChleGlzdGluZyBiaW5kaW5nKSAqLwo+
ICAgICAgcm9ja2NoaXAscGlucyA9IDwxIFJLX1BCMSAxNiAmcGNmZ19wdWxsX25vbmU+Owo+ICAg
ICAgLyogU2Vjb25kYXJ5IFJNSU8gICovCj4gICAgICBwaW5tdXggPSA8KFJNSU9fSUQgPDwgMTYp
IHwgKFJNSU9fUElOIDw8IDgpIHwgUk1JT19GVU5DPjsKPiB9Owo+Cj4gU2luY2UgdGhpcyBub2Rl
IGRlc2NyaWJlcyBhIHNpbmdsZSBoYXJkd2FyZSBwaW4gY29uZmlndXJhdGlvbiB0aGF0Cj4gcmVx
dWlyZXMgdHdvIHNlcGFyYXRlIGhhcmR3YXJlIHNldHRpbmdzIChQcmltYXJ5IE11eCArIFNlY29u
ZGFyeSBSTUlPKSwKPiBJIHRob3VnaHQga2VlcGluZyB0aGUgc2Vjb25kYXJ5IGNvbmZpZyBhcyBh
IHZlbmRvci1zcGVjaWZpYyBwcm9wZXJ0eQo+IChyb2NrY2hpcCxybWlvKSBhbG9uZ3NpZGUgcm9j
a2NoaXAscGlucyB3b3VsZCBiZSBtb3JlIGNvbnNpc3RlbnQgYW5kCj4gbGVzcyBjb25mdXNpbmcg
dGhhbiBtaXhpbmcgbGVnYWN5IGN1c3RvbSBiaW5kaW5ncyB3aXRoIHN0YW5kYXJkIHBpbm11eC4K
Ckkgc2VlIHRoZSBjb25jZXJuIGJ1dCBJIHdvdWxkIHNheSB0d28gd3JvbmdzIGRvZXNuJ3QgbWFr
ZSBvbmUgcmlnaHQuCgpUaGUgRFQgYmluZGluZyBwZW9wbGUgd2lsbCBoYXZlIHRvIHNheSB3aGF0
IHRvIGRvIGhlcmUsIGJ1dCBpZGVhbGx5Ckkgd291bGQgc2F5IHRoZSBwcmltYXJ5IElPTVVYIHNo
b3VsZCBiZSBtb2RpZmllZCB0byAqYWxzbyogKmFkZGl0aW9uYWxseSoKc3VwcG9ydCB0aGUgc3Rh
bmRhcmQgYmluZGluZ3MgYW5kIGRlcHJlY2F0aW5nIHRoZSBvbGQgcm9ja2NoaXAscGlucywKYW5k
IHRoZW4geW91IGNhbiBjb25zaXN0ZW50bHkgdXNlIHRoZSBwaW5tdXg9PD47IGJpbmRpbmcgaW4g
bmV3CnRyZWVzIGZvciBib3RoIHBpbm11eGVzLgoKSSB1bmRlcnN0YW5kIHRoYXQgbWF5YmUgeW91
IGFyZSBvbmx5IHdvcmtpbmcgb24gdGhpcyBvdGhlciBjb250cm9sbGVyCmFuZCBtaWdodCBmZWVs
IHRoYXQgdGhlIHByaW1hcnkgSU9NVVggaXMgbm9uZSBvZiB5b3VyIGNvbmNlcm4sCmJ1dCBzb21l
b25lIGhhcyB0byBzdGFuZCB1cCBhbmQgdGFrZSB0aGUgcmVzcG9uc2liaWxpdHkgZm9yIHRoZSBz
eXN0ZW0KYXMgYSB3aG9sZSwgaWYgbm8tb25lIGVsc2UgdGhlbiB0aGUgUm9ja2NoaXAgU29DIG1h
aW50YWluZXIsIGVsc2UKd2UgZ2V0IHRocm93LW92ZXItdGhlLXdhbGwtZW5naW5lZXJpbmcuCgpZ
b3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
