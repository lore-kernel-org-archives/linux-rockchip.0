Return-Path: <SRS0=uCGj=F2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD02C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 16:27:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 165E723103
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 16:27:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 165E723103
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xVfP7/HL4BcvoUJXg8uN/WmpzeSs3sF2AV/0gQzJUBg=; b=Udk4vgLk4bvDFcwAGy4kcSwWZ
	rIfx/w4jVq/dNj5xY34CCZ8R60USHxSP7VXiZeRErKiIb5KgOyO48O5gqGotaelBdFyHb1jtrS6Es
	Pxatsuf7WugZmKssWTk16pL/3X/gaMjbBM7gPT8/OX+1dod+F3NRlw26JkUw4M5S4nqJKRktB1o0E
	S6H7Yb5TkSyHlKRZFyUZN5VBMRM+pubFjezXwT7Bi6FBN6ClgjqMTHVeQdnUztmU7NOm8xhxltlCw
	408tjVdmpNKDOpIi1MrlsGldBYj9A4EW48zEatg7kvFUExK3mRJe3P0oCMycX1zBKPF8/g0mDugaL
	yvCKnDrzg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krkVP-0002TO-SP; Tue, 22 Dec 2020 16:27:23 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krkVL-0002SM-Sa; Tue, 22 Dec 2020 16:27:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 3D5E3BFC9F;
 Tue, 22 Dec 2020 16:27:18 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo04-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1X26B3-7hQwg; Tue, 22 Dec 2020 16:27:18 +0000 (UTC)
Received: from jupiter (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id EE1EEC2CCB;
 Tue, 22 Dec 2020 16:27:05 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 2/3] pwm: rockchip: Eliminate potential race
 condition when probing
References: <cover.1608407584.git.simon@simonsouth.net>
 <fcfb96fd2fd860ae3f08cb563c74eb864cdab41a.1608407584.git.simon@simonsouth.net>
 <20201221085047.nyl7hacd4imp37qi@pengutronix.de>
Date: Tue, 22 Dec 2020 11:26:59 -0500
In-Reply-To: <20201221085047.nyl7hacd4imp37qi@pengutronix.de> ("Uwe
 =?utf-8?Q?Kleine-K=C3=B6nig=22's?= message of "Mon, 21 Dec 2020 09:50:47
 +0100")
Message-ID: <875z4trelo.fsf@simonsouth.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201222_112719_942898_9BF78281 
X-CRM114-Status: GOOD (  14.25  )
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 tpiepho@gmail.com, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
Ogo+IEkgd29uZGVyIGlmIHRoZSBjb21taXQgbG9nIHNob3VsZCBiZSBtb3JlIGRldGFpbGVkIGFi
b3V0IHRoaXMsIGFmdGVyCj4gcmVhZGluZyBpdCBJIHRob3VnaHQgdGhlIGVmZmVjdCBvZiB0aGUg
YnVnIHdvdWxkIGJlIHRoYXQgdGhlIFBXTSBzdG9wcwo+IGV2ZW4gdGhvdWdoIGl0IHNob3VsZCBv
c2NpbGxhdGUuCgpZb3VyIHVuZGVyc3RhbmRpbmcgaXMgY29ycmVjdDsgdGhpcyB3YXMgdGhlIHJl
c3VsdCBvZiBjb25mdXNpb24gb24gbXkKcGFydC4gSSdsbCB3cml0ZSBhIG5ldyBjb21taXQgbWVz
c2FnZS4KCj4+IEFsc28gcmVmYWN0b3IgdGhlIGNvZGUgc2xpZ2h0bHkgdG8gZWxpbWluYXRlIGdv
dG8gdGFyZ2V0cyBhcyB0aGUKPj4gZXJyb3IgaGFuZGxlcnMgbm8gbG9uZ2VyIHNoYXJlIGFueSBy
ZWNvdmVyeSBzdGVwcy4KPgo+IFRoaXMgaG93ZXZlciBtYWtlcyBpdCBoYXJkIHRvIHJldmlldyB0
aGUgcGF0Y2guIE1heWJlIHRoaXMgcmVmYWN0b3JpbmcKPiBjYW4gYmUgc3BsaXQgb3V0PwoKSSds
bCBnaXZlIHRoaXMgYW5vdGhlciBzaG90LCB0b28uCgotLSAKU2ltb24gU291dGgKc2ltb25Ac2lt
b25zb3V0aC5uZXQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
