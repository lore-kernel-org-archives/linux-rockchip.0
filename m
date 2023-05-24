Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DD9CC77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 09:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxK/6RSRybPbfnQccRkQQictmxmmInE3VVYhaGD2D8Y=; b=YsmAdZEDklE3tN
	/gwxPO7P7XJFwLAGkA8z38sT4Sw4dZWKvNBHEPYxo8hdyBUVFWThGOcPqkxU2O649GJnU68PqFzn+
	F/BPKZmeaXgkIArOyo4BiyOryEHGLaBU6035hOYxb+qBIJrAiXYhOPweF/zq+VfOA9D/D+wzckJDv
	1GqHcf8awPFL4YPMmp0kgNa9WVABqCOzgCe09GAyJiuRnHam1GrOZMw5tvzmyP4C3mf+sWP+XKzCH
	gWNPOlSv7QVnfVjc9T+E4M7XmfX+UghLNuycHj2iBcX/dlrEmgzHPYpU8VAW97ghyY3vqQ7QZAaY4
	oofZjJQj+ikNm3Oma62w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kb6-00CuZ8-2w;
	Wed, 24 May 2023 09:15:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kb1-00CuX9-2h
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 09:15:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D9EDA63085;
	Wed, 24 May 2023 09:15:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BB84C433D2;
	Wed, 24 May 2023 09:15:46 +0000 (UTC)
Message-ID: <e227724a-fb39-5d68-4453-f03fb532bfde@xs4all.nl>
Date: Wed, 24 May 2023 11:15:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when
 opening the driver
Content-Language: en-US
To: Thorsten Leemhuis <regressions@leemhuis.info>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, nicolas.dufresne@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, m.szyprowski@samsung.com,
 m.tretter@pengutronix.de, didi.debian@cknow.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com, kernel@pengutronix.de,
 regressions@lists.linux.dev
References: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
 <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
 <de161e23-1ec6-1c16-b1c4-f423a088b711@leemhuis.info>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <de161e23-1ec6-1c16-b1c4-f423a088b711@leemhuis.info>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_021551_934666_44BC761E 
X-CRM114-Status: GOOD (  18.00  )
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

T24gMjQvMDUvMjAyMyAxMTowNiwgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4gT24gMjMuMDUu
MjMgMTg6MzYsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pgo+PiBMZSAyMy8wNS8yMDIzIMOg
IDE4OjI1LCBCZW5qYW1pbiBHYWlnbmFyZCBhIMOpY3JpdMKgOgo+Pj4gVGhpcyBmaXhlcyB0aGUg
Zm9sbG93aW5nIGlzc3VlIG9ic2VydmVkIG9uIE9kcm9pZC1NMSBib2FyZDoKPj4gWy4uLl0KPj4g
RGllZGVyaWNrLCBNYXJlaywgTWljaGFlbCwKPj4gSSBoYXZlIHRlc3RlZCB0aGlzIHBhdGNoIG9u
IG15IGJvYXJkcyBhbmQgSSBzZWUgbm8gcmVncmVzc2lvbnMgb24KPj4gZGVjb2RlciBwYXJ0IGFu
ZCBubyBtb3JlIGNyYXNoIHdoZW4gcHJvYmluZyB0aGUgZW5jb2Rlci4KPj4gQ291bGQgeW91IHRl
c3QgaXQgb24geW91ciBzaWRlIHRvIGNvbmZpcm0gaXQgaXMgb2sgPwo+IAo+IFRoZXkgYWxsIGRp
ZCwgc28gdGhhdCBpcyBkb25lLiBUaHggZm9yIHlvdXIgaGVscCwgZXZlcnlib2R5IQo+IAo+IC9t
ZSBub3cgaG9wZXMgdGhpcyBwYXRjaCB3aWxsIGJlIHF1aWNrbHkgcmV2aWV3ZWQsIGFjY2VwdGVk
IGFuZCBzZW50IHRvCj4gTGludXMgdG8gcHJldmVudCBldmVuIG1vcmUgcGVvcGxlIHJ1bm5pbmcg
aW50byB0aGlzLi4uCgpJIHBsYW4gdG8gbWFrZSBhIFBSIHdpdGggNi40IGZpeGVzIHRvZGF5IG9y
IHRvbW9ycm93LgoKUmVnYXJkcywKCglIYW5zCgo+IAo+PiBUaG9yc3RlbiwgSSB0cnkvdGVzdCBy
ZWd6Ym90IGNvbW1hbmRzLCBwbGVhc2UgdGVsbCBtZSBpZiBpdCBpcyBjb3JyZWN0Lgo+Pgo+PiAj
cmVnemJvdCBeaW50cm9kdWNlZCBkYjZmNjhiNTFlNWMKPj4gI3JlZ3pib3QgdGl0bGUgbWVkaWE6
IHZlcmlzaWxpY29uOiBudWxsIHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4gdHJ5X2ZtdAo+PiAjcmVn
emJvdCBpZ25vcmUtYWN0aXZpdHkKPiAKPiBUaHggZm9yIHRoaXMsIHdlIGp1c3Qgbm93IHRyYWNr
IHRoaXMgcmVncmVzc2lvbiB0d28gdGltZXMuIE5vIHdvcnJpZXMsCj4gbGV0IG1lIGZpeCB0aGlz
IGFuZCBhbHNvIHRlbGwgcmVnemJvdCBhYm91dCB0aGUgZml4Ogo+IAo+ICNyZWd6Ym90IGR1cC1v
ZjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC80OTk1MjE1Lkx2RngycVZWSWhAYmFnZW5k
Lwo+ICNyZWd6Ym90IGZpeDogbWVkaWE6IHZlcmlzaWxpY29uOiBBZGRpdGlvbmFsIGZpeCBmb3Ig
dGhlIGNyYXNoIHdoZW4KPiBvcGVuaW5nIHRoZSBkcml2ZXIKPiAKPiBDaWFvLCBUaG9yc3RlbiAo
d2VhcmluZyBoaXMgJ3RoZSBMaW51eCBrZXJuZWwncyByZWdyZXNzaW9uIHRyYWNrZXInIGhhdCkK
PiAtLQo+IEV2ZXJ5dGhpbmcgeW91IHdhbm5hIGtub3cgYWJvdXQgTGludXgga2VybmVsIHJlZ3Jl
c3Npb24gdHJhY2tpbmc6Cj4gaHR0cHM6Ly9saW51eC1yZWd0cmFja2luZy5sZWVtaHVpcy5pbmZv
L2Fib3V0LyN0bGRyCj4gSWYgSSBkaWQgc29tZXRoaW5nIHN0dXBpZCwgcGxlYXNlIHRlbGwgbWUs
IGFzIGV4cGxhaW5lZCBvbiB0aGF0IHBhZ2UuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
