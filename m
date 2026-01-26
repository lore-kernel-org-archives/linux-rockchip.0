Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0900AD19510
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 18:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKAyyGVhAKyPV/wheOhcdIM85f/fAb5A143P/iksA0k=; b=cbiK53sgbOhdSd
	svXQz8hRvxQmq+yXRh2/TDFrRPJDNolWkZxyr1mzVw+36nDpl7RHN1zVsYVfMw9Du/Buj1FNLx3hJ
	ism7uxyBFjtiSlW8WJN9zbO76Jds5Q+bLDDV0afOoDV6lXKH73o3/eVnCqh/VUPG/LaOqbiAqIp/6
	pjf63PnToGxoVNfsKUH4U3xaLaivB4iz5tbs+S32Jj8ezaZ6CbP3kIcAHXtjJUoehrkKCcbuNtstQ
	6dCRf70gXyRnDdhDJqF/J+B8tIZ5rS95W+NEvs/1tzfzoswAh/4lkOP3iCFkWAPoUoDABzUmRJhWs
	atng4GlO/91D0GiohZUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRP5-0000000D5XI-32Kb;
	Mon, 26 Jan 2026 18:33:35 +0000
Received: from sender4-pp-g122.zoho.com ([136.143.188.122])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRP3-0000000D5WP-0Df6;
	Mon, 26 Jan 2026 18:33:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769452399; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lJL3A9t9hmeTtDajEyOkcB7e2cd5TG4b4Mm+yQFnozAhSMng9SI4XbvIKw6YGI+641gPVWM0kAyHynfK8UgMFjLwfdAhl6WHeKldIyfEmGvhK3EeBj+Grp5ji4pWWOpkRVj1UedI3riZ+YRr1TG6AxBxhhugeeNio8zISiX813M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769452399; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ZKDHgurtFd7YxT86rQlbdG/VJyEjIfL7f4+CcLVwL54=; 
	b=lA3avtEDxa/f14kgneIL51tIzq2V6QsJMZrSUk/sooYTYFX/qVYBS35figX7L2ohZldRairwkC4hNi2wZTI+saZOnhX29EkBog0SOiioxsyoNhj8LzQXLvCX8lE7/kPyQH1ANwl6oaE24TihGOgo2jycbzcBE2v7v5dgrVhcPqs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nfraprado@collabora.com;
	dmarc=pass header.from=<nfraprado@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769452399;
	s=zohomail; d=collabora.com; i=nfraprado@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=ZKDHgurtFd7YxT86rQlbdG/VJyEjIfL7f4+CcLVwL54=;
	b=X3X0uLS2FXPBFTY8Uw+CeJHu+Xve6rL0yiIuu4mbKQgR3/xqtAJo948sp0mfeXa1
	6xz5nqTuHBaRxNjZ0o8OyWHbczBaCzLE9LX7t0qtCzUE9ZHwtc6NrMakiIVk5K0WzXX
	/kS/B1nG9NNd7IAInYGbfX9LeIwYhC2AO5wFNjTs=
Received: by mx.zohomail.com with SMTPS id 1769452397997823.5064676659088;
	Mon, 26 Jan 2026 10:33:17 -0800 (PST)
Message-ID: <1b66343c76e5b66c696c1fd8a148df299cce60dd.camel@collabora.com>
Subject: Re: [PATCH v4 1/4] uapi: Provide DIV_ROUND_CLOSEST()
From: =?ISO-8859-1?Q?N=EDcolas?= "F. R. A. Prado" <nfraprado@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Maarten Lankhorst
	 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sandy Huang	 <hjc@rock-chips.com>, Heiko
 =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,  Andy Yan
 <andy.yan@rock-chips.com>, Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed	 <hamohammed.sa@gmail.com>, Melissa Wen
 <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Date: Mon, 26 Jan 2026 15:33:11 -0300
In-Reply-To: <20251219-rk3588-bgcolor-v4-1-2ff1127ea757@collabora.com>
References: <20251219-rk3588-bgcolor-v4-0-2ff1127ea757@collabora.com>
	 <20251219-rk3588-bgcolor-v4-1-2ff1127ea757@collabora.com>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_103333_134033_E8411FA8 
X-CRM114-Status: UNSURE (   7.71  )
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

T24gRnJpLCAyMDI1LTEyLTE5IGF0IDIzOjQ2ICswMjAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3Jv
dGU6Cj4gQ3VycmVudGx5IERJVl9ST1VORF9DTE9TRVNUKCkgaXMgb25seSBhdmFpbGFibGUgZm9y
IHRoZSBrZXJuZWwgdmlhCj4gaW5jbHVkZS9saW51eC9tYXRoLmguCj4gCj4gRXhwb3NlIGl0IHRv
IHVzZXJsYW5kIGFzIHdlbGwgYnkgYWRkaW5nIF9fS0VSTkVMX0RJVl9ST1VORF9DTE9TRVNUKCkK
PiBhcwo+IGEgY29tbW9uIGRlZmluaXRpb24gaW4gdWFwaS4KPiAKPiBBZGRpdGlvbmFsbHksIGVu
c3VyZSBpdCBhbGxvd3MgYnVpbGRpbmcgSVNPIEMgYXBwbGljYXRpb25zIGJ5Cj4gc3dpdGNoaW5n
Cj4gZnJvbSB0aGUgJ3R5cGVvZicgR05VIGV4dGVuc2lvbiB0byB0aGUgSVNPLWZyaWVuZGx5IF9f
dHlwZW9mX18uCj4gCj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlh
bi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBOw61jb2xhcyBGLiBSLiBB
LiBQcmFkbyA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+CgotLSAKVGhhbmtzLAoKTsOtY29sYXMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
