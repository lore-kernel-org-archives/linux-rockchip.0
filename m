Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5528EC021B3
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Feb 2025 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mz+ubhK0GNbgZQ9/K6uM5xYCfTUKnDs1AQGFCFSm9W4=; b=LE+A4S666NFI4u
	I9bEM9N8O7UGAZfrXTAC3J8okkde7nGUxASpVhZKDTqxR8FUvZDTi1AuqGMCojt9smVqIaYpf17uF
	3BzfAAgQKZpFOvaFU8LuCLkuZ1P2SDfobGTVNqko5qh4gPpevdO0esIeG+PjgZhlgvBbaW/2cPOoi
	QGkJGzaq2ye6QIjT9Hz9BXhAqS5NwuoRqYQXA5nTQAAtajFT4vO8+0dZzaz4iNLCmQUDYlZid9cEG
	mrDsw48H9lP6K78Ycc944NyL4fb1kP3xh21j8k8zbexcaMmGbujRHgKXsT+/6oYigoSZE2yW2b3PW
	+mQlUfZ772k1ftaWXAWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlUJL-00000005sPO-47wl;
	Fri, 21 Feb 2025 14:47:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlUGU-00000005rzL-31si;
	Fri, 21 Feb 2025 14:44:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=gA8mn4fOHoGECCHqYXtlx2zwyQnjDL6NNJx/mEGL37k=; b=BIsxXJF05y1o+enNn9I9aK2SZw
	WROBymDU4IJFrbCw0/LLvFC70u8XBY9dDuh9x0w0erwBooFo0C0UxoB+1Mugg2bma4VoZXEF4m2q/
	NKsi8wUJEg2JDYbFiMxJXiW6MWuS3d85nUEc51xZYlgOIh5QhcPdFf+YBFfj0g4oIK7SJ5tJufyS/
	CJrNM6sFg0NMVOqYR5ar3f5dQNJEnKv2jRt5BKSU0xaFcirKM1N3leU83k61uwfUjXj6A7Luv0Ti5
	3Ysb27KzAT9dGGkdvtM2+kuK1v+dVkhdYq/aOM5NKh/NfRgZ2+ow+krTYOpd0SWx/aTMx/PaeHqhr
	e+4bQIlw==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlUGR-00000002eik-16U5;
	Fri, 21 Feb 2025 14:44:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740149018; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LlJGyGMRQMGa7d1hiq5ol+5x17hrNEGOITinBxi2RfLVUmuqWFvWwvZraOoEpi4OYi1YoOLNyqvnuoBhJv5NjSBAknykKoIDBYOOujNCSffFzetkfrbLL99wcmnReve0li94vUEnRp/md2vSGDu2zRk6o3mUwB3ZXFwJScQUKxg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740149018; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=gA8mn4fOHoGECCHqYXtlx2zwyQnjDL6NNJx/mEGL37k=; 
	b=SS5CeWfivsYuXpFsx/0MPvpuxMWFRxte1/ddDomWFSwswVstzSnzPNvljfY4htomab7qaxtT3qI+cXo+9mA4ytBNiy2AqaiXhG+Y0rBgX6bKYRLZeo5xmTxEYemz2Kg0vt+8tTa5BgxPqXvk6GWwPr1ADZQqOXGt1rrKGMkXUmQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740149018;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=gA8mn4fOHoGECCHqYXtlx2zwyQnjDL6NNJx/mEGL37k=;
	b=Oqd6dpyxZY9ouCf7T8Ku9XIIh2lKIO7kgmqL3aRYfciczdjFa77sxZ12CaQ/izzJ
	3eUDdaUsKGpAhc87xv6+Ln8RjEH0POVBgunMSnnqLqqH0XNLvDk09FnQIz0S1CHOx2t
	l0fX5qeyonfxOLsyVYaCaZsUIY5ALfsn9B5l3MNg=
Received: by mx.zohomail.com with SMTPS id 1740149014815682.0553532876535;
	Fri, 21 Feb 2025 06:43:34 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: linux-kernel@vger.kernel.org, Algea Cao <algea.cao@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 dri-devel@lists.freedesktop.org, Niklas Cassel <cassel@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com,
 David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, FUKAUMI Naoki <naoki@radxa.com>,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v7 0/3] Add HDMI audio on the rk3588 SoC
