Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACDBDCD6E57
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 19:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ch9R96JexF4iOm2tN0kvprsnULZ7NnbGIZS7tFTtNr4=; b=e7j/9MJgY8MmO/
	2MRoWQXLxPtsFn7igHyc6WMr2PvBOTob3L8cFVvL5uo0Z3w2OeduifeNaaXugWYyNsutzrE7QIKc/
	o378fyopUTDIXRp9sgoTLKXFAZa8QVYQlpfs5HcyT5KKmEiVReSv+4C5bBsfBQi7FFROINMYw5J0+
	6AW2vjUbZazQtn4hZIljbmlZFruXAk81uyJHiQZY38tYrtpdUsZ9U9rTJkzDt4Zk64UfDKAnuq7Qn
	qS988MYPVqDQac9BnaXdhxN2zfB0gDamKwC+Ihtq56PkNKTodYVtCVFTlqxV+efGmtd1BcJCoVbv5
	OkFWhv+Al+S1nu1+XYbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUV6J-0000000Dhxj-2fOD;
	Tue, 02 Jun 2026 19:48:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUV6H-0000000DhxN-31Eh;
	Tue, 02 Jun 2026 19:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Iqo7/zwN9aWfNkgTeE+VK59ALzPS5BsWnY41xGS6ZDM=; b=KgBmveCKIwcHhTi8gtRwgA7q9S
	Zc8Nt2rKQN+vBy2nbYXqSpKmFnGbzR0UXG1Ap7LDihqEBh3BHkVvnaDHnZ6+SAkgU63ENV4H2GMFI
	+52051e5ehSkJ9rXadd94htTuoFJ7EKlBHyJ8uzri+GEHV/3gbix5I1n4D1EwCAtpPrOEqaH29D8u
	9GYGLM7Fwhxej5mA5PBaFl3myaN6mTMDpCIvl1vsK+b81zjG468M+nOSMDGfWmOcrneq1GGV0coL8
	prdQLTqjgl/MBjeuOoKnpPFZmdpGx5cSNxVrIeBzviyK3wGkKW+A8fRks6TJGV4D3k2UhJx4tCNAG
	v0x/p4yQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v2 01/12] drm/bridge: synopsys: dw-dp: Support unregistering the
 AUX channel
Date: Tue, 02 Jun 2026 21:48:11 +0200
Message-ID: <8220078.YiXZdWvhHV@phil>
In-Reply-To: <20260501-synopsys-dw-dp-improvements-v2-1-d7e7f6bac77f@collabora.com>
References: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
 <20260501-synopsys-dw-dp-improvements-v2-1-d7e7f6bac77f@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_124833_786152_FB03DB25 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMS4gTWFpIDIwMjYsIDAwOjIwOjI4IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4gRnJvbTogQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiAKPiBUaGUgRGlzcGxheVBv
cnQgQVVYIGNoYW5uZWwgZ2V0cyBpbml0aWFsaXplZCBhbmQgcmVnaXN0ZXJlZCBkdXJpbmcKPiBk
d19kcF9iaW5kKCksIGJ1dCBpdCBpcyBuZXZlciB1bnJlZ2lzdGVyZWQsIHdoaWNoIG1heSBsZWFk
IHRvIHJlc291cmNlCj4gbGVha3MgYW5kL29yIHVzZS1hZnRlci1mcmVlLgo+IAo+IEFkZCB0aGUg
bWlzc2luZyBkd19kcF91bmJpbmQoKSBmdW5jdGlvbiB0byBhbGxvdyB0aGUgdXNlcnMgb2YgdGhl
Cj4gbGlicmFyeSB0byBoYW5kbGUgdGhlIHJlcXVpcmVkIGNsZWFudXAsIGkuZS4gdW5yZWdpc3Rl
ciB0aGUgQVVYIGFkYXB0ZXIuCj4gCj4gRml4ZXM6IDg2ZWVjYzNhOWMyZSAoImRybS9icmlkZ2U6
IHN5bm9wc3lzOiBBZGQgRFcgRFBUWCBDb250cm9sbGVyIHN1cHBvcnQgbGlicmFyeSIpCj4gU2ln
bmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFi
b3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KCnBpY2tlZCB0aGUgc2FtZSBvbmUgZnJvbSBDcmlzdGlhbidz
IHNlcmllcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
