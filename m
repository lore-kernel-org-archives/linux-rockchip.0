Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FFFC4363A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 10:15:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B809D22202
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 10:15:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="vF+tLkoH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B809D22202
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qCST983/V+WvzNYURuoR7xLQqWif9Oq5ZCVhWFNkf20=; b=vF+tLkoHk+/uhDcXVGMVG1geF
	JZyllhaEUb64pBhE7d0C5MPkEHzUG5Hbz9p2c8z1ADFSdZO3Zo8oUaYi5zLCGcfWPHddpeFuT0FnB
	7v3HWoc0uPrnSXbT7NGQIhJg/0Vry/diF4kDSKjh+AYpmtUM2Wmv4A0yK3wkHuS5t3xcdqGtvB8Ld
	0eaEFGsfARGXTo72rW8Z1UMu4i/qO5x2T7BoHT91tdwxsir1Ltl+Mg0y0SJ3WXCZXYSwrRUShYpy5
	NjOt8XFhosNAVF1+AGTagdseQoaPHiAP11R1KCUUYKuyFwFo18uEU9p0HSmAX8VkJJpUjQ0eJC/vR
	Y8vUgEM4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYRR3-0001rt-Uo; Fri, 30 Oct 2020 10:15:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYRQm-0001jr-JE
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 10:14:49 +0000
Received: from [IPv6:2003:c7:cf1c:4d00:58b3:6683:91ae:b6a8]
 (p200300c7cf1c4d0058b3668391aeb6a8.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:4d00:58b3:6683:91ae:b6a8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3B2FC1F45E82;
 Fri, 30 Oct 2020 10:14:47 +0000 (GMT)
Subject: Re: [PATCH] media: staging: rkisp1: uapi: add "WITH
 Linux-syscall-note"
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>
References: <20201020132514.26651-1-dafna.hirschfeld@collabora.com>
 <2e5116d7-10c1-6eee-9a80-5350515ac314@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <aff1c42d-d65b-a8ef-3097-de1b1d44f170@collabora.com>
Date: Fri, 30 Oct 2020 11:14:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2e5116d7-10c1-6eee-9a80-5350515ac314@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_061448_779972_87375114 
X-CRM114-Status: GOOD (  15.74  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpBbSAzMC4xMC4yMCB1bSAwNjoyOCBzY2hyaWViIEhlbGVuIEtvaWtlOgo+IEhpIERhZm5hLAo+
IAo+IE9uIDEwLzIwLzIwIDEwOjI1IEFNLCBEYWZuYSBIaXJzY2hmZWxkIHdyb3RlOgo+PiBBZGQg
IldJVEggTGludXgtc3lzY2FsbC1ub3RlIiB0byB0aGUgdWFwaQo+PiBoZWFkZXIgU1BEWCBjb21t
ZW50Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYWZuYSBIaXJzY2hmZWxkIDxkYWZuYS5oaXJzY2hm
ZWxkQGNvbGxhYm9yYS5jb20+Cj4gCj4gQWNrZWQtYnk6IEhlbGVuIEtvaWtlIDxoZWxlbi5rb2lr
ZUBjb2xsYWJvcmEuY29tPgo+IAo+IFNpbmNlIE5pa2xhcyByZXBvcnRlZFsxXSwgaXQgd29sZCBi
ZSBuaWNlIHRvIGFkZCBoaXMgUmVwb3J0ZWQtYnkgdGFnLgoKSGksIHN1cmUsCgpSZXBvcnRlZC1i
eTogTmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmRAcmFnbmF0ZWNoLnNlPgoKClRo
YW5rcywKRGFmbmEKCj4gCj4gWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4
LW1lZGlhL21zZzE3Nzc5My5odG1sCj4gCj4gUmVnYXJkcywKPiBIZWxlbgo+IAo+PiAtLS0KPj4g
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3VhcGkvcmtpc3AxLWNvbmZpZy5oIHwgMiAr
LQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS91YXBpL3JraXNwMS1j
b25maWcuaCBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvdWFwaS9ya2lzcDEtY29uZmln
LmgKPj4gaW5kZXggNDMyY2I2YmU1NWI0Li44ZDkwNmNjN2RhOGYgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvdWFwaS9ya2lzcDEtY29uZmlnLmgKPj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS91YXBpL3JraXNwMS1jb25maWcuaAo+PiBAQCAt
MSw0ICsxLDQgQEAKPj4gLS8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1Ig
TUlUKSAqLwo+PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6ICgoR1BMLTIuMCsgV0lUSCBM
aW51eC1zeXNjYWxsLW5vdGUpIE9SIE1JVCkgKi8KPj4gICAvKgo+PiAgICAqIFJvY2tjaGlwIElT
UDEgdXNlcnNwYWNlIEFQSQo+PiAgICAqIENvcHlyaWdodCAoQykgMjAxNyBSb2NrY2hpcCBFbGVj
dHJvbmljcyBDby4sIEx0ZC4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