Date: Fri, 21 Feb 2025 09:43:31 -0500
Message-ID: <4988041.31r3eYUQgx@trenzalore>
In-Reply-To: <5E535D58-AEFF-45A4-A1EA-1FA282F366AE@gmail.com>
References: <20250217215641.372723-1-detlev.casanova@collabora.com>
 <BA73C4A1-C680-4748-9CE1-4B3B19A14261@gmail.com>
 <5E535D58-AEFF-45A4-A1EA-1FA282F366AE@gmail.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_144427_750270_B30E1549 
X-CRM114-Status: UNSURE (   7.71  )
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

T24gRnJpZGF5LCAyMSBGZWJydWFyeSAyMDI1IDA2OjQyOjMxIEVTVCBQaW90ciBPbmlzemN6dWsg
d3JvdGU6Cj4gU21hbGwgZGF0YSBwb2ludDogb24gcm9jazViIHN3aXRjaGluZyBpbiBkdHMgYW5h
bG9nIGF1ZGlvOiBmcm9tCj4gYXVkaW8tZ3JhcGgtY2FyZCB0byBzaW1wbGUtYXVkaW8tY2FyZCAo
c28gZHRzIGlzOgo+IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL3dhcnBtZS8zNDliMjdlNDliYzZm
NjE3ZWYxMDQxMDQ3ZTc1YWRhYiApIG1ha2VzCj4ga2VybmVsIG9vcHMgZ28gYXdheSB3aXRoIGFu
YWxvZyBhdWRpbyBzdGlsbCB3b3JraW5n4oCmCj4gCj4gc28gbWF5YmUgaXNzdWUgaXMgaW4gYXVk
aW8tZ3JhcGgtY2FyZCBjb2RlIChvciBpdHMgZHRzIGZyYWdtZW50cyk/CgpJIGNhbiByZXByb2R1
Y2Ugd2l0aCB5b3VyIGNvbmZpZyAoSSBndWVzcyB0aGF0IHJlbW92aW5nIHRoZSBkcml2ZXIgZm9y
IGFuYWxvZyAKYXVkaW8gaGlkZXMgdGhlIGlzc3VlKQoKSSdtIHJlYWxseSBmZWVsIGxpa2Ugc2lt
cGxlX3V0aWxfY2xlYW5fcmVmZXJlbmNlKGNhcmQpIGluIHNpbXBsZV9wcm9iZSgpIAplcnJvcnMg
cGF0aCBzaG91bGQgbm90IGJlIGNhbGxlZCBhbnltb3JlLCBzaW5jZQpodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvODd6Zms0bzVsMi53bC1rdW5pbm9yaS5tb3JpbW90by5neEByZW5lc2FzLmNv
bS8KCkknbSBhZGRpbmcgS3VuaW5vcmkgTW9yaW1vdG8gaW4gdGhlIHRvIGxpc3Qgb2YgdGhpcyB0
aHJlYWQgZm9yIGV4dHJhIGlucHV0IAooU2VlIHRocmVhZCBhdCBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvQjhFRjUxOTYtNTVGQi00NEVDLUI5M0MtRTMyN0M3OTEyMjVCQGdtYWlsLmNvbS8p
IGFzIHRoZXkgbWFkZSB0aGF0IGNoYW5nZS4KRXNwZWNpYWxseSB0aG9zZSBjb21taXRzOgogICAg
ICBBU29DOiBhdWRpby1ncmFwaC1jYXJkMjogdXNlIF9fZnJlZShkZXZpY2Vfbm9kZSkgZm9yIGRl
dmljZSBub2RlCiAgICAgIEFTb0M6IGF1ZGlvLWdyYXBoLWNhcmQ6IHVzZSBfX2ZyZWUoZGV2aWNl
X25vZGUpIGZvciBkZXZpY2Ugbm9kZQogICAgICBBU29DOiBzaW1wbGUtY2FyZDogdXNlIF9fZnJl
ZShkZXZpY2Vfbm9kZSkgZm9yIGRldmljZSBub2RlCgpEZXRsZXYuCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
