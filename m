Return-Path: <SRS0=Ahoz=DF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A678C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 14:43:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC21E2076A
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 14:43:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="CH8N+0fL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DC21E2076A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pmS+D9VA8bjeCPyjyUNaHnTZJPVfHjKQQ+UInQ7yKXM=; b=CH8N+0fL4C0CO05A94AUkPPuX
	ckLD75NRWN8ujGIsBrVuSVrv4KQnm8MGkDk7r0KOiNW4qYAQVXOQQIetEurjQsvVDQyL55thqoEC5
	6zos9TSicK2aJNh7XYoXsAaqFWcVfr6j5f6lsCQsIVTzf8fLA42cse61L79n3OcchjJoThXQFh5sg
	ljlTZaxtJ4AgWNMPAlHkDsm0lMXbALMTdr5D289IeKzA/T/NsEx8H32hyeCBgKbSJy2S1ogpTzOp9
	N3Aq+Hsfqa5OVgmzZsxZvdwTXQIZ+CCA9kHnM3wbVvUNPXTnTTuoUxVkjZNPJFpehHCLXyfP5IGkz
	jW9PyzpSg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMuMx-0006ZG-9l; Mon, 28 Sep 2020 14:43:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMuMq-0006Wa-1C; Mon, 28 Sep 2020 14:43:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 5769329A5CD
Subject: Re: [PATCH v1 2/2] drm/rockchip: fix warning from cdn_dp_resume
To: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 Heiko Stuebner <heiko@sntech.de>, Thomas Zimmermann <tzimmermann@suse.de>
References: <20200925215524.2899527-1-sam@ravnborg.org>
 <20200925215524.2899527-3-sam@ravnborg.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <dcc5d70e-5c95-be50-a6bf-cee62bed6bf6@collabora.com>
Date: Mon, 28 Sep 2020 16:42:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200925215524.2899527-3-sam@ravnborg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200928_104304_229109_B617A155 
X-CRM114-Status: GOOD (  21.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, stable@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2FtLAoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKT24gMjUvOS8yMCAyMzo1NSwgU2Ft
IFJhdm5ib3JnIHdyb3RlOgo+IENvbW1pdCA3YzQ5YWJiNGMyZjggKCJkcm0vcm9ja2NoaXA6IGNk
bi1kcC1jb3JlOiBNYWtlIGNkbl9kcF9jb3JlX3N1c3BlbmQvcmVzdW1lIHN0YXRpYyIpCj4gaW50
cm9kdWNlZCB0aGUgZm9sbG93aW5nIHdhcm5pbmcgaW4gc29tZSBidWlsZHM6Cj4gCj4gY2RuLWRw
LWNvcmUuYzoxMTI0OjEyOiB3YXJuaW5nOiDigJhjZG5fZHBfcmVzdW1l4oCZIGRlZmluZWQgYnV0
IG5vdCB1c2VkCj4gIDExMjQgfCBzdGF0aWMgaW50IGNkbl9kcF9yZXN1bWUoc3RydWN0IGRldmlj
ZSAqZGV2KQo+ICAgICAgIHwgICAgICAgICAgICBefn5+fn5+fn5+fn5+Cj4gCj4gRml4IHRoaXMg
YnkgZGVmaW5pbmcgY2RuX2RwX3Jlc3VtZSBfX21heWJlX3VudXNlZAo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiBGaXhlczogN2M0OWFiYjRjMmY4
ICgiZHJtL3JvY2tjaGlwOiBjZG4tZHAtY29yZTogTWFrZSBjZG5fZHBfY29yZV9zdXNwZW5kL3Jl
c3VtZSBzdGF0aWMiKQo+IENjOiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRi
b0Bjb2xsYWJvcmEuY29tPgo+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
IENjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+IENjOiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS44Kwo+IC0tLQoKSG9w
ZWZ1bGx5IHRoaXMgdGltZSB0aGlzIGNoYW5nZSBsYW5kcyA7LSkgU2ltaWxhciBwYXRjaGVzIFsx
XSwgWzJdLCBbM10sIHdlcmUKc2VudCBpbiB0aGUgcGFzdCBieSBkaWZmZXJlbnQgYXV0aG9ycyBi
dXQgZm9yIHNvbWUgcmVhc29uIG5ldmVyIHJlYWNoZWQgdXBzdHJlYW0uCgpbMV0gaHR0cHM6Ly9s
a21sLm9yZy9sa21sLzIwMjAvNC8yOC8xNzAzClsyXSBodHRwczovL3d3dy5zcGluaWNzLm5ldC9s
aXN0cy9kcmktZGV2ZWwvbXNnMjY4ODE4Lmh0bWwKWzNdIGh0dHBzOi8vbGttbC5vcmcvbGttbC8y
MDIwLzgvMTAvMTQxMgoKPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCj4gaW5kZXggYTRhNDVkYWY5
M2YyLi4xMTYyZTMyMWFhZWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1jb3JlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNv
cmUuYwo+IEBAIC0xMTIxLDcgKzExMjEsNyBAQCBzdGF0aWMgaW50IGNkbl9kcF9zdXNwZW5kKHN0
cnVjdCBkZXZpY2UgKmRldikKClNob3VsZG4ndCBjZG5fZHBfc3VzcGVuZCBhbHNvIGhhdmUgYSBf
X21heWJlX3VudXNlZD8KCldpdGggdGhhdCwKClJldmlld2VkLWJ5OiBFbnJpYyBCYWxsZXRibyBp
IFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgoKPiAgCXJldHVybiByZXQ7Cj4g
IH0KPiAgCj4gLXN0YXRpYyBpbnQgY2RuX2RwX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4g
K3N0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgY2RuX2RwX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4gIHsKPiAgCXN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9IGRldl9nZXRfZHJ2ZGF0YShk
ZXYpOwo+ICAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
