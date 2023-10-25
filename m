Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40D30C25B47
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Oct 2023 10:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rW4JOphErYmgvF54N1YP4V8lhuYOyep7APltaCil8o=; b=RsGNMU286ok8Wd
	3PoP9OniaY4REDY2v6jotE3jNCm5E8vWkaGPVQPttfGXU9t8gaFtNtBeyRPJYhcpLFaTia/hyv2c/
	o3LKI3euWCwlednjDauX8HPQUOCK+gz3w+3Iy8q+xxz73xwgDuRdN5+i1iqsu+UKGMiReHO8g+QtT
	QAnEKMmUd9RWhrihRDdBTzD4XgIBaDIoUYeRGkZuSARXmMYIlK4EwHmcBXuctcPu/BM8qKPn5TFRw
	+BmNDbZ9BC3KNSQhpMZ4t1r+F4bfuMhx27kRn7Z7EMTmR2PZkqdVaYIovWj7r0EsgtsUkU8Q3rF4m
	rHBNuoJrm0ESIjyrdlKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvbFr-00C506-02;
	Wed, 25 Oct 2023 10:36:51 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvbFn-00C4y3-0X;
	Wed, 25 Oct 2023 10:36:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BCA93CE2A56;
	Wed, 25 Oct 2023 10:36:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CF09C433CA;
	Wed, 25 Oct 2023 10:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698230203;
	bh=ntDXN6/2qOsCCkilJlaxE0vWMmmPJiupJ7r60b2XmUI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UOiBRPIso13bGcE/dHRWnAAPD3tWDEd3aq+7CdIUQl9qgz4eOAeJcXX58da+eXK2L
	 MOPmSPZuyjUhNwXijkmQ2JBWWRjuUFNtlMZQf8FqspwJ2eQmseJ/j2mwTqxEXq9eFv
	 hHSL84+cvhIor5HBMmnE2EfcRWT0L/Z0oKlbCNgOHV9ZUIFDQ+/cQ5U28sXxtyee+5
	 BnszHdpuEiT9juPV8ztCdaDo6mPmK3HoyL6fGw5KziSN3GPLgZNJ37Fn8oV0F4/lxm
	 Tix9njlM952bp0cNwYIMfhust8vdzujhrnFCgXlIyw7reqdsWIgB9bp9FmKmiAYs6g
	 DTxkqI0aRGPTA==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Ond=C5=99ej_Jirman?= <megi@xff.cz>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231019165732.3818789-1-megi@xff.cz>
References: <20231019165732.3818789-1-megi@xff.cz>
Subject: Re: [PATCH v3 0/4] Add support for poweroff via RK806 PMIC
Message-Id: <169823020128.678899.14014128373986258754.b4-ty@kernel.org>
Date: Wed, 25 Oct 2023 11:36:41 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_033647_373185_4D1CADC5 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
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

T24gVGh1LCAxOSBPY3QgMjAyMyAxODo1NzoyMiArMDIwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6
Cj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gCj4gVGhlIFBNSUMgc3VwcG9y
dHMgcG93ZXJpbmcgb2ZmIGJ5IHR3aWRkbGluZyBzb21lIGJpdHMgaW4gYSByZWdpc3Rlci4gQWRk
IHN1cHBvcnQKPiBmb3IgaXQgdmlhIHByZS1leGlzdGluZyByb2NrY2hpcCxzeXN0ZW0tcG93ZXIt
Y29udHJvbGxlciBEVCBwcm9wZXJ0eS4KPiAKPiBUaGUgc2VyaWVzIHdhcyB0ZXN0ZWQgYWdhaW5z
dCBMaW51eCA2LjYtcmM0Lgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS80XSBkdC1i
aW5kaW5nczogbWZkOiByazh4eDogRGVwcmVjYXRlIHJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250
cm9sbGVyCiAgICAgIGNvbW1pdDogOGI3ZmI5NmY4NjFjMTc0NDNiN2UzYTVjMjU2ODk3YjcyZDRj
MjA1ZgpbMi80XSBkdC1iaW5kaW5nczogbWZkOiByazgwNjogQWxsb3cgc3lzdGVtLXBvd2VyLWNv
bnRyb2xsZXIgcHJvcGVydHkKICAgICAgY29tbWl0OiA1MTdkYmVjZmVhZmE1MmM4YWRhNGJkMzU4
NWQ5ZThiMDA1ZjdlNTQyClszLzRdIG1mZDogcms4eHg6IEFkZCBzdXBwb3J0IGZvciBzdGFuZGFy
ZCBzeXN0ZW0tcG93ZXItY29udHJvbGxlciBwcm9wZXJ0eQogICAgICBjb21taXQ6IDRiZTdjYzZm
NjJiZWI4YTU2YzJjOGY5NzQ4YTdlMzQ1YTY0NWM5MTQKWzQvNF0gbWZkOiByazh4eDogQWRkIHN1
cHBvcnQgZm9yIFJLODA2IHBvd2VyIG9mZgogICAgICBjb21taXQ6IDhkYzNhYWIzYzQ1ZWIwZmJh
OTIwMmQyZDZhZDYyOGNjN2I1OWMxN2QKCi0tCkxlZSBKb25lcyBb5p2O55C85pavXQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
