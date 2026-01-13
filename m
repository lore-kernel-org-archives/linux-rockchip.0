Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AD51D30CC0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 20:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yh9zBtPxx7SWGZS9nh/vt8Es8PX32LipLru9n1dmRJ0=; b=zaPizlTU0Q3wN2
	Xg475CF0RfoyoO1jwsfD3OzU+B8TyeNGqoS0S1vQ3em9TWkCMNWZJiJ9Amer9AY9YE0H/qRqPOQpX
	SnRk06veJGWgOE0i4tXX4o/dtefGHhfO/BG0fpmknUh4QBRU2cfIEHZuVCtzL8f54YMSa6/Rhi9lY
	d2o8pLmn3ITXLoJBnawJnKhbot6DNA/cZO5cTuLxe7JNncm0c84xYEMQtsJ/9B8EspFAI38u/pJTX
	IbI8V8AhBHg3KdpvKGqeWyRFFvCNG1qe9gRNiyWm9lTpatynCL0QeTsrzX5Z0QA//1Y7kSSUtdqZO
	IdLH7y0tExD2mNO54UDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfkgo-00000007fQv-0Gn3;
	Tue, 13 Jan 2026 20:08:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfkgl-00000007fPm-2Pca
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 20:08:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=y5i6zNgB/mLp9XFria465D/SmHCPYx+L3rwkXrbZnb0=; b=xAwMXeA30Upix0sJfjipJR4isv
	A44PYx7FDi4LRes4YG8H5K5OQYZTxw/N9yo4MeCQJqrDE3ZijgFcOZlAv8jAVzFL8hfe6Tc3vaD//
	dumYulNy7LYH6i2XlYnlPeQt1vW39C5IOKSlcuS8g0KeE7AWhpcZ+cQM9ZeqG/gWC+cyRGZEHc5RP
	TGa8UfIXXBhkP0xcCiKEAusrP69PW8h03TkjDTZV+P187K5lHK2Fa0Z+yLKGBD0ZLpgIFk3XOMFJG
	QKCIOUh9S80GWtzfcsOv27a+eddONBmwW2ggZh4az7SksZlWO6JlP2nusjj3Y7aFPBkF1BFv4Mr0A
	yKVBLUEQ==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfkgg-002AcJ-Kj; Tue, 13 Jan 2026 21:08:23 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 dmitry.torokhov@gmail.com, simona@ffwll.ch, airlied@gmail.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 jesszhan0024@gmail.com, neil.armstrong@linaro.org, jagan@edgeble.ai,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 aweinzerl13@yahoo.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] drm: panel: jd9365da: Use gpiod_set_value_cansleep()
Date: Tue, 13 Jan 2026 21:08:21 +0100
Message-ID: <13199470.iMDcRRXYNz@diego>
In-Reply-To: <20260113195721.151205-2-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-2-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_120827_633147_5648684A 
X-CRM114-Status: UNSURE (   7.29  )
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

QW0gRGllbnN0YWcsIDEzLiBKYW51YXIgMjAyNiwgMjA6NTc6MTYgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBDaHJpcyBNb3JnYW46Cj4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxt
YWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAKPiBDaGFuZ2UgaW5zdGFuY2VzIG9mIGdwaW9kX3Nl
dF92YWx1ZSgpIHRvIGdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcCgpLgo+IFVzZXMgb2YgZ3Bpb2Rf
c2V0X3ZhbHVlKCkgZ2VuZXJhdGVzIHdhcm5pbmdzIHdoZW4gdXNlZCBpbiBpbnN0YW5jZXMKPiB3
aGVyZSBkZXNjLT5nZGV2LT5jYW5fc2xlZXAgaXMgdHJ1ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
