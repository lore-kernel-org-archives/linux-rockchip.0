Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E4D5CCF2DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 10:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlOU5BcXvehqGR4ZGifgn8LP6MLZ3WpAvvUCVnU5NZU=; b=IkE0z+QBNWEEQU
	uFYCpkFTYvkH0Ux5CTG7YaIn1kvXyjRk9r/vgdweZrxOoWvs/oiWWIJgRT32xZ3DzQ/8xKUSmcUHV
	Xn4yuBWSnhhcGa5x8jnEyr587ki0Y2p5cUZKj2lrZx6C1eWvrSJd1o/hKyvvHSS7DOkI/5K8nthQ7
	Ffuuiaic9cY8RE0uuli1AsZjK2Vjr0IOS4ydWm3xMfA+kXUs6smWOlFtZ4dDClD6GLcQQtYNVpJOu
	kS71EGoVR2xbdNr6bpPKSYly7fa+GiTUDav42C52W4WXK9Kj9l+NtGyitGuVZhX/5MHF+WDmSettn
	zvbbcCz/cn89L2GG8XpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIknR-00000007DkP-3gIJ;
	Mon, 19 Oct 2026 10:40:49 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIknO-00000007DjQ-2l2i;
	Mon, 19 Oct 2026 10:40:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1792406442;
	bh=q6N5Aio8FeUee+E5prkHvtU2XRa+2nEtmXw5f1D/Naw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QcW07TuK1MwNhKhje1WJ+t3EqobvIzT4fFt8pAfQq1Ry+KN3bfWOxfxsjs65IfEmk
	 ZrxC/F2ps+CsAzZctOfBCOPkmyBxqWcSkrmwQu0toqCT66A2BbUUpIQ1XipUslbcIp
	 PxJVqnf72ATj0HUPRKkVC2ePYl5bufxR2sN6NZoRqtICeDZY651Yo6IvSasYq/e5M7
	 ANGyJfDkRiGMApo9VfGg6OOyNfojbu06tMsB0q6B1cUJlWN8Ub2NKabuXPgRv2c3ga
	 AYq8+JewqBnT9JkTAWaI0wvzZGwDqAf36KNNE0hgpthO/SN0uSfXGpsGx+X4zgYdWH
	 JIXlJmD21RpoQ==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0DF6C17E0908;
	Mon, 19 Oct 2026 12:40:42 +0200 (CEST)
Message-ID: <1c2c222f-53fa-496c-a8ba-9717beb6dcf3@collabora.com>
Date: Mon, 19 Oct 2026 13:40:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] drm/rockchip: dw_hdmi_qp: Advertise BT.709 and
 BT.2020 colorimetries
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 =?UTF-8?Q?Jan_Clau=C3=9Fen?= <jan.claussen10@web.de>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261018123037.19560-1-jan.claussen10@web.de>
 <20261018123037.19560-7-jan.claussen10@web.de>
 <039f91a1-7944-4092-9f9c-29b60e8fb17a@rock-chips.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <039f91a1-7944-4092-9f9c-29b60e8fb17a@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_034047_547178_040F6DF6 
X-CRM114-Status: GOOD (  10.95  )
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

T24gMTAvMTkvMjYgNjoxOSBBTSwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gSGkgSmFuLAo+IAo+IE9u
IDEwLzE4LzIwMjYgODozMCBQTSwgSmFuIENsYXXDn2VuIHdyb3RlOgo+PiBFeHBvc2UgQlQuMjAy
MCBSR0IgYW5kIFlDQyBjb2xvcmltZXRyeSBzbyB1c2Vyc3BhY2UgY2FuIGVuYWJsZSBIRFIKPj4g
b3V0cHV0LiBBbHNvIGV4cGxpY2l0bHkgZXhwb3NlIEJULjcwOSBZQ0MgYXMgaXQgaXMgbGlzdGVk
IGluIHRoZQo+PiBSb2NrY2hpcCBSSzM1ODggVFJNIFYxLjAtUGFydDIgMjAyMjAzMDkgZGF0YSBz
aGVldC4KPj4KPj4gVGVzdGVkIG9uIGEgUmFkeGEgUm9jayA1QiAoUkszNTg4KSB3aXRoIGFuIExH
IE9MRUQ1NUI4N0xDIGluIEtERQo+PiBQbGFzbWEgNi43LjU6IGVuYWJsaW5nIEhEUiBzd2l0Y2hl
cyB0aGUgY29sb3JzcGFjZSB0byBCVC4yMDIwLCBhbmQKPj4gZGlzYWJsaW5nIGl0IHJlc3RvcmVz
IHRoZSBkZWZhdWx0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKYW4gQ2xhdcOfZW4gPGphbi5jbGF1
c3NlbjEwQHdlYi5kZT4KPj4gLS0tCj4+Cj4+IE5vdCBzdXJlIGlmIEJULjcwOSBuZWVkcyB0byBi
ZSBleHBsaWNpdGx5IGV4cG9zZWQgaGVyZSwgYnV0IGl0IGlzIG1lbnRpb25lZCBpbiB0aGUgZGF0
YSBzaGVldC4KPj4gTWlnaHQgYmUgY292ZXJlZCBieSBEUk1fTU9ERV9DT0xPUklNRVRSWV9ERUZB
VUxUIHRob3VnaC4KPiAKPiBDYzogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0
ZWFAY29sbGFib3JhLmNvbT4KPiAKPiBIaSBDcmlzdGlhbiwgbWF5IGJlIHlvdSB3b3VsZCBiZSBp
bnRlcmVzdGVkIGluIHRoaXMgc2VyaWVzPwoKSGkgQ2hhb3lpLCBJIGFscmVhZHkgcGxhbm5lZCB0
byBjaGVjayB0aGlzIG91dCBzb29uLiBQbGVhc2Ugbm90ZSB0aGVyZSdzIGEgbmV3ZXIKcmV2aXNp
b24gb2YgdGhlIHNlcmllcywgc28gSSB0aGluayBpdCdzIGJlc3QgdG8gbW92ZSBmdXJ0aGVyIGRp
c2N1c3Npb25zIHRoZXJlLgoKUmVnYXJkcywKQ3Jpc3RpYW4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
