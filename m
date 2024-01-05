Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67E7DC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 17:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dyhG4y6EvLPTKFLh/F0hbUPqY1dGbchUuuW0CulxfU=; b=ZRStxEEUEjgvf6
	wMBqQiWMzDRxa4vc80sYNLuNhceacuZ9dCJvUvE1B+8IVB81w7TcFEKw/1VASpNRFyxh4/9lqOyXI
	V7LO50DugL0PE6VaQmwVitGMMpFPG//rH8ZfQrXz3OSGnrsU5zrGJSsxiBMlxR/gK1goux6BFTFgH
	v/AwTGK4fFNqzeGTtoWkc9GUV4dNUVLCguA9Jm4M9eP/68oFaJOdRUsM5dt0gbH8D08yJu9E2i+cT
	4/EQg3b0W02rdkeewFeLo1xoOzZo63UHRMjcQ4KT1S4Nc7Q017uH+M0fvvWWlkglrPC+l2/mQjH72
	t6oXBppcKtjbbsBvM0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLoJt-00HShu-1M;
	Fri, 05 Jan 2024 17:49:21 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLoJp-00HSgs-1v;
	Fri, 05 Jan 2024 17:49:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704476956;
	bh=oiTjNDE8zdxt2cMZq7xxs8JwiZDB7s9mhohrKDnY/2E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vEBLtejKVsVkA/nSjHRUQnhjBOK6LO380L89stD1j4116VhjpGVphkIylt+u24RH5
	 su3sUhTwunOUMgAvc3PuMdxBgz47Z+Tx2RUIyCf/jBMiOLReJffKvaYL4Dqa0eVrq0
	 NfPodRzxZeUwMTlfId+M2rY6Sey7PidHirQaAtdXqQiQWYRvWDBI0kZW96OZ6iAr6W
	 XLzf1Krv7tefrzgj56aSnHBBv4dPouS5M+QcVvkBIAgeOyOsbHfTB5ifnj0h429a8n
	 2VQYwKnzc88v9ZEEhquHMlCzAzDzFUDDWHpGHudTEn9c/L2IS3Ok2g8h8r8FFW0/7m
	 pFZl80/dkBpcQ==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 29C10378003D;
	Fri,  5 Jan 2024 17:49:15 +0000 (UTC)
Message-ID: <30114fa6-d83d-4563-9f3b-2975ddfd2752@collabora.com>
Date: Fri, 5 Jan 2024 19:49:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: Drop unused if_dclk_rate variable
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
 <5867171.29KlJPOoH8@diego>
 <acb52035-4f0c-430d-a2d2-26ab37805d7b@rock-chips.com>
 <13141620.VsHLxoZxqI@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <13141620.VsHLxoZxqI@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_094917_773329_E2EE2CF0 
X-CRM114-Status: GOOD (  17.03  )
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

