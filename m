Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EC93C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 16:47:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF753611C1
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 16:47:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF753611C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lXWxaglv4w8KG4BoeTvIYEo6mXBL+Gq8Ls3aimFPyVU=; b=FTezBHOVfuvEJKxDYQBY/4nxz8
	aWn3TuVB4LckeKvCnVAVF+QUIcBWrBTg0UH5ff2LBAP1Z/pheWeYMw7w0R+devdRn0Up4wClnYcfk
	LQUU7rCv5NIRyJjAZ3YoAMKoZLdgZtxOcx3Anvq5lzzu/y9g0fHDzQ/QfOwKf53C13G0AicmCtC9R
	ujTwgwsOXw/2fPfPobtHsQ41ZPeEm3LaS9T1kU6bQpXTOEfT5OBmVztsRVLIPr+f2ZlcOqJDTWfeq
	Dzb+Rtla/+zli8GqPRl/SkSJLGRHjv2fy2ZzDfMmFwAFp0LQAmak/kxiGP5lQ/hDIgDbQnTF1TclP
	zmgyb8rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lspjl-00FCFx-VJ; Mon, 14 Jun 2021 16:46:57 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lspji-00FCEO-Nb; Mon, 14 Jun 2021 16:46:56 +0000
Received: by mail-wm1-x32f.google.com with SMTP id l9so12515393wms.1;
 Mon, 14 Jun 2021 09:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=tvljP/FADgJBhPk8ME8L4V47cVc2f6d7/8FHRIYD954=;
 b=B8T6dmxQE+0ZeP3z3goo/uCBgwFxsqBnOtsv8GUo1GTgIyTt2spvcvGsEqtuFBUZWK
 vFqBP36fjaqMSIiqnXoQ/A3/Xz4fE3JW3llo67SASmqge3+wpBE2MQGKpswswYUNXjYy
 hC5yVts0+mPVxHWOqj6q6nWfgTSS+APojDJ0X7g0zF4kUOuG9//tygMwPL4F76vlfryV
 2SL14T1k//Lq59mbsY/3Ey2q6vtCpxX9FdHPB9nmoNXpYtIsxllswOSA3UVhKEPO6sc0
 qiUtzhBlkS/UTy6d2FM2nxVnMeHqrC8NMGrQJuQbhqXOGEjJP20YcnqZkwmcBf4e9PRI
 mqHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tvljP/FADgJBhPk8ME8L4V47cVc2f6d7/8FHRIYD954=;
 b=ZTzT+rEkaB9iHjIC6OmHV5WiZaMf4M6wf8MTulGUDMOHsTZDioKayRlLJtxc7l3Crb
 MBLKKRpVIk0S2oDNT44nNwdzTn1OLA+KFeastfqEOd2rssV5tugXtWjSUFJl79x89rOp
 d0isSq53NCtmb9DwvLUEaF0QPNzjuGjIy/1EeKAOlDOWc4G67n+oqnUpOXAEtKDMLGt+
 MU+CxxpJ4ydCiOMry7DzPW1zFAndfxJMgcY34O/CpdW5um/Q2p8MzgK7Kp0UC/yxE3/5
 ngvWLDB6CBIqMrGuztPa+nEHZYi5tVnIN+DuAGM2HZCRbwgEoB5mBiGBF4GwA6nURjeQ
 KOTw==
X-Gm-Message-State: AOAM533C2nC/RnNyiw2OEyk9TVRwJWGS1DH24BL+5ZoisR/YEx77YUlD
 cDpM89S+km6uen99p4Dh3mdbSxPVgw==
X-Google-Smtp-Source: ABdhPJz/TgPYRiMBAJkO6DK6KCQhd3nMPx3VN/0cIYRHyDbVaEy82gCi6urK85Tm6qF8t3KosZFFRQ==
X-Received: by 2002:a05:600c:4ba1:: with SMTP id
 e33mr10664wmp.39.1623689211594; 
 Mon, 14 Jun 2021 09:46:51 -0700 (PDT)
