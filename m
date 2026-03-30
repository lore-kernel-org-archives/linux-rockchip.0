Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE0A91061B22
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 22:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvaHGhCxTfN/lPezrllKneUgX4KynNkXOewBL+VnKqI=; b=gV4ZjOGS1KKYtD
	CKU/gtRhh2jsgqit6/KzxYLt+Pgp9NrI6KHaBHEG4lajARZaOkkRklIcvWIXjGuB4OHmQ52XdpOsB
	zuMEkG/jZDRPOtAyPT8Yd/23L91Qu1U/N1kUFjZPnuKksSLLNN/oKVv2bELnuZVdtl3rsDi+LPp0k
	VdxPvBqI2LerBEJ2bQLT926izytFFYmRLiDfvktG6mb/+DBIkrPBFyaOtrRCayvdXVetr3Z0d2Z4p
	Atm6hospWAfEzWGRWcSAKtXYi5sEarH69UXrIMEMsv1t3S7aiK30pJHRq40KBJPwiB+SzYZmwu70a
	ToC2hAImS09dJbCukWgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7L2b-0000000ByDC-1FtP;
	Mon, 30 Mar 2026 22:25:01 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7L2Y-0000000ByCQ-3b8c;
	Mon, 30 Mar 2026 22:25:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774909494;
	bh=RphenkmKp5cHZbTuPcy3VOdJH9R0n5lebz4MDGW0iN8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kJnhCKUcUJFcI9rTX+8uPRrlKQaxBe70PwrsqkIcSoQI8ZQWxUscNMnrh/LRVlTHE
	 9hGfYLTHy0+rGNTKUPDou4Mt//azoT9jcZMfoa1OLhOgC7hSfWSPfDiKdcWlkZtN7r
	 ZHfJ5mXIFGPsPbhFUNcghcP4/h1rFA7uIdVDjzhH5wA1hW+dNrjKhV2lNo4CL6w/3b
	 syWWD2s09ujeXhx4eSoI8gVSxOJ7Cy+nfuQsXq0IwcbMHeHZyUS7L6ctlLHfm7vz48
	 Y12kvdBaZvv9adgrmc3cVXWcGAARz4pZmcJvib1bioJL3e7GXX+ijfh3aWkfQPKjac
	 SKbENZPsI5ZUw==
Received: from [192.168.1.57] (host-79-18-8-236.retail.telecomitalia.it [79.18.8.236])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E3E0517E50D0;
	Tue, 31 Mar 2026 00:24:53 +0200 (CEST)
Message-ID: <7df5a59f-8f66-4764-bc85-59eadd0851f5@collabora.com>
Date: Tue, 31 Mar 2026 01:24:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v4 4/4] drm/rockchip: dw_hdmi_qp: Do not send HPD
 events for all connectors
To: Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Diederik de Haas <diederik@cknow-tech.com>,
 Maud Spierings <maud_spierings@hotmail.com>
References: <20260323-dw-hdmi-qp-scramb-v4-0-1d99df84883e@collabora.com>
 <20260323-dw-hdmi-qp-scramb-v4-4-1d99df84883e@collabora.com>
 <47972235.fMDQidcC6G@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <47972235.fMDQidcC6G@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_152459_046642_E473FD22 
X-CRM114-Status: GOOD (  12.21  )
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

T24gMy8zMC8yNiA3OjU2IFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBBbSBNb250YWcsIDIz
LiBNw6RyeiAyMDI2LCAxODo0NTozMCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hy
aWViIENyaXN0aWFuIENpb2NhbHRlYToKPj4gSW4gb3JkZXIgdG8gb3B0aW1pemUgdGhlIEhQRCBl
dmVudCBoYW5kbGluZyBhbmQgcnVuIHRoZSBkZXRlY3QgY3ljbGUgb24KPj4gdGhlIGFmZmVjdGVk
IGNvbm5lY3RvciBvbmx5LCBtYWtlIHVzZSBvZgo+PiBkcm1fY29ubmVjdG9yX2hlbHBlcl9ocGRf
aXJxX2V2ZW50KCkgaW5zdGVhZCBvZgo+PiBkcm1faGVscGVyX2hwZF9pcnFfZXZlbnQoKS4KPj4K
Pj4gQWRkaXRpb25hbGx5LCBtb3ZlIGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoKSBhZnRlciBi
cmlkZ2UgY29ubmVjdG9yCj4+IGluaXRpYWxpemF0aW9uLgo+IAo+IG5pdDogVXNpbmcgImFuZCIs
ICJhZGRpdGlvbmFsbHkiLCBldGMgaW4gY29tbWl0IG1lc3NhZ2VzLCBpcyBhIHN0cm9uZwo+IGlu
ZGljYXRvciwgdGhpbmdzIHNob3VsZCBiZSBzZXBhcmF0ZSBjb21taXRzLgo+IAo+IEVzcGVjaWFs
bHkgYXMgdGhlIHNlbnRlbmNlIGFib3ZlIGp1c3QgZXhwbGFpbnMgdGhlICJ3aGF0IiBidXQgbm90
IHRoZQo+IHdoeSAoaW50ZXJydXB0IGZpcmluZywgYmVmb3JlIHRoZSBkZXZpY2UgaXMgYWN0dWFs
bHkgdGhlcmUgcHJvYmFibHkpLgo+IAo+IElmIHRoZXJlIGFyZSBubyBvdGhlciBjaGFuZ2VzIHJl
cXVlc3RlZCwgdGhleSBjYW4gc3RheSB0b2dldGhlciB0aG91Z2gsCj4gdGhlICJ3aHkiIGlzIHNv
bWV3aGF0IG9idmlvdXMgaGVyZS4KCkFjaywgd2lsbCBzcGxpdCB0aGlzIHVwIGluIGNhc2UgYSBu
ZXcgcmV2aXNpb24gaXMgbmVlZGVkLgoKPiAKPiAKPiBCb3RoIGNoYW5nZXMgdGhlbXNlbGYgbG9v
ayBmaW5lLCBzbwo+IAo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3IQoKUmVnYXJkcywKQ3Jpc3RpYW4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
