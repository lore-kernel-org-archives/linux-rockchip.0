Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 506A8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 20:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bPaeRqwI4Mt6FdosSVAcIcWFgFPDC9EL5jdw39D3uQ=; b=WpBfysdtQck965
	aCIEUftyOhxv7GE2SVL4j+fM31eHqn8qhVUiE9rdgjFP3hEY4NkGOLRRw1ZOuWCG8UDtO6wdUnf6z
	kIEL0UvaFdXIQFPZcuwlQV9DVo2wYU9OG9jLBi0BkL59YmYeauy/Ytee0Pk4tgBjVQ5rfO//uCv0f
	YBChdF+edo9TEIaxVx+nnCw6qiFtjN9HhFVzUDq/+AiPmmL+dkmvq35/bkVMKZP9z2IIJOMB0e9Gd
	h2ImOrkdViMAbtGDNgk/SjiNzVB5eM46Z52AsxjW1NCp59tpk+f/Fp1hwvwgCv2CMtsdNpQjtlmkp
	9lbaOIDOWnBYCHAdq0FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noWsb-0041aG-5E; Tue, 10 May 2022 20:54:49 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noWsQ-0041Wb-00; Tue, 10 May 2022 20:54:39 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id i11so139228ybq.9;
 Tue, 10 May 2022 13:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=F4vxlgRcJXMV+aeCdSejL/H/Xyip+2XNsa7o7QrIj9c=;
 b=apYcKFXKyRkKXltVE6V+9HmyVLiAdJ07j4L052Dhh7z4NHT8SrOlBnyAnbOTceQ7PB
 23Z0U4YuI4KK91eKNObrYNfEHmkq7gox8ifAC9YouElHNV1qnH2R2dx+NYSyUCmXf9Du
 UEEoVJfaUwH9J9pu2XtGEzrDtpAeCuFQ59IOUdSR3aAdZ1QhuexZWBBiGPt5xoWSbGKj
 ebFWwVxhAIpUBSpdEXDw6sDv9Au5t1D92DDcY1c62DJ+eZRqwTntqSsdU11rHNZT9wEZ
 672/J6crkeFEdE2TS/XMy3JLC4z7rpmvYdQTHAnUEKBz54LaySOtSlsCIXMn0p4QFXM+
 akRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=F4vxlgRcJXMV+aeCdSejL/H/Xyip+2XNsa7o7QrIj9c=;
 b=p10sCVgIskvPIbWrRJ7C2Z2zkV3zQcmYOFX+c+aYygYdLJslCUCwPG1Jd9RsSPhCat
 VS1xbVCYXxZP5BwYZ9I6wYG+wBY3w1NoGV0TlpgEJxijhE05ALgxQQ+Dbh9KV/gbtSuy
 nWDyjJjl7dz0EOiDGTYjkRBX1bcVhQak7jEIoAgnK194Fr9wf7TWsxdAZwS3NITJP5oj
 ipoZUdCzCEEGve2SCU+b5T9KgoqVH2GJ4VcEI8dEm9meFS7i0DdWZT5zhFfArTbfLJbb
 Pl1oc3CG0x0l7PIO/tmzHeu70jIblRN8r17aOrpGe79vsME8EBKg9NY83GahVMXXMkvw
 P2oA==
X-Gm-Message-State: AOAM530f1ZiNvdff/bdv4SgnQWUlmynbf4KNzz5D/7Thy0+F/ycj72AR
 QU1iarIK0cGr+XhpnPu3Lf7Hu1g9uglB/L/cduVyn6SW9+E=
X-Google-Smtp-Source: ABdhPJyaG6G68FpJZXYbpEI0CKixy2QsjV3l/Y8sR4dCm0x57IHgDblj9keWqf/J6N25b3y3godPjx2UMZujqyXpA7Q=
X-Received: by 2002:a05:6902:cf:b0:641:32bb:53fc with SMTP id
 i15-20020a05690200cf00b0064132bb53fcmr21078507ybs.232.1652216076188; Tue, 10
 May 2022 13:54:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com>
 <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
 <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
 <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
 <F1728C93-CFF8-4C51-B95C-A5049E0DC46A@gmail.com>
