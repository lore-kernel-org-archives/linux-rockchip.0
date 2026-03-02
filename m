Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C2C3EB362C
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 20:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAKbbTk99xCYbiPpTaKFt3E6IKW2UuuMRSg4flxHUzM=; b=YsJOfsMOzFC/YR
	a3ZTjSm6NzpSkdgPxp+Tx/vH4BiANdI/PxBdB7npWqgiCTnMcYgRxJNEb5qxJa5391qFyTebSU02U
	zM5JJhrBOnmZYq7lEXmuMBlgPWY/BV4EyHtz/gNou8etWHAL1lP/hlqio6BpMDvQ5/qK9NcoAHAGL
	aI08+jmBzl+0WFxZo8RCXUtwbNaxAzvwtvsnVQMnsOay+Telz4BlrTHYZSMeXOLVQ8L3DgHRk37l3
	WJOsuM/prsxjDrwNtapqZG8K0K16S04vPdN5pI7/lXTSkoAJmV0MzK1V/pTlFuGyT6z4YyOZG5rLH
	LEzob9nWhKZdxs27d8VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx9pI-0000000DnPZ-2zem;
	Mon, 02 Mar 2026 20:25:12 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx9pF-0000000DnOJ-3Fu5;
	Mon, 02 Mar 2026 20:25:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772483106;
	bh=j8C1DSiSsbLi3cNhCq6PK862abqoa5luMjGyDLs7LpU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NsHI334R2Nhzn/eAQvAmbuv2NUvAeI4ppyOkretq4D8UJ7VHwfVDFNBNdYgol9D4c
	 thQ8HkveUWAR20DmANTnqLJZWy6qnawfA6YEFzn1z/olHCvjDhu46Y2YsoRg4axmWw
	 Adp8KXvO8fDVcqJWhXLJSHQFIzlM1OYJJ+jVLkKlmnl2JG3M6h6NehpgBy+ZyNHLgg
	 evOv+1r8KH1DBU5oZ10Yh2Hwlti626spVndBbklYJi5/G3LneJFHDhqdFBFxN0bKrX
	 Q2Teqf9GfusR3Vszaqr5HY0YbjBwwDMrqk32CDb3hdNCL9nvUP8f9DtMkFVbD0+xua
	 ntJ7fuU/rdvHg==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B7CDD17E0D90;
	Mon,  2 Mar 2026 21:25:05 +0100 (CET)
Message-ID: <e1a0d7e0-2432-401c-80af-8195a21a9d1f@collabora.com>
Date: Mon, 2 Mar 2026 22:25:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] phy: rockchip: samsung-hdptx: Clock fixes and API
 transition cleanups
To: dubito@online.de, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
 <88436a35a3197393b5eb4fc49962a3b5906bf147.camel@online.de>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <88436a35a3197393b5eb4fc49962a3b5906bf147.camel@online.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_122509_967221_DF18FF9E 
X-CRM114-Status: UNSURE (   9.85  )
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

SGkgVGhvbWFzLAoKT24gMy8yLzI2IDk6NDYgUE0sIDF1bmQxIHdyb3RlOgo+IEhpIENyaXN0aWFu
LAo+IAo+IEFtIEZyZWl0YWcsIGRlbSAyNy4wMi4yMDI2IHVtIDIyOjQ4ICswMjAwIHNjaHJpZWIg
Q3Jpc3RpYW4gQ2lvY2FsdGVhOgo+PiBUaGlzIHNlcmllcyBwcm92aWRlcyBhIHNldCBvZiBidWcg
Zml4ZXMgYW5kIGNsZWFudXBzIGZvciB0aGUgUm9ja2NoaXAKPj4gU2Ftc3VuZyBIRFBUWCBQSFkg
ZHJpdmVyLgo+Pgo+PiBUaGUgZmlyc3QgcGFydCBvZiB0aGUgc2VyaWVzIChpLmUuIFBBVENIIDEg
JiAyKSBhZGRyZXNzZXMgY2xvY2sgcmF0ZQo+PiBjYWxjdWxhdGlvbiBhbmQgc3luY2hyb25pemF0
aW9uIGlzc3Vlcy7CoCBTcGVjaWZpY2FsbHksIGl0IGZpeGVzIGVkZ2UKPj4gY2FzZXMgd2hlcmUg
dGhlIFBIWSBQTEwgaXMgcHJlLXByb2dyYW1tZWQgYnkgYW4gZXh0ZXJuYWwgY29tcG9uZW50IChs
aWtlCj4+IGEgYm9vdGxvYWRlcikgb3Igd2hlbiBjaGFuZ2luZyB0aGUgY29sb3IgZGVwdGggKGJw
Yykgd2hpbGUga2VlcGluZyB0aGUKPj4gbW9kZWxpbmUgY29uc3RhbnQuwqAKPiAKPiBhcyBJIGJy
b3VnaHQgdXAgb25lIG9mIHRoZSBtZW50aW9uZWQgZWRnZSBjYXNlc8Kgd2l0aCBteSBSYWR4YSBS
b2NrIDViIGJvb3RpbmcKPiBsaW51eCBmcm9tIEVESzIgWzFdLCBJIHdhbnRlZCB0byByZXBvcnQg
dGhhdCB3aXRoIHRoaXMgc2VyaWVzIGFwcGxpZWQsCj4gZXZlcnl0aGluZyB3b3JrcyBhcyBleHBl
Y3RlZCBhbmQgbXkgaXNzdWVzIGFyZSBmaXhlZC4KPiAKPiBUaHVzLCBmZWVsIGZyZWUgdG8gYWRk
IG15Cj4gCj4gVGVzdGVkLWJ5OiBUaG9tYXMgTmllZGVycHLDvG0gPGR1Yml0b0BvbmxpbmUuZGU+
CgpUaGFua3MgZm9yIChyZSl0ZXN0aW5nIQoKUmVnYXJkcywKQ3Jpc3RpYW4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
