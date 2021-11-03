Return-Path: <SRS0=9dgF=PW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE3C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Nov 2021 00:59:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B3ED161053
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Nov 2021 00:59:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B3ED161053
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+8OkAAORiF/b8apkIryIK1dhGYERMoS+1wHVUU8QXU=; b=uECJrQzrPyyFvV
	3gWZTxr/eXgIWFL8thOxwnWH/fA86cDWcOtZqZloQp06GpJOz7d4mgLhKxm93131Fd7fSQUAcLz3r
	Z08v+QzZodCSDKt8nXEGznHWWiRFm+eRWUCS48Zduh8ZDLdIlX18RG5fXbIMjYXs/Djx+iiz7SOvk
	JICM8oaivNZAHW8GbPMwozlAfOxW/BUhAYZY0LsuCr7fIwGuZIp79FvER9NimhfZuCtCXdRBzv/ll
	dNrlVU1fzU1NK0cbs2vjBv9tFFRoswXwe2eVlg8vQ4PXOODA5hABXlQ3r/wffDrmI5XsM+qXIEoIs
	XK3Y1SQiokdyHE9ZbP1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mi4cs-003i5Y-FZ; Wed, 03 Nov 2021 00:59:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mi4ck-003i4S-1r
 for linux-rockchip@lists.infradead.org; Wed, 03 Nov 2021 00:59:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8582F60FC4;
 Wed,  3 Nov 2021 00:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635901169;
 bh=EE/bOVd8vhFU3MMrom1BvHLf8zsd5QVrHEBuJ973vWY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=qN+p7UfX2eCOwF2fgyolD0kfSXyQ+yp/cmA2hul9GmNjOsQg+dBTWlQ991uEr05j1
 HWSTh9Zt5K8gYaO/pRAfzS3r+tIhqJuGOLBs/SgPy7r7VDZNELc8W0hz1zSsJyVv27
 YZ09eCSEllp2jko99wvBD5pjlDjzhTAPxrwU9OGlwgGD7izH+lKO0DvA/O3K9RW6Dn
 uJ38S/6cgHt/cKpN7Ht4v8GpuaFPAKq9mv8j1eE2+95ez+iwytT+nAbXdlkFL6bG+R
 838AI+lHb88kZzkRI+qKdkR8FpXMb+2OEXGJXwvlrkrzFjNx8QSe98aEVPBSdUmpJg
 oeQ8WaDHMJy3g==
MIME-Version: 1.0
In-Reply-To: <2912588.a5UK1EFgBA@diego>
References: <20211027132616.1039814-1-heiko@sntech.de>
 <5381956.U9aoDET0nm@diego>
 <163548978553.15791.2075313346592720953@swboyd.mtv.corp.google.com>
 <2912588.a5UK1EFgBA@diego>
Subject: Re: [PATCH 0/2] clk: rockchip: cleanup errors in (module-)driver
 handling
From: Stephen Boyd <sboyd@kernel.org>
Cc: kernel@esmil.dk, linux-clk@vger.kernel.org, mturquette@baylibre.com
To: Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Date: Tue, 02 Nov 2021 17:59:28 -0700
Message-ID: <163590116816.2993099.4747068629839558630@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_175930_137384_561D5E57 
X-CRM114-Status: GOOD (  16.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

UXVvdGluZyBIZWlrbyBTdMO8Ym5lciAoMjAyMS0xMC0yOSAwNTozNzowNikKPiBBbSBGcmVpdGFn
LCAyOS4gT2t0b2JlciAyMDIxLCAwODo0MzowNSBDRVNUIHNjaHJpZWIgU3RlcGhlbiBCb3lkOgo+
ID4gUXVvdGluZyBIZWlrbyBTdO+/vWJuZXIgKDIwMjEtMTAtMjcgMTY6MjA6MTcpCj4gPiA+IEFt
IE1pdHR3b2NoLCAyNy4gT2t0b2JlciAyMDIxLCAyMjoyNzo0NiBDRVNUIHNjaHJpZWIgU3RlcGhl
biBCb3lkOgo+ID4gPiA+IFF1b3RpbmcgSGVpa28gU3R1ZWJuZXIgKDIwMjEtMTAtMjcgMDY6MjY6
MTQpCj4gPiA+ID4gPiBSZWNlbnQgY29udmVyc2lvbnMgb3IgaW5jbHVzaW9ucyBvZiByazMzOTkg
YW5kIHJrMzU2OCBhcyBwbGF0Zm9ybS1kcml2ZXJzCj4gPiA+ID4gPiBhbmQgc3Vic2VxdWVudGx5
IGFsbG93aW5nIHRoZW0gdG8gYmUgYnVpbHQgYXMgbW9kdWxlcyBpbnRyb2R1Y2VkIHNvbWUKPiA+
ID4gPiA+IHByb2JsZW1zLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGVzZSB0d28gcGF0Y2hlcyB0
cnkgdG8gY29ycmVjdCB0aGVtLgo+ID4gPiA+IAo+ID4gPiA+IEJ5IHJlbW92aW5nIG1vZHVsYXIg
c3VwcG9ydD8gT2suCj4gPiA+IAo+ID4gPiBJdCBsb29rZWQgbGlrZSB0aGUgZWFzaWVzdCB3YXkg
dG8gZ28gZm9yIG5vdy4KPiA+ID4gCj4gPiA+IFdpdGggYWxsIHRoZSBjbG9jay1kZWZpbml0aW9u
cyBhcyBpbml0LWRhdGEgc3RpbGwgaW4gYm90aCBkcml2ZXJzLCBJIGRvbid0IHRoaW5rCj4gPiA+
IGFueWJvZHkgZXZlciB0ZXN0ZWQgcnVubmluZyB0aGlzIGFzIGEgcmVhbCBtb2R1bGUuCj4gPiA+
IAo+ID4gPiBXZSBjb3VsZCBvZiBjb3Vyc2UgYWxzbyByZW1vdmUgYWxsIHRoZSBfX2luaXQgKyBf
X2luaXRkYXRhIGF0dHJpYnV0ZXMsIGJ1dAo+ID4gPiBzdGlsbCB3b3VsZG4ndCBrbm93IGlmIGl0
IGFjdHVhbGx5IHJ1bnMgYXMgYSBtb2R1bGUsIHdpdGhvdXQgc29tZW9uZQo+ID4gPiBidWlsZGlu
ZyBhIHJlYWwgdGVzdCBlbnZpcm9ubWVudCBmb3IgaXQuCj4gPiA+IAo+ID4gPiAKPiA+IAo+ID4g
U3VyZS4gRG8gSSBuZWVkIHRvIHBpY2sgdGhlc2UgdXAgZGlyZWN0bHk/Cj4gCj4gSSBkb24ndCBo
YXZlIGFueXRoaW5nIG1vcmUgZm9yIDUuMTYgYW5kIHRoZSA1LjE1IHJlbGVhc2Ugc2hvdWxkIGhh
cHBlbgo+IG9uIHN1bmRheSwgc28geWVhaCBqdXN0IHBpY2sgdGhlbSBpZiB5b3UgbGlrZSAtIG5v
IG5lZWQgZm9yIGRvaW5nIGEgc2VwYXJhdGUKPiBwdWxsIHJlcXVlc3QuCj4gCgpPayBJIHBpY2tl
ZCB0aGVtIHVwIGFuZCBJJ2xsIHNlbmQgdGhlbSBvZmYgbmV4dCB3ZWVrLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
