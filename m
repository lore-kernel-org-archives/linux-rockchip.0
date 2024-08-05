Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0058DC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 11:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqKQ+kwqeDpeMbxWllxCVR1Ldfu+IzAXo/Ld/rZQc1s=; b=ooyyQNEJxF9YAS
	AVCNceNdXHvHTErAdoVwsTDelN2ciYALGqvp4iz0DX4b2cU4oObHW96eFvYWEiZhbktJXjukm+4un
	ka+QbSDG6gMTpT8n0p+E62f8DeZS+pg69YpYa5V+uf8ymuHblXfi6r/Z8D0CQSKUUPbekgrg8oMXU
	E/X2S/n9W7IjdQwIBNHtzNkOUn0ftM7DEBGCmD7Brd3HC4L4+5AacfBE34vjrfdG7hqiqZEpIlEPE
	7Jgvq4dBL0Ytiz3MISuhNe2B8a8Z8Zu0O8F9Pk8q3f6GsqlkyOMgChFB8LK6OIvZst3uGIInZqc/Z
	0LtmcrSBsiC05qrfe+DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savZ8-0000000FdM7-0DqX;
	Mon, 05 Aug 2024 11:07:50 +0000
Received: from radojevic.rs ([139.162.187.67] helo=mail.radojevic.rs)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savYa-0000000FdFJ-2L9j;
	Mon, 05 Aug 2024 11:07:18 +0000
Received: from localhost (unknown [91.143.223.193])
	by mail.radojevic.rs (Postfix) with ESMTPSA id 618D51E1DF;
	Mon,  5 Aug 2024 13:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=radojevic.rs; s=mail;
	t=1722856032; bh=FsKABYar5tCCmqGtOJLbGI3S+bt2cKoGgq3u7smejfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=owarYTnudqNQj3zzqpcAD1STQ5bEUj0ILZjbSJvK0hNiUpvR/Gyyr7fOKhAuPST7P
	 50I9jyCORzNZQkrEHXd4qLRwe4wKHlUxj/pgpTMHJT+wNJnaRq8OOhY23W1Ngo1vJw
	 mSOTWt9halv0WWjvcZGVoxo+x2E6twuW5NZSPcDgzZIcWoliVNWZWHg1vncDX0G5Q1
	 zHjt7MfuOIS0P+rG+fETO9650G55ciXpUVEtQacydvaEfJcvPRuALMEGmu9M3OIESD
	 c9gPjB8H3MbMj53XGqavnBdUn+Aaq1PDQBgQtokbDxHEw1mGYlsxNp7oQLlWlZ6SKy
	 VGz+H3+7llQ+Q==
Date: Mon, 5 Aug 2024 13:07:11 +0200
From: Nikola Radojevic <nikola@radojevic.rs>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Raise Pinebook Pro's panel
 backlight PWM frequency
Message-ID: <fkiauvfki7kvmhs3g4aqatqcdtf6cko7xpgg7zfhgojnhoxa36@ruz5ywsdgr4c>
References: <2a23b6cfd8c0513e5b233b4006ee3d3ed09b824f.1722805655.git.dsimic@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a23b6cfd8c0513e5b233b4006ee3d3ed09b824f.1722805655.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_040716_759303_69674E02 
X-CRM114-Status: GOOD (  21.46  )
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