Received: from [192.168.200.247] (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.gmail.com with ESMTPSA id x10sm16580048wrt.26.2021.06.14.09.46.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Jun 2021 09:46:51 -0700 (PDT)
Subject: Re: [PATCH v2 06/12] media: hantro: add support for Rockchip RK3066
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
 <20210527154455.358869-7-knaerzche@gmail.com>
 <09885c89dd37ca56305630c96da88333e81a2f25.camel@collabora.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <25edf9d4-6740-4ce3-90e4-8633b936fc5b@gmail.com>
Date: Mon, 14 Jun 2021 18:46:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <09885c89dd37ca56305630c96da88333e81a2f25.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_094654_780372_59A06B21 
X-CRM114-Status: GOOD (  18.19  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRXplcXVpZWwsCgpBbSAxMS4wNi4yMSB1bSAxNzo1MCBzY2hyaWViIEV6ZXF1aWVsIEdhcmNp
YToKPiBIaSBBbGV4LAo+Cj4gT24gVGh1LCAyMDIxLTA1LTI3IGF0IDE3OjQ0ICswMjAwLCBBbGV4
IEJlZSB3cm90ZToKPj4gUkszMDY2J3MgVlBVIElQIGJsb2NrIGlzIHRoZSBwcmVkZWNlc3NvciBm
cm9tIHdoYXQgUkszMjg4IGhhcy4KPj4gVGhlIGhhcmR3YXJlIGRpZmZlcmVuY2VzIGFyZToKPj4g
IMKgIC0gc3VwcG9ydHMgZGVjb2RpbmcgZnJhbWUgc2l6ZXMgdXAgdG8gMTkyMHgxMDg4IG9ubHkK
Pj4gIMKgIC0gZG9lc24ndCBoYXZlIHRoZSAnRzFfUkVHX1NPRlRfUkVTRVQnIHJlZ2lzdGVyCj4+
ICDCoMKgwqAgKHJlcXVpcmVzIGFub3RoZXIgLnJlc2V0IGNhbGxiYWNrIGZvciBoYW50cm9fY29k
ZWNfb3BzLAo+PiAgwqDCoMKgwqAgc2luY2Ugd3JpdGluZyB0aGlzIHJlZ2lzdGVyIHdpbGwgcmVz
dWx0IGluIG5vbi13b3JraW5nCj4+ICDCoMKgwqDCoCBJUCBibG9jaykKPj4gIMKgIC0gaGFzIG9u
ZSBBQ0xLL0hDTEsgcGVyIHZkcHUvdmVwdQo+PiAgwqAgLSBBQ0xLcyBjYW4gYmUgY2xvY2tlZCB1
cCB0byAzMDAgTUh6IG9ubHkKPiBIYXZlIHlvdSB0ZXN0ZWQgdHJ5aW5nIDQwMCBNSHogKG9yIG1v
cmUpID8KClllcywgSSd2ZSB0cmllZCB0aGlzIG9uIGJvdGggUkszMDY2IGFuZCBSSzMwMzYgdmFy
aWFudHMgLSBldmVyeXRoaW5nIAphYm92ZcKgIDMwMCBNSHogcmVzdWx0cyBpbiBub24tZnVuY3Rp
b25pbmcgSVAgYmxvY2suCgpTZWUgY29tbWVudCBpbiBSSzMwMzYgZGV2aWNldHJlZSBpbiB2ZW5k
b3Iga2VybmVsIGF0IFsxXS4KClsxXSAKaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4
L2tlcm5lbC9ibG9iL2RldmVsb3AtNC40L2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzAzNi5kdHNpI0wy
NDYtTDI0OAoKPgo+PiAgwqAgLSBubyBNTVUKPj4gIMKgwqDCoCAobm8gY2hhbmdlcyByZXF1aXJl
ZDogQ01BIHdpbGwgYmUgdHJhbnNwYXJlbnRseSB1c2VkKQo+Pgo+PiBBZGQgYSBuZXcgUkszMDY2
IHZhcmlhbnQgd2hpY2ggcmVmbGVjdCB0aGlzIGRpZmZlcmVuY2VzLiBUaGlzIHZhcmlhbnQKPj4g
Y2FuIGJlIHVzZWQgZm9yIFJLMzE4OCBhcyB3ZWxsLgo+Pgo+IFJldmlld2VkLWJ5OiBFemVxdWll
bCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4KPiBUaGFua3MhCj4gRXplcXVpZWwK
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