T24gMS81LzI0IDExOjU3LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSwKPiAKPiBBbSBGcmVp
dGFnLCA1LiBKYW51YXIgMjAyNCwgMTA6MDQ6NTUgQ0VUIHNjaHJpZWIgQW5keSBZYW46Cj4+IE9u
IDEvNC8yNCAyMzo1OCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+PiBBbSBEb25uZXJzdGFnLCA0
LiBKYW51YXIgMjAyNCwgMTU6Mzk6NTAgQ0VUIHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+
Pj4+IENvbW1pdCA1YTAyOGU4ZjA2MmYgKCJkcm0vcm9ja2NoaXA6IHZvcDI6IEFkZCBzdXBwb3J0
IGZvciByazM1ODgiKQo+Pj4+IGludHJvZHVjZWQgYSB2YXJpYWJsZSB3aGljaCBlbmRlZCB1cCBi
ZWluZyB1bnVzZWQuICBSZW1vdmUgaXQuCj4+Pj4KPj4+PiByb2NrY2hpcF9kcm1fdm9wMi5jOjE2
ODg6MjM6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmGlmX2RjbGtfcmF0ZeKAmSBzZXQgYnV0IG5vdCB1
c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTog
Q3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KClsu
Li5dCgo+Pj4gd2l0aCB0aGUgY29kZSBjb250aW51aW5nIHdpdGggdGhvc2Ugc3RhdGljIGNvbnN0
YW50cyBidXQgdGhlIGNvbW1lbnQKPj4+IHNob3dpbmcgYSBmb3J1bXVsYSwgSSBkbyBob3BlIEFu
ZHkgY2FuIHByb3ZpZGUgYSBiaXQgb2YgaW5zaWdodCBpbnRvCj4+PiB3aGF0IGlzIGhhcHBlbmlu
ZyBoZXJlLgo+Pj4KPj4+IEkuZS4gSSdkIHJlYWxseSBsaWtlIHRvIHVuZGVyc3RhbmQgaWYgdGhh
dCByZWFsbHkgaXMganVzdCBhIHJlbW5hbnQgb3IKPj4+IHNvbWV0aGluZyBkaWZmZXJlbnQgaXMg
bmVlZGVkLgo+Pgo+PiBUaGlzIGlzIG5vdCBhIHJlbW5hbnQsIGluIG15IFYxLCBJIGNhbGN1bGF0
ZSBhbGwgdGhlIGRpdiBieSBmb3JtdWxhLCBidXQgU2FzY2hhIHByZWZlcgo+PiBtb3JlIGZvciBh
IGNvbnN0YW50cyB2YWx1ZVswXSwgc28gSSBrZWVwIHRoaXMgZm9ybXVsYSBhcyBjb21tZW50cyB0
byBpbmRpY2F0ZSBob3cgdGhlc2UgdmFsdWUgY29tZSBmcm9tLgo+Pgo+PiBbMF1odHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvcGF0Y2gvMjAyMzExMTQx
MTI4NTUuMTc3MTM3Mi0xLWFuZHlzaHJrQDE2My5jb20vCj4gCj4gdGhhbmtzIGZvciByZWZlcmVu
Y2luZyB0aGUgc291cmNlIG9mIHRoZSBjaGFuZ2UuCj4gTGVhdmluZyB0aGUgZm9ybXVsYSBpbiB0
aGVyZSB3YXMgdGhlIHJpZ2h0IGNob2ljZSBJIHRoaW5rCj4gCj4gVGhhdCBzdGlsbCBsZWF2ZXMg
dGhlIGlzc3VlIHdpdGggdGhlICJ1bnVzZWQiIHdhcm5pbmcuCj4gCj4gQENocmlzdGFuOiBpbiB0
aGUgaGRtaSBibG9jayBpdHNlbGYgY2FuIHlvdSBtb3ZlIHRoZSAKPiAJaWZfZGNsa19yYXRlID0g
ZGNsa19jb3JlX3JhdGUgLyBLOwo+IHRvIHRoZSBjb21tZW50IGJsb2NrIHBsZWFzZT8gQW5kIHBv
c3NpYmx5IHJlZmVyZW5jZSB0aGUgdXNlCj4gb2YgdGhlIHN0YXRpYyB2YWx1ZXMgaW4gdGhlIGNv
bW1lbnQgbWVzc2FnZS4KPiAKPiBUaGUgaWZfZGNsa19yYXRlIHZhciBkZWNsYXJhdGlvbiBhdCB0
aGUgdG9wIG9mIHRoZSBmdW5jdGlvbiBjYW4gb2YgY291cnNlCj4gZ28gYXdheS4KPiAKPiBUaGF0
IHdheSB3ZSBzdGlsbCBrZWVwIGRvY3VtZW50aW5nIGhvdyB0aGVzZSB2YWx1ZXMgY2FtZSB0byBi
ZToKClJlcXVlc3RlZCBjaGFuZ2VzIHN1Ym1pdHRlZCB2aWEgdjI6CgpodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9sa21sLzIwMjQwMTA1MTc0MDA3Ljk4MDU0LTEtY3Jpc3RpYW4uY2lvY2FsdGVhQGNv
bGxhYm9yYS5jb20vCgpUaGFua3MsCkNyaXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