In-Reply-To: <F1728C93-CFF8-4C51-B95C-A5049E0DC46A@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 May 2022 16:54:24 -0400
Message-ID: <CAMdYzYpRVZ2hrGiYeQLqSduOZyKuZenw9bViS7oW7d3MWN7Z8g@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 dri-devel@lists.freedesktop.org, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_135438_076753_7EA8D9DF 
X-CRM114-Status: GOOD (  15.38  )
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

T24gVHVlLCBNYXkgMTAsIDIwMjIgYXQgOTo0OSBBTSBQaW90ciBPbmlzemN6dWsKPHBpb3RyLm9u
aXN6Y3p1a0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEg
cHJ6ZXogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4gdyBkbml1IDEwLjA1LjIwMjIs
IG8gZ29kei4gMTQ6MDg6Cj4gPgo+ID4KPiA+IFlvdSBhcmUgb24gdGhlIGNsa19ydGMzMmtfZnJh
YyB3aGljaCBpcyBhIGZyYWN0aW9uYWwgZGl2aWRlciB0aGF0IGlzCj4gPiBmZWQgZnJvbSB0aGUg
MjRtIGNsb2NrLiBZb3VyIGNsb2NrIGxpa2VseSBpc24ndCB0aGUgaXNzdWUgaGVyZS4gSSdkCj4g
PiByZWNvbW1lbmQgc2V0dGluZyB1cCB0aGUgY2VjLWdwaW8gbm9kZSB0byB2YWxpZGF0ZSB5b3Vy
IGhhcmR3YXJlCj4gPiB3b3Jrcy4KPgo+IFBldGVyLAo+Cj4gSGVyZSBpcyB3aGF0IGkgZG9uZSB0
byB2ZXJpZnkgbXkgcm9jazMtYSBIVzoKPgo+IDEuZG93bmxvYWQgJiBidXJuIG9uIFNEIFJhZHhh
IFVidW50dQo+IDIuYm9vdCBhbmQgaW5zdGFsbCB2NGwtdXRpbHMKPiAzLnJ1biBjZWMtY29tcGxp
YW5jZSAtdiAtVC4gSXQgZmFpbHMgd2l0aCBlcnJvciAtMjIKPiA0LmRlY29tcGlsZSBVYnVubnR1
IERULgo+IDUuQ2hlY2sgd2hhdCBIRE1JVFhfQ0VDX00gaGRtaSB1c2VzLiBJdCB3YXMgTTAKPiA2
LkNoZW5nZSB0byBIRE1JVFhfQ0VDX00xOyBjb21waWxlIGR0YjsgaW5zdGFsbCBvbiBzZAo+IDcu
cmVib290Lgo+IDguY2VjLWNvbXBsaWFuY2UgLXYgLVQgZ2l2ZXMgYWxsIHRlc3RzIE9LCj4gOS5j
ZWMtY3RsIC0taW1hZ2Utdmlldy1vbiAtdDAgdHVybnMtb24gbXkgVFYKPgo+IGhvcGUgdGhpcyBw
cm92ZXMgbXkgSFcgaXMgb2s/Cj4KClRoYXQgZG9lcyBzaG93IHRoYXQgdGhlIGhhcmR3YXJlIHdv
cmtzIHdpdGggdGhlIG9lbSBpbWFnZS4gSXQgZG9lcyBub3QKdW5mb3J0dW5hdGVseSBwcm92ZSBp
ZiBpdCB3b3JrcyB3aXRoIHlvdXIgY3VycmVudCBkdHMuIGNlYy1ncGlvIHdpbGwKc2hvdyBpZiBp
dCdzIGFuIGlzc3VlIHdpdGggdGhlIGNlYyBjb250cm9sbGVyIG9yIGFuIGV4dGVybmFsIHByb2Js
ZW0uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