SGVsbG8sCkkgaGF2ZSB0ZXN0ZWQgdGhpcyBvbiBteSBQaW5lYm9vayBQcm8gYW5kIEkgY2FuIGNv
bmZpcm0gdGhhdApldmVyeXRoaW5nIHNlZW1zIHRvIHdvcmsgYWxyaWdodC4KClRlc3RlZC1ieTog
Tmlrb2xhIFJhZG9qZXZpxIcgPG5pa29sYUByYWRvamV2aWMucnM+CgpPbiAyNC8wOC8wNCAxMTox
MFBNLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSW5jcmVhc2UgdGhlIGZyZXF1ZW5jeSBvZiB0aGUg
UFdNIHNpZ25hbCB0aGF0IGRyaXZlcyB0aGUgTEVEIGJhY2tsaWdodCBvZgo+IHRoZSBQaW5lYm9v
ayBQcm8ncyBwYW5lbCwgZnJvbSBhYm91dCAxLjM1IEtIeiAod2hpY2ggZXF1YWxzIHRvIHRoZSBQ
V00KPiBwZXJpb2Qgb2YgNzQwLDc0MCBucyksIHRvIGV4YWN0bHkgOCBrSHogKHdoaWNoIGVxdWFs
cyB0byB0aGUgUFdNIHBlcmlvZCBvZgo+IDEyNSwwMDAgbnMpLiAgVXNpbmcgYSBoaWdoZXIgUFdN
IGZyZXF1ZW5jeSBmb3IgdGhlIHBhbmVsIGJhY2tsaWdodCwgd2hpY2gKPiByZWR1Y2VzIHRoZSBm
bGlja2VyLCBjYW4gb25seSBiZSBiZW5lZmljaWFsIHRvIHRoZSBlbmQgdXNlcnMnIGV5ZXMuCj4g
Cj4gT24gdG9wIG9mIHRoYXQsIGluY3JlYXNpbmcgdGhlIGJhY2tsaWdodCBQV00gc2lnbmFsIGZy
ZXF1ZW5jeSByZXBvcnRlZGx5Cj4gZWxpbWluYXRlcyB0aGUgYnV6emluZyBlbWl0dGVkIGZyb20g
dGhlIFBpbmVib29rIFBybydzIGJ1aWx0LWluIHNwZWFrZXJzCj4gd2hlbiBjZXJ0YWluIGJhY2ts
aWdodCBsZXZlbHMgYXJlIHNldCwgd2hpY2ggY2F1c2Ugc29tZSB3ZWlyZCBpbnRlcmZlcmVuY2UK
PiB3aXRoIHNvbWUgb2YgdGhlIGNvbXBvbmVudHMgb2YgdGhlIFBpbmVib29rIFBybydzIGF1ZGlv
IGNoYWluLgo+IAo+IFRoZSBvbGQgdmFsdWUgZm9yIHRoZSBiYWNrbGlnaHQgUFdNIHBlcmlvZCwg
aS5lLiA3NDAsNzQwIG5zLCBpcyBwcmV0dHkgbXVjaAo+IGFuIGFyYml0cmFyeSB2YWx1ZSB0aGF0
IHdhcyBzZWxlY3RlZCBkdXJpbmcgdGhlIHZlcnkgZWFybHkgYnJpbmctdXAgb2YgdGhlCj4gUGlu
ZWJvb2sgUHJvLCBvbmx5IGJlY2F1c2UgdGhhdCB2YWx1ZSBzZWVtZWQgdG8gbWluaW1pemUgaG9y
aXpvbnRhbCBsaW5lCj4gZGlzdG9ydGlvbiBvbiB0aGUgZGlzcGxheSwgd2hpY2ggcmVzdWx0ZWQg
ZnJvbSB0aGUgb2xkIFgub3JnIGRyaXZlcnMgY2F1c2luZwo+IHNjcmVlbiB0ZWFyaW5nIHdoZW4g
ZHJhZ2dpbmcgd2luZG93cyBhcm91bmQuICBUaGF0J3Mgbm8gbG9uZ2VyIGFuIGlzc3VlLCBzbwo+
IHRoZXJlIGFyZSBubyByZWFzb25zIHRvIHN0aWNrIHdpdGggdGhlIG9sZCBQV00gcGVyaW9kIHZh
bHVlLgo+IAo+IFRoZSBsb3dlciBhbmQgdGhlIHVwcGVyIGJhY2tsaWdodCBQV00gZnJlcXVlbmN5
IGxpbWl0cyBmb3IgdGhlIFBpbmVib29rIFBybydzCj4gcGFuZWwsIGFjY29yZGluZyB0byBpdHMg
ZGF0YXNoZWV0LCBhcmUgMjAwIEh6IGFuZCAxMCBrSHosIHJlc3BlY3RpdmVseS4gWzFdCj4gVGhl
c2UgY2hhbmdlcyBzdGlsbCBsZWF2ZSBzb21lIGhlYWRyb29tLCB3aGljaCBtYXkgaGF2ZSBzb21l
IHBvc2l0aXZlIGVmZmVjdHMKPiBvbiB0aGUgbGlmZXRpbWUgZXhwZWN0YW5jeSBvZiB0aGUgcGFu
ZWwncyBiYWNrbGlnaHQgTEVEcy4KPiAKPiBbMV0gaHR0cHM6Ly9maWxlcy5waW5lNjQub3JnL2Rv
Yy9kYXRhc2hlZXQvUGluZWJvb2tQcm8vTlYxNDBGSE0tTjQ5X1Jldi5QMF8yMDE2MDgwNF8yMDE3
MTAyMzU4MzgucGRmCj4gCj4gRml4ZXM6IDVhNjU1MDVhNjk4OCAoImFybTY0OiBkdHM6IHJvY2tj
aGlwOiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBQaW5lYm9vayBQcm8iKQo+IENjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnCj4gUmVwb3J0ZWQtYnk6IE5pa29sYSBSYWRvamV2aWMgPG5pa29sYUBy
YWRvamV2aWMucnM+Cj4gU2lnbmVkLW9mZi1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFy
by5vcmc+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVi
b29rLXByby5kdHMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1waW5lYm9vay1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcGluZWJvb2stcHJvLmR0cwo+IGluZGV4IDI5NGViMmRlMjYzZC4uYjNmNzZjYzJkNmUx
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVi
b29rLXByby5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1w
aW5lYm9vay1wcm8uZHRzCj4gQEAgLTMyLDcgKzMyLDcgQEAgY2hvc2VuIHsKPiAgCWJhY2tsaWdo
dDogZWRwLWJhY2tsaWdodCB7Cj4gIAkJY29tcGF0aWJsZSA9ICJwd20tYmFja2xpZ2h0IjsKPiAg
CQlwb3dlci1zdXBwbHkgPSA8JnZjY18xMnY+Owo+IC0JCXB3bXMgPSA8JnB3bTAgMCA3NDA3NDAg
MD47Cj4gKwkJcHdtcyA9IDwmcHdtMCAwIDEyNTAwMCAwPjsKPiAgCX07Cj4gIAo+ICAJYmF0OiBi
YXR0ZXJ5IHsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
