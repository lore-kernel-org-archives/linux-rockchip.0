Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B01E7C25B6B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 20:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLpCBKwe4XcplWxaOLApcMdutIk4v37rwqZryhPxC28=; b=sfZsbXw1X/hDRJ
	JRUP/KqgyL/Y1EWmnqjyLdBa25FW97JeWIo3uif5FuhBaxfeLgfv/u2TrwohESmo6n84eb8claXLh
	/RNzg/AMw8DGzEghiwTtOMC2ML2HBPgCtFxO4yL7kvKu6ZUD+kobE3ZSJ7xkDpK16aeUMOIQEHB3T
	EfgvieGEx8BhXMB0gAQ/Dg+S2cwYlJwPRskcGurBL6xDStXyXkch2HqzHHsiOxkmf0rEqD77DZURW
	HoucmZFQT1vTpleIQDWDO/6DjhmzLrWypU0hrsGWGDTVN/WDVexyBg48VXs+GtebovzFbEam0vyrJ
	AhcktJUY7EIsCFgbx2kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw72u-00F7y9-3C;
	Thu, 26 Oct 2023 20:33:36 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw72r-00F7wq-24;
	Thu, 26 Oct 2023 20:33:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1698352404;
 bh=j3tk+oe4LZw1thVxrSHhxg7YiJq4jgOvzV867gqOGjc=;
 b=CqAJyFeIsT6eSLAibN2Oypjza3vA6nY0sMI24lhSgB1RTkaIzK+Tc0rVANje6uUD4fF+UgpmZ
 xMRQb9xbJHO1aePuqQ0GDNQ9wtV6tOuUpcBv3rW/Gvp8fkrBGBMAGhAUhddM7sZe8+zX7LPSymk
 EkAez8fREIeZ0IXRM/oqVQ/02iFJ1fm+2nYbNBTQvj81VaQu3yDP3INoxF4Fsne1UL9GJEcTyEI
 nY/PXyaWZjBB2v9MC2Ji/rJEMI36+P1vs0rH0rYHg8YAe9GeYNYYWCkiZA/D2TqoTJJ5nom8rms
 7Mllq9nGkKJslxE0EPCXUqKvoBheG95kJBpu88ZrKlDQ==
Message-ID: <2307c147-fe6f-4e80-874c-0f306bc6ea81@kwiboo.se>
Date: Thu, 26 Oct 2023 22:33:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/rockchip: vop: Fix color for RGB888/BGR888 format
 on VOP full
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Tomasz Figa
 <tfiga@chromium.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231026191500.2994225-1-jonas@kwiboo.se>
 <ea5a78a59e983e08d02c89718c5c7315e923f170.camel@collabora.com>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <ea5a78a59e983e08d02c89718c5c7315e923f170.camel@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 653acd145956f7edd77b4fc4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_133334_264480_AEF3A98B 
X-CRM114-Status: UNSURE (   8.43  )
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

SGkgQ2hyaXMsCgpPbiAyMDIzLTEwLTI2IDIyOjAyLCBDaHJpc3RvcGhlciBPYmJhcmQgd3JvdGU6
Cj4gSGkgSm9uYXMsCj4gCj4gT24gVGh1LCAyMDIzLTEwLTI2IGF0IDE5OjE0ICswMDAwLCBKb25h
cyBLYXJsbWFuIHdyb3RlOgo+PiBVc2Ugb2YgRFJNX0ZPUk1BVF9SR0I4ODggYW5kIERSTV9GT1JN
QVRfQkdSODg4IG9uIGUuZy4gUkszMjg4LCBSSzMzMjgKPj4gYW5kIFJLMzM5OSByZXN1bHQgaW4g
d3JvbmcgY29sb3JzIGJlaW5nIGRpc3BsYXllZC4KPj4KPj4gVGhlIGlzc3VlIGNhbiBiZSBvYnNl
cnZlZCB1c2luZyBtb2RldGVzdDoKPj4KPj4gwqAgbW9kZXRlc3QgLXMgPGNvbm5lY3Rvcl9pZD5A
PGNydGNfaWQ+OjE5MjB4MTA4MC02MEBSRzI0Cj4+IMKgIG1vZGV0ZXN0IC1zIDxjb25uZWN0b3Jf
aWQ+QDxjcnRjX2lkPjoxOTIweDEwODAtNjBAQkcyNAo+Pgo+PiBWZW5kb3IgNC40IGtlcm5lbCBh
cHBseSBhbiBpbnZlcnRlZCByYiBzd2FwIGZvciB0aGVzZSBmb3JtYXRzIG9uIFZPUAo+PiBmdWxs
IGZyYW1ld29yayAoSVAgdmVyc2lvbiAzLngpIGNvbXBhcmVkIHRvIFZPUCBsaXR0bGUgZnJhbWV3
b3JrICgyLngpLgo+Pgo+PiBGaXggY29sb3JzIGJ5IGFwcGx5aW5nIGRpZmZlcmVudCByYiBzd2Fw
IGZvciBWT1AgZnVsbCBmcmFtZXdvcmsgKDMueCkKPj4gYW5kIFZPUCBsaXR0bGUgZnJhbWV3b3Jr
ICgyLngpIHNpbWlsYXIgdG8gdmVuZG9yIDQuNCBrZXJuZWwuCj4+Cj4+IEZpeGVzOiA4NWEzNTlm
MjUzODggKCJkcm0vcm9ja2NoaXA6IEFkZCBCR1IgZm9ybWF0cyB0byBWT1AiKQo+PiBTaWduZWQt
b2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gCj4gUmV2aWV3ZWQtYnk6
IENocmlzdG9waGVyIE9iYmFyZCA8Y2hyaXMub2JiYXJkQGNvbGxhYm9yYS5jb20+Cj4gVGVzdGVk
LWJ5OiBDaHJpc3RvcGhlciBPYmJhcmQgPGNocmlzLm9iYmFyZEBjb2xsYWJvcmEuY29tPgo+IAo+
IFNpbmNlIHlvdSBtaXNzZWQgYWRkaW5nIG15ICotYnkgdGFncyBpbiB2Mi4KPiAKClRoYW5rcywg
YW5kIHNvcnJ5IGFib3V0IHRoYXQgOy0pCgpSZWdhcmRzLApKb25hcwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
