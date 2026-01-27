Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1446ED2F007
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 12:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpjeSuZH6YfIN6iwy9NLot5Ug0MTPgZX9jvExaZYxqo=; b=k0plG3blyyYpKc
	Ym9iXelnTqp8+UtH6kRKAXxmBI10/VBokMeUIAHeDiLI/MEg0ojVAUwMZ7jOCynkUp1oy9YSLKEma
	LkzaUPj7TIGg/UAG6dHdEyuB13E3eHqrIiMgPiBpJENX7Dt48g7w95S3rge9A0/TZXoy8T4WbHU66
	g6Kyy2mZZfJNanQUM9YnnMqRE2uPvLw/uGhkG2FreyS1QbWewMk0bVv4WvyGGZtKuyTpUE66ea/nE
	fud+4QRzNI8G/8i3LvfdcTXGrB0gDK7dtXUbrVTOHYWJY7zK0ukRKyiMvfQRpuDOyx80HDjezLAaT
	YBpI4F8epLRpv5L7Icsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkiIG-0000000EFpI-06Eb;
	Tue, 27 Jan 2026 12:35:40 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkiI7-0000000EFoY-1lyI;
	Tue, 27 Jan 2026 12:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769517328;
	bh=CuvpcluLyNLc6SVhyS/gTS6TYlFSi/9ZuOs6HBvdp0Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Iz7BLs76YwfKgDYYLs8xYBwZik6ELyr7gTIB3oUT/ZrsVwPHehi/0QUlYWgHW6SO0
	 MBe5tKWu29E+lE2mjjqG27EL2n2c+M7wurOz3Zjb+/O8kmaD3Ql1nezp0Rw1wObF/h
	 6h+deiJvICMByHJtGEJVYwDRrv/IviolpyE2KW5HNQw3jaG4+4PCiui472qUR5hJRz
	 wv2Qz3eM2epsmrWHX+RZXsDJJZ1pcsstWsfE3zfZDsg/lvGy+gKew/+O+rjP1uFwOc
	 JQGrhLCqIiFj7XuJNEcoARP9+cJ4b6DYbToj/UXoN1N3O3ZzqrD7M4lsWU+pq1XfqN
	 KcS9i0uVfBg6Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DD18E17E0182;
	Tue, 27 Jan 2026 13:35:27 +0100 (CET)
Message-ID: <9abe64bb-a398-4e8e-ac7e-397fee0eded5@collabora.com>
Date: Tue, 27 Jan 2026 13:35:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/4] uapi: Provide DIV_ROUND_CLOSEST()
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>,
 Melissa Wen <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Diederik de Haas <diederik@cknow-tech.com>
References: <20260127-rk3588-bgcolor-v5-0-b25aa8613211@collabora.com>
 <20260127-rk3588-bgcolor-v5-1-b25aa8613211@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260127-rk3588-bgcolor-v5-1-b25aa8613211@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_043533_631459_BFF9E6FD 
X-CRM114-Status: UNSURE (   7.37  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SWwgMjcvMDEvMjYgMDk6NDUsIENyaXN0aWFuIENpb2NhbHRlYSBoYSBzY3JpdHRvOgo+IEN1cnJl
bnRseSBESVZfUk9VTkRfQ0xPU0VTVCgpIGlzIG9ubHkgYXZhaWxhYmxlIGZvciB0aGUga2VybmVs
IHZpYQo+IGluY2x1ZGUvbGludXgvbWF0aC5oLgo+IAo+IEV4cG9zZSBpdCB0byB1c2VybGFuZCBh
cyB3ZWxsIGJ5IGFkZGluZyBfX0tFUk5FTF9ESVZfUk9VTkRfQ0xPU0VTVCgpIGFzCj4gYSBjb21t
b24gZGVmaW5pdGlvbiBpbiB1YXBpLgo+IAo+IEFkZGl0aW9uYWxseSwgZW5zdXJlIGl0IGFsbG93
cyBidWlsZGluZyBJU08gQyBhcHBsaWNhdGlvbnMgYnkgc3dpdGNoaW5nCj4gZnJvbSB0aGUgJ3R5
cGVvZicgR05VIGV4dGVuc2lvbiB0byB0aGUgSVNPLWZyaWVuZGx5IF9fdHlwZW9mX18uCj4gCj4g
UmV2aWV3ZWQtYnk6IE7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIDxuZnJhcHJhZG9AY29sbGFib3Jh
LmNvbT4KPiBUZXN0ZWQtYnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlrQGNrbm93LXRlY2gu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2Fs
dGVhQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVn
bm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
