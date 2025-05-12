Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C716C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 14:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MGqoxwAcImHjylqziHz2EE0mCkw7I9J9KvrgBFAViw=; b=zhnWAtLQU7xd/R
	yE5ygE/+2on1WkCENkoP2Jj7c2G2qoE+zUFOKwvgt3mxAiRV7FJL7H7yC7OQlvp4srp6CCSn36X5V
	g8xCdvNUVVSoyLZ7Jui5dzSu6I4xdHYsimnKexFCBxB9YLPoGvGMDmbTdByah3kI3zRN/E7fh3/ob
	0owE80gFc9Zb2fb6GIHRmK6xQgsbs2u+HFLqo4UvBpXzzapbq44A2exLUOW6W0++lbF5/EMiM1Be3
	qYGHZLOF6UHuFww3Ti5QzePZxz9Vh7K9F4Uf3WJHFCmuq1IVDTRLi5maGNYPFkb2hoZbb6jIH5GJo
	oPRlVp8bbz5/EDhNDGdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uETyR-00000009h9h-3xPu;
	Mon, 12 May 2025 14:17:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uETFu-00000009Z9k-2mS6;
	Mon, 12 May 2025 13:31:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=O+V+RCvpoAaGRFT4GZBhiApWS5v7S4yG0iss69ry+Po=; b=Co6n9zSvwNUsxs6gnNNk3Jo6KX
	xK5oFL4yQV10FygzxSVW0Lc9tRJk7exKi9G5xm2wAlQXL4BVmCeMdoc2Cw50s/XYPw5+hoEAz/Jh9
	HMfEey7XQqTz+Yt9jo6VIYtS8bziHyuO67q8DSaFZWsJH5erR2/8vTPEi6flXiM1bPXC9uFZVfKsa
	GrH7rIRVtUiGinhT8ZV/LUq+kDmXJRasTmq//5IT06hbOkOj8YJNbFyKazqHA5HpNekXp4+1z0wab
	2/9t/z5auo5hpJXvVA5VzCyuO3NALLe3R8vDuGqhk4E0H3uFMcFJJSEewW296QKk7sEArOw/w1Vd1
	YsgwY3Qw==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uETFV-0006NF-9J; Mon, 12 May 2025 15:31:17 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, chainsx@foxmail.com
Cc: chainsx@foxmail.com, conor+dt@kernel.org, krzk+dt@kernel.org,
 sfr@canb.auug.org.au, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 0/2] Add support for Firefly Station-M3/ROC-RK3588S-PC
Date: Mon, 12 May 2025 15:31:16 +0200
Message-ID: <3612514.V25eIC5XRa@diego>
In-Reply-To: <tencent_D5C17F39C684CD6491505763B23BACCE5106@qq.com>
References: <tencent_D5C17F39C684CD6491505763B23BACCE5106@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_063142_717220_22216A6B 
X-CRM114-Status: GOOD (  13.53  )
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

SGksCgpBbSBNb250YWcsIDEyLiBNYWkgMjAyNSwgMTU6MjA6NDggTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBjaGFpbnN4QGZveG1haWwuY29tOgo+IEZyb206IEhzdW4gTGFp
IDxjaGFpbnN4QGZveG1haWwuY29tPgo+IAo+IFRoaXMgc2VyaWVzIGFkZCBzdXBwb3J0IGZvciBG
aXJlZmx5IFN0YXRpb24tTTMvUk9DLVJLMzU4OFMtUEMuCj4gCj4gSW5mbyBvZiBkZXZpY2UgY2Fu
IGJlIGZvdW5kIGF0Ogo+IGh0dHBzOi8vd2lraS50LWZpcmVmbHkuY29tL2VuL1N0YXRpb24tTTMv
aW5kZXguaHRtbAo+IAo+IENoYW5nZXMgaW4gdjE6Cj4gLSBBZGQgc3VwcG9ydCBmb3IgRmlyZWZs
eSBST0MtUkszNTg4Uy1QQwo+IAo+IEhzdW4gTGFpICgyKToKPiAgIGR0LWJpbmRpbmdzOiBhcm06
IHJvY2tjaGlwOiBBZGQgRmlyZWZseSBST0MtUkszNTg4Uy1QQwo+ICAgYXJtNjQ6IGR0czogcm9j
a2NoaXA6IGFkZCBEVHMgZm9yIEZpcmVmbHkgUk9DLVJLMzU4OFMtUEMKCmhtbSwgeW91IHNlZW0g
dG8gYmUgdXNpbmcgZ2l0LXNlbmQtZW1haWwsIGJ1dCB5b3VyIG1haWxzIGRpZCBub3QKZ2V0IGlu
LXJlcGx5LXRvIGhlYWRlcnMuIE5vcm1hbGx5IGdpdC1zZW5kLWVtYWlsIHNob3VsZCBkZXRlY3Qg
dGhlCmNvdmVyLWxldHRlciArIHBhdGNoZXMgdGhpbmcgYW5kIHRpZSB0aGVtIHRvZ2V0aGVyIHRv
IGEgbWFpbCB0aHJlYWQKd2hlbiB5b3Ugc2VuZCB0aGVtIHdpdGggYSAiZ2l0IHNlbmQtZW1haWwg
Ki5wYXRjaCIgb3Igc2ltaWxhciAuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
