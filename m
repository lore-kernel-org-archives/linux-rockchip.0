Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 120C3C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 10:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkxBfxEzqx4YruVUw9m6hS4xQaWON4rqU2Z1Gd7vRto=; b=afRqp8hCVwGa4f
	a7YgXhwImfK4HEcyIKe3K9Keq4WMktGd9i9dZ1YWqpNHMvWl0R4lUlW0I8Lzb8ZdPbpPgQmqyxgHk
	6iN3Rwy1s+OV+VU9P2GV1OgH89rARrtV/kNdqiwtgc+Qvl6P77WwP69JMk/qAqq0pflnkBM4wi+1A
	kodGhtmMW2axqF8hcfdk4grFMFkRFLKUBhpxt3yJCOzsqkwIGLwirTq0DoAMMghN2iE9zxOT8S5Yu
	TeDHCSoYrb6tXGuZF/VX33tbWsLvBoaqyal5jjyF+7M7kq+yUIcrnaFnR1RNami3uIZBY/MvgyWfc
	xmqTAS3w09cPLjyBpKTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1lpp-00DA67-00;
	Wed, 24 May 2023 10:35:13 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1khB-00CvpA-1Z
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 09:22:14 +0000
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1q1kh7-0007zs-M9; Wed, 24 May 2023 11:22:09 +0200
Message-ID: <53ce7dba-24ec-22b2-d3e6-80ad68a09f88@leemhuis.info>
Date: Wed, 24 May 2023 11:22:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when
 opening the driver
Content-Language: en-US, de-DE
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
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
 <e227724a-fb39-5d68-4453-f03fb532bfde@xs4all.nl>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <e227724a-fb39-5d68-4453-f03fb532bfde@xs4all.nl>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1684920133;02d9476f;
X-HE-SMSGID: 1q1kh7-0007zs-M9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_022213_666372_11D9EA0A 
X-CRM114-Status: UNSURE (   8.96  )
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

T24gMjQuMDUuMjMgMTE6MTUsIEhhbnMgVmVya3VpbCB3cm90ZToKPiBPbiAyNC8wNS8yMDIzIDEx
OjA2LCBUaG9yc3RlbiBMZWVtaHVpcyB3cm90ZToKPj4gT24gMjMuMDUuMjMgMTg6MzYsIEJlbmph
bWluIEdhaWduYXJkIHdyb3RlOgo+Pj4KPj4+IExlIDIzLzA1LzIwMjMgw6AgMTg6MjUsIEJlbmph
bWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4+Pj4gVGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIGlz
c3VlIG9ic2VydmVkIG9uIE9kcm9pZC1NMSBib2FyZDoKPj4+IFsuLi5dCj4+PiBEaWVkZXJpY2ss
IE1hcmVrLCBNaWNoYWVsLAo+Pj4gSSBoYXZlIHRlc3RlZCB0aGlzIHBhdGNoIG9uIG15IGJvYXJk
cyBhbmQgSSBzZWUgbm8gcmVncmVzc2lvbnMgb24KPj4+IGRlY29kZXIgcGFydCBhbmQgbm8gbW9y
ZSBjcmFzaCB3aGVuIHByb2JpbmcgdGhlIGVuY29kZXIuCj4+PiBDb3VsZCB5b3UgdGVzdCBpdCBv
biB5b3VyIHNpZGUgdG8gY29uZmlybSBpdCBpcyBvayA/Cj4+Cj4+IFRoZXkgYWxsIGRpZCwgc28g
dGhhdCBpcyBkb25lLiBUaHggZm9yIHlvdXIgaGVscCwgZXZlcnlib2R5IQo+Pgo+PiAvbWUgbm93
IGhvcGVzIHRoaXMgcGF0Y2ggd2lsbCBiZSBxdWlja2x5IHJldmlld2VkLCBhY2NlcHRlZCBhbmQg
c2VudCB0bwo+PiBMaW51cyB0byBwcmV2ZW50IGV2ZW4gbW9yZSBwZW9wbGUgcnVubmluZyBpbnRv
IHRoaXMuLi4KPiAKPiBJIHBsYW4gdG8gbWFrZSBhIFBSIHdpdGggNi40IGZpeGVzIHRvZGF5IG9y
IHRvbW9ycm93LgoKQWhoLCBmYWJ1bG91cywgbWFueSB0aHghCgpDaWFvLCBUaG9yc3RlbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
