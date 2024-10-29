Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3713CD2AB0A
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Oct 2024 09:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAaQybbLUGwBzyh+LTCpsMnAjC9ugKTn3SyV36qvRQ0=; b=r3XqRwIWb1+ElZ
	8rZTqXoEEBZQrGoFOjRMFHSOVcyempxm+GqnTJIgPWnbBNn9rt9m6Du3Sx0rF4racwISagUhRhRsP
	qaLx6umfzJuhMY3UXjKhzI3WAXbxvl+mlJDj5xtU1VvTFq3BUi4keXwkfb8ReKqIsMlNsutWTuAPT
	058QbJunYFOlZTcJXzjIDsVkilhmEDQeOWjK+xxMPqaPtEwhMJlV37YeVclvAmHD0H/s+UtKqWbMC
	esyJmmZOI26Wb8rZoC0cBx8ihFFYY/vnpVY3l80o9kvAxJs5+f+mQYR2Q+nSQfXwpjQqun5fSFxli
	+GZXule6oyvXsVrIO7vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5isU-0000000DvRo-1B9I;
	Tue, 29 Oct 2024 09:51:06 +0000
Received: from mail-40134.protonmail.ch ([185.70.40.134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5ipg-0000000DuzI-1fbL;
	Tue, 29 Oct 2024 09:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=o53zroy6ajgonks5kukapksxvi.protonmail; t=1730195289; x=1730454489;
	bh=q4DQvH1yTgG5s6YS3jDzL8kWS0Q+9gf6Jcq6GQyOq6Y=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=SKYZtxN3mE3tar1YfOo5pLhOlG+mttIq/SgsTrUVfwGTflWm9nYNvE1mw2m7Gr34U
	 g5n40mS65rQFWoP4aCQ6cimcVqz+7Z17NLi4swjXiZiRlkWbcMugArERgJl4vQcDm5
	 dv5RfcJeQ+uT6lhLCh0CC1xGnldek39Pigi4+0dLvyAv6mahebJaZL+TdiaYAvV6JC
	 /wzah0Egxke/FGxpbxTSqKeJER3BsczWmqxHoZxg6bvcekgh0vEudy/gzjH8/Bx10j
	 aBI/KW5yBGGIo1J7SZrZSFTxpL8i+Fm6kSmSJfMlJQjuBrKJXXMxR0Zy3kv3aNueoK
	 hXCVWS8VVQcbg==
Date: Tue, 29 Oct 2024 09:48:02 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:Re:Re: [PATCH v6] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <J0qrwbZdhKG3-7KhE30DvtMh7V3jQTrQ8RnHPcIHV_yBxiXRucga5al9iptkXm3NWrGKwuxOqyIOw-HiP5aIXY5D5GUOZ3Fu17rgj8Cy3B4=@proton.me>
In-Reply-To: <6a92e23a.56c.192d5ae32d5.Coremail.andyshrk@163.com>
References: <20241016223558.673145-2-pZ010001011111@proton.me> <DurUfF_0TBHKv4DHKIP3ggQh_85nRY0usYWn_fu_oJ45txO7dGKv-OK5rl6EDEPmX5l8WzrwPCzAvYz0xFPfeKGyx7enu1g-prsWIpilv88=@proton.me> <2bb58a1c.6287.192d1dc9b2d.Coremail.andyshrk@163.com> <6a92e23a.56c.192d5ae32d5.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: a2358035855d74cd8a3bb089158398ae3faf8474
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_024813_212074_BC77CCDF 
X-CRM114-Status: GOOD (  13.22  )
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

SGkgQW5keQoKPiDlnKggMjAyNC0xMC0yOCAxNDo0MjoyOO+8jCJBbmR5IFlhbiIgYW5keXNocmtA
MTYzLmNvbSDlhpnpgZPvvJoKPiAKPiA+IEhpIFBpb3Ry77yMCj4gPiBUZXN0ZWQgb24gdG9wIG9m
IExpbnV4IDYuMTItcmM1IHdpdGggcmszNTY2LWJveC1kZW1vIGluIGEgYnVpbGRyb290ICsgd2Vz
dG9uIGVudmlyb25tZW50Ogo+ID4gd2VzdG9uIC0tYmFja2VuZD1kcm0tYmFja2VuZC5zbyAtaSAw
IC0tY29udGludWUtd2l0aG91dC1pbnB1dAo+ID4gd2VzdG9uLXNpbXBsZS1lZ2wKPiA+IAo+ID4g
c2ltcGxlLWVnbCB3aWxsIGRyYXcgYSB0cmlhbmdsZSBvbiB0aGUgZGVza3RvcC4KPiA+IEFmdGVy
IHRoZSBwYXRjaCBhcHBsaWVk77yMdGhlIHRyaWFuZ2xlIHdpbGwgZmxpY2tlciBhZ2FpbiBhbmQg
YWdpYW7jgIIKPiA+IFNvIGl0IGJyZWFrIHNvbWUgZnVuY3Rpb27jgIIKPiA+IEkndmUgYmVlbiBx
dWl0ZSBidXN5IGxhdGVseSwgYW5kIGl0IHdpbGwgdGFrZSBzb21lIHRpbWUgYmVmb3JlIEkgY2Fu
IGFuYWx5emUgd2hhdCB0aGUgc3BlY2lmaWMgcmVhc29uIGlzLgo+IAo+IAo+IFNvcnJ5LCBpdCdz
IG15IGZhdWx0LiBBZnRlciBtb3JlIGV4cGVyaW1lbnRzLCBJIGZvdW5kIHRoYXQgdGhlIGZsaWNr
ZXJpbmcgSSBvYnNlcnZlZCBpcyBub3QgcmVsYXRlZCB0byB5b3VyIHBhdGNoLgo+IFRoaXMgc2hv
dWxkIGJlIGEgcHJvYmFiaWxpdHktcmVsYXRlZCBpc3N1ZSBhc3NvY2lhdGVkIHdpdGggYWxwaGEg
YmxlbmRpbmfvvIx3aGljaCBjYW4gYmUgRml4ZWQgd2l0aCBwYXRjaGVzIGluCj4gbXkgc2VyaWVz
WzBdCj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzc1YTEzZGJi
LmFjYjguMTkyMjg5YTgwMDUuQ29yZW1haWwuYW5keXNocmtAMTYzLmNvbS8jcgoKTnAgOikKCj4g
QW5kIGZvciB0aGUgZ2FtbWEgcGF0Y2jvvIwgSSB0aGluayB0aGVyZSBhcmUgc3RpbGwgc29tZSBz
bWFsbCBhcmVhcyB0aGF0IGNhbiBiZSBpbXByb3ZlZC4KPiBQbGVhc2Ugc2VlIG15IGNvbW1lbnQg
YmVsbG93OgoKQW1lbmRlZCEgdGhhbmtzLgoKSSB3aWxsIHdhaXQgdW50aWwgd2Vla2VuZCB3aXRo
IG5leHQgdmVyc2lvbiwgbWF5YmUgdGhlcmUgd2lsbCBiZSBtb3JlCmNvbW1lbnRzLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
